# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rk3566_r device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := rockchip
PRODUCT_DEVICE := rk3566_r
PRODUCT_MANUFACTURER := rockchip
PRODUCT_NAME := lineage_rk3566_r
PRODUCT_MODEL := orangepi3b

PRODUCT_GMS_CLIENTID_BASE := android-rockchip
TARGET_VENDOR := rockchip
TARGET_VENDOR_PRODUCT_NAME := rk3566_r
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="rk3566_r-userdebug 11 RD2A.211001.002 eng.user.20230901.221536 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := rockchip/rk3566_r/rk3566_r:11/RD2A.211001.002/user09012214:userdebug/release-keys
