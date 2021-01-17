#
# Copyright 2021 The Android Open Source Project
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

DEVICE_PATH := device/samsung/f41dd

# Primary Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a73
TARGET_CPU_SMP := true

# 2nd Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel: Base flags
BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos9611 androidboot.selinux=permissive
BOARD_BOOTIMG_HEADER_VERSION := 2

# Kernel: Offset and others flags
BOARD_NAME               := SRPSL10A001RU
BOARD_KERNEL_BASE        := 0x10000000
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_FLASH_BLOCK_SIZE   := 131072
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

# Kernel: mkbootimg flags
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)

# Prebuilt: Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_KERNEL_IMAGE_NAME := Image

# Prebuilt: DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtbs

# Prebuilt: DTBO
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo

# Platform
TARGET_BOARD_PLATFORM := universal9611
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Assert
TARGET_OTA_ASSERT_DEVICE := f41dd

# Dynamic Partition
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6539968512
BOARD_SUPER_PARTITION_SIZE := 6539968512

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Target out
TARGET_COPY_OUT_VENDOR := vendor

# Encryption
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Recovery
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# TWRP Configs
TW_THEME := portrait_hdpi
TW_H_OFFSET := -80
TW_Y_OFFSET := 80
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true

# Brightness
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
