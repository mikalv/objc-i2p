//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/xml/ArgumentData.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpXmlArgumentData")
#ifdef RESTRICT_OrgCybergarageUpnpXmlArgumentData
#define INCLUDE_ALL_OrgCybergarageUpnpXmlArgumentData 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpXmlArgumentData 1
#endif
#undef RESTRICT_OrgCybergarageUpnpXmlArgumentData

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpXmlArgumentData_) && (INCLUDE_ALL_OrgCybergarageUpnpXmlArgumentData || defined(INCLUDE_OrgCybergarageUpnpXmlArgumentData))
#define OrgCybergarageUpnpXmlArgumentData_

#define RESTRICT_OrgCybergarageUpnpXmlNodeData 1
#define INCLUDE_OrgCybergarageUpnpXmlNodeData 1
#include "org/cybergarage/upnp/xml/NodeData.h"

@interface OrgCybergarageUpnpXmlArgumentData : OrgCybergarageUpnpXmlNodeData

#pragma mark Public

- (instancetype __nonnull)init;

- (NSString *)getValue;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpXmlArgumentData)

FOUNDATION_EXPORT void OrgCybergarageUpnpXmlArgumentData_init(OrgCybergarageUpnpXmlArgumentData *self);

FOUNDATION_EXPORT OrgCybergarageUpnpXmlArgumentData *new_OrgCybergarageUpnpXmlArgumentData_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpXmlArgumentData *create_OrgCybergarageUpnpXmlArgumentData_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpXmlArgumentData)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpXmlArgumentData")
