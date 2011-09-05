#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

########################
ifeq ($(TARGET_PRODUCT),umts_kobe)
include $(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := wpa_supplicant_att_wispr.conf
include $(BUILD_PREBUILT)

else

ifeq ($(TARGET_PRODUCT),olympus)
include $(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := wpa_supplicant_att_wispr.conf
include $(BUILD_PREBUILT)

else
include $(CLEAR_VARS)
LOCAL_MODULE := wpa_supplicant.conf
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif

endif
########################
## Logic below handles loading of product specific tiwlan.ini for DROID2WE

ifeq ($(TARGET_PRODUCT),cdma_droid2we)

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := tiwlan_d2we.ini
include $(BUILD_PREBUILT)

else

ifeq ($(TARGET_PRODUCT),umts_kobe)

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := tiwlan_kobe.ini
include $(BUILD_PREBUILT)

else

ifeq ($(TARGET_PRODUCT),umts_jordan)

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := tiwlan_jordan.ini
include $(BUILD_PREBUILT)

else

ifeq ($(TARGET_PRODUCT),msm7630_surf)

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := tiwlan_pax.ini
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif

endif

endif

endif

########################
## Logic below handles loading of product specific RFMD tiwlan_rfmd.ini for DROID2WE and VENUS

ifeq ($(TARGET_PRODUCT),cdma_droid2we)

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_rfmd.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := tiwlan_rfmd_d2we.ini
include $(BUILD_PREBUILT)

else

ifeq ($(TARGET_PRODUCT),cdma_venus2)

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_rfmd.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := tiwlan_rfmd_venus.ini
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_rfmd.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif


endif

########################
#firmware
include $(CLEAR_VARS)
LOCAL_MODULE := fw_tiwlan_ap.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

########################
ifeq ($(TARGET_PRODUCT),cdma_droid2we)

#firmware config
include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_ap.ini
LOCAL_MODULE_TAGS := user development
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wifi/
LOCAL_SRC_FILES := tiwlan_ap_d2we.ini
include $(BUILD_PREBUILT)

else

#firmware config
include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_ap.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif

########################
#rfmd firmware
include $(CLEAR_VARS)
LOCAL_MODULE := fw_tiwlan_ap_rfmd.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

######################## 
## Logic below handles loading of product specific RFMD tiwlan_ap_rfmd.ini for DROID2WE and VENUS

ifeq ($(TARGET_PRODUCT),cdma_droid2we)

#rfmd firmware config
include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_ap_rfmd.ini
LOCAL_MODULE_TAGS := user development
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wifi/
LOCAL_SRC_FILES := tiwlan_ap_rfmd_d2we.ini
include $(BUILD_PREBUILT)

else

ifeq ($(TARGET_PRODUCT),cdma_venus2)

#rfmd firmware config
include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_ap_rfmd.ini
LOCAL_MODULE_TAGS := user development
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/wifi/
LOCAL_SRC_FILES := tiwlan_ap_rfmd_venus.ini
include $(BUILD_PREBUILT)

else

#rfmd firmware config
include $(CLEAR_VARS)
LOCAL_MODULE := tiwlan_ap_rfmd.ini
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif

endif

########################

include $(CLEAR_VARS)
LOCAL_MODULE := hostapd.conf.templet
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

########################


include $(CLEAR_VARS)
LOCAL_MODULE := dhcpcd.conf
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/dhcpcd
LOCAL_SRC_FILES := android_dhcpcd.conf
include $(BUILD_PREBUILT)

########################
