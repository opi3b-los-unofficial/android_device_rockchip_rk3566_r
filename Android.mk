LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),rk3566_r)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif