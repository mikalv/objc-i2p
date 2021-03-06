//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/ActionRequest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpControlActionRequest")
#ifdef RESTRICT_OrgCybergarageUpnpControlActionRequest
#define INCLUDE_ALL_OrgCybergarageUpnpControlActionRequest 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpControlActionRequest 1
#endif
#undef RESTRICT_OrgCybergarageUpnpControlActionRequest

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpControlActionRequest_) && (INCLUDE_ALL_OrgCybergarageUpnpControlActionRequest || defined(INCLUDE_OrgCybergarageUpnpControlActionRequest))
#define OrgCybergarageUpnpControlActionRequest_

#define RESTRICT_OrgCybergarageUpnpControlControlRequest 1
#define INCLUDE_OrgCybergarageUpnpControlControlRequest 1
#include "org/cybergarage/upnp/control/ControlRequest.h"

@class OrgCybergarageHttpHTTPRequest;
@class OrgCybergarageUpnpAction;
@class OrgCybergarageUpnpArgumentList;
@class OrgCybergarageUpnpControlActionResponse;
@class OrgCybergarageXmlNode;

@interface OrgCybergarageUpnpControlActionRequest : OrgCybergarageUpnpControlControlRequest

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq;

- (NSString *)getActionName;

- (OrgCybergarageXmlNode *)getActionNode;

- (OrgCybergarageUpnpArgumentList *)getArgumentList;

- (OrgCybergarageUpnpControlActionResponse *)post;

- (void)setRequestWithOrgCybergarageUpnpAction:(OrgCybergarageUpnpAction *)action
            withOrgCybergarageUpnpArgumentList:(OrgCybergarageUpnpArgumentList *)argList;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpControlActionRequest)

FOUNDATION_EXPORT void OrgCybergarageUpnpControlActionRequest_init(OrgCybergarageUpnpControlActionRequest *self);

FOUNDATION_EXPORT OrgCybergarageUpnpControlActionRequest *new_OrgCybergarageUpnpControlActionRequest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpControlActionRequest *create_OrgCybergarageUpnpControlActionRequest_init(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpControlActionRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageUpnpControlActionRequest *self, OrgCybergarageHttpHTTPRequest *httpReq);

FOUNDATION_EXPORT OrgCybergarageUpnpControlActionRequest *new_OrgCybergarageUpnpControlActionRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpControlActionRequest *create_OrgCybergarageUpnpControlActionRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpControlActionRequest)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpControlActionRequest")
