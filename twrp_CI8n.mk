#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Inherit from those products. Most specific first.


# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

$(call inherit-product, device/tecno/CI8n/device.mk)

$(call inherit-product, vendor/twrp/config/common.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CI8n
PRODUCT_NAME := twrp_CI8n
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Camon 19 Pro
PRODUCT_MANUFACTURER := Tecno
PRODUCT_RELEASE_NAME := Tecno Camon 19 Pro
PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ci8_h816-user 12 SP1A.210812.016 302591 release-keys"

BUILD_FINGERPRINT := TECNO/CI8n-GL/TECNO-CI8n:12/SP1A.210812.016/220519V880:user/release-keys
