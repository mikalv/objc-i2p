//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/ClientPeerSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolClientPeerSelector")
#ifdef RESTRICT_NetI2pRouterTunnelPoolClientPeerSelector
#define INCLUDE_ALL_NetI2pRouterTunnelPoolClientPeerSelector 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPoolClientPeerSelector 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPoolClientPeerSelector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPoolClientPeerSelector_) && (INCLUDE_ALL_NetI2pRouterTunnelPoolClientPeerSelector || defined(INCLUDE_NetI2pRouterTunnelPoolClientPeerSelector))
#define NetI2pRouterTunnelPoolClientPeerSelector_

#define RESTRICT_NetI2pRouterTunnelPoolTunnelPeerSelector 1
#define INCLUDE_NetI2pRouterTunnelPoolTunnelPeerSelector 1
#include "net/i2p/router/tunnel/pool/TunnelPeerSelector.h"

@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelPoolSettings;
@protocol JavaUtilList;

@interface NetI2pRouterTunnelPoolClientPeerSelector : NetI2pRouterTunnelPoolTunnelPeerSelector

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (id<JavaUtilList>)selectPeersWithNetI2pRouterTunnelPoolSettings:(NetI2pRouterTunnelPoolSettings *)settings;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolClientPeerSelector)

FOUNDATION_EXPORT void NetI2pRouterTunnelPoolClientPeerSelector_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelPoolClientPeerSelector *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterTunnelPoolClientPeerSelector *new_NetI2pRouterTunnelPoolClientPeerSelector_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPoolClientPeerSelector *create_NetI2pRouterTunnelPoolClientPeerSelector_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolClientPeerSelector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolClientPeerSelector")
