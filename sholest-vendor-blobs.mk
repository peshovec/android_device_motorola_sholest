# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,BOARD
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    device/motorola/sholest/proprietary/lib/libgps.so:obj/lib/libgps.so \
    device/motorola/sholest/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    device/motorola/sholest/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    device/motorola/sholest/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
    device/motorola/sholest/proprietary/lib/libril-moto-umts-1.so:obj/lib/libril-moto-umts-1.so \
    device/motorola/sholest/proprietary/lib/hw/gralloc.omap3.so:obj/lib/hw/gralloc.omap3.so 

# All the blobs necessary 
PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/etc/cameraCalFileDef.bin:/system/etc/cameraCalFileDef.bin 

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/etc/gpsconfig.xml:/system/etc/gpsconfig.xml 

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio4:/system/etc/motorola/bp_nvm_default/File_Audio4 \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_GSM:/system/etc/motorola/bp_nvm_default/File_GSM \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio7:/system/etc/motorola/bp_nvm_default/File_Audio7 \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio3:/system/etc/motorola/bp_nvm_default/File_Audio3 \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables:/system/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio6:/system/etc/motorola/bp_nvm_default/File_Audio6 \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio2:/system/etc/motorola/bp_nvm_default/File_Audio2 \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Logger:/system/etc/motorola/bp_nvm_default/File_Logger \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_GPRS:/system/etc/motorola/bp_nvm_default/File_GPRS \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio5:/system/etc/motorola/bp_nvm_default/File_Audio5 \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio:/system/etc/motorola/bp_nvm_default/File_Audio \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_UMA:/system/etc/motorola/bp_nvm_default/File_UMA \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB \
    device/motorola/sholest/proprietary/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB \
    device/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_user_settings.cfg:/system/etc/motorola/comm_drv/mmins_user_settings.cfg \
    device/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_telephony.cfg:/system/etc/motorola/comm_drv/mmins_telephony.cfg \
    device/motorola/sholest/proprietary/etc/motorola/comm_drv/PLMN_VERSION.txt:/system/etc/motorola/comm_drv/PLMN_VERSION.txt \
    device/motorola/sholest/proprietary/etc/motorola/comm_drv/plmn_text_table.bin:/system/etc/motorola/comm_drv/plmn_text_table.bin \
    device/motorola/sholest/proprietary/etc/motorola/comm_drv/commdrv_fs.sh:/system/etc/motorola/comm_drv/commdrv_fs.sh \
    device/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_settings.cfg:/system/etc/motorola/comm_drv/mmins_settings.cfg \
	device/motorola/sholest/proprietary/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg:/system/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/etc/firmware/wl1271.bin:/system/etc/firmware/wl1271.bin \
    device/motorola/sholest/proprietary/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/motorola/sholest/proprietary/etc/wifi/hostapd.conf.templet:/system/etc/wifi/hostapd.conf.templet \
    device/motorola/sholest/proprietary/etc/wifi/fw_wlan1271.bin:/system/etc/wifi/fw_wlan1271.bin \
    device/motorola/sholest/proprietary/etc/wifi/fw_tiwlan_ap.bin:/system/etc/wifi/fw_tiwlan_ap.bin \
    device/motorola/sholest/proprietary/etc/wifi/tiwlan_ap.ini:/system/etc/wifi/tiwlan_ap.ini

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/usr/bin/nvm_daemon:/system/bin/nvm_daemon \
    device/motorola/sholest/proprietary/usr/bin/brcm_guci_drv:/system/bin/brcm_guci_drv \

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/bin/init_prep_keypad.sh:/system/bin/init_prep_keypad.sh \
    device/motorola/sholest/proprietary/bin/dnsmasq_mot:/system/bin/dnsmasq_mot \
    device/motorola/sholest/proprietary/bin/battd:/system/bin/battd \
    device/motorola/sholest/proprietary/bin/akmd2:/system/bin/akmd2 \
    device/motorola/sholest/proprietary/bin/protocol_driver:/system/bin/protocol_driver \
    device/motorola/sholest/proprietary/bin/ap_gain_france.bin:/system/bin/ap_gain_france.bin \
    device/motorola/sholest/proprietary/bin/gkisystem:/system/bin/gkisystem \
    device/motorola/sholest/proprietary/bin/opprofdaemon:/system/bin/opprofdaemon \
    device/motorola/sholest/proprietary/bin/ap_gain.bin:/system/bin/ap_gain.bin \
    device/motorola/sholest/proprietary/bin/pvrsrvinit:/system/bin/pvrsrvinit \
    device/motorola/sholest/proprietary/bin/location:/system/bin/location \
    device/motorola/sholest/proprietary/bin/usbd:/system/bin/usbd \

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/xbin/ssmgrd:/system/xbin/ssmgrd 

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/usr/keylayout/sholesp1a-keypad.kl:/system/usr/keylayout/sholesp1a-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholesp0b-keypad.kl:/system/usr/keylayout/sholesp0b-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/cpcap-key.kl:/system/usr/keylayout/cpcap-key.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholesp2a-keypad.kl:/system/usr/keylayout/sholesp2a-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholesp1b-keypad.kl:/system/usr/keylayout/sholesp1b-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \
    device/motorola/sholest/proprietary/usr/keylayout/qtouch-touchscreen.kl:/system/usr/keylayout/qtouch-touchscreen.kl \
    device/motorola/sholest/proprietary/usr/keylayout/qwerty.kl:/system/usr/keylayout/qwerty.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholes-keypad.kl:/system/usr/keylayout/sholes-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholestabletp1cu-keypad.kl:/system/usr/keylayout/sholestabletp1cu-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholestabletp1skt-keypad.kl:/system/usr/keylayout/sholestabletp1skt-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholestabletp2cu-keypad.kl:/system/usr/keylayout/sholestabletp2cu-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholestabletp2skt-keypad.kl:/system/usr/keylayout/sholestabletp2skt-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholestabletp3cu-keypad.kl:/system/usr/keylayout/sholestabletp3cu-keypad.kl \
    device/motorola/sholest/proprietary/usr/keylayout/sholestabletp3skt-keypad.kl:/system/usr/keylayout/sholestabletp3skt-keypad.kl \
    device/motorola/sholest/proprietary/usr/keychars/sholesp0b-keypad.kcm.bin:/system/usr/keychars/sholesp0b-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholesp1b-keypad.kcm.bin:/system/usr/keychars/sholesp1b-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholesp1a-keypad.kcm.bin:/system/usr/keychars/sholesp1a-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/icestorms0a-keypad.kcm.bin:/system/usr/keychars/icestorms0a-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/qtouch-touchscreen.kl:/system/usr/keychars/qtouch-touchscreen.kl \
    device/motorola/sholest/proprietary/usr/keychars/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholes-keypad.kcm.bin:/system/usr/keychars/sholes-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholesp2a-keypad.kcm.bin:/system/usr/keychars/sholesp2a-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholestabletp1cu-keypad.kcm.bin:/system/usr/keychars/sholestabletp1cu-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholestabletp1skt-keypad.kcm.bin:/system/usr/keychars/sholestabletp1skt-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholestabletp2cu-keypad.kcm.bin:/system/usr/keychars/sholestabletp2cu-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholestabletp2skt-keypad.kcm.bin:/system/usr/keychars/sholestabletp2skt-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholestabletp3cu-keypad.kcm.bin:/system/usr/keychars/sholestabletp3cu-keypad.kcm.bin \
    device/motorola/sholest/proprietary/usr/keychars/sholestabletp3skt-keypad.kcm.bin:/system/usr/keychars/sholestabletp3skt-keypad.kcm.bin

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/lib/hw/gralloc.omap3.so:/system/lib/hw/gralloc.omap3.so

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/lib/egl/libGLESv2_POWERVR_SGX530_121.so:/system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
    device/motorola/sholest/proprietary/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so:/system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
    device/motorola/sholest/proprietary/lib/egl/libEGL_POWERVR_SGX530_121.so:/system/lib/egl/libEGL_POWERVR_SGX530_121.so \
    device/motorola/sholest/proprietary/lib/libpvrANDROID_WSEGL.so:/system/lib/libpvrANDROID_WSEGL.so

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/lib/libIMGegl.so:/system/lib/libIMGegl.so \
    device/motorola/sholest/proprietary/lib/libsrv_um.so:/system/lib/libsrv_um.so \
    device/motorola/sholest/proprietary/lib/libssmgr.so:/system/lib/libssmgr.so \
    device/motorola/sholest/proprietary/lib/libsktdrm.so:/system/lib/libsktdrm.so \
    device/motorola/sholest/proprietary/lib/libtpa.so:/system/lib/libtpa.so \
    device/motorola/sholest/proprietary/lib/libpvr2d.so:/system/lib/libpvr2d.so \
    device/motorola/sholest/proprietary/lib/libcamera.so:/system/lib/libcamera.so \
    device/motorola/sholest/proprietary/lib/libaudio.so:/system/lib/libaudio.so \
    device/motorola/sholest/proprietary/lib/libgki.so:/system/lib/libgki.so \
    device/motorola/sholest/proprietary/lib/libbattd.so:/system/lib/libbattd.so \
    device/motorola/sholest/proprietary/lib/libglslcompiler.so:/system/lib/libglslcompiler.so \
    device/motorola/sholest/proprietary/lib/libmsl_interface.so:/system/lib/libmsl_interface.so \
    device/motorola/sholest/proprietary/lib/libmotodbgutils.so:/system/lib/libmotodbgutils.so \
    device/motorola/sholest/proprietary/lib/libgps.so:/system/lib/libgps.so \
    device/motorola/sholest/proprietary/lib/libmotdb.so:/system/lib/libmotdb.so \
    device/motorola/sholest/proprietary/lib/libHPImgApi.so:/system/lib/libHPImgApi.so \
    device/motorola/sholest/proprietary/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/motorola/sholest/proprietary/lib/libtpa_core.so:/system/lib/libtpa_core.so \
    device/motorola/sholest/proprietary/lib/libril-moto-umts-1.so:/system/lib/libril-moto-umts-1.so \


PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/lib/modules/netmux.ko:/system/lib/modules/netmux.ko \
    device/motorola/sholest/proprietary/lib/modules/output.ko:/system/lib/modules/output.ko \
    device/motorola/sholest/proprietary/lib/modules/pcbc.ko:/system/lib/modules/pcbc.ko \
    device/motorola/sholest/proprietary/lib/modules/wl127x-test.ko:/system/lib/modules/wl127x-test.ko \
    device/motorola/sholest/proprietary/lib/modules/sec.ko:/system/lib/modules/sec.ko \
    device/motorola/sholest/proprietary/lib/modules/modem_pm_driver.ko:/system/lib/modules/modem_pm_driver.ko \
    device/motorola/sholest/proprietary/lib/modules/tiwlan_drv.ko:/system/lib/modules/tiwlan_drv.ko \
    device/motorola/sholest/proprietary/lib/modules/tiap_drv.ko:/system/lib/modules/tiap_drv.ko \
    device/motorola/sholest/proprietary/lib/modules/hid-dummy.ko:/system/lib/modules/hid-dummy.ko \
    device/motorola/sholest/proprietary/lib/modules/netmux_linkdriver.ko:/system/lib/modules/netmux_linkdriver.ko

PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/lib/dsp/wmadec_sn.dll64P:/system/lib/dsp/wmadec_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/wmv9dec_sn.dll64P:/system/lib/dsp/wmv9dec_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/nbamrenc_sn.dll64P:/system/lib/dsp/nbamrenc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/wbamrenc_sn.dll64P:/system/lib/dsp/wbamrenc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/usn.dll64P:/system/lib/dsp/usn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/ringio.dll64P:/system/lib/dsp/ringio.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/postprocessor_dualout.dll64P:/system/lib/dsp/postprocessor_dualout.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/mpeg4ingenc_sn.dll64P:/system/lib/dsp/mpeg4ingenc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/mpeg4ingdec_sn.dll64P:/system/lib/dsp/mpeg4ingdec_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/mpeg4aacenc_sn.dll64P:/system/lib/dsp/mpeg4aacenc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/mp4vdec_sn.dll64P:/system/lib/dsp/mp4vdec_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/m4venc_sn.dll64P:/system/lib/dsp/m4venc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/jpegenc_sn.dll64P:/system/lib/dsp/jpegenc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/h264venc_sn.dll64P:/system/lib/dsp/h264venc_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/h264vdec_sn.dll64P:/system/lib/dsp/h264vdec_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/h264ingdec_sn.dll64P:/system/lib/dsp/h264ingdec_sn.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/conversions.dll64P:/system/lib/dsp/conversions.dll64P \
    device/motorola/sholest/proprietary/lib/dsp/baseimage.dof:/system/lib/dsp/baseimage.dof


PRODUCT_COPY_FILES += \
    device/motorola/sholest/proprietary/app/FMRadio-fwals.apk:/system/app/FMRadio.apk \
    device/motorola/sholest/proprietary/bin/fmradioserver:/system/bin/fmradioserver \
    device/motorola/sholest/proprietary/etc/fm_rx_init_1273.2.bts:/system/etc/fm_rx_init_1273.2.bts \
    device/motorola/sholest/proprietary/etc/fmc_init_1273.2.bts:/system/etc/fmc_init_1273.2.bts \
    device/motorola/sholest/proprietary/lib/libfmradio.so:/system/lib/libfmradio.so \
    device/motorola/sholest/proprietary/lib/libfmradio_jni.so:/system/lib/libfmradio_jni.so \
    device/motorola/sholest/proprietary/lib/libfmradiostackservice.so:/system/lib/libfmradiostackservice.so
    device/motorola/sholest/proprietary/app/Usb.apk:/system/app/Usb.apk #while can't use buildded from source   


