# Copyright (C) 2009 The Android Open Source Project
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
# AndroidBoard.mk is a legacy mechanism to deal with a few
# edge-cases that can't be managed otherwise. No new rules
# should be added to this file.
#

LOCAL_PATH := $(call my-dir)

# Least specific includes go first, so that they can get
# overridden further down

#$(call add-radio-file,recovery/images/firmware_install.565)
#$(call add-radio-file,recovery/images/firmware_error.565)
#$(call add-radio-file,recovery/images/bitmap_size.txt)
include $(CLEAR_VARS)

# This will install the file in /system/etc
#
#include $(CLEAR_VARS)
#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE := vold.fstab
#LOCAL_SRC_FILES := $(LOCAL_MODULE)
#include $(BUILD_PREBUILT)

# include the non-open-source counterpart to this file
-include vendor/samsung/SPH-P100/AndroidBoardVendor.mk
