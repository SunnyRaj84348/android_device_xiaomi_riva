#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

VENDOR_PATH := device/xiaomi/msm8937-common

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(VENDOR_PATH)/overlay \
    $(VENDOR_PATH)/overlay-lineage

# Include device-specific product fragments
include $(VENDOR_PATH)/product/*.mk

# Inherit common proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/msm8937-common/msm8937-common-vendor.mk)
