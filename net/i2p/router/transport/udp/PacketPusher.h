//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/PacketPusher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportUdpPacketPusher")
#ifdef RESTRICT_NetI2pRouterTransportUdpPacketPusher
#define INCLUDE_ALL_NetI2pRouterTransportUdpPacketPusher 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportUdpPacketPusher 1
#endif
#undef RESTRICT_NetI2pRouterTransportUdpPacketPusher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportUdpPacketPusher_) && (INCLUDE_ALL_NetI2pRouterTransportUdpPacketPusher || defined(INCLUDE_NetI2pRouterTransportUdpPacketPusher))
#define NetI2pRouterTransportUdpPacketPusher_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportUdpOutboundMessageFragments;
@class NetI2pRouterTransportUdpUDPPacket;
@protocol JavaUtilList;

@interface NetI2pRouterTransportUdpPacketPusher : NSObject < JavaLangRunnable >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
       withNetI2pRouterTransportUdpOutboundMessageFragments:(NetI2pRouterTransportUdpOutboundMessageFragments *)fragments
                                           withJavaUtilList:(id<JavaUtilList>)endpoints;

- (void)run;

- (void)sendWithNetI2pRouterTransportUdpUDPPacket:(NetI2pRouterTransportUdpUDPPacket *)packet;

- (void)shutdown;

- (void)startup;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportUdpPacketPusher)

FOUNDATION_EXPORT void NetI2pRouterTransportUdpPacketPusher_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpOutboundMessageFragments_withJavaUtilList_(NetI2pRouterTransportUdpPacketPusher *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpOutboundMessageFragments *fragments, id<JavaUtilList> endpoints);

FOUNDATION_EXPORT NetI2pRouterTransportUdpPacketPusher *new_NetI2pRouterTransportUdpPacketPusher_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpOutboundMessageFragments_withJavaUtilList_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpOutboundMessageFragments *fragments, id<JavaUtilList> endpoints) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportUdpPacketPusher *create_NetI2pRouterTransportUdpPacketPusher_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpOutboundMessageFragments_withJavaUtilList_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpOutboundMessageFragments *fragments, id<JavaUtilList> endpoints);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportUdpPacketPusher)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportUdpPacketPusher")
