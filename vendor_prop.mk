# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.monitorOrientation=true \
    ro.safemode.disabled=true \
    vendor.gralloc.disable_afbc=0 \
# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.enable_timeout_ms=11000 \
    persist.bluetooth.btsnoopenable=false \
    persist.bluetooth.btsnooppath=/sdcard/btsnoop_hci.cfa \
    persist.bluetooth.btsnoopsize=0xffff \
    persist.bluetooth.rtkcoex=true \
    persist.bt.power.down=true \
    ro.rk.bt_enable=true \
# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.enable_task_snapshots=false \
# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heaptargetutilization=0.75 \
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_partial_updates=false \
    ro.opengles.version=196610 \
    ro.rk.hdmi_enable=true \
    ro.sf.lcd_density=240 \
    ro.vendor.hdmi_settings=true \
    ro.vendor.hdmirotationlock=false \
# Media
PRODUCT_PROPERTY_OVERRIDES += \
    testing.mediascanner.skiplist=/mnt/shell/emulated/Android/ \
# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    external_storage.casefold.enabled=1 \
    external_storage.projid.enabled=1 \
    external_storage.sdcardfs.enabled=0 \
    keyguard.no_require_sim=true \
    persist.sys.strictmode.visual=false \
    persist.wifi.sleep.delay.ms=0 \
    ro.boot.vr=0 \
    ro.config.enable.remotecontrol=false \
    ro.default.size=100 \
    ro.factory.hasGPS=false \
    ro.factory.hasUMS=false \
    ro.factory.storage_suppntfs=true \
    ro.factory.tool=0 \
    ro.factory.without_battery=false \
    ro.hardware.egl=mali \
    ro.incremental.enable=yes \
    ro.kernel.android.checkjni=0 \
    ro.lockscreen.disable.default=true \
    ro.product.ota.host=www.rockchip.com:2300 \
    ro.rk.flash_enable=true \
    ro.rk.screenoff_time=60000 \
    ro.rk.screenshot_enable=true \
    ro.rksdk.version=ANDROID11_RKR12 \
    ro.sf.fakerotation=false \
    ro.target.product=tablet \
    ro.tether.denied=false \
    ro.vendor.ethernet_settings=true \
    ro.vendor.frameratelock=true \
    ro.vendor.mpp_buf_type=1 \
    ro.vendor.rk_sdk=1 \
    ro.vendor.sdkversion=rk356x_ANDROID10.0_MID_V1.0 \
    ro.vendor.udisk.visible=true \
    ro.wifi.sleep.power.down=true \
    service.adb.tcp.port=5555 \
    sf.power.control=2073600 \
    sys.resolution.changed=false \
    sys.rkadb.root=0 \
    sys.status.hidebar_enable=false \
    sys.wallpaper.rgb565=0 \
    vendor.hwc.compose_policy=1 \
    wifi.supplicant_scan_interval=15 \
# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    debug.nfc.fw_download=false \
    debug.nfc.se=false \
# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ril.function.dataonly=1 \
    ro.boot.noril=true \
    ro.carrier=unknown \
    ro.com.android.dataroaming=true \
    ro.ril.ecclist=112,911 \
# Shutdown
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.shutdown_timeout=6 \
# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.usbfactory=rockchip_usb \
# WLAN
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.zram_enabled=1 \
