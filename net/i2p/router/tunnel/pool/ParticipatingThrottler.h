//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/ParticipatingThrottler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolParticipatingThrottler")
#ifdef RESTRICT_NetI2pRouterTunnelPoolParticipatingThrottler
#define INCLUDE_ALL_NetI2pRouterTunnelPoolParticipatingThrottler 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPoolParticipatingThrottler 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPoolParticipatingThrottler

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPoolParticipatingThrottler_) && (INCLUDE_ALL_NetI2pRouterTunnelPoolParticipatingThrottler || defined(INCLUDE_NetI2pRouterTunnelPoolParticipatingThrottler))
#define NetI2pRouterTunnelPoolParticipatingThrottler_

@class NetI2pDataHash;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterTunnelPoolParticipatingThrottler : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (jboolean)shouldThrottleWithNetI2pDataHash:(NetI2pDataHash *)h;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolParticipatingThrottler)

FOUNDATION_EXPORT void NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelPoolParticipatingThrottler *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTunnelPoolParticipatingThrottler *new_NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPoolParticipatingThrottler *create_NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolParticipatingThrottler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolParticipatingThrottler")
