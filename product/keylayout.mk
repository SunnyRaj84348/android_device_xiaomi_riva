# Keylayouts
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/keylayout/ft5x06_720p.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_720p.kl \
    $(VENDOR_PATH)/keylayout/gf3208.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gf3208.kl \
    $(VENDOR_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(VENDOR_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl

# IDC
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/idc/gf3208.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/gf3208.idc \
    $(VENDOR_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc
