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
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_MODULE    := fakedix 
#LOCAL_SRC_FILES := fakejni.c

#LOCAL_STATIC_LIBRARIES := libfakedix

LOCAL_MODULE	:= androix
LOCAL_SRC_FILES := stub.c
LOCAL_LDFLAGS := -L/opt/androix/usr/lib -lz -llog -lXdmcp -lpixman-1 -lXfont -lXau -lfontenc -lfreetype

#LOCAL_STATIC_LIBRARIES := libxfakelib
LOCAL_STATIC_LIBRARIES := libxandroid

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)