# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from msm8660-common
include device/xiaomi/msm8660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mione

# Kernel
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=mione kgsl.mmutype=gpummu vmalloc=400M
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01200000

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/mione_plus/prebuilt/kernel

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/xiaomi/mione_plus/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/xiaomi/mione_plus/bluetooth/vnd_mione_plus.txt

# Display
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# RIL
BOARD_USES_HC_RADIO := true
BOARD_USES_LEGACY_RIL := true

# QCOM GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mione

# NFC
BOARD_HAVE_NFC := false

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 518435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354048
BOARD_FLASH_BLOCK_SIZE := 32768
BOARD_VOLD_MAX_PARTITIONS := 20
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_NATIVE_DUALBOOT := true
BOARD_NATIVE_DUALBOOT_SINGLEDATA := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS := ../../../device/xiaomi/mione_plus/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_CUSTOM_RECOVERY_UI := \
    ../../device/xiaomi/mione_plus/recovery/dualboot.c \
    ../../device/xiaomi/mione_plus/recovery/recovery_ui.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_RECOVERY_FSTAB := device/xiaomi/mione_plus/ramdisk/fstab.mione
RECOVERY_FSTAB_VERSION := 2
