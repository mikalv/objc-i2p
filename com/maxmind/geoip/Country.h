//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/com/maxmind/geoip/Country.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComMaxmindGeoipCountry")
#ifdef RESTRICT_ComMaxmindGeoipCountry
#define INCLUDE_ALL_ComMaxmindGeoipCountry 0
#else
#define INCLUDE_ALL_ComMaxmindGeoipCountry 1
#endif
#undef RESTRICT_ComMaxmindGeoipCountry

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComMaxmindGeoipCountry_) && (INCLUDE_ALL_ComMaxmindGeoipCountry || defined(INCLUDE_ComMaxmindGeoipCountry))
#define ComMaxmindGeoipCountry_

@interface ComMaxmindGeoipCountry : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)code
                              withNSString:(NSString *)name;

- (NSString *)getCode;

- (NSString *)getName;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComMaxmindGeoipCountry)

FOUNDATION_EXPORT void ComMaxmindGeoipCountry_initWithNSString_withNSString_(ComMaxmindGeoipCountry *self, NSString *code, NSString *name);

FOUNDATION_EXPORT ComMaxmindGeoipCountry *new_ComMaxmindGeoipCountry_initWithNSString_withNSString_(NSString *code, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComMaxmindGeoipCountry *create_ComMaxmindGeoipCountry_initWithNSString_withNSString_(NSString *code, NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(ComMaxmindGeoipCountry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComMaxmindGeoipCountry")
