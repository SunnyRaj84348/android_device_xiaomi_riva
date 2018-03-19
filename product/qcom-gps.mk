# GPS
PRODUCT_PACKAGES += \
    gps.msm8937 \
    libcurl \
    libgnsspps

PRODUCT_BOOT_JARS += \
    com.qti.location.sdk

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(VENDOR_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(VENDOR_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(VENDOR_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(VENDOR_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(VENDOR_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
