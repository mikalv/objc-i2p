//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ssdp/SSDPNotifySocket.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifySocket")
#ifdef RESTRICT_OrgCybergarageUpnpSsdpSSDPNotifySocket
#define INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifySocket 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifySocket 1
#endif
#undef RESTRICT_OrgCybergarageUpnpSsdpSSDPNotifySocket

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpSsdpSSDPNotifySocket_) && (INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifySocket || defined(INCLUDE_OrgCybergarageUpnpSsdpSSDPNotifySocket))
#define OrgCybergarageUpnpSsdpSSDPNotifySocket_

#define RESTRICT_OrgCybergarageUpnpSsdpHTTPMUSocket 1
#define INCLUDE_OrgCybergarageUpnpSsdpHTTPMUSocket 1
#include "org/cybergarage/upnp/ssdp/HTTPMUSocket.h"

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class OrgCybergarageUpnpControlPoint;
@class OrgCybergarageUpnpSsdpSSDPNotifyRequest;

@interface OrgCybergarageUpnpSsdpSSDPNotifySocket : OrgCybergarageUpnpSsdpHTTPMUSocket < JavaLangRunnable >

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)bindAddr;

- (OrgCybergarageUpnpControlPoint *)getControlPoint;

- (jboolean)postWithOrgCybergarageUpnpSsdpSSDPNotifyRequest:(OrgCybergarageUpnpSsdpSSDPNotifyRequest *)req;

- (void)run;

- (void)setControlPointWithOrgCybergarageUpnpControlPoint:(OrgCybergarageUpnpControlPoint *)ctrlp;

- (void)start;

- (void)stop;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                                   withInt:(jint)arg1
                              withNSString:(NSString *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpSsdpSSDPNotifySocket)

FOUNDATION_EXPORT void OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(OrgCybergarageUpnpSsdpSSDPNotifySocket *self, NSString *bindAddr);

FOUNDATION_EXPORT OrgCybergarageUpnpSsdpSSDPNotifySocket *new_OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(NSString *bindAddr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpSsdpSSDPNotifySocket *create_OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(NSString *bindAddr);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpSsdpSSDPNotifySocket)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpSsdpSSDPNotifySocket")
