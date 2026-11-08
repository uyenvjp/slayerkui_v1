# Slayer Legend — local prototype backend (phase 1)

This is **not** a restored Slayer Legend server. The HTTP JSON routes below are prototype endpoints and **will not connect an unmodified APK**. The original client protocol, serialization, auth handshake and endpoint requirements must be verified against the repository's `logic-step11` and future client traces before building a compatibility adapter.

## Run

Requires Python 3.10+ (standard library only). On Windows, open PowerShell in this directory:

```powershell
py -3 server.py
```

Server listens only on `127.0.0.1:8000`, not the internet or LAN. Database is saved as `slayer_local.db` in this folder. You can change `SERVER_PORT` and `SERVER_DB` through environment variables. A non-loopback `SERVER_HOST` is intentionally rejected until TLS, throttling and permission checks are added.

Check: http://127.0.0.1:8000/health

## Smoke test with PowerShell

```powershell
$base = "http://127.0.0.1:8000"
Invoke-RestMethod "$base/health"
$body = @{username="testplayer"; password="ChangeMe12345!"} | ConvertTo-Json
Invoke-RestMethod "$base/api/v1/register" -Method Post -ContentType "application/json" -Body $body
$session = Invoke-RestMethod "$base/api/v1/login" -Method Post -ContentType "application/json" -Body $body
$headers = @{Authorization="Bearer $($session.token)"}
Invoke-RestMethod "$base/api/v1/profile" -Headers $headers
$save = @{revision=0; data=@{tutorial="test"; equipment=@()}} | ConvertTo-Json -Depth 5
Invoke-RestMethod "$base/api/v1/profile" -Method Post -Headers $headers -ContentType "application/json" -Body $save
Invoke-RestMethod "$base/api/v1/profile" -Headers $headers
Invoke-RestMethod "$base/api/v1/logout" -Method Post -Headers $headers -ContentType "application/json" -Body "{}"
```

Do not commit the database file or share tokens. Change the example password for real tests.

## Prototype routes

| Method | Path | Role |
|---|---|---|
| GET | `/health` | Service readiness |
| POST | `/api/v1/register` | Local test account |
| POST | `/api/v1/login` | Issue 12h session |
| POST | `/api/v1/logout` | Revoke current session |
| GET | `/api/v1/profile` | Read JSON profile and revision |
| POST | `/api/v1/profile` | Update with optimistic revision check |

Profile JSON is a **test store** and deliberately does not assume Slayer Legend's real account defaults. All server responses are JSON. Profile revisions reject concurrent overwrite with HTTP 409.

## Compatibility roadmap

1. Verify APK's exact network stack, URL selection, service IDs, serialization and handshake. Do not conflate documented API ID 255 with this prototype HTTP route.
2. Map proven SignIn/SignUpV2 and UserInfo payload structures onto dedicated compatibility endpoints.
3. Connect verified account-state fields and `ServerPrefs` persistence, with exactly-once handling for game inventory/currency mutations.
4. Integrate proven combat, progression, loot and equipment logic and original static tables.
5. Only after security review consider a LAN or public interface. Loopback HTTP is not suitable for remote/mobile clients.

Source analysis: `01_PHAN_TICH_VA_LOGIC/slayer-work/logic-step11/SAVE_QUEUE_AND_RESPONSE_NOTES.md`.
