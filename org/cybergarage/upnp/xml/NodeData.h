//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/xml/NodeData.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpXmlNodeData")
#ifdef RESTRICT_OrgCybergarageUpnpXmlNodeData
#define INCLUDE_ALL_OrgCybergarageUpnpXmlNodeData 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpXmlNodeData 1
#endif
#undef RESTRICT_OrgCybergarageUpnpXmlNodeData

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpXmlNodeData_) && (INCLUDE_ALL_OrgCybergarageUpnpXmlNodeData || defined(INCLUDE_OrgCybergarageUpnpXmlNodeData))
#define OrgCybergarageUpnpXmlNodeData_

@class OrgCybergarageXmlNode;

@interface OrgCybergarageUpnpXmlNodeData : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgCybergarageXmlNode *)getNode;

- (void)setNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpXmlNodeData)

FOUNDATION_EXPORT void OrgCybergarageUpnpXmlNodeData_init(OrgCybergarageUpnpXmlNodeData *self);

FOUNDATION_EXPORT OrgCybergarageUpnpXmlNodeData *new_OrgCybergarageUpnpXmlNodeData_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpXmlNodeData *create_OrgCybergarageUpnpXmlNodeData_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpXmlNodeData)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpXmlNodeData")
