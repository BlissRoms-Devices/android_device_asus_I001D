# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/asus/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := asus

DEVICE_PATH := device/asus/I001D

# Assertions
TARGET_OTA_ASSERT_DEVICE := WW_I001D,I001D

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/I001D_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/asus/I001D

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 118112366592
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/driver/dclick"

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
-include vendor/asus/I001D/BoardConfigVendor.mk
