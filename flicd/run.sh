#!/usr/bin/env bash

# Extract config data
CONFIG_PATH=/data/options.json
HCI_DEVICE=$(jq --raw-output ".hciDevice" "$CONFIG_PATH")

exec /usr/bin/flicd -f /data/flic-db -s 0.0.0.0 -p 5551 -h HCI_DEVICE
