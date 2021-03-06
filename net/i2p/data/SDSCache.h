//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/SDSCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataSDSCache")
#ifdef RESTRICT_NetI2pDataSDSCache
#define INCLUDE_ALL_NetI2pDataSDSCache 0
#else
#define INCLUDE_ALL_NetI2pDataSDSCache 1
#endif
#undef RESTRICT_NetI2pDataSDSCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataSDSCache_) && (INCLUDE_ALL_NetI2pDataSDSCache || defined(INCLUDE_NetI2pDataSDSCache))
#define NetI2pDataSDSCache_

@class IOSByteArray;
@class IOSClass;
@class JavaIoInputStream;
@class NetI2pDataSimpleDataStructure;

@interface NetI2pDataSDSCache : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithIOSClass:(IOSClass *)rvClass
                                   withInt:(jint)len
                                   withInt:(jint)max;

- (void)clear;

- (NetI2pDataSimpleDataStructure *)getWithByteArray:(IOSByteArray *)data;

- (NetI2pDataSimpleDataStructure *)getWithByteArray:(IOSByteArray *)b
                                            withInt:(jint)off;

- (NetI2pDataSimpleDataStructure *)getWithJavaIoInputStream:(JavaIoInputStream *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pDataSDSCache)

FOUNDATION_EXPORT void NetI2pDataSDSCache_initWithIOSClass_withInt_withInt_(NetI2pDataSDSCache *self, IOSClass *rvClass, jint len, jint max);

FOUNDATION_EXPORT NetI2pDataSDSCache *new_NetI2pDataSDSCache_initWithIOSClass_withInt_withInt_(IOSClass *rvClass, jint len, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataSDSCache *create_NetI2pDataSDSCache_initWithIOSClass_withInt_withInt_(IOSClass *rvClass, jint len, jint max);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataSDSCache)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataSDSCache")
