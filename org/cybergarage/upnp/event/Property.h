//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/event/Property.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpEventProperty")
#ifdef RESTRICT_OrgCybergarageUpnpEventProperty
#define INCLUDE_ALL_OrgCybergarageUpnpEventProperty 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpEventProperty 1
#endif
#undef RESTRICT_OrgCybergarageUpnpEventProperty

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpEventProperty_) && (INCLUDE_ALL_OrgCybergarageUpnpEventProperty || defined(INCLUDE_OrgCybergarageUpnpEventProperty))
#define OrgCybergarageUpnpEventProperty_

@interface OrgCybergarageUpnpEventProperty : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (NSString *)getName;

- (NSString *)getValue;

- (void)setNameWithNSString:(NSString *)val;

- (void)setValueWithNSString:(NSString *)val;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpEventProperty)

FOUNDATION_EXPORT void OrgCybergarageUpnpEventProperty_init(OrgCybergarageUpnpEventProperty *self);

FOUNDATION_EXPORT OrgCybergarageUpnpEventProperty *new_OrgCybergarageUpnpEventProperty_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpEventProperty *create_OrgCybergarageUpnpEventProperty_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpEventProperty)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpEventProperty")
