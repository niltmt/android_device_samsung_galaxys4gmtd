# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Import the aries-common BoardConfigCommon.mk
include device/samsung/aries-common/BoardConfigCommon.mk

#Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/aries
TARGET_KERNEL_CUSTOM_RAMDISK := false
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxys4gmtd/shbootimg.mk

# Kernel Config
TARGET_KERNEL_CONFIG := niltmt_galaxys4gmtd_defconfig

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxys4gmtd/recovery/recovery_keys.c

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxys4gmtd/bluetooth

TARGET_OTA_ASSERT_DEVICE := galaxys4g,galaxys4gmtd,SGH-T959V,SGH-T959W

# Override stuff that doesn't match aries-common
TARGET_USERIMAGES_USE_EXT4 := false
BOARD_SECOND_CAMERA_DEVICE := /dev/video2
TARGET_PROVIDES_LIBCAMERA := true
TARGET_RECOVERY_FSTAB := device/samsung/galaxys4gmtd/fstab.aries
RECOVERY_FSTAB_VERSION := 2

# SELinux
BOARD_SEPOLICY_DIRS := $(filter-out device/samsung/aries-common/sepolicy,$BOARD_SEPOLICY_DIRS)
BOARD_SEPOLICY_DIRS += \
    device/samsung/galaxys4gmtd/sepolicy

# Based on kernel header
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 393216000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 553123840

# TWRP
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_INJECTTWRP := false
TW_NO_REBOOT_BOOTLOADER := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/s5p_bl/brightness"
TW_MAX_BRIGHTNESS := 255
