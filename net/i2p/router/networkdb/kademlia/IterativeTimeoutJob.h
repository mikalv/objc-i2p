//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/IterativeTimeoutJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaIterativeTimeoutJob_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob || defined(INCLUDE_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob))
#define NetI2pRouterNetworkdbKademliaIterativeTimeoutJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pDataHash;
@class NetI2pRouterNetworkdbKademliaIterativeSearchJob;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterNetworkdbKademliaIterativeTimeoutJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                         withNetI2pDataHash:(NetI2pDataHash *)peer
        withNetI2pRouterNetworkdbKademliaIterativeSearchJob:(NetI2pRouterNetworkdbKademliaIterativeSearchJob *)job;

- (NSString *)getName;

- (void)runJob;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaIterativeTimeoutJob)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaIterativeTimeoutJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pRouterNetworkdbKademliaIterativeSearchJob_(NetI2pRouterNetworkdbKademliaIterativeTimeoutJob *self, NetI2pRouterRouterContext *ctx, NetI2pDataHash *peer, NetI2pRouterNetworkdbKademliaIterativeSearchJob *job);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaIterativeTimeoutJob *new_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pRouterNetworkdbKademliaIterativeSearchJob_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *peer, NetI2pRouterNetworkdbKademliaIterativeSearchJob *job) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaIterativeTimeoutJob *create_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pRouterNetworkdbKademliaIterativeSearchJob_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *peer, NetI2pRouterNetworkdbKademliaIterativeSearchJob *job);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaIterativeTimeoutJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeTimeoutJob")