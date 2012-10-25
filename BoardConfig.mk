USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/primou/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := primou

# Platform
TARGET_BOARD_PLATFORM := msm8255
TARGET_BOARD_PLATFORM_GPU := qcom-adreno205

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true


BOARD_KERNEL_CMDLINE :=  console=ttyHSL0,115200,n8 androidboot.hardware=primou
BOARD_KERNEL_BASE :=  0x13F00000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x080000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x0010FE80000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x63BFFC0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x79FFFC0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/primou/kernel

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Recovery:Start

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery: set depending on recovery being built for. (CWM or TWRP)
#           both init scripts can be found in the recovery folder
TARGET_RECOVERY_INITRC := device/htc/primou/recovery/init-twrp.rc

# TWRP specific build flags
DEVICE_RESOLUTION := 480x800
TW_FLASH_FROM_STORAGE := true
TW_INCLUDE_DUMLOCK := true
