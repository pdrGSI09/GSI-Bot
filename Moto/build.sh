#!/bin/bash
# Sync
telegram -M "Moto: Build started"
SYNC_START=$(date +"%s")

sudo ./ErfanGSIs/url2GSI.sh $ROM_LINK Moto
    mkdir final

    SYNC_END=$(date +"%s")
    SYNC_DIFF=$((SYNC_END - SYNC_START))
    telegram -M "Moto: Build completed successfully in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds"

    SYNC_START=$(date +"%s")
    telegram -M "Moto: Zipping output started"

    export date2=`date +%Y%m%d%H%M`
    export sourcever2=`cat ./ErfanGSIs/ver`
    sudo chmod -R 777 ErfanGSIs/output
               
    cd ErfanGSIs/output/
               
    curl -sL https://git.io/file-transfer | sh
               
    xz -z -f -e -9 *-AB-*.img
    xz -z -f -e -9 *-Aonly-*.img

    SYNC_END=$(date +"%s")
    SYNC_DIFF=$((SYNC_END - SYNC_START))
    telegram -M "Moto: Zipping completed successfully in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds"

    SYNC_START=$(date +"%s")
    telegram -M "Moto: Upload started"

    ./transfer $MIR $ROM-Aonly-$sourcever2-$date2-ErfanGSI-YuMiGSI.img.xz
    ./transfer $MIR $ROM-AB-$sourcever2-$date2-ErfanGSI-YuMiGSI.img.xz

    SYNC_END=$(date +"%s")
    SYNC_DIFF=$((SYNC_END - SYNC_START))
    telegram -M "Moto: Uploading completed successfully in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds"