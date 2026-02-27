#!/bin/bash

set -e

python3 -m venv venv
. ./venv/bin/activate
pip install esptool
python -m esptool --chip esp32c6 -b 460800 \
  --before default-reset --after hard-reset write-flash \
  --flash-mode dio --flash-size 2MB --flash-freq 80m \
  0x0 build/bootloader/bootloader.bin 0x8000 build/partition_table/partition-table.bin 0x10000 build/esp_ot_rcp.bin
