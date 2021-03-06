//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/UDPReceiver.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportUdpUDPReceiver")
#ifdef RESTRICT_NetI2pRouterTransportUdpUDPReceiver
#define INCLUDE_ALL_NetI2pRouterTransportUdpUDPReceiver 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportUdpUDPReceiver 1
#endif
#undef RESTRICT_NetI2pRouterTransportUdpUDPReceiver

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportUdpUDPReceiver_) && (INCLUDE_ALL_NetI2pRouterTransportUdpUDPReceiver || defined(INCLUDE_NetI2pRouterTransportUdpUDPReceiver))
#define NetI2pRouterTransportUdpUDPReceiver_

@class JavaNetDatagramSocket;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportUdpUDPTransport;
@protocol NetI2pRouterTransportUdpSocketListener;

@interface NetI2pRouterTransportUdpUDPReceiver : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                   withNetI2pRouterTransportUdpUDPTransport:(NetI2pRouterTransportUdpUDPTransport *)transport
                                  withJavaNetDatagramSocket:(JavaNetDatagramSocket *)socket
                                               withNSString:(NSString *)name
                 withNetI2pRouterTransportUdpSocketListener:(id<NetI2pRouterTransportUdpSocketListener>)lsnr;

- (void)shutdown;

- (void)startup;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportUdpUDPReceiver)

FOUNDATION_EXPORT void NetI2pRouterTransportUdpUDPReceiver_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_withJavaNetDatagramSocket_withNSString_withNetI2pRouterTransportUdpSocketListener_(NetI2pRouterTransportUdpUDPReceiver *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport, JavaNetDatagramSocket *socket, NSString *name, id<NetI2pRouterTransportUdpSocketListener> lsnr);

FOUNDATION_EXPORT NetI2pRouterTransportUdpUDPReceiver *new_NetI2pRouterTransportUdpUDPReceiver_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_withJavaNetDatagramSocket_withNSString_withNetI2pRouterTransportUdpSocketListener_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport, JavaNetDatagramSocket *socket, NSString *name, id<NetI2pRouterTransportUdpSocketListener> lsnr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportUdpUDPReceiver *create_NetI2pRouterTransportUdpUDPReceiver_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_withJavaNetDatagramSocket_withNSString_withNetI2pRouterTransportUdpSocketListener_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport, JavaNetDatagramSocket *socket, NSString *name, id<NetI2pRouterTransportUdpSocketListener> lsnr);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportUdpUDPReceiver)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportUdpUDPReceiver")
