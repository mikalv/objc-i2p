//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/EventPumper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpEventPumper")
#ifdef RESTRICT_NetI2pRouterTransportNtcpEventPumper
#define INCLUDE_ALL_NetI2pRouterTransportNtcpEventPumper 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportNtcpEventPumper 1
#endif
#undef RESTRICT_NetI2pRouterTransportNtcpEventPumper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportNtcpEventPumper_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpEventPumper || defined(INCLUDE_NetI2pRouterTransportNtcpEventPumper))
#define NetI2pRouterTransportNtcpEventPumper_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class IOSByteArray;
@class JavaNioByteBuffer;
@class JavaNioChannelsServerSocketChannel;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportNtcpNTCPConnection;
@class NetI2pRouterTransportNtcpNTCPTransport;

@interface NetI2pRouterTransportNtcpEventPumper : NSObject < JavaLangRunnable >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                 withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport;

- (jlong)getIdleTimeout;

- (jboolean)isAlive;

- (void)register__WithJavaNioChannelsServerSocketChannel:(JavaNioChannelsServerSocketChannel *)chan;

- (void)registerConnectWithNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con;

+ (void)releaseBufWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf;

- (void)run;

- (void)startPumping;

- (void)stopPumping;

- (void)wantsReadWithNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con;

- (void)wantsWriteWithNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con;

- (void)wantsWriteWithNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con
                                                withByteArray:(IOSByteArray *)data;

- (void)wantsWriteWithNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con
                                                withByteArray:(IOSByteArray *)data
                                                      withInt:(jint)off
                                                      withInt:(jint)len;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportNtcpEventPumper)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpEventPumper_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_(NetI2pRouterTransportNtcpEventPumper *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEventPumper *new_NetI2pRouterTransportNtcpEventPumper_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEventPumper *create_NetI2pRouterTransportNtcpEventPumper_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport);

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpEventPumper_releaseBufWithJavaNioByteBuffer_(JavaNioByteBuffer *buf);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpEventPumper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpEventPumper")
