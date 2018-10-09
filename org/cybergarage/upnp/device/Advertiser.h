//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/device/Advertiser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpDeviceAdvertiser")
#ifdef RESTRICT_OrgCybergarageUpnpDeviceAdvertiser
#define INCLUDE_ALL_OrgCybergarageUpnpDeviceAdvertiser 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpDeviceAdvertiser 1
#endif
#undef RESTRICT_OrgCybergarageUpnpDeviceAdvertiser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpDeviceAdvertiser_) && (INCLUDE_ALL_OrgCybergarageUpnpDeviceAdvertiser || defined(INCLUDE_OrgCybergarageUpnpDeviceAdvertiser))
#define OrgCybergarageUpnpDeviceAdvertiser_

#define RESTRICT_OrgCybergarageUtilThreadCore 1
#define INCLUDE_OrgCybergarageUtilThreadCore 1
#include "org/cybergarage/util/ThreadCore.h"

@class OrgCybergarageUpnpDevice;

@interface OrgCybergarageUpnpDeviceAdvertiser : OrgCybergarageUtilThreadCore

#pragma mark Public

- (instancetype __nonnull)initWithOrgCybergarageUpnpDevice:(OrgCybergarageUpnpDevice *)dev;

- (OrgCybergarageUpnpDevice *)getDevice;

- (void)run;

- (void)setDeviceWithOrgCybergarageUpnpDevice:(OrgCybergarageUpnpDevice *)dev;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpDeviceAdvertiser)

FOUNDATION_EXPORT void OrgCybergarageUpnpDeviceAdvertiser_initWithOrgCybergarageUpnpDevice_(OrgCybergarageUpnpDeviceAdvertiser *self, OrgCybergarageUpnpDevice *dev);

FOUNDATION_EXPORT OrgCybergarageUpnpDeviceAdvertiser *new_OrgCybergarageUpnpDeviceAdvertiser_initWithOrgCybergarageUpnpDevice_(OrgCybergarageUpnpDevice *dev) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDeviceAdvertiser *create_OrgCybergarageUpnpDeviceAdvertiser_initWithOrgCybergarageUpnpDevice_(OrgCybergarageUpnpDevice *dev);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpDeviceAdvertiser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpDeviceAdvertiser")