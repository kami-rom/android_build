# Configuration for Linux on ARM.
# Generating binaries for the ARMv7-a architecture and higher with NEON
#
ARCH_ARM_HAVE_ARMV7A            := true
ARCH_ARM_HAVE_TLS_REGISTER      := true
ARCH_ARM_HAVE_VFP               := true
ARCH_ARM_HAVE_VFP_D32           := true
ARCH_ARM_HAVE_NEON              := true

ifeq ($(strip $(TARGET_CPU_VARIANT)),cortex-a15)
	arch_variant_cflags := -mcpu=cortex-a15
else
<<<<<<< HEAD
<<<<<<< HEAD
ifeq ($(strip $(TARGET_CPU_VARIANT)),cortex-a9)
=======
ifeq ($(strip $(TARGET_CPU_VARIANT)), cortex-a9)
>>>>>>> 0cf8940... JustArchi's ArchiDroid Optimizations V3
=======
ifeq ($(strip $(TARGET_CPU_VARIANT)), cortex-a9)
>>>>>>> 0cf8940... JustArchi's ArchiDroid Optimizations V3
	arch_variant_cflags := -mcpu=cortex-a9
else
ifeq ($(strip $(TARGET_CPU_VARIANT)),cortex-a8)
	arch_variant_cflags := -mcpu=cortex-a8
	arch_variant_ldflags := -Wl,--fix-cortex-a8
else
ifeq ($(strip $(TARGET_CPU_VARIANT)),cortex-a7)
	arch_variant_cflags := -mcpu=cortex-a7
else
ifeq ($(strip $(TARGET_CPU_VARIANT)),cortex-a5)
	arch_variant_cflags := -mcpu=cortex-a5
else
ifeq ($(strip $(TARGET_CPU_VARIANT)),krait)
	arch_variant_cflags := -mcpu=cortex-a9
else
ifeq ($(strip $(TARGET_CPU_VARIANT)),scorpion)
	arch_variant_cflags := -mcpu=cortex-a8
else
	arch_variant_cflags := -march=armv7-a
endif
endif
endif
endif
<<<<<<< HEAD
<<<<<<< HEAD
endif
endif
endif
=======
>>>>>>> 0cf8940... JustArchi's ArchiDroid Optimizations V3
=======
>>>>>>> 0cf8940... JustArchi's ArchiDroid Optimizations V3

arch_variant_cflags += \
    -mfloat-abi=softfp \
    -mfpu=neon
