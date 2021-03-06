//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/xml/ActionData.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpXmlActionData")
#ifdef RESTRICT_OrgCybergarageUpnpXmlActionData
#define INCLUDE_ALL_OrgCybergarageUpnpXmlActionData 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpXmlActionData 1
#endif
#undef RESTRICT_OrgCybergarageUpnpXmlActionData

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpXmlActionData_) && (INCLUDE_ALL_OrgCybergarageUpnpXmlActionData || defined(INCLUDE_OrgCybergarageUpnpXmlActionData))
#define OrgCybergarageUpnpXmlActionData_

#define RESTRICT_OrgCybergarageUpnpXmlNodeData 1
#define INCLUDE_OrgCybergarageUpnpXmlNodeData 1
#include "org/cybergarage/upnp/xml/NodeData.h"

@class OrgCybergarageUpnpControlControlResponse;
@protocol OrgCybergarageUpnpControlActionListener;

@interface OrgCybergarageUpnpXmlActionData : OrgCybergarageUpnpXmlNodeData

#pragma mark Public

- (instancetype __nonnull)init;

- (id<OrgCybergarageUpnpControlActionListener>)getActionListener;

- (OrgCybergarageUpnpControlControlResponse *)getControlResponse;

- (void)setActionListenerWithOrgCybergarageUpnpControlActionListener:(id<OrgCybergarageUpnpControlActionListener>)actionListener;

- (void)setControlResponseWithOrgCybergarageUpnpControlControlResponse:(OrgCybergarageUpnpControlControlResponse *)res;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpXmlActionData)

FOUNDATION_EXPORT void OrgCybergarageUpnpXmlActionData_init(OrgCybergarageUpnpXmlActionData *self);

FOUNDATION_EXPORT OrgCybergarageUpnpXmlActionData *new_OrgCybergarageUpnpXmlActionData_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpXmlActionData *create_OrgCybergarageUpnpXmlActionData_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpXmlActionData)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpXmlActionData")
