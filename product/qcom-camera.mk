# Snap
PRODUCT_PACKAGES += \
    Snap

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    camera.display.umax=1920x1080 \
    camera.display.lmax=1280x720 \
    camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
    persist.camera.gyro.android=1 \
    persist.camera.HAL3.enabled=0 \
    persist.camera.is_type=1 \
    vidc.enc.narrow.searchrange=1
