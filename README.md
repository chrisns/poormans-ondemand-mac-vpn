# On Wifi Change connect to VPN

(Poor man's on demand VPN connection)

Script for a Mac to connect to a VPN when a specific WiFi network is connected.

## Install

> ⚠️ **IMPORTANT:**
> Change the path in the `com.user.onwifichange.plist` file to the path of the script.

> ⚠️ **IMPORTANT:**
> Change the name of the network in the `validnetworks.txt` file.

> ⚠️ **IMPORTANT:**
> Change the name of the VPN service in the `wifichange.sh` file, its currently set to `Home`.

```bash
launchctl load com.user.onwifichange.plist
```

## Uninstall

```bash
launchctl unload com.user.onwifichange.plist
```