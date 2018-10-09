//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/ExploratoryPeerSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolExploratoryPeerSelector")
#ifdef RESTRICT_NetI2pRouterTunnelPoolExploratoryPeerSelector
#define INCLUDE_ALL_NetI2pRouterTunnelPoolExploratoryPeerSelector 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPoolExploratoryPeerSelector 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPoolExploratoryPeerSelector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPoolExploratoryPeerSelector_) && (INCLUDE_ALL_NetI2pRouterTunnelPoolExploratoryPeerSelector || defined(INCLUDE_NetI2pRouterTunnelPoolExploratoryPeerSelector))
#define NetI2pRouterTunnelPoolExploratoryPeerSelector_

#define RESTRICT_NetI2pRouterTunnelPoolTunnelPeerSelector 1
#define INCLUDE_NetI2pRouterTunnelPoolTunnelPeerSelector 1
#include "net/i2p/router/tunnel/pool/TunnelPeerSelector.h"

@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelPoolSettings;
@protocol JavaUtilList;

@interface NetI2pRouterTunnelPoolExploratoryPeerSelector : NetI2pRouterTunnelPoolTunnelPeerSelector

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (id<JavaUtilList>)selectPeersWithNetI2pRouterTunnelPoolSettings:(NetI2pRouterTunnelPoolSettings *)settings;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolExploratoryPeerSelector)

FOUNDATION_EXPORT void NetI2pRouterTunnelPoolExploratoryPeerSelector_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelPoolExploratoryPeerSelector *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterTunnelPoolExploratoryPeerSelector *new_NetI2pRouterTunnelPoolExploratoryPeerSelector_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPoolExploratoryPeerSelector *create_NetI2pRouterTunnelPoolExploratoryPeerSelector_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolExploratoryPeerSelector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolExploratoryPeerSelector")
