#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'bionic'
    'bootable/recovery'
    'build/soong'
    'external/arm-optimized-routines'
    'external/tinycompress'
    'frameworks/av'
    'frameworks/opt/net/ims'
    'hardware/libhardware'
    'hardware/qcom-caf/wlan'
    'hardware/qcom/wlan'
    'kernel/configs'
    'packages/apps/Launcher3'
    'packages/apps/PhoneCommon'
    'packages/modules/common'
    'system/libhwbinder'
    'system/libsysprop'
    'system/sepolicy'
    'vendor/qcom/opensource/commonsys-intf/bluetooth'
    'vendor/qcom/opensource/commonsys-intf/display'
    'vendor/qcom/opensource/commonsys/packages/apps/Bluetooth'
    'vendor/qcom/opensource/core-utils'
    'vendor/qcom/opensource/data-ipa-cfg-mgr'
    'vendor/qcom/opensource/dataservices'
    'vendor/qcom/opensource/power'
    'vendor/qcom/opensource/usb'
    'vendor/qcom/opensource/vibrator'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/protonaosp/${repository}"/*

    cd "${ROOT}"
done
