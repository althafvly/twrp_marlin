#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# OEM Info
BOARD_VENDOR := google

# Define hardware platform
PRODUCT_PLATFORM := msm8996

# Release name
PRODUCT_RELEASE_NAME := marlin

PRODUCT_NAME := omni_marlin
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := $(BOARD_VENDOR)
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RESTRICT_VENDOR_FILES := false

TARGET_VENDOR_PRODUCT_NAME := marlin
TARGET_VENDOR_DEVICE_NAME := marlin

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=marlin \
    BUILD_PRODUCT=marlin \
    PRODUCT_NAME=marlin

PRODUCT_COPY_FILES += device/google/marlin/fstab.common:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.marlin

$(call inherit-product, device/google/marlin/device-marlin.mk)
$(call inherit-product-if-exists, vendor/google_devices/marlin/device-vendor-marlin.mk)
