/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.telephony.ims.aidl;

import android.net.Uri;
import android.telephony.ims.aidl.IImsCapabilityCallback;
import android.telephony.ims.aidl.IRcsUceControllerCallback;

/**
 * Interface used to interact with the Telephony IMS.
 *
 * {@hide}
 */
interface IImsRcsController {
    void registerRcsAvailabilityCallback(IImsCapabilityCallback c);
    void unregisterRcsAvailabilityCallback(IImsCapabilityCallback c);
    boolean isCapable(int subId, int capability);
    boolean isAvailable(int subId, int capability);

    // ImsUceAdapter specific
    void requestCapabilities(int subId, in List<Uri> contactNumbers, IRcsUceControllerCallback c);
    int getUcePublishState(int subId);
    boolean isUceSettingEnabled(int subId);
    void setUceSettingEnabled(int subId, boolean isEnabled);
}
