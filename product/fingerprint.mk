# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Non-fp patch
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_features.sh:install/bin/check_features.sh
