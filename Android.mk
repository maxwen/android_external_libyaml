LOCAL_PATH:= $(call my-dir)

libyaml_src_files := \
    src/api.c \
    src/reader.c \
    src/scanner.c \
    src/parser.c \
    src/loader.c \
    src/writer.c \
    src/emitter.c \
    src/dumper.c

include $(CLEAR_VARS)
LOCAL_MODULE := libyaml
LOCAL_SRC_FILES := $(libyaml_src_files)
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/include
LOCAL_CFLAGS := -DHAVE_CONFIG_H
LOCAL_C_EXPORTS := $(LOCAL_PATH)/include
LOCAL_MODULE_TAGS := debug
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libyaml
LOCAL_SRC_FILES := $(libyaml_src_files)
LOCAL_C_INCLUDES += $(LOCAL_PATH) $(LOCAL_PATH)/include
LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_MODULE_TAGS := debug
include $(BUILD_STATIC_LIBRARY)

