//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/InternalSocket.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilInternalSocket")
#ifdef RESTRICT_NetI2pUtilInternalSocket
#define INCLUDE_ALL_NetI2pUtilInternalSocket 0
#else
#define INCLUDE_ALL_NetI2pUtilInternalSocket 1
#endif
#undef RESTRICT_NetI2pUtilInternalSocket

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilInternalSocket_) && (INCLUDE_ALL_NetI2pUtilInternalSocket || defined(INCLUDE_NetI2pUtilInternalSocket))
#define NetI2pUtilInternalSocket_

#define RESTRICT_JavaNetSocket 1
#define INCLUDE_JavaNetSocket 1
#include "java/net/Socket.h"

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaNetInetAddress;
@class JavaNetProxy;
@class JavaNetSocketAddress;
@class JavaNetSocketImpl;
@class JavaNioChannelsSocketChannel;

@interface NetI2pUtilInternalSocket : JavaNetSocket

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)port;

- (void)bindWithJavaNetSocketAddress:(JavaNetSocketAddress *)endpoint;

- (void)close;

- (void)connectWithJavaNetSocketAddress:(JavaNetSocketAddress *)endpoint;

- (void)connectWithJavaNetSocketAddress:(JavaNetSocketAddress *)endpoint
                                withInt:(jint)timeout;

- (JavaNioChannelsSocketChannel *)getChannel;

- (JavaNetInetAddress *)getInetAddress;

- (JavaIoInputStream *)getInputStream;

- (jboolean)getKeepAlive;

- (JavaNetInetAddress *)getLocalAddress;

- (jint)getLocalPort;

- (JavaNetSocketAddress *)getLocalSocketAddress;

- (jboolean)getOOBInline;

- (JavaIoOutputStream *)getOutputStream;

- (jint)getPort;

- (jint)getReceiveBufferSize;

- (JavaNetSocketAddress *)getRemoteSocketAddress;

- (jboolean)getReuseAddress;

- (jint)getSendBufferSize;

+ (JavaNetSocket *)getSocketWithNSString:(NSString *)host
                                 withInt:(jint)port;

- (jint)getSoLinger;

- (jint)getSoTimeout;

- (jboolean)getTcpNoDelay;

- (jint)getTrafficClass;

- (jboolean)isBound;

- (jboolean)isClosed;

- (jboolean)isConnected;

- (jboolean)isInputShutdown;

- (jboolean)isOutputShutdown;

- (void)sendUrgentDataWithInt:(jint)data;

- (void)setKeepAliveWithBoolean:(jboolean)on;

- (void)setOOBInlineWithBoolean:(jboolean)on;

- (void)setReceiveBufferSizeWithInt:(jint)size;

- (void)setReuseAddressWithBoolean:(jboolean)on;

- (void)setSendBufferSizeWithInt:(jint)size;

- (void)setSoLingerWithBoolean:(jboolean)on
                       withInt:(jint)linger;

- (void)setSoTimeoutWithInt:(jint)timeout;

- (void)setTcpNoDelayWithBoolean:(jboolean)on;

- (void)setTrafficClassWithInt:(jint)cize;

- (void)shutdownInput;

- (void)shutdownOutput;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithJavaIoInputStream:(JavaIoInputStream *)is
                             withJavaIoOutputStream:(JavaIoOutputStream *)os;

- (void)setInputStreamWithJavaIoInputStream:(JavaIoInputStream *)is;

- (void)setOutputStreamWithJavaIoOutputStream:(JavaIoOutputStream *)os;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaNetInetAddress:(JavaNetInetAddress *)arg0
                                             withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaNetInetAddress:(JavaNetInetAddress *)arg0
                                             withInt:(jint)arg1
                                         withBoolean:(jboolean)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaNetInetAddress:(JavaNetInetAddress *)arg0
                                             withInt:(jint)arg1
                              withJavaNetInetAddress:(JavaNetInetAddress *)arg2
                                             withInt:(jint)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaNetProxy:(JavaNetProxy *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaNetSocketImpl:(JavaNetSocketImpl *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                                   withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                                   withInt:(jint)arg1
                               withBoolean:(jboolean)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                                   withInt:(jint)arg1
                    withJavaNetInetAddress:(JavaNetInetAddress *)arg2
                                   withInt:(jint)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilInternalSocket)

FOUNDATION_EXPORT void NetI2pUtilInternalSocket_initWithJavaIoInputStream_withJavaIoOutputStream_(NetI2pUtilInternalSocket *self, JavaIoInputStream *is, JavaIoOutputStream *os);

FOUNDATION_EXPORT NetI2pUtilInternalSocket *new_NetI2pUtilInternalSocket_initWithJavaIoInputStream_withJavaIoOutputStream_(JavaIoInputStream *is, JavaIoOutputStream *os) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilInternalSocket *create_NetI2pUtilInternalSocket_initWithJavaIoInputStream_withJavaIoOutputStream_(JavaIoInputStream *is, JavaIoOutputStream *os);

FOUNDATION_EXPORT void NetI2pUtilInternalSocket_initWithInt_(NetI2pUtilInternalSocket *self, jint port);

FOUNDATION_EXPORT NetI2pUtilInternalSocket *new_NetI2pUtilInternalSocket_initWithInt_(jint port) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilInternalSocket *create_NetI2pUtilInternalSocket_initWithInt_(jint port);

FOUNDATION_EXPORT JavaNetSocket *NetI2pUtilInternalSocket_getSocketWithNSString_withInt_(NSString *host, jint port);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilInternalSocket)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilInternalSocket")
