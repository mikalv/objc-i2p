//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/InternalServerSocket.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilInternalServerSocket")
#ifdef RESTRICT_NetI2pUtilInternalServerSocket
#define INCLUDE_ALL_NetI2pUtilInternalServerSocket 0
#else
#define INCLUDE_ALL_NetI2pUtilInternalServerSocket 1
#endif
#undef RESTRICT_NetI2pUtilInternalServerSocket

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilInternalServerSocket_) && (INCLUDE_ALL_NetI2pUtilInternalServerSocket || defined(INCLUDE_NetI2pUtilInternalServerSocket))
#define NetI2pUtilInternalServerSocket_

#define RESTRICT_JavaNetServerSocket 1
#define INCLUDE_JavaNetServerSocket 1
#include "java/net/ServerSocket.h"

@class JavaIoWriter;
@class JavaNetInetAddress;
@class JavaNetSocket;
@class JavaNetSocketAddress;
@class JavaNetSocketImpl;
@class JavaNioChannelsServerSocketChannel;
@class NetI2pUtilInternalSocket;

@interface NetI2pUtilInternalServerSocket : JavaNetServerSocket

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)port;

- (JavaNetSocket *)accept;

- (void)bindWithJavaNetSocketAddress:(JavaNetSocketAddress *)endpoint;

- (void)bindWithJavaNetSocketAddress:(JavaNetSocketAddress *)endpoint
                             withInt:(jint)backlog;

- (void)close;

- (JavaNioChannelsServerSocketChannel *)getChannel;

- (JavaNetInetAddress *)getInetAddress;

- (jint)getLocalPort;

- (JavaNetSocketAddress *)getLocalSocketAddress;

- (jint)getReceiveBufferSize;

- (jboolean)getReuseAddress;

- (jint)getSoTimeout;

- (jboolean)isBound;

- (jboolean)isClosed;

+ (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)setReceiveBufferSizeWithInt:(jint)size;

- (void)setReuseAddressWithBoolean:(jboolean)on;

- (void)setSoTimeoutWithInt:(jint)timeout;

- (NSString *)description;

#pragma mark Package-Private

+ (void)internalConnectWithInt:(jint)port
  withNetI2pUtilInternalSocket:(NetI2pUtilInternalSocket *)clientSock;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1
               withJavaNetInetAddress:(JavaNetInetAddress *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaNetSocketImpl:(JavaNetSocketImpl *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pUtilInternalServerSocket)

FOUNDATION_EXPORT void NetI2pUtilInternalServerSocket_initWithInt_(NetI2pUtilInternalServerSocket *self, jint port);

FOUNDATION_EXPORT NetI2pUtilInternalServerSocket *new_NetI2pUtilInternalServerSocket_initWithInt_(jint port) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilInternalServerSocket *create_NetI2pUtilInternalServerSocket_initWithInt_(jint port);

FOUNDATION_EXPORT void NetI2pUtilInternalServerSocket_internalConnectWithInt_withNetI2pUtilInternalSocket_(jint port, NetI2pUtilInternalSocket *clientSock);

FOUNDATION_EXPORT void NetI2pUtilInternalServerSocket_renderStatusHTMLWithJavaIoWriter_(JavaIoWriter *outArg);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilInternalServerSocket)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilInternalServerSocket")
