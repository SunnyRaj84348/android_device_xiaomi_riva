# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.power.rc

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.am.reschedule_service=true \
    ro.vendor.extension_library=libqti-perfd-client.so
