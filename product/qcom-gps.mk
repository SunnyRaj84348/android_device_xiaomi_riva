# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl-qti \
    libcurl \
    libgnss \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/gps/etc/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(VENDOR_PATH)/gps/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(VENDOR_PATH)/gps/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(VENDOR_PATH)/gps/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(VENDOR_PATH)/gps/etc/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(VENDOR_PATH)/gps/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(VENDOR_PATH)/gps/etc/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
