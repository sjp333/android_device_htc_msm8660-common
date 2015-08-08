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

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8660

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_VENDOR := htc

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_CAMCORDER := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
QCOM_ANC_HEADSET_ENABLED := false
QCOM_FLUENCE_ENABLED := false
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO -DLEGACY_QCOM_VOICE -DQCOM_ACDB_ENABLED

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/msm8660-common/bluetooth/include

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW
BOARD_HAVE_HTC_FFC := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_DISABLE_ARM_PIE := true
BOARD_USES_PMEM_CAMERA := true

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DREFRESH_RATE=60 -DHTC_RGBA_8888_OFFSET
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_NEEDS_FNW := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_ENABLE_AV_ENHANCEMENTS := true
TARGET_USES_POST_PROCESSING := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EGL_CFG := device/htc/msm8660-common/configs/egl.cfg

# Lights
# legacy LIBLIGHT naming
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Boot-animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# OpenGL
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Hardware tunables
BOARD_HARDWARE_CLASS := device/htc/msm8660-common/cmhw

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
