# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mione_plus

TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/mione_plus/mione_plus.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := mione_plus
PRODUCT_NAME := cm_mione_plus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI-ONE Plus
PRODUCT_MANUFACTURER := Xiaomi

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mione_plus \
	BUILD_DISPLAY_ID=IMM76L \
	BUILD_FINGERPRINT=Xiaomi/mione_plus/mione_plus:4.0.4/IMM76D/QDR68:userdebug/test-keys \
	PRIVATE_BUILD_DESC="mione_plus-userdebug 4.0.4 IMM76D QDR68 test-keys" \
	BUILD_NUMBER=IMM76L
