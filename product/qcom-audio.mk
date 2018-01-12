PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8937 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    tinymix

# Audio configuration
PRODUCT_COPY_FILES += \
	$(VENDOR_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(VENDOR_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
	$(VENDOR_PATH)/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
	$(VENDOR_PATH)/audio/mixer_paths_qrd_sku1.xml:system/etc/mixer_paths_qrd_sku1.xml \
	$(VENDOR_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
	$(VENDOR_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
        $(VENDOR_PATH)/audio/audio_tuning_mixer.txt:system/etc/audio_tuning_mixer.txt

# XML Audio configuration files
PRODUCT_COPY_FILES += \
	$(VENDOR_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
	$(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
        $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=2 \
    audio.deep_buffer.media=true \
    audio.offload.disable=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.speaker.prot.enable=false \
    ro.vendor.audio.sdk.ssr=false \
    ro.vendor.audio.sdk.fluencetype=fluence \
    audio.parser.ip.buffer.size=262144 \
    vendor.audio_hal.period_size=192 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.track.enable=true \
    vendor.audio.playback.mch.downsample=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.pp.asphere.enabled=false \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.voice.playback.conc.disabled=true \
    vendor.voice.record.conc.disabled=false \
    vendor.voice.voip.conc.disabled=true \
    vendor.voice.conc.fallbackpath=deep-buffer
