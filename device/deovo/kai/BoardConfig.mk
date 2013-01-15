#
# Copyright (C) 2012 The CyanogenMod Project
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

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Audio
BOARD_USES_GENERIC_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := false
TARGET_PROVIDES_LIBLIGHTS := true

#Camera
USE_CAMERA_STUB := true

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Board nameing
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := 
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t30

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/deovo/kai/configs/egl.cfg

 # Connectivity - Wi-Fi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

# BT
BOARD_HAVE_BLUETOOTH := true

# Marvell ril compatability
#BOARD_USE_NEW_LIBRIL_MARVELL := true
TARGET_PROVIDES_LIBRIL := vendor/deovo/kai/proprietary/lib/libmarvell-ril.so

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

#-----------------------------no need to be edit upper---------------------------

# Vold / USB -----you can edit this Vold part to fix app2sd,like definations of Internal SD & External SD
BOARD_VOLD_MAX_PARTITIONS := 20
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH :=  /sys/class/android_usb/android0/f_mass_storage/lun/file

#-----------------------------no need to be edit below---------------------------
# Kernel / Ramdisk
TARGET_PREBUILT_KERNEL := device/deovo/kai/prebuilt/kernel
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 527433728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 4096

#Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/deovo/kai/prebuilt/kernel
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
