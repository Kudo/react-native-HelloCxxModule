LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

RN_DIR = $(LOCAL_PATH)/../../../../../node_modules/react-native
RN_EXTRACTED_THIRD_PARTY_DIR = $(RN_DIR)/ReactAndroid/build/third_party
RN_EXTRACTED_LIB_DIR = $(LOCAL_PATH)/../../../../../../node_modules/react-native/ReactAndroid/build/jniLibs/jni

LOCAL_MODULE := rnpackage-hellocxx

LOCAL_SRC_FILES := \
  HelloCxxModule.cpp \

LOCAL_C_INCLUDES := $(RN_DIR)/ReactCommon
LOCAL_C_INCLUDES += $(RN_DIR)/ReactAndroid/src/main/jni/react/jni
LOCAL_C_INCLUDES += $(RN_DIR)/ReactAndroid/src/main/jni/first-party/fb/include
LOCAL_C_INCLUDES += $(RN_EXTRACTED_THIRD_PARTY_DIR)/boost/boost_1_63_0
LOCAL_C_INCLUDES += $(RN_EXTRACTED_THIRD_PARTY_DIR)/folly
LOCAL_C_INCLUDES += $(RN_EXTRACTED_THIRD_PARTY_DIR)/glog/exported
LOCAL_C_INCLUDES += $(RN_EXTRACTED_THIRD_PARTY_DIR)/double-conversion

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

FOLLY_FLAGS := -DFOLLY_NO_CONFIG=1 -DFOLLY_HAVE_CLOCK_GETTIME=1 -DFOLLY_HAVE_MEMRCHR=1
LOCAL_CFLAGS += $(FOLLY_FLAGS)
LOCAL_EXPORT_CPPFLAGS := $(FOLLY_FLAGS)

# LOCAL_CFLAGS := \
#   -DLOG_TAG=\"ReactNative\"
#
# LOCAL_CFLAGS += -fexceptions -frtti

LOCAL_CFLAGS += -fexceptions

LOCAL_SHARED_LIBRARIES := libfolly libfb libreactnative

include $(BUILD_SHARED_LIBRARY)

BASE_DIR := $(LOCAL_PATH)
include $(BASE_DIR)/fb/Android.mk
include $(BASE_DIR)/folly/Android.mk
include $(BASE_DIR)/reactnative/Android.mk
