#!/usr/bin/env python3
"""Smoke-test the prototype login API without ADB or the real XAPK."""
import json
import tempfile
import threading
import unittest
from http.server import ThreadingHTTPServer
from pathlib import Path
from urllib.error import HTTPError
from urllib.request import Request, urlopen

import server


class LocalAPITest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.temp = tempfile.TemporaryDirectory()
        server.DB_PATH = Path(cls.temp.name) / "test.db"
        server.initialize()
        cls.httpd = ThreadingHTTPServer(("127.0.0.1", 0), server.Handler)
        cls.base = "http://127.0.0.1:" + str(cls.httpd.server_port)
        threading.Thread(target=cls.httpd.serve_forever, daemon=True).start()

    @classmethod
    def tearDownClass(cls):
        cls.httpd.shutdown()
        cls.httpd.server_close()
        cls.temp.cleanup()

    def post(self, path, data, token=None):
        hdr = {"Content-Type": "application/json"}
        if token:
            hdr["Authorization"] = "Bearer " + token
        req = Request(self.base + path, data=json.dumps(data).encode(),
                      headers=hdr, method="POST")
        with urlopen(req, timeout=8) as result:
            return json.load(result)

    def test_signup_login_save_logout(self):
        with urlopen(self.base + "/health") as result:
            self.assertFalse(json.load(result)["compatible_with_original_client"])
        self.assertTrue(self.post("/api/v1/register", {
            "username": "tester", "password": "LongPassword123!"})["ok"])
        result = self.post("/api/v1/login", {
            "username": "tester", "password": "LongPassword123!"})
        token = result["token"]
        req = Request(self.base + "/api/v1/profile",
                      headers={"Authorization": "Bearer " + token})
        with urlopen(req) as response:
            profile = json.load(response)
        self.assertEqual(profile["revision"], 0)
        changed = self.post("/api/v1/profile",
                            {"revision": 0, "data": {"trial": True}}, token)
        self.assertEqual(changed["revision"], 1)
        with self.assertRaises(HTTPError) as ctx:
            self.post("/api/v1/profile", {"revision": 0, "data": {}}, token)
        self.assertEqual(ctx.exception.code, 409)
        self.post("/api/v1/logout", {}, token)
        with self.assertRaises(HTTPError) as ctx:
            urlopen(req)
        self.assertEqual(ctx.exception.code, 401)


if __name__ == "__main__":
    unittest.main()
