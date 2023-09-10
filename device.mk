PRODUCT_USE_DYNAMIC_PARTITIONS := true
# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# ANT
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes_drc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes_drc.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

#    frameworks/native/data/etc/android.software.incremental_delivery.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.incremental_delivery.xml
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2019-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level-2019-03-01.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level-2020-03-01.xml \

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# Vendor missing Minijail
PRODUCT_PACKAGES += \
    libavservices_minijail \
    libavservices_minijail_vendor \
    libavservices_minijail.vendor

# Vendor missing Drm
PRODUCT_PACKAGES += \
    libdrm.vendor:64

# Neutral Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-service.vendor \
    android.hardware.health@2.0-impl-2.1.vendor

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-service.vendor \
    android.hardware.bluetooth@1.0-impl.vendor \


# Media
PRODUCT_PACKAGES += \
    libstagefrighthw.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-external-service.vendor \
    android.hardware.camera.provider@2.4-service.vendor \
    android.hardware.camera.provider@2.4-external.vendor \
    android.hardware.camera.provider@2.4-legacy.vendor \
    android.hardware.camera.provider@2.4-impl.vendor \

# DRM
PRODUCT_PACKAGES += \
    libmockdrmcryptoplugin \

PRODUCT_PACKAGES += \
    android.hardware.drm@1.3.vendor \
    android.hardware.drm@1.3-service.clearkey.vendor \
    android.hardware.drm@1.3-service.widevine.vendor

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@4.0-service.vendor \
    android.hardware.graphics.composer@2.1-service.vendor \
    gralloc.default.vendor \

# Power
PRODUCT_PACKAGES += \
    power.default.vendor \

# Vibrator
PRODUCT_PACKAGES += \
    vibrator.default.vendor

# HW_OUTPUT
PRODUCT_PACKAGES += \
    hw_output.default.vendor

# Keymaster
PRODUCT_PACKAGES += \
    libkeymaster4.vendor:64 \
    libkeymaster4support.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libkeymaster_messages.vendor:64 \
    libsoft_attestation_cert.vendor:64 \
    libpuresoftkeymasterdevice.vendor:64 \
    libkeystore-engine-wifi-hidl.vendor:64 \
    libkeystore-wifi-hidl.vendor:64 \

# Ramdisk
PRODUCT_PACKAGES += \
    init.connectivity.rc \
    init.mount_all.rc \
    init.rk30board.environment.rc \
    init.rk30board.rc \
    init.rk30board.usb.rc \
    init.rk356x.rc \
    init.rockchip.rc \
    fstab.rk30board \
    ueventd.qcom.rc \

# Stage
PRODUCT_PACKAGES += \
    libstagefright_amrnb_common.vendor:32 \
    libstagefright_enc_common.vendor:32 \
    libstagefright_flacdec.vendor:32 \
    libstagefright_softomx.vendor:32 \
    libstagefright_softomx_plugin.vendor:32 \
    libstagefright_soft_aacdec.vendor:32 \
    libstagefright_soft_aacenc.vendor:32 \
    libstagefright_soft_amrdec.vendor:32 \
    libstagefright_soft_amrnbenc.vendor:32 \
    libstagefright_soft_amrwbenc.vendor:32 \
    libstagefright_soft_avcdec.vendor:32 \
    libstagefright_soft_avcenc.vendor:32 \
    libstagefright_soft_flacdec.vendor:32 \
    libstagefright_soft_flacenc.vendor:32 \
    libstagefright_soft_g711dec.vendor:32 \
    libstagefright_soft_gsmdec.vendor:32 \
    libstagefright_soft_hevcdec.vendor:32 \
    libstagefright_soft_mp3dec.vendor:32 \
    libstagefright_soft_mpeg4dec.vendor:32 \
    libstagefright_soft_mpeg4enc.vendor:32 \
    libstagefright_soft_opusdec.vendor:32 \
    libstagefright_soft_rawdec.vendor:32 \
    libstagefright_soft_vorbisdec.vendor:32 \
    libstagefright_soft_vpxdec.vendor:32 \
    libstagefright_soft_vpxenc.vendor:32 \
    libstagefright_soft_mpeg2dec.vendor:32


# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-service.vendor \
    android.hardware.sensors@1.0-impl.vendor

# Crypto
PRODUCT_PACKAGES += \
    libboringssl.vendor

# Misc
PRODUCT_PACKAGES += \
    baseparameter.vendor \
    libchrome.vendor \
    libgralloc_priv_omx.vendor \
    libprotobuf-cpp-full-3.9.1.vendor \
    libprotobuf-cpp-lite-3.9.1.vendor \
    libopus.vendor:32 \
    libvorbisidec.vendor:32 \
    libvpx.vendor:32 \
    libwebrtc_audio_coding.vendor


# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/configs/seccomp/rockit.vendor.base.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/rockit.vendor.base.policy \

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_rtk.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_rtk.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_ssv.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_ssv.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_config.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_config.txt \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_rtk.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_rtk.conf \

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service.vendor

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service.vendor \
    android.hardware.audio.common-util.vendor \
    android.hardware.audio.common@6.0-util.vendor \
    android.hardware.audio.effect@6.0-impl.vendor \
    android.hardware.audio@6.0-impl.vendor \
    audio.primary.default.vendor \
    audio.r_submix.default.vendor \
    audio.usb.default.vendor \
    libaudiopreprocessing.vendor \
    android.hardware.graphics.composer@2.1-resources.vendor:64


# VNDK
PRODUCT_PACKAGES += \
    libstdc++.vendor

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd 

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.rk30board:$(TARGET_COPY_OUT_RAMDISK)/fstab.rk30board

# Inherit vendor
$(call inherit-product, vendor/rockchip/rk3566_r/rk3566_r-vendor.mk)