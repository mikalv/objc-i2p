//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TrivialRouterPreprocessor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelTrivialRouterPreprocessor")
#ifdef RESTRICT_NetI2pRouterTunnelTrivialRouterPreprocessor
#define INCLUDE_ALL_NetI2pRouterTunnelTrivialRouterPreprocessor 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelTrivialRouterPreprocessor 1
#endif
#undef RESTRICT_NetI2pRouterTunnelTrivialRouterPreprocessor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelTrivialRouterPreprocessor_) && (INCLUDE_ALL_NetI2pRouterTunnelTrivialRouterPreprocessor || defined(INCLUDE_NetI2pRouterTunnelTrivialRouterPreprocessor))
#define NetI2pRouterTunnelTrivialRouterPreprocessor_

#define RESTRICT_NetI2pRouterTunnelTrivialPreprocessor 1
#define INCLUDE_NetI2pRouterTunnelTrivialPreprocessor 1
#include "net/i2p/router/tunnel/TrivialPreprocessor.h"

@class NetI2pRouterRouterContext;
@protocol JavaUtilList;

@interface NetI2pRouterTunnelTrivialRouterPreprocessor : NetI2pRouterTunnelTrivialPreprocessor

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

#pragma mark Protected

- (void)notePreprocessingWithLong:(jlong)messageId
                          withInt:(jint)numFragments
                          withInt:(jint)totalLength
                 withJavaUtilList:(id<JavaUtilList>)messageIds;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelTrivialRouterPreprocessor)

FOUNDATION_EXPORT void NetI2pRouterTunnelTrivialRouterPreprocessor_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelTrivialRouterPreprocessor *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTunnelTrivialRouterPreprocessor *new_NetI2pRouterTunnelTrivialRouterPreprocessor_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTrivialRouterPreprocessor *create_NetI2pRouterTunnelTrivialRouterPreprocessor_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTrivialRouterPreprocessor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelTrivialRouterPreprocessor")
