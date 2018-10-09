//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPHeader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPHeader")
#ifdef RESTRICT_OrgCybergarageHttpHTTPHeader
#define INCLUDE_ALL_OrgCybergarageHttpHTTPHeader 0
#else
#define INCLUDE_ALL_OrgCybergarageHttpHTTPHeader 1
#endif
#undef RESTRICT_OrgCybergarageHttpHTTPHeader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageHttpHTTPHeader_) && (INCLUDE_ALL_OrgCybergarageHttpHTTPHeader || defined(INCLUDE_OrgCybergarageHttpHTTPHeader))
#define OrgCybergarageHttpHTTPHeader_

@class IOSByteArray;
@class JavaIoLineNumberReader;

@interface OrgCybergarageHttpHTTPHeader : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)lineStr;

- (instancetype __nonnull)initWithNSString:(NSString *)name
                              withNSString:(NSString *)value;

+ (jint)getIntegerValueWithByteArray:(IOSByteArray *)data
                        withNSString:(NSString *)name;

+ (jint)getIntegerValueWithNSString:(NSString *)data
                       withNSString:(NSString *)name;

- (NSString *)getName;

- (NSString *)getValue;

+ (NSString *)getValueWithByteArray:(IOSByteArray *)data
                       withNSString:(NSString *)name;

+ (NSString *)getValueWithJavaIoLineNumberReader:(JavaIoLineNumberReader *)reader
                                    withNSString:(NSString *)name;

+ (NSString *)getValueWithNSString:(NSString *)data
                      withNSString:(NSString *)name;

- (jboolean)hasName;

- (void)setNameWithNSString:(NSString *)name;

- (void)setValueWithNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageHttpHTTPHeader)

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(OrgCybergarageHttpHTTPHeader *self, NSString *name, NSString *value);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPHeader *new_OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(NSString *name, NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPHeader *create_OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(NSString *name, NSString *value);

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPHeader_initWithNSString_(OrgCybergarageHttpHTTPHeader *self, NSString *lineStr);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPHeader *new_OrgCybergarageHttpHTTPHeader_initWithNSString_(NSString *lineStr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPHeader *create_OrgCybergarageHttpHTTPHeader_initWithNSString_(NSString *lineStr);

FOUNDATION_EXPORT NSString *OrgCybergarageHttpHTTPHeader_getValueWithJavaIoLineNumberReader_withNSString_(JavaIoLineNumberReader *reader, NSString *name);

FOUNDATION_EXPORT NSString *OrgCybergarageHttpHTTPHeader_getValueWithNSString_withNSString_(NSString *data, NSString *name);

FOUNDATION_EXPORT NSString *OrgCybergarageHttpHTTPHeader_getValueWithByteArray_withNSString_(IOSByteArray *data, NSString *name);

FOUNDATION_EXPORT jint OrgCybergarageHttpHTTPHeader_getIntegerValueWithNSString_withNSString_(NSString *data, NSString *name);

FOUNDATION_EXPORT jint OrgCybergarageHttpHTTPHeader_getIntegerValueWithByteArray_withNSString_(IOSByteArray *data, NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageHttpHTTPHeader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPHeader")
