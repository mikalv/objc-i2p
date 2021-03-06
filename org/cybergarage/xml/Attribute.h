//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/Attribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageXmlAttribute")
#ifdef RESTRICT_OrgCybergarageXmlAttribute
#define INCLUDE_ALL_OrgCybergarageXmlAttribute 0
#else
#define INCLUDE_ALL_OrgCybergarageXmlAttribute 1
#endif
#undef RESTRICT_OrgCybergarageXmlAttribute

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageXmlAttribute_) && (INCLUDE_ALL_OrgCybergarageXmlAttribute || defined(INCLUDE_OrgCybergarageXmlAttribute))
#define OrgCybergarageXmlAttribute_

@interface OrgCybergarageXmlAttribute : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgCybergarageXmlAttribute:(OrgCybergarageXmlAttribute *)otherAttr;

- (instancetype __nonnull)initWithNSString:(NSString *)name
                              withNSString:(NSString *)value;

- (NSString *)getName;

- (NSString *)getValue;

- (void)setWithOrgCybergarageXmlAttribute:(OrgCybergarageXmlAttribute *)otherAttr;

- (void)setNameWithNSString:(NSString *)name;

- (void)setValueWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageXmlAttribute)

FOUNDATION_EXPORT void OrgCybergarageXmlAttribute_init(OrgCybergarageXmlAttribute *self);

FOUNDATION_EXPORT OrgCybergarageXmlAttribute *new_OrgCybergarageXmlAttribute_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlAttribute *create_OrgCybergarageXmlAttribute_init(void);

FOUNDATION_EXPORT void OrgCybergarageXmlAttribute_initWithNSString_withNSString_(OrgCybergarageXmlAttribute *self, NSString *name, NSString *value);

FOUNDATION_EXPORT OrgCybergarageXmlAttribute *new_OrgCybergarageXmlAttribute_initWithNSString_withNSString_(NSString *name, NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlAttribute *create_OrgCybergarageXmlAttribute_initWithNSString_withNSString_(NSString *name, NSString *value);

FOUNDATION_EXPORT void OrgCybergarageXmlAttribute_initWithOrgCybergarageXmlAttribute_(OrgCybergarageXmlAttribute *self, OrgCybergarageXmlAttribute *otherAttr);

FOUNDATION_EXPORT OrgCybergarageXmlAttribute *new_OrgCybergarageXmlAttribute_initWithOrgCybergarageXmlAttribute_(OrgCybergarageXmlAttribute *otherAttr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlAttribute *create_OrgCybergarageXmlAttribute_initWithOrgCybergarageXmlAttribute_(OrgCybergarageXmlAttribute *otherAttr);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageXmlAttribute)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageXmlAttribute")
