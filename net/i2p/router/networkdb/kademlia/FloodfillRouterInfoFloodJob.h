//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodfillRouterInfoFloodJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob || defined(INCLUDE_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob))
#define NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)facade;

- (NSString *)getName;

- (void)runJob;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob *new_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob *create_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillRouterInfoFloodJob")
