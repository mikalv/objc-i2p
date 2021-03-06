//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/TimeoutPipedOutputStream.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilTimeoutPipedOutputStream")
#ifdef RESTRICT_NetI2pUtilTimeoutPipedOutputStream
#define INCLUDE_ALL_NetI2pUtilTimeoutPipedOutputStream 0
#else
#define INCLUDE_ALL_NetI2pUtilTimeoutPipedOutputStream 1
#endif
#undef RESTRICT_NetI2pUtilTimeoutPipedOutputStream

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilTimeoutPipedOutputStream_) && (INCLUDE_ALL_NetI2pUtilTimeoutPipedOutputStream || defined(INCLUDE_NetI2pUtilTimeoutPipedOutputStream))
#define NetI2pUtilTimeoutPipedOutputStream_

#define RESTRICT_JavaIoPipedOutputStream 1
#define INCLUDE_JavaIoPipedOutputStream 1
#include "java/io/PipedOutputStream.h"

@class JavaIoPipedInputStream;
@class NetI2pUtilTimeoutPipedInputStream;

@interface NetI2pUtilTimeoutPipedOutputStream : JavaIoPipedOutputStream

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pUtilTimeoutPipedInputStream:(NetI2pUtilTimeoutPipedInputStream *)snk;

- (void)close;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaIoPipedInputStream:(JavaIoPipedInputStream *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilTimeoutPipedOutputStream)

FOUNDATION_EXPORT void NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(NetI2pUtilTimeoutPipedOutputStream *self, NetI2pUtilTimeoutPipedInputStream *snk);

FOUNDATION_EXPORT NetI2pUtilTimeoutPipedOutputStream *new_NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(NetI2pUtilTimeoutPipedInputStream *snk) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilTimeoutPipedOutputStream *create_NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(NetI2pUtilTimeoutPipedInputStream *snk);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilTimeoutPipedOutputStream)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilTimeoutPipedOutputStream")
