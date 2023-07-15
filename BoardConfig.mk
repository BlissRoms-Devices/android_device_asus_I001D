#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/asus/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/I001D

# Assertions
TARGET_OTA_ASSERT_DEVICE := WW_I001D,I001D

# Kernel
TARGET_KERNEL_CONFIG := vendor/I001D_defconfig
TARGET_KERNEL_SOURCE := kernel/asus/I001D
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 118112366592
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/etc/fstab.qcom

# Security patch level
VENDOR_SECURITY_PATCH := 2022-01-01

# Inherit the proprietary files
include vendor/asus/I001D/BoardConfigVendor.mk
