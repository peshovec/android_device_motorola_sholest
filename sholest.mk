#
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

#
# This is the product configuration for a generic GSM passion,
# not specialized for any geography.
#

SHOLEST_CM6_RELEASE=7.1.0

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/motorola/sholest/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
    device/motorola/sholest/proprietary/lib/libgps.so:obj/lib/libgps.so \
    device/motorola/sholest/proprietary/lib/libgps.so:/system/lib/libgps.so 
    #device/motorola/sholest/proprietary/lib/libaudiopolicy.so:out/target/product/sholest/system/lib/libaudiopolicy.so

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/motorola/sholest/sholest-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.sf.lcd_density=190 \
	ro.sf.lcd_density=190 \
	ro.product.device=sholest
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.setupwizard.enterprise_mode=1 \
        ro.com.google.clientid=android-motorola \
	ro.com.google.clientidbase=android-motorola \
	ro.com.google.locationfeatures=1 \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.config.vc_call_vol_steps=7 \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=3000 \
	ro.url.safetylegal=http://www.motorola.com/staticfiles/Support/legal/?model=MilestoneXT720 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.heapsize=28m \
        ro.product.multi_touch_enabled=true \
        ro.product.max_num_touch=4 \
	ro.media.enc.hprof.file.format=mp4 \
	ro.media.enc.hprof.codec.vid=h264 \
	ro.media.enc.hprof.codec.aud=aac \
	ro.media.enc.hprof.vid.width=720 \
	ro.media.enc.hprof.vid.height=480 \
	ro.media.enc.hprof.vid.fps=25 \
	ro.media.enc.hprof.vid.bps=3000000 \
	ro.media.enc.hprof.aud.bps=96000 \
	ro.media.enc.hprof.aud.hz=16000 \
	ro.media.enc.hprof.aud.ch=1 \
	ro.media.enc.hprof.duration=60 \
	ro.media.enc.lprof.file.format=mp4 \
	ro.media.enc.lprof.codec.vid=m4v \
	ro.media.enc.lprof.codec.aud=amrnb \
	ro.media.enc.lprof.vid.width=320 \
	ro.media.enc.lprof.vid.height=240 \
	ro.media.enc.lprof.vid.fps=15 \
	ro.media.enc.lprof.vid.bps=200000 \
	ro.media.enc.lprof.aud.bps=12200 \
	ro.media.enc.lprof.aud.hz=8000 \
	ro.media.enc.lprof.aud.ch=1 \
	ro.media.enc.lprof.duration=30 \
	ro.media.enc.file.format=3gp,mp4 \
	ro.media.enc.vid.codec=h264,m4v,h263 \
	ro.media.enc.aud.codec=aac,amrnb \
	ro.media.enc.vid.h264.width=176,720 \
	ro.media.enc.vid.h264.height=144,480 \
	ro.media.enc.vid.h264.bps=64000,8000000 \
	ro.media.enc.vid.h264.fps=1,30 \
	ro.media.enc.vid.h263.width=176,720 \
	ro.media.enc.vid.h263.height=144,480 \
	ro.media.enc.vid.h263.bps=64000,8000000 \
	ro.media.enc.vid.h263.fps=1,30 \
	ro.media.enc.vid.m4v.width=176,1280 \
	ro.media.enc.vid.m4v.height=144,720 \
	ro.media.enc.vid.m4v.bps=64000,8000000 \
	ro.media.enc.vid.m4v.fps=1,30 \
	ro.media.enc.aud.amrnb.bps=5525,12200 \
	ro.media.enc.aud.amrnb.hz=8000,8000 \
	ro.media.enc.aud.amrnb.ch=1,1 \
	ro.media.enc.aud.aac.bps=8192,96000 \
	ro.media.enc.aud.aac.hz=16000,16000 \
	ro.media.enc.aud.aac.ch=1,1 \
	ro.media.dec.aud.wma.enabled=1 \
	ro.media.dec.vid.wmv.enabled=1 \
	ro.media.cam.preview.fps=0 \
	ro.com.motorola.smartsensor=true \
	networkaddress.cache.ttl=0 \
	ro.min_pointer_dur=10 \
        ro.com.google.gmsversion=2.2_r8 \
	#ro.media.capture.flip=horizontalandvertical \
	#ro.media.sensor.orient=90 

DEVICE_PACKAGE_OVERLAYS += device/motorola/sholest/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/motorola/sholest/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    librs_jni \
    tiwaln.ini \
    dspexec \
    libbridge \
    overlay.omap3 \
    wlan_loader \
    dhcpcd.conf \
    wpa_supplicant.conf \
    libOMX.TI.AAC.decode \
    libOMX.TI.AAC.encode \
    libOMX.TI.AMR.decode \
    libOMX.TI.AMR.encode \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.JPEG.Encoder \
    libLCML \
    libOMX_Core \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libVendor_ti_omx \
    libaudiopolicy \
    Usb \
    sensors.sholest \
    lights.sholest \
    gps.sholest \
    libOMX.TI.AAC.encode \
    libOMX.TI.AAC.decode \
    libOMX.TI.AMR.decode \
    libOMX.TI.AMR.encode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.MP3.decode \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.WMA.decode \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libVendor_ti_omx \
    libLCML \
    libOMX_Core \
    tiwlan.ini \
    dspexec \
    libbridge \
    overlay.omap3 \
    wlan_cu \
    libtiOsLib \
    wlan_loader \
    libCustomWifi \
    wpa_supplicant.conf \
    dhcpcd.conf \
    iwmulticall \
    hostap \
    hostapd.conf \
    libhostapdcli 
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Passion uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_COPY_FILES += \
    device/motorola/sholest/vold.fstab:system/etc/vold.fstab \
    device/motorola/sholest/prebuilt/default.prop:system/default.prop \
    device/motorola/sholest/prebuilt/etc/location.cfg:/system/etc/location.cfg \
    device/motorola/sholest/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/sholest/prebuilt/etc/spn-conf.xml:system/etc/spn-conf.xml \
    device/motorola/sholest/prebuilt/etc/init.d/00banner:/system/etc/init.d/00banner \
    device/motorola/sholest/prebuilt/etc/init.d/01sysctl:/system/etc/init.d/01sysctl \
    device/motorola/sholest/prebuilt/etc/init.d/02cache:/system/etc/init.d/02cache \
    device/motorola/sholest/prebuilt/etc/init.d/03firstboot:/system/etc/init.d/03firstboot \
    device/motorola/sholest/prebuilt/etc/init.d/04modules:/system/etc/init.d/04modules \
    device/motorola/sholest/prebuilt/etc/init.d/05mountsd:/system/etc/init.d/05mountsd \
    device/motorola/sholest/prebuilt/etc/init.d/61touch:/system/etc/init.d/61touch \
    device/motorola/sholest/prebuilt/etc/wifi/tiwlan.ini:/system/etc/wifi/tiwlan.ini \
    device/motorola/sholest/prebuilt/etc/dhcpcd/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf

PRODUCT_COPY_FILES += \
    device/motorola/sholest/prebuilt/lib/modules/cpufreq_conservative.ko:/system/lib/modules/cpufreq_conservative.ko \
    device/motorola/sholest/prebuilt/lib/modules/cpufreq_interactive.ko:/system/lib/modules/cpufreq_interactive.ko \
    device/motorola/sholest/prebuilt/lib/modules/cpufreq_smartass.ko:/system/lib/modules/cpufreq_smartass.ko \
    device/motorola/sholest/prebuilt/lib/modules/crc16.ko:/system/lib/modules/crc16.ko \
    device/motorola/sholest/prebuilt/lib/modules/dm-crypt.ko:/system/lib/modules/dm-crypt.ko \
    device/motorola/sholest/prebuilt/lib/modules/dm-mod.ko:/system/lib/modules/dm-mod.ko \
    device/motorola/sholest/prebuilt/lib/modules/ext2.ko:/system/lib/modules/ext2.ko \
    device/motorola/sholest/prebuilt/lib/modules/ext3.ko:/system/lib/modules/ext3.ko \
    device/motorola/sholest/prebuilt/lib/modules/ext4.ko:/system/lib/modules/ext4.ko \
    device/motorola/sholest/prebuilt/lib/modules/hid-dummy.ko:/system/lib/modules/hid-dummy.ko \
    device/motorola/sholest/prebuilt/lib/modules/mbcache.ko:/system/lib/modules/mbcache.ko \
    device/motorola/sholest/prebuilt/lib/modules/jbd2.ko:/system/lib/modules/jbd2.ko \
    device/motorola/sholest/prebuilt/lib/modules/jbd.ko:/system/lib/modules/jbd.ko \
    device/motorola/sholest/prebuilt/lib/modules/modem_pm_driver.ko:/system/lib/modules/modem_pm_driver.ko \
    device/motorola/sholest/prebuilt/lib/modules/netmux.ko:/system/lib/modules/netmux.ko \
    device/motorola/sholest/prebuilt/lib/modules/netmux_linkdriver.ko:/system/lib/modules/netmux_linkdriver.ko \
    device/motorola/sholest/prebuilt/lib/modules/output.ko:/system/lib/modules/output.ko \
    device/motorola/sholest/prebuilt/lib/modules/overclock.ko:/system/lib/modules/overclock.ko \
    device/motorola/sholest/prebuilt/lib/modules/overclock_milestone_21.ko:/system/lib/modules/overclock_milestone_21.ko \
    device/motorola/sholest/prebuilt/lib/modules/pcbc.ko:/system/lib/modules/pcbc.ko \
    device/motorola/sholest/prebuilt/lib/modules/sec.ko:/system/lib/modules/sec.ko \
    device/motorola/sholest/prebuilt/lib/modules/tiap_drv.ko:/system/lib/modules/tiap_drv.ko \
    device/motorola/sholest/prebuilt/lib/modules/tiwlan_drv.ko:/system/lib/modules/tiwlan_drv.ko \
    device/motorola/sholest/prebuilt/lib/modules/twofish_common.ko:/system/lib/modules/twofish_common.ko \
    device/motorola/sholest/prebuilt/lib/modules/twofish.ko:/system/lib/modules/twofish.ko \
    device/motorola/sholest/prebuilt/lib/modules/wl127x_test.ko:/system/lib/modules/wl127x_test.ko \
    device/motorola/sholest/prebuilt/lib/modules/wl127x-test.ko:/system/lib/modules/wl127x-test.ko

PRODUCT_COPY_FILES += \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/sh:/system/persistent/orbootstrap/sh \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/default.prop:/system/persistent/orbootstrap/default.prop \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/install.sh:/system/persistent/orbootstrap/install.sh \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/reboot:/system/persistent/orbootstrap/reboot \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/utils/install.mapphone_umts.btsh:/system/persistent/orbootstrap/utils/install.mapphone_umts.btsh \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/utils/2nd-init:/system/persistent/orbootstrap/utils/2nd-init \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/utils/bootstrapbox:/system/persistent/orbootstrap/utils/bootstrapbox \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/progress_bar_left_round.png:/system/persistent/orbootstrap/res/images/progress_bar_left_round.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/progress_bar_right_round.png:/system/persistent/orbootstrap/res/images/progress_bar_right_round.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/progress_bar_fill.png:/system/persistent/orbootstrap/res/images/progress_bar_fill.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/indeterminate1.png:/system/persistent/orbootstrap/res/images/indeterminate1.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/progress_bar_empty.png:/system/persistent/orbootstrap/res/images/progress_bar_empty.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/icon_error.png:/system/persistent/orbootstrap/res/images/icon_error.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/indeterminate5.png:/system/persistent/orbootstrap/res/images/indeterminate5.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/indeterminate2.png:/system/persistent/orbootstrap/res/images/indeterminate2.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/indeterminate3.png:/system/persistent/orbootstrap/res/images/indeterminate3.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/progress_bar_empty_left_round.png:/system/persistent/orbootstrap/res/images/progress_bar_empty_left_round.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/icon_installing.png:/system/persistent/orbootstrap/res/images/icon_installing.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/progress_bar_empty_right_round.png:/system/persistent/orbootstrap/res/images/progress_bar_empty_right_round.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/icon_firmware_error.png:/system/persistent/orbootstrap/res/images/icon_firmware_error.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/icon_firmware_install.png:/system/persistent/orbootstrap/res/images/icon_firmware_install.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/indeterminate6.png:/system/persistent/orbootstrap/res/images/indeterminate6.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/images/indeterminate4.png:/system/persistent/orbootstrap/res/images/indeterminate4.png \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/res/ui.prop:/system/persistent/orbootstrap/res/ui.prop \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/init.rc:/system/persistent/orbootstrap/init.rc \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/menu/init.menu:/system/persistent/orbootstrap/menu/init.menu \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/sbin/updater:/system/persistent/orbootstrap/sbin/updater \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/sbin/recovery:/system/persistent/orbootstrap/sbin/recovery

PRODUCT_COPY_FILES += \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/sh:/system/bin/sh \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/reboot:/system/bin/reboot \
    device/motorola/sholest/prebuilt/persistent/orbootstrap/utils/2nd-init:/system/bin/2nd-init \
    device/motorola/sholest/prebuilt/bin/sh_hijack.sh:/system/bin/sh_hijack.sh \
    device/motorola/sholest/prebuilt/bin/launchGallery:/system/bin/launchGallery \
    device/motorola/sholest/prebuilt/etc/rootfs/default.prop:/system/etc/rootfs/default.prop \
    device/motorola/sholest/prebuilt/etc/rootfs/init.mapphone_umts.rc:/system/etc/rootfs/init.mapphone_umts.rc \
    device/motorola/sholest/prebuilt/etc/rootfs/init.rc:/system/etc/rootfs/init.rc


$(call inherit-product, device/motorola/sholest/sholest-vendor-blobs.mk)

# media profiles and capabilities spec
# $(call inherit-product, device/motorola/sholes/media_a1026.mk)

# stuff common to all HTC phones
#$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full.mk)


PRODUCT_NAME := sholest
PRODUCT_DEVICE := sholest
