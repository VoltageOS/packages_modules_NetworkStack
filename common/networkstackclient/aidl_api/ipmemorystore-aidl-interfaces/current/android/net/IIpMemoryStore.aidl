///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL interface (or parcelable). Do not try to
// edit this file. It looks like you are doing that because you have modified
// an AIDL interface in a backward-incompatible way, e.g., deleting a function
// from an interface or a field from a parcelable and it broke the build. That
// breakage is intended.
//
// You must not make a backward incompatible changes to the AIDL files built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package android.net;
/* @hide */
interface IIpMemoryStore {
  oneway void storeNetworkAttributes(String l2Key, in android.net.ipmemorystore.NetworkAttributesParcelable attributes, android.net.ipmemorystore.IOnStatusListener listener);
  oneway void storeBlob(String l2Key, String clientId, String name, in android.net.ipmemorystore.Blob data, android.net.ipmemorystore.IOnStatusListener listener);
  oneway void findL2Key(in android.net.ipmemorystore.NetworkAttributesParcelable attributes, android.net.ipmemorystore.IOnL2KeyResponseListener listener);
  oneway void isSameNetwork(String l2Key1, String l2Key2, android.net.ipmemorystore.IOnSameL3NetworkResponseListener listener);
  oneway void retrieveNetworkAttributes(String l2Key, android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener listener);
  oneway void retrieveBlob(String l2Key, String clientId, String name, android.net.ipmemorystore.IOnBlobRetrievedListener listener);
  oneway void factoryReset();
}
