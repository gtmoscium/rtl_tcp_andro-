LOCAL_PATH:= $(call my-dir)
#APP_PLATFORM:= android-14
#APP_ABI:= armeabi armeabi-v7a x86
APP_ABI:=all

LIBUSB_ROOT_REL:= .
LIBUSB_ROOT_ABS:= $(LOCAL_PATH)/..

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/core.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/descriptor.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/hotplug.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/io.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/sync.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/strerror.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/os/linux_usbfs.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/os/poll_posix.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/os/threads_posix.c \
 $(LIBUSB_ROOT_REL)/libusb-andro/libusb/os/linux_netlink.c \
 $(LIBUSB_ROOT_REL)/RtlTcp.c \
 $(LIBUSB_ROOT_REL)/rtl_tcp_andro.c \
 $(LIBUSB_ROOT_REL)/rtl-sdr/src/convenience/convenience.c \
 $(LIBUSB_ROOT_REL)/librtlsdr_andro.c \
 $(LIBUSB_ROOT_REL)/rtl-sdr/src/tuner_e4k.c \
 $(LIBUSB_ROOT_REL)/rtl-sdr/src/tuner_fc0012.c \
 $(LIBUSB_ROOT_REL)/rtl-sdr/src/tuner_fc0013.c \
 $(LIBUSB_ROOT_REL)/rtl-sdr/src/tuner_fc2580.c \
 $(LIBUSB_ROOT_REL)/rtl-sdr/src/tuner_r82xx.c

LOCAL_C_INCLUDES += \
$(LIBUSB_ROOT_ABS)/jni/libusb-andro \
$(LIBUSB_ROOT_ABS)/jni/libusb-andro/libusb \
$(LIBUSB_ROOT_ABS)/jni/libusb-andro/libusb/os \
$(LIBUSB_ROOT_ABS)/jni/rtl-sdr/include \
$(LIBUSB_ROOT_ABS)/jni/rtl-sdr/src

LOCAL_EXPORT_C_INCLUDES := \
$(LIBUSB_ROOT_ABS)/jni/libusb-andro/libusb

#LOCAL_CFLAGS += -Wall -DLIBUSB_DESCRIBE="" -O3 -fno-builtin-printf -fno-builtin-fprintf
LOCAL_CFLAGS += -g -Wall -DLIBUSB_DESCRIBE="" -O3 -fno-builtin-printf -fno-builtin-fprintf
LOCAL_MODULE:= RtlTcp
LOCAL_LDLIBS := -lm -llog
include $(BUILD_STATIC_LIBRARY)
