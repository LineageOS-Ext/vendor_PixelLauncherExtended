# Copyright (C) 2023 Team Files
# Copyright (C) 2022 Ardjlon
# Copyright (C) 2023 Team Files
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := NexusLauncherReleaseMod
ifeq ($(PIXEL_LAUNCHER_VARIANT),glance03)
LOCAL_SRC_FILES := NexusLauncherRelease03.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance23)
LOCAL_SRC_FILES := NexusLauncherRelease23.apk
else
$(info PIXEL_LAUNCHER_VARIANT not set so using the package with default "At a Glance")
LOCAL_SRC_FILES := NexusLauncherRelease13.apk
endif
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
