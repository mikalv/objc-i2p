//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/LogLimit.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilLogLimit")
#ifdef RESTRICT_NetI2pUtilLogLimit
#define INCLUDE_ALL_NetI2pUtilLogLimit 0
#else
#define INCLUDE_ALL_NetI2pUtilLogLimit 1
#endif
#undef RESTRICT_NetI2pUtilLogLimit

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilLogLimit_) && (INCLUDE_ALL_NetI2pUtilLogLimit || defined(INCLUDE_NetI2pUtilLogLimit))
#define NetI2pUtilLogLimit_

@class NetI2pUtilLog;

@interface NetI2pUtilLogLimit : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)limit;

- (jboolean)isEqual:(id)o;

- (jint)getLimit;

- (NSString *)getRootName;

- (NSUInteger)hash;

- (jboolean)matchesWithNetI2pUtilLog:(NetI2pUtilLog *)log;

- (void)setLimitWithInt:(jint)limit;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilLogLimit)

FOUNDATION_EXPORT void NetI2pUtilLogLimit_initWithNSString_withInt_(NetI2pUtilLogLimit *self, NSString *name, jint limit);

FOUNDATION_EXPORT NetI2pUtilLogLimit *new_NetI2pUtilLogLimit_initWithNSString_withInt_(NSString *name, jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilLogLimit *create_NetI2pUtilLogLimit_initWithNSString_withInt_(NSString *name, jint limit);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilLogLimit)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilLogLimit")
