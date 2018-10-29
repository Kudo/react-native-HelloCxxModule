LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := folly

LOCAL_SRC_FILES := \
  $(RN_EXTRACTED_LIB_DIR)/$(TARGET_ARCH_ABI)/libfolly_json.so \

include $(PREBUILT_SHARED_LIBRARY)
