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
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_CFLAGS := -DHAVE_CONFIG_H -Wno-unused-parameter
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_VENDOR_MODULE := true
LOCAL_MULTILIB := both
include $(BUILD_SHARED_LIBRARY)
