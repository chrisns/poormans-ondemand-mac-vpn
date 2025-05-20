#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
LOGFILE="$SCRIPT_DIR/wifichange.log"

SSID=$(ipconfig getsummary "$(networksetup -listallhardwareports | awk '/Wi-Fi|AirPort/{getline; print $NF}')" | grep ' SSID : ' | awk -F ': ' '{print $2}')
# echo "$(date): Connected to SSID: $SSID" >> "$LOGFILE"

if grep -Fxq "$SSID" "$SCRIPT_DIR/validnetworks.txt"; then
  networksetup -connectpppoeservice "Home"
  # echo "$(date): Connecting to VPN" >> "$LOGFILE"
fi
