//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/SingleSearchJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaSingleSearchJob")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaSingleSearchJob
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaSingleSearchJob 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaSingleSearchJob 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaSingleSearchJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaSingleSearchJob_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaSingleSearchJob || defined(INCLUDE_NetI2pRouterNetworkdbKademliaSingleSearchJob))
#define NetI2pRouterNetworkdbKademliaSingleSearchJob_

#define RESTRICT_NetI2pRouterNetworkdbKademliaFloodOnlySearchJob 1
#define INCLUDE_NetI2pRouterNetworkdbKademliaFloodOnlySearchJob 1
#include "net/i2p/router/networkdb/kademlia/FloodOnlySearchJob.h"

@class NetI2pDataHash;
@class NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;
@class NetI2pRouterRouterContext;
@protocol NetI2pRouterJob;

@interface NetI2pRouterNetworkdbKademliaSingleSearchJob : NetI2pRouterNetworkdbKademliaFloodOnlySearchJob

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                         withNetI2pDataHash:(NetI2pDataHash *)key
                                         withNetI2pDataHash:(NetI2pDataHash *)to;

- (NSString *)getName;

- (void)runJob;

- (jboolean)shouldProcessDSRM;

#pragma mark Package-Private

- (void)failed;

- (void)success;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0
withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)arg1
                                         withNetI2pDataHash:(NetI2pDataHash *)arg2
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)arg3
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)arg4
                                                    withInt:(jint)arg5
                                                withBoolean:(jboolean)arg6 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaSingleSearchJob)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterNetworkdbKademliaSingleSearchJob *self, NetI2pRouterRouterContext *ctx, NetI2pDataHash *key, NetI2pDataHash *to);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaSingleSearchJob *new_NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *key, NetI2pDataHash *to) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaSingleSearchJob *create_NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *key, NetI2pDataHash *to);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaSingleSearchJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaSingleSearchJob")
