//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/TestJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolTestJob")
#ifdef RESTRICT_NetI2pRouterTunnelPoolTestJob
#define INCLUDE_ALL_NetI2pRouterTunnelPoolTestJob 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPoolTestJob 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPoolTestJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPoolTestJob_) && (INCLUDE_ALL_NetI2pRouterTunnelPoolTestJob || defined(INCLUDE_NetI2pRouterTunnelPoolTestJob))
#define NetI2pRouterTunnelPoolTestJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelPoolPooledTunnelCreatorConfig;
@class NetI2pRouterTunnelPoolTunnelPool;

@interface NetI2pRouterTunnelPoolTestJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
        withNetI2pRouterTunnelPoolPooledTunnelCreatorConfig:(NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *)cfg
                       withNetI2pRouterTunnelPoolTunnelPool:(NetI2pRouterTunnelPoolTunnelPool *)pool;

- (NSString *)getName;

- (void)runJob;

- (void)testSuccessfulWithInt:(jint)ms;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolTestJob)

FOUNDATION_EXPORT void NetI2pRouterTunnelPoolTestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelPoolPooledTunnelCreatorConfig_withNetI2pRouterTunnelPoolTunnelPool_(NetI2pRouterTunnelPoolTestJob *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *cfg, NetI2pRouterTunnelPoolTunnelPool *pool);

FOUNDATION_EXPORT NetI2pRouterTunnelPoolTestJob *new_NetI2pRouterTunnelPoolTestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelPoolPooledTunnelCreatorConfig_withNetI2pRouterTunnelPoolTunnelPool_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *cfg, NetI2pRouterTunnelPoolTunnelPool *pool) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPoolTestJob *create_NetI2pRouterTunnelPoolTestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelPoolPooledTunnelCreatorConfig_withNetI2pRouterTunnelPoolTunnelPool_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *cfg, NetI2pRouterTunnelPoolTunnelPool *pool);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolTestJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolTestJob")
