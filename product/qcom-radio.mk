# IRSC
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    libjson

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.data.iwlan.enable=true \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.radio.calls.on.ims=true \
    persist.radio.csvt.enabled=false \
    persist.radio.jbims=0 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.DROPSETENABLE=1 \
    persist.radio.aosp_usr_pref_sel=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.radio.force_on_dc=true \
    persist.radio.ignore_dom_time=5 \
    persist.radio.mt_sms_ack=20 \
    persist.radio.multisim.config=dsds \
    persist.radio.VT_CAM_INTERFACE=2 \
    persist.radio.VT_ENABLE=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    ril.ecclist=100,101,102,108,112 \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.default_network=20 \
    ro.use_data_netmgrd=true \
    service.qti.ims.enabled=1 \
    telephony.lteOnCdmaDevice=1

# Radio
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    ims-ext-common

PRODUCT_BOOT_JARS += \
    telephony-ext

# Whitelisted app
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# Privileged app
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml
