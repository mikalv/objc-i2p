//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/BuildExecutor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolBuildExecutor")
#ifdef RESTRICT_NetI2pRouterTunnelPoolBuildExecutor
#define INCLUDE_ALL_NetI2pRouterTunnelPoolBuildExecutor 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPoolBuildExecutor 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPoolBuildExecutor

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPoolBuildExecutor_) && (INCLUDE_ALL_NetI2pRouterTunnelPoolBuildExecutor || defined(INCLUDE_NetI2pRouterTunnelPoolBuildExecutor))
#define NetI2pRouterTunnelPoolBuildExecutor_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelPoolPooledTunnelCreatorConfig;
@class NetI2pRouterTunnelPoolTunnelPool;
@class NetI2pRouterTunnelPoolTunnelPoolManager;

@interface NetI2pRouterTunnelPoolBuildExecutor : NSObject < JavaLangRunnable >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                withNetI2pRouterTunnelPoolTunnelPoolManager:(NetI2pRouterTunnelPoolTunnelPoolManager *)mgr;

- (void)buildCompleteWithNetI2pRouterTunnelPoolPooledTunnelCreatorConfig:(NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *)cfg
                                    withNetI2pRouterTunnelPoolTunnelPool:(NetI2pRouterTunnelPoolTunnelPool *)pool;

- (void)buildSuccessfulWithNetI2pRouterTunnelPoolPooledTunnelCreatorConfig:(NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *)cfg;

- (jboolean)isRunning;

- (void)repoll;

- (void)restart;

- (void)run;

- (void)shutdown;

- (jboolean)wasRecentlyBuildingWithLong:(jlong)replyId;

#pragma mark Package-Private

- (void)buildTunnelWithNetI2pRouterTunnelPoolTunnelPool:(NetI2pRouterTunnelPoolTunnelPool *)pool
    withNetI2pRouterTunnelPoolPooledTunnelCreatorConfig:(NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *)cfg;

- (NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *)removeFromBuildingWithLong:(jlong)id_;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolBuildExecutor)

FOUNDATION_EXPORT void NetI2pRouterTunnelPoolBuildExecutor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelPoolTunnelPoolManager_(NetI2pRouterTunnelPoolBuildExecutor *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelPoolTunnelPoolManager *mgr);

FOUNDATION_EXPORT NetI2pRouterTunnelPoolBuildExecutor *new_NetI2pRouterTunnelPoolBuildExecutor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelPoolTunnelPoolManager_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelPoolTunnelPoolManager *mgr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPoolBuildExecutor *create_NetI2pRouterTunnelPoolBuildExecutor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelPoolTunnelPoolManager_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelPoolTunnelPoolManager *mgr);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolBuildExecutor)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolBuildExecutor")
