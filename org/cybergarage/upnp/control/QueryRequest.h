//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/QueryRequest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpControlQueryRequest")
#ifdef RESTRICT_OrgCybergarageUpnpControlQueryRequest
#define INCLUDE_ALL_OrgCybergarageUpnpControlQueryRequest 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpControlQueryRequest 1
#endif
#undef RESTRICT_OrgCybergarageUpnpControlQueryRequest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpControlQueryRequest_) && (INCLUDE_ALL_OrgCybergarageUpnpControlQueryRequest || defined(INCLUDE_OrgCybergarageUpnpControlQueryRequest))
#define OrgCybergarageUpnpControlQueryRequest_

#define RESTRICT_OrgCybergarageUpnpControlControlRequest 1
#define INCLUDE_OrgCybergarageUpnpControlControlRequest 1
#include "org/cybergarage/upnp/control/ControlRequest.h"

@class OrgCybergarageHttpHTTPRequest;
@class OrgCybergarageUpnpControlQueryResponse;
@class OrgCybergarageUpnpStateVariable;

@interface OrgCybergarageUpnpControlQueryRequest : OrgCybergarageUpnpControlControlRequest

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq;

- (NSString *)getVarName;

- (OrgCybergarageUpnpControlQueryResponse *)post;

- (void)setRequestWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)stateVar;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpControlQueryRequest)

FOUNDATION_EXPORT void OrgCybergarageUpnpControlQueryRequest_init(OrgCybergarageUpnpControlQueryRequest *self);

FOUNDATION_EXPORT OrgCybergarageUpnpControlQueryRequest *new_OrgCybergarageUpnpControlQueryRequest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpControlQueryRequest *create_OrgCybergarageUpnpControlQueryRequest_init(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageUpnpControlQueryRequest *self, OrgCybergarageHttpHTTPRequest *httpReq);

FOUNDATION_EXPORT OrgCybergarageUpnpControlQueryRequest *new_OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpControlQueryRequest *create_OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpControlQueryRequest)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpControlQueryRequest")
