# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mione

TARGET_BOOTANIMATION_NAME := vertical-540x960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/mione/device_mione.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := mione
PRODUCT_NAME := cm_mione
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Xiaomi Mione
PRODUCT_MANUFACTURER := Xiaomi

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mione_plus BUILD_FINGERPRINT=Xiaomi/mione_plus/mione_plus:4.0.4/IMM76D/2.10.12:user/release-keys PRIVATE_BUILD_DESC="mione_plus-user 4.0.4 IMM76D 2.10.12 release-keys" BUILD_NUMBER=373265
