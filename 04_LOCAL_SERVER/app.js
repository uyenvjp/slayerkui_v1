'use strict';
const TOKEN = document.querySelector('meta[name="local-csrf"]').content;
const $ = id => document.getElementById(id);
const set = (id, value) => { $(id).textContent = value; };
async function jsonRequest(path, method, body) {
  const response = await fetch(path, {
    method: method || 'GET',
    headers: Object.assign({'X-Local-Token': TOKEN},
      body === undefined ? {} : {'Content-Type': 'application/json'}),
    body: body === undefined ? undefined : JSON.stringify(body),
    cache: 'no-store'
  });
  const data = await response.json();
  if (!response.ok) throw new Error(data.error || ('HTTP ' + response.status));
  return data;
}
async function refresh() {
  try {
    const data = await jsonRequest('/api/status');
    set('adb-state', data.adb ? 'Đã tìm thấy' : 'Thiếu ADB');
    set('xapk-state', data.xapk.present ? 'Đã có file' : 'Chưa có file');
    set('device-count', String(data.devices.length));
    set('adb-message', data.adb_error || ('ADB: ' + data.adb));
    const old = $('device').value;
    const select = $('device');
    select.replaceChildren();
    data.devices.forEach(d => {
      const opt = document.createElement('option');
      opt.value = d.serial;
      opt.textContent = d.serial + ' (' + d.state + ') ' + d.detail;
      opt.disabled = d.state !== 'device';
      select.appendChild(opt);
    });
    if (!data.devices.length) {
      const o = document.createElement('option');
      o.value = '';
      o.textContent = 'Chưa phát hiện thiết bị';
      select.appendChild(o);
    }
    if (data.devices.some(d => d.serial === old && d.state === 'device')) select.value = old;
    else {
      const available = data.devices.find(d => d.state === 'device');
      if (available) select.value = available.serial;
    }
  } catch (e) { set('adb-message', 'Không lấy được trạng thái web: ' + e.message); }
}
async function refreshJob() {
  try {
    const j = await jsonRequest('/api/job');
    set('install-state', j.message);
    set('install-log', j.log.join('\n') || 'Chưa có log');
    $('install').disabled = j.running;
    $('download').disabled = j.running;
    if (!j.running && j.ok !== null) {
      $('install-state').className = 'status-line';
    }
  } catch (_) {}
}
$('refresh').addEventListener('click', refresh);
$('upload').addEventListener('click', () => {
  const file = $('xapk-file').files[0];
  if (!file) { set('progress-label', 'Hãy chọn file XAPK'); return; }
  if (file.size !== 439306207) { set('progress-label', 'Sai dung lượng XAPK'); return; }
  const xhr = new XMLHttpRequest();
  xhr.open('POST', '/api/upload', true);
  xhr.setRequestHeader('X-Local-Token', TOKEN);
  xhr.setRequestHeader('Content-Type', 'application/octet-stream');
  xhr.upload.onprogress = e => {
    if (e.lengthComputable) {
      const n = Math.round(e.loaded * 100 / e.total);
      $('progress').value = n;
      set('progress-label', n + '%');
    }
  };
  xhr.onload = () => {
    try {
      const result = JSON.parse(xhr.responseText);
      set('progress-label', xhr.status === 200 ? 'Đã kiểm tra SHA-256' : ('Lỗi: ' + result.error));
    } catch (_) { set('progress-label', 'Upload lỗi HTTP ' + xhr.status); }
    refresh();
  };
  xhr.onerror = () => set('progress-label', 'Mất kết nối upload');
  set('progress-label', 'Đang tải file lên...');
  xhr.send(file);
});
$('download').addEventListener('click', async () => {
  try {
    await jsonRequest('/api/download', 'POST', {});
    set('progress-label', 'Đang lấy XAPK, xem log...');
  } catch (e) { set('progress-label', e.message); }
});
$('install').addEventListener('click', async () => {
  const serial = $('device').value;
  if (!serial) { set('install-state', 'Chọn thiết bị đã cấp quyền ADB.'); return; }
  if (!confirm('Cài đặt Slayer Legend 700.0.4 lên thiết bị ' + serial + '?')) return;
  try { await jsonRequest('/api/install', 'POST', {serial}); refreshJob(); }
  catch (e) { set('install-state', 'Lỗi: ' + e.message); }
});
$('login-form').addEventListener('submit', async e => {
  e.preventDefault();
  try {
    const r = await jsonRequest('/api/login-test', 'POST', {
      username: $('username').value, password: $('password').value
    });
    set('login-state', r.ok ? 'Đăng nhập backend local thành công (chưa phải APK gốc).' : 'Không thành công');
  } catch (err) { set('login-state', 'Đăng nhập lỗi: ' + err.message); }
});
refresh(); refreshJob();
setInterval(refreshJob, 1800);
