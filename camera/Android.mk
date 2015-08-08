LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR),htc)
ifeq ($(TARGET_BOARD_PLATFORM),msm8660)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES       += system/media/camera/include
LOCAL_SHARED_LIBRARIES := libhardware liblog libcamera_client libutils
LOCAL_SRC_FILES        := CameraWrapper.cpp
LOCAL_MODULE           := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_PATH      := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS      := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES :=
LOCAL_SRC_FILES        :=
LOCAL_MODULE           := libsurfaceflinger_client
LOCAL_MODULE_TAGS      := optional
include $(BUILD_SHARED_LIBRARY)

endif # TARGET_BOARD_PLATFORM
endif # BOARD_VENDOR
