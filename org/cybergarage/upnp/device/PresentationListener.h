//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/device/PresentationListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpDevicePresentationListener")
#ifdef RESTRICT_OrgCybergarageUpnpDevicePresentationListener
#define INCLUDE_ALL_OrgCybergarageUpnpDevicePresentationListener 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpDevicePresentationListener 1
#endif
#undef RESTRICT_OrgCybergarageUpnpDevicePresentationListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpDevicePresentationListener_) && (INCLUDE_ALL_OrgCybergarageUpnpDevicePresentationListener || defined(INCLUDE_OrgCybergarageUpnpDevicePresentationListener))
#define OrgCybergarageUpnpDevicePresentationListener_

@class OrgCybergarageHttpHTTPRequest;

@protocol OrgCybergarageUpnpDevicePresentationListener < JavaObject >

- (void)httpRequestRecievedWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpDevicePresentationListener)

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpDevicePresentationListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpDevicePresentationListener")