USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/sidekick4g/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := sidekick4g

BOARD_KERNEL_CMDLINE := console=ttyFIQ0 no_console_suspend
BOARD_KERNEL_BASE := 0x30000000
BOARD_PAGE_SIZE := 0x00001000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/sidekick4g/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/sidekick4g/recovery_ui.c
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_UMS_LUNFILE := /sys/devices/platform/s3c-usbgadget/gadget/lun0/file