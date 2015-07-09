LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libyaml

LOCAL_MODULE_FILENAME := libyaml

LOCAL_SRC_FILES := \
    src/api.c \
    src/reader.c \
    src/scanner.c \
    src/parser.c \
    src/loader.c \
    src/writer.c \
    src/emitter.c \
    src/dumper.c

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/include 

LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_C_EXPORTS := $(LOCAL_PATH)/include

LOCAL_MODULE_TAGS := debug

include $(BUILD_SHARED_LIBRARY)
