//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/NegativeLookupCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaNegativeLookupCache")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaNegativeLookupCache
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaNegativeLookupCache 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaNegativeLookupCache 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaNegativeLookupCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaNegativeLookupCache_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaNegativeLookupCache || defined(INCLUDE_NetI2pRouterNetworkdbKademliaNegativeLookupCache))
#define NetI2pRouterNetworkdbKademliaNegativeLookupCache_

@class NetI2pDataDestination;
@class NetI2pDataHash;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterNetworkdbKademliaNegativeLookupCache : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (void)clear;

- (void)failPermanentlyWithNetI2pDataDestination:(NetI2pDataDestination *)dest;

- (NetI2pDataDestination *)getBadDestWithNetI2pDataHash:(NetI2pDataHash *)h;

- (jboolean)isCachedWithNetI2pDataHash:(NetI2pDataHash *)h;

- (void)lookupFailedWithNetI2pDataHash:(NetI2pDataHash *)h;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaNegativeLookupCache)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaNegativeLookupCache_initWithNetI2pRouterRouterContext_(NetI2pRouterNetworkdbKademliaNegativeLookupCache *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaNegativeLookupCache *new_NetI2pRouterNetworkdbKademliaNegativeLookupCache_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaNegativeLookupCache *create_NetI2pRouterNetworkdbKademliaNegativeLookupCache_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaNegativeLookupCache)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaNegativeLookupCache")
