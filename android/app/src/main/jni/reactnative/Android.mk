LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := reactnative

LOCAL_SRC_FILES := \
  $(RN_EXTRACTED_LIB_DIR)/$(TARGET_ARCH_ABI)/libreactnativejni.so \

include $(PREBUILT_SHARED_LIBRARY)
