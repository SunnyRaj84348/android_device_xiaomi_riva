# Keylayouts
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/keylayout/ft5x06_720p.kl:system/usr/keylayout/ft5x06_720p.kl \
    $(VENDOR_PATH)/keylayout/gf3208.kl:system/usr/keylayout/gf3208.kl \
    $(VENDOR_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(VENDOR_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# IDC
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/idc/gf3208.idc:system/usr/idc/gf3208.idc \
    $(VENDOR_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc
