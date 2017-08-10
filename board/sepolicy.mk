include device/qcom/sepolicy/sepolicy.mk

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(VENDOR_PATH)/sepolicy/vendor

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(VENDOR_PATH)/sepolicy/private
