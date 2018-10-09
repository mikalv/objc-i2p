//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/OutboundCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterMessageOutboundCache")
#ifdef RESTRICT_NetI2pRouterMessageOutboundCache
#define INCLUDE_ALL_NetI2pRouterMessageOutboundCache 0
#else
#define INCLUDE_ALL_NetI2pRouterMessageOutboundCache 1
#endif
#undef RESTRICT_NetI2pRouterMessageOutboundCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterMessageOutboundCache_) && (INCLUDE_ALL_NetI2pRouterMessageOutboundCache || defined(INCLUDE_NetI2pRouterMessageOutboundCache))
#define NetI2pRouterMessageOutboundCache_

@class JavaUtilConcurrentConcurrentHashMap;
@class NetI2pDataLease;
@class NetI2pRouterMessageOutboundCache_HashPair;
@class NetI2pRouterRouterContext;
@protocol JavaUtilMap;
@protocol NetI2pRouterTunnelInfo;

@interface NetI2pRouterMessageOutboundCache : NSObject {
 @public
  id<JavaUtilMap> tunnelCache_;
  id<JavaUtilMap> backloggedTunnelCache_;
  id<JavaUtilMap> leaseSetCache_;
  JavaUtilConcurrentConcurrentHashMap *leaseCache_;
  id<JavaUtilMap> lastReplyRequestCache_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (void)clearAllCaches;

#pragma mark Package-Private

- (void)clearCachesWithNetI2pRouterMessageOutboundCache_HashPair:(NetI2pRouterMessageOutboundCache_HashPair *)hashPair
                                             withNetI2pDataLease:(NetI2pDataLease *)lease
                                      withNetI2pRouterTunnelInfo:(id<NetI2pRouterTunnelInfo>)inTunnel
                                      withNetI2pRouterTunnelInfo:(id<NetI2pRouterTunnelInfo>)outTunnel;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageOutboundCache)

J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache, tunnelCache_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache, backloggedTunnelCache_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache, leaseSetCache_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache, leaseCache_, JavaUtilConcurrentConcurrentHashMap *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache, lastReplyRequestCache_, id<JavaUtilMap>)

FOUNDATION_EXPORT void NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(NetI2pRouterMessageOutboundCache *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterMessageOutboundCache *new_NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterMessageOutboundCache *create_NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageOutboundCache)

#endif

#if !defined (NetI2pRouterMessageOutboundCache_HashPair_) && (INCLUDE_ALL_NetI2pRouterMessageOutboundCache || defined(INCLUDE_NetI2pRouterMessageOutboundCache_HashPair))
#define NetI2pRouterMessageOutboundCache_HashPair_

@class NetI2pDataHash;

@interface NetI2pRouterMessageOutboundCache_HashPair : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pDataHash:(NetI2pDataHash *)s
                              withNetI2pDataHash:(NetI2pDataHash *)d;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageOutboundCache_HashPair)

FOUNDATION_EXPORT void NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterMessageOutboundCache_HashPair *self, NetI2pDataHash *s, NetI2pDataHash *d);

FOUNDATION_EXPORT NetI2pRouterMessageOutboundCache_HashPair *new_NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(NetI2pDataHash *s, NetI2pDataHash *d) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterMessageOutboundCache_HashPair *create_NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(NetI2pDataHash *s, NetI2pDataHash *d);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageOutboundCache_HashPair)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterMessageOutboundCache")
