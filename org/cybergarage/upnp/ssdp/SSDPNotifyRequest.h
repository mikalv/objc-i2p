//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ssdp/SSDPNotifyRequest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifyRequest")
#ifdef RESTRICT_OrgCybergarageUpnpSsdpSSDPNotifyRequest
#define INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifyRequest 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifyRequest 1
#endif
#undef RESTRICT_OrgCybergarageUpnpSsdpSSDPNotifyRequest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpSsdpSSDPNotifyRequest_) && (INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifyRequest || defined(INCLUDE_OrgCybergarageUpnpSsdpSSDPNotifyRequest))
#define OrgCybergarageUpnpSsdpSSDPNotifyRequest_

#define RESTRICT_OrgCybergarageUpnpSsdpSSDPRequest 1
#define INCLUDE_OrgCybergarageUpnpSsdpSSDPRequest 1
#include "org/cybergarage/upnp/ssdp/SSDPRequest.h"

@class JavaIoInputStream;

@interface OrgCybergarageUpnpSsdpSSDPNotifyRequest : OrgCybergarageUpnpSsdpSSDPRequest

#pragma mark Public

- (instancetype __nonnull)init;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaIoInputStream:(JavaIoInputStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpSsdpSSDPNotifyRequest)

FOUNDATION_EXPORT void OrgCybergarageUpnpSsdpSSDPNotifyRequest_init(OrgCybergarageUpnpSsdpSSDPNotifyRequest *self);

FOUNDATION_EXPORT OrgCybergarageUpnpSsdpSSDPNotifyRequest *new_OrgCybergarageUpnpSsdpSSDPNotifyRequest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpSsdpSSDPNotifyRequest *create_OrgCybergarageUpnpSsdpSSDPNotifyRequest_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpSsdpSSDPNotifyRequest)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifyRequest")