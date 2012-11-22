#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/xiaomi/mione_plus/overlay

# GPS and Light
PRODUCT_PACKAGES += \
    gps.mione \
    lights.mione

# NFC
#PRODUCT_PACKAGES += \
#    libnfc \
#    libnfc_jni \
#    Nfc \
#    Tag \
#    com.android.nfc_extras

# Hostapd (Required for Wi-Fi)
PRODUCT_PACKAGES += \
    hostapd_cli \
    calibrator \
    hostapd

# US GPS config
PRODUCT_COPY_FILES += \
    device/common/gps/gps.conf_US:system/etc/gps.conf

# Ramdisk files
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/ramdisk/init.mione.rc:root/init.mione.rc \
    device/xiaomi/mione_plus/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/xiaomi/mione_plus/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/xiaomi/mione_plus/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/xiaomi/mione_plus/ramdisk/init.target.rc:root/init.target.rc \
    device/xiaomi/mione_plus/ramdisk/ueventd.mione.rc:root/ueventd.mione.rc \
    device/xiaomi/mione_plus/ramdisk/sbin/chargeonlymode:root/sbin/chargeonlymode

# QCOM scripts
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/xiaomi/mione_plus/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/xiaomi/mione_plus/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/xiaomi/mione_plus/configs/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/xiaomi/mione_plus/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/xiaomi/mione_plus/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/xiaomi/mione_plus/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/xiaomi/mione_plus/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh

# Vold
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/vold.fstab:system/etc/vold.fstab

# Keylayouts and Keychars
#PRODUCT_COPY_FILES += \
#    device/xiaomi/mione_plus/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
#    device/xiaomi/mione_plus/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
#    device/xiaomi/mione_plus/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
#    device/xiaomi/mione_plus/keylayout/8660_handset.kl:system/usr/keylayout/8660_handset.kl \
#    device/xiaomi/mione_plus/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
#    device/xiaomi/mione_plus/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
#    device/xiaomi/mione_plus/keylayout/mione-keypad.kl:system/usr/keylayout/mione-keypad.kl

# Input device config
#PRODUCT_COPY_FILES += \
#    device/xiaomi/mione_plus/idc/qwerty.idc:system/usr/idc/qwerty.idc \
#    device/xiaomi/mione_plus/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# QC thermald config
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/thermald.conf:system/etc/thermald.conf

# Custom media config for camera
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/configs/media_profiles.xml:system/etc/media_profiles.xml

# Firmware
PRODUCT_COPY_FILES += \
    device/xiaomi/mione_plus/firmware/4330nvram.txt:system/etc/firmware/4330nvram.txt \
    device/xiaomi/mione_plus/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/xiaomi/mione_plus/firmware/bcm4330.hcd:system/etc/firmware/bcm4330.hcd \
    device/xiaomi/mione_plus/firmware/cyttsp_8660_ffa.hex:system/etc/firmware/cyttsp_8660_ffa.hex \
    device/xiaomi/mione_plus/firmware/cyttsp_8660_fluid_p2.hex:system/etc/firmware/cyttsp_8660_fluid_p2.hex \
    device/xiaomi/mione_plus/firmware/cyttsp_8660_fluid_p3.hex:system/etc/firmware/cyttsp_8660_fluid_p3.hex \
    device/xiaomi/mione_plus/firmware/dsps_fluid.b00:system/etc/firmware/dsps_fluid.b00 \
    device/xiaomi/mione_plus/firmware/dsps_fluid.b01:system/etc/firmware/dsps_fluid.b01 \
    device/xiaomi/mione_plus/firmware/dsps_fluid.b02:system/etc/firmware/dsps_fluid.b02 \
    device/xiaomi/mione_plus/firmware/dsps_fluid.b03:system/etc/firmware/dsps_fluid.b03 \
    device/xiaomi/mione_plus/firmware/dsps_fluid.mdt:system/etc/firmware/dsps_fluid.mdt \
    device/xiaomi/mione_plus/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/xiaomi/mione_plus/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
    device/xiaomi/mione_plus/firmware/fw_bcmdhd.bin:system/etc/firmware/fw_bcmdhd.bin \
    device/xiaomi/mione_plus/firmware/fw_bcmdhd_apsta.bin:system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/xiaomi/mione_plus/firmware/fw_bcmdhd_ftm.bin:system/etc/firmware/fw_bcmdhd_ftm.bin \
    device/xiaomi/mione_plus/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/xiaomi/mione_plus/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/xiaomi/mione_plus/firmware/nvram.txt:system/etc/firmware/nvram.txt \
    device/xiaomi/mione_plus/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/xiaomi/mione_plus/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/xiaomi/mione_plus/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# Wi-Fi
#PRODUCT_COPY_FILES += \
#    device/xiaomi/mione_plus/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-data-only=1

# Kernel modules
ifeq ($(TARGET_PREBUILT_KERNEL),)
PRODUCT_COPY_FILES += $(shell \
    find device/xiaomi/mione_plus/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')
endif

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# call proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/mione_plus/mione_plus-vendor.mk)# media profiles and capabilities spec

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
