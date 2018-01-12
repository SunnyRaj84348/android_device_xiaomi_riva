# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Wi-Fi
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Wi-Fi HIDL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(VENDOR_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/wifi/firmware/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(VENDOR_PATH)/wifi/firmware/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini
