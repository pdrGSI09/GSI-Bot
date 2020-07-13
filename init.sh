#!/bin/bash
# Sync
telegram -M "$ROM: Sync started"
SYNC_START=$(date +"%s")

sudo -E apt-get -qq update
sudo -E apt-get -qq install git openjdk-8-jdk wget expect
pip install pyrogram tgcrypto

SYNC_END=$(date +"%s")
SYNC_DIFF=$((SYNC_END - SYNC_START))
telegram -M "$ROM: Init done in  $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds"