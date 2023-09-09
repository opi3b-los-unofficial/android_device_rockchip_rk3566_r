DEVICE_PATH := device/rockchip/rk3566_r
BOARD_VENDOR := rockchip

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Security patch level
VENDOR_SECURITY_PATCH := 2021-10-01

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := rk30sdk
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 240

# Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := console=ttyFIQ0 androidboot.baseband=N/A androidboot.wificountrycode=CN androidboot.veritymode=enforcing androidboot.hardware=rk30board androidboot.console=ttyFIQ0 androidboot.verifiedbootstate=orange firmware_class.path=/vendor/etc/firmware init=/init rootwait ro loop.max_part=7 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#BOARD_KERNEL_SEPARATED_DTBO := true


# Kernel prebuilt
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_INCLUDE_DTB_IN_BOOTIMG :=
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_MKBOOTIMG_ARGS += --dtb $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --second $(DEVICE_PATH)/prebuilt/resource.img

# Custom make boot or recovery
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/boot/boot.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 74493952
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 74493952
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_VENDOR := vendor
#TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Dynamic Partition
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPER_PARTITION_SIZE := 3263168512
BOARD_SUPER_PARTITION_GROUPS := rockchip_dynamic_partitions
BOARD_ROCKCHIP_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system_ext system vendor
BOARD_ROCKCHIP_DYNAMIC_PARTITIONS_SIZE := 3263168512

# Platform
TARGET_BOARD_PLATFORM := rk356x

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

#BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy_vendor

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

# Add standalone metadata partition
BOARD_USES_METADATA_PARTITION ?= true

# Add standalone odm partition configrations
TARGET_COPY_OUT_ODM := odm
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE ?= ext4

# Add standalone vendor partition configrations
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE ?= ext4

# default.prop & build.prop split
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED ?= true

# for drmservice
BUILD_WITH_DRMSERVICE :=true

# HIDL
#DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi@1.0-service.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.keymaster@4.0-service.optee.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/rockchip.hardware.neuralnetworks@1.0-service.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.gatekeeper@1.0-service.optee.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.health@2.1.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.cas@1.2-service.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.drm@1.3-service.widevine.xml

DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.weaver@1.0-service.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/lights-rockchip.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.3-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/power-aidl-rockchip.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/rockchip.hardware.outputmanager@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/rockchip.hardware.rockit.hw@1.0-service.xml


DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

-include vendor/rockchip/rk3566_r/BoardConfigVendor.mk