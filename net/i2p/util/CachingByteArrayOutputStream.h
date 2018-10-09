//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/CachingByteArrayOutputStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilCachingByteArrayOutputStream")
#ifdef RESTRICT_NetI2pUtilCachingByteArrayOutputStream
#define INCLUDE_ALL_NetI2pUtilCachingByteArrayOutputStream 0
#else
#define INCLUDE_ALL_NetI2pUtilCachingByteArrayOutputStream 1
#endif
#undef RESTRICT_NetI2pUtilCachingByteArrayOutputStream

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilCachingByteArrayOutputStream_) && (INCLUDE_ALL_NetI2pUtilCachingByteArrayOutputStream || defined(INCLUDE_NetI2pUtilCachingByteArrayOutputStream))
#define NetI2pUtilCachingByteArrayOutputStream_

#define RESTRICT_JavaIoByteArrayOutputStream 1
#define INCLUDE_JavaIoByteArrayOutputStream 1
#include "java/io/ByteArrayOutputStream.h"

@interface NetI2pUtilCachingByteArrayOutputStream : JavaIoByteArrayOutputStream

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)cacheQuantity
                              withInt:(jint)arraySize;

- (void)releaseBuffer;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilCachingByteArrayOutputStream)

FOUNDATION_EXPORT void NetI2pUtilCachingByteArrayOutputStream_initWithInt_withInt_(NetI2pUtilCachingByteArrayOutputStream *self, jint cacheQuantity, jint arraySize);

FOUNDATION_EXPORT NetI2pUtilCachingByteArrayOutputStream *new_NetI2pUtilCachingByteArrayOutputStream_initWithInt_withInt_(jint cacheQuantity, jint arraySize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilCachingByteArrayOutputStream *create_NetI2pUtilCachingByteArrayOutputStream_initWithInt_withInt_(jint cacheQuantity, jint arraySize);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilCachingByteArrayOutputStream)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilCachingByteArrayOutputStream")
