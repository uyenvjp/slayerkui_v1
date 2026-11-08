"""Decode ETC2_RGBA8 using Mesa's headless OpenGL implementation."""

import ctypes as ct
import os

U = ct.c_uint
I = ct.c_int
P = ct.c_void_p

EGL_NONE = 0x3038
GL_TEXTURE_2D = 0x0DE1
GL_COMPRESSED_RGBA8_ETC2_EAC = 0x9278
GL_RGBA = 0x1908
GL_UNSIGNED_BYTE = 0x1401


def bind(lib, name, result, *args):
    call = getattr(lib, name)
    call.restype = result
    call.argtypes = args
    return call


class Decoder:
    def __enter__(self):
        os.environ.setdefault("LIBGL_ALWAYS_SOFTWARE", "1")
        egl = self.egl = ct.CDLL("libEGL.so.1")
        get_display = bind(egl, "eglGetPlatformDisplay", P, U, P, P)
        init = bind(egl, "eglInitialize", U, P, ct.POINTER(I), ct.POINTER(I))
        get_error = bind(egl, "eglGetError", I)
        self.display = get_display(0x31DD, None, None)  # EGL_PLATFORM_SURFACELESS_MESA
        major, minor = I(), I()
        if not self.display or not init(self.display, ct.byref(major), ct.byref(minor)):
            raise RuntimeError(f"Unable to initialize surfaceless EGL: {get_error():#x}")
        try:
            bind_api = bind(egl, "eglBindAPI", U, U)
            assert bind_api(0x30A2), hex(get_error())  # EGL_OPENGL_API
            choose = bind(egl, "eglChooseConfig", U, P, ct.POINTER(I), ct.POINTER(P), I, ct.POINTER(I))
            config, count = P(), I()
            attrs = (I * 5)(0x3033, 1, 0x3040, 8, EGL_NONE)
            assert choose(self.display, attrs, ct.byref(config), 1, ct.byref(count)) and count.value, hex(get_error())
            create = bind(egl, "eglCreateContext", P, P, P, P, ct.POINTER(I))
            attrs = (I * 7)(0x3098, 4, 0x30FB, 3, 0x30FD, 1, EGL_NONE)
            self.context = create(self.display, config, None, attrs)
            self.make_current = bind(egl, "eglMakeCurrent", U, P, P, P, P)
            assert self.context and self.make_current(self.display, None, None, self.context), hex(get_error())
            gl = self.gl = ct.CDLL("libGL.so.1")
            self.gl_error = bind(gl, "glGetError", U)
            version = bind(gl, "glGetString", ct.c_char_p, U)
            self.version = version(0x1F02).decode("ascii")
            self.renderer = version(0x1F01).decode("ascii")
            self.generate = bind(gl, "glGenTextures", None, I, ct.POINTER(U))
            self.bind_texture = bind(gl, "glBindTexture", None, U, U)
            self.upload = bind(gl, "glCompressedTexImage2D", None, U, I, U, I, I, I, I, P)
            self.read = bind(gl, "glGetTexImage", None, U, I, U, U, P)
            self.delete = bind(gl, "glDeleteTextures", None, I, ct.POINTER(U))
            return self
        except BaseException:
            self.__exit__(None, None, None)
            raise

    def decode(self, width, height, payload):
        assert len(payload) == ((width + 3) // 4) * ((height + 3) // 4) * 16
        name = U()
        self.generate(1, ct.byref(name))
        assert name.value
        try:
            self.bind_texture(GL_TEXTURE_2D, name.value)
            compressed = (ct.c_ubyte * len(payload)).from_buffer_copy(payload)
            self.upload(
                GL_TEXTURE_2D, 0, GL_COMPRESSED_RGBA8_ETC2_EAC,
                width, height, 0, len(payload), compressed,
            )
            error = self.gl_error()
            assert error == 0, f"ETC2 upload failed: {error:#x}"
            pixels = (ct.c_ubyte * (4 * width * height))()
            self.read(GL_TEXTURE_2D, 0, GL_RGBA, GL_UNSIGNED_BYTE, pixels)
            error = self.gl_error()
            assert error == 0, f"ETC2 readback failed: {error:#x}"
            return bytes(pixels)
        finally:
            self.delete(1, ct.byref(name))

    def __exit__(self, *_args):
        if getattr(self, "context", None):
            self.make_current(self.display, None, None, None)
            bind(self.egl, "eglDestroyContext", U, P, P)(self.display, self.context)
        bind(self.egl, "eglTerminate", U, P)(self.display)
