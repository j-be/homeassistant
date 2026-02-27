#!/bin/bash

set -e

cd ~/esp-idf
. ./export.sh
cd examples/openthread/ot_rcp/
export LC_ALL=C.UTF-8 TERM=xterm
idf.py set-target esp32c6
idf.py menuconfig
# In the menu, navigate to: Component config → OpenThread → Thread Core Features → Thread Radio Co-Processor Feature → The RCP transport type and select USB, then save and quit by pressing s, then esc, and then q.

idf.py build
cp build/esp_ot_rcp.bin /workspaces/homeassistant/openthread/build
mkdir -p /workspaces/homeassistant/openthread/build/bootloader
cp build/bootloader/bootloader.bin /workspaces/homeassistant/openthread/build/bootloader/
mkdir -p /workspaces/homeassistant/openthread/build/partition_table
cp build/partition_table/partition-table.bin /workspaces/homeassistant/openthread/build/partition_table/
