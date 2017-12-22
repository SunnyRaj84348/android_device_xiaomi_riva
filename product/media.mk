# Media
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(VENDOR_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(VENDOR_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.disable_bframes=1 \
    vidc.enc.narrow.searchrange=1 \
    vidc.disable.split.mode=1

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(VENDOR_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy
