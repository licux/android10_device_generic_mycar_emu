# TARGET_ARCH is defined in x86emu.mk
ARCH=$(TARGET_ARCH)
BUILD_CONFIG=goldfish/build.config.goldfish.x86_64

# PRODUCT_OUT is defined in x86emu.mk
#TARGET_OUT_INTERMEDIATES ?= $(PRODUCT_OUT)/obj
#KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ
#KERNEL_CONFIG := $(KERNEL_OUT)/.config
#TARGET_KERNEL := $(KERNEL_OUT)/arch/$(TARGET_ARCH)/boot/bzImage


# make output dir ofr object file
#$(KERNEL_OUT):
	#mkdir -p $(KERNEL_OUT)

# Set kenel config to gerenrate .config
# TARGET_KERNEL_CONFIG is defined in x86emu
$(KERNEL_IMAGE):
	cd kernel; BUILD_CONFIG=$(BUILD_CONFIG) build/build.sh 
#	echo $(MAKE) -C kernel O=../$(KERNEL_OUT) ARCH=$(TARGET_ARCH) $(TARGET_KERNEL_CONFIG)
#	$(MAKE) -C kernel O=../$(KERNEL_OUT) ARCH=$(TARGET_ARCH) $(TARGET_KERNEL_CONFIG)
