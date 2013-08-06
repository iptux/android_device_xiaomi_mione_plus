# mione_bcm43xx.mk
# bcm43xx config for mione device
#
# Author: Alex.wang
# Create: 2013-04-06 17:54


# common bcm43xx
BOARD_LEGACY_NL80211_STA_EVENTS  := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# old mione device have bcm4329 chip (M1, M1CU, M1C1, M1youth)
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_FW_PATH_STA := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP  := "/vendor/firmware/fw_bcm4329_apsta.bin"

WIFI_DRIVER_FW_PATH_P2P := "/vendor/firmware/fw_bcmdhd_p2p.bin"

# new mione device have bcm4330 chip (M1S, M1Syouth)
WIFI_DRIVER_MODULE_NAME_DHD := bcmdhd
WIFI_DRIVER_MODULE_PATH_DHD := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_ARG_DHD  := "firmware_path=/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/etc/wifi/bcmdhd.cal"
WIFI_DRIVER_FW_PATH_STA_DHD := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP_DHD  := "/vendor/firmware/fw_bcmdhd_apsta.bin"

# flag for xiaomi
BOARD_USE_XIAOMI_MIONE_WIFI := true

PRODUCT_PACKAGES += \
    libnetcmdiface

