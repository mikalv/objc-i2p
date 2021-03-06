//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/EstablishmentManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportUdpEstablishmentManager")
#ifdef RESTRICT_NetI2pRouterTransportUdpEstablishmentManager
#define INCLUDE_ALL_NetI2pRouterTransportUdpEstablishmentManager 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportUdpEstablishmentManager 1
#endif
#undef RESTRICT_NetI2pRouterTransportUdpEstablishmentManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportUdpEstablishmentManager_) && (INCLUDE_ALL_NetI2pRouterTransportUdpEstablishmentManager || defined(INCLUDE_NetI2pRouterTransportUdpEstablishmentManager))
#define NetI2pRouterTransportUdpEstablishmentManager_

@class JavaNetInetAddress;
@class NetI2pRouterOutNetMessage;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportUdpInboundEstablishState;
@class NetI2pRouterTransportUdpOutboundEstablishState;
@class NetI2pRouterTransportUdpPeerState;
@class NetI2pRouterTransportUdpRemoteHostId;
@class NetI2pRouterTransportUdpUDPPacketReader;
@class NetI2pRouterTransportUdpUDPTransport;

@interface NetI2pRouterTransportUdpEstablishmentManager : NSObject
@property (readonly, class) jint OB_MESSAGE_TIMEOUT NS_SWIFT_NAME(OB_MESSAGE_TIMEOUT);
@property (readonly, class) jlong MAX_TAG_VALUE NS_SWIFT_NAME(MAX_TAG_VALUE);

+ (jint)OB_MESSAGE_TIMEOUT;

+ (jlong)MAX_TAG_VALUE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                   withNetI2pRouterTransportUdpUDPTransport:(NetI2pRouterTransportUdpUDPTransport *)transport;

- (void)establishWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

- (jboolean)shouldAllowInboundEstablishment;

- (void)shutdown;

- (void)startup;

#pragma mark Package-Private

- (NetI2pRouterTransportUdpInboundEstablishState *)getInboundStateWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from;

- (NetI2pRouterTransportUdpOutboundEstablishState *)getOutboundStateWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from;

- (NetI2pRouterTransportUdpPeerState *)receiveDataWithNetI2pRouterTransportUdpOutboundEstablishState:(NetI2pRouterTransportUdpOutboundEstablishState *)state;

- (void)receiveHolePunchWithJavaNetInetAddress:(JavaNetInetAddress *)from
                                       withInt:(jint)fromPort;

- (void)receiveRelayResponseWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)bob
                         withNetI2pRouterTransportUdpUDPPacketReader:(NetI2pRouterTransportUdpUDPPacketReader *)reader;

- (void)receiveSessionConfirmedWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from
                            withNetI2pRouterTransportUdpUDPPacketReader:(NetI2pRouterTransportUdpUDPPacketReader *)reader;

- (void)receiveSessionCreatedWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from
                          withNetI2pRouterTransportUdpUDPPacketReader:(NetI2pRouterTransportUdpUDPPacketReader *)reader;

- (void)receiveSessionDestroyWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from;

- (void)receiveSessionDestroyWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from
                   withNetI2pRouterTransportUdpOutboundEstablishState:(NetI2pRouterTransportUdpOutboundEstablishState *)state;

- (void)receiveSessionDestroyWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from
                                withNetI2pRouterTransportUdpPeerState:(NetI2pRouterTransportUdpPeerState *)state;

- (void)receiveSessionRequestWithNetI2pRouterTransportUdpRemoteHostId:(NetI2pRouterTransportUdpRemoteHostId *)from
                          withNetI2pRouterTransportUdpUDPPacketReader:(NetI2pRouterTransportUdpUDPPacketReader *)reader;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportUdpEstablishmentManager)

inline jint NetI2pRouterTransportUdpEstablishmentManager_get_OB_MESSAGE_TIMEOUT(void);
#define NetI2pRouterTransportUdpEstablishmentManager_OB_MESSAGE_TIMEOUT 15000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpEstablishmentManager, OB_MESSAGE_TIMEOUT, jint)

inline jlong NetI2pRouterTransportUdpEstablishmentManager_get_MAX_TAG_VALUE(void);
#define NetI2pRouterTransportUdpEstablishmentManager_MAX_TAG_VALUE 4294967295LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpEstablishmentManager, MAX_TAG_VALUE, jlong)

FOUNDATION_EXPORT void NetI2pRouterTransportUdpEstablishmentManager_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(NetI2pRouterTransportUdpEstablishmentManager *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport);

FOUNDATION_EXPORT NetI2pRouterTransportUdpEstablishmentManager *new_NetI2pRouterTransportUdpEstablishmentManager_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportUdpEstablishmentManager *create_NetI2pRouterTransportUdpEstablishmentManager_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportUdpEstablishmentManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportUdpEstablishmentManager")
