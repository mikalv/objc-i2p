//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/JSONUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonJSONUtil")
#ifdef RESTRICT_NetMinidevJsonJSONUtil
#define INCLUDE_ALL_NetMinidevJsonJSONUtil 0
#else
#define INCLUDE_ALL_NetMinidevJsonJSONUtil 1
#endif
#undef RESTRICT_NetMinidevJsonJSONUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonJSONUtil_) && (INCLUDE_ALL_NetMinidevJsonJSONUtil || defined(INCLUDE_NetMinidevJsonJSONUtil))
#define NetMinidevJsonJSONUtil_

@interface NetMinidevJsonJSONUtil : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (NSString *)getGetterNameWithNSString:(NSString *)key;

+ (NSString *)getIsNameWithNSString:(NSString *)key;

+ (NSString *)getSetterNameWithNSString:(NSString *)key;

@end

J2OBJC_EMPTY_STATIC_INIT(NetMinidevJsonJSONUtil)

FOUNDATION_EXPORT void NetMinidevJsonJSONUtil_init(NetMinidevJsonJSONUtil *self);

FOUNDATION_EXPORT NetMinidevJsonJSONUtil *new_NetMinidevJsonJSONUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonJSONUtil *create_NetMinidevJsonJSONUtil_init(void);

FOUNDATION_EXPORT NSString *NetMinidevJsonJSONUtil_getSetterNameWithNSString_(NSString *key);

FOUNDATION_EXPORT NSString *NetMinidevJsonJSONUtil_getGetterNameWithNSString_(NSString *key);

FOUNDATION_EXPORT NSString *NetMinidevJsonJSONUtil_getIsNameWithNSString_(NSString *key);

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonJSONUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonJSONUtil")
