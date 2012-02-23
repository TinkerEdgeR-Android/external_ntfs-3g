LOCAL_PATH := $(call my-dir)

#########################
# Build the mkntfs binary

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
	attrdef.c \
	boot.c \
	sd.c \
	mkntfs.c \
	utils.c 

LOCAL_MODULE := mkntfs
LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES := libntfs-3g

LOCAL_C_INCLUDES :=  \
	$(LOCAL_PATH)/../include/ntfs-3g \
	$(LOCAL_PATH)/..

LOCAL_CFLAGS := -O2 -W -Wall -DHAVE_CONFIG_H

include $(BUILD_EXECUTABLE)

#########################
# Build the ntfsfix binary

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
	ntfsfix.c 

LOCAL_MODULE := ntfsfix
LOCAL_MODULE_TAGS := eng

LOCAL_SHARED_LIBRARIES := libntfs

LOCAL_C_INCLUDES :=  \
	external/ntfsprogs \
	external/ntfsprogs/include/ntfs

LOCAL_CFLAGS := -O2 -g -W -Wall 

#include $(BUILD_EXECUTABLE)

