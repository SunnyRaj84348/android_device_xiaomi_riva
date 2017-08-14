# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/ft5336_ts.kl:system/usr/keylayout/ft5336_ts.kl \
    $(DEVICE_PATH)/keylayout/gf3208.kl:system/usr/keylayout/gf3208.kl \
    $(DEVICE_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(DEVICE_PATH)/keylayout/msm8952-snd-card-sku1_Button_Jack.kl:system/usr/keylayout/msm8952-snd-card-sku1_Button_Jack.kl \
    $(DEVICE_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

# IDC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/idc/gf3208.idc:system/usr/idc/gf3208.idc \
    $(DEVICE_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc
