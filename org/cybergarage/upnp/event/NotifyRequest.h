//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/event/NotifyRequest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpEventNotifyRequest")
#ifdef RESTRICT_OrgCybergarageUpnpEventNotifyRequest
#define INCLUDE_ALL_OrgCybergarageUpnpEventNotifyRequest 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpEventNotifyRequest 1
#endif
#undef RESTRICT_OrgCybergarageUpnpEventNotifyRequest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpEventNotifyRequest_) && (INCLUDE_ALL_OrgCybergarageUpnpEventNotifyRequest || defined(INCLUDE_OrgCybergarageUpnpEventNotifyRequest))
#define OrgCybergarageUpnpEventNotifyRequest_

#define RESTRICT_OrgCybergarageSoapSOAPRequest 1
#define INCLUDE_OrgCybergarageSoapSOAPRequest 1
#include "org/cybergarage/soap/SOAPRequest.h"

@class OrgCybergarageHttpHTTPRequest;
@class OrgCybergarageUpnpEventPropertyList;
@class OrgCybergarageUpnpEventSubscriber;

@interface OrgCybergarageUpnpEventNotifyRequest : OrgCybergarageSoapSOAPRequest

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq;

- (OrgCybergarageUpnpEventPropertyList *)getPropertyList;

- (jlong)getSEQ;

- (NSString *)getSID;

- (void)setNTWithNSString:(NSString *)value;

- (void)setNTSWithNSString:(NSString *)value;

- (jboolean)setRequestWithOrgCybergarageUpnpEventSubscriber:(OrgCybergarageUpnpEventSubscriber *)sub
                                               withNSString:(NSString *)varName
                                               withNSString:(NSString *)value;

- (void)setSEQWithLong:(jlong)value;

- (void)setSIDWithNSString:(NSString *)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpEventNotifyRequest)

FOUNDATION_EXPORT void OrgCybergarageUpnpEventNotifyRequest_init(OrgCybergarageUpnpEventNotifyRequest *self);

FOUNDATION_EXPORT OrgCybergarageUpnpEventNotifyRequest *new_OrgCybergarageUpnpEventNotifyRequest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpEventNotifyRequest *create_OrgCybergarageUpnpEventNotifyRequest_init(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpEventNotifyRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageUpnpEventNotifyRequest *self, OrgCybergarageHttpHTTPRequest *httpReq);

FOUNDATION_EXPORT OrgCybergarageUpnpEventNotifyRequest *new_OrgCybergarageUpnpEventNotifyRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpEventNotifyRequest *create_OrgCybergarageUpnpEventNotifyRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpEventNotifyRequest)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpEventNotifyRequest")
