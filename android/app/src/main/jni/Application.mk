APP_BUILD_SCRIPT := Android.mk

APP_ABI := armeabi-v7a x86
APP_PLATFORM := android-16

# APP_MK_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
# NDK_MODULE_PATH := $(APP_MK_DIR)$(HOST_DIRSEP)$(THIRD_PARTY_NDK_DIR)$(HOST_DIRSEP)$(REACT_COMMON_DIR)$(HOST_DIRSEP)$(APP_MK_DIR)first-party

# Make sure every shared lib includes a .note.gnu.build-id header
APP_CFLAGS := -Wall -Werror
APP_CPPFLAGS := -std=c++14
APP_LDFLAGS := -Wl,--build-id

# APP_ALLOW_MISSING_DEPS := true

# APP_STL := c++_shared

APP_STL := gnustl_shared
NDK_TOOLCHAIN_VERSION := 4.9
