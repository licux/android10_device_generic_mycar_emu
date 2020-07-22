$(call inherit-product, device/generic/car/common/car.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_x86_64.mk)


PRODUCT_NAME := mycar_emu
PRODUCT_DEVICE := mycar_emu
#PRODUCT_DEVICE := generic_x86_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := My car on x86_64 emulator

TARGET_KERNEL_SOURCE := kernel
TARGET_KERNEL_CONFIG := x86_64_ranchu_defconfig
TARGET_ARCH := x86_64
KERNEL_IMAGE := out/dist/bzImage

PRODUCT_OUT ?= out/target/product/mycar_emu

include device/generic/mycar_emu/AndroidKernel.mk

LOCAL_KERNEL := $(TARGET_KERNEL)

PRODUCT_COPY_FILES += \
	$(TARGET_KERNEL_SOURCE)/$(KERNEL_IMAGE):kernel \
