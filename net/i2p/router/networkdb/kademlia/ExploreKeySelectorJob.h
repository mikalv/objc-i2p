//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/ExploreKeySelectorJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaExploreKeySelectorJob_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob || defined(INCLUDE_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob))
#define NetI2pRouterNetworkdbKademliaExploreKeySelectorJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterNetworkdbKademliaExploreKeySelectorJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *)facade;

- (NSString *)getName;

- (void)runJob;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaExploreKeySelectorJob)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaExploreKeySelectorJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_(NetI2pRouterNetworkdbKademliaExploreKeySelectorJob *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *facade);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaExploreKeySelectorJob *new_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *facade) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaExploreKeySelectorJob *create_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *facade);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaExploreKeySelectorJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaExploreKeySelectorJob")