//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/NTCPConnection.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPConnection")
#ifdef RESTRICT_NetI2pRouterTransportNtcpNTCPConnection
#define INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPConnection 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPConnection 1
#endif
#undef RESTRICT_NetI2pRouterTransportNtcpNTCPConnection

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportNtcpNTCPConnection_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPConnection || defined(INCLUDE_NetI2pRouterTransportNtcpNTCPConnection))
#define NetI2pRouterTransportNtcpNTCPConnection_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class IOSByteArray;
@class JavaLangException;
@class JavaNioByteBuffer;
@class JavaNioChannelsSelectionKey;
@class JavaNioChannelsSocketChannel;
@class NetI2pDataRouterRouterAddress;
@class NetI2pDataRouterRouterIdentity;
@class NetI2pDataSessionKey;
@class NetI2pRouterOutNetMessage;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportNtcpNTCP2Options;
@class NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer;
@class NetI2pRouterTransportNtcpNTCPTransport;
@protocol ComSouthernstormNoiseProtocolCipherState;
@protocol NetI2pRouterTransportFIFOBandwidthLimiter_Request;
@protocol NetI2pRouterTransportNtcpEstablishState;

@interface NetI2pRouterTransportNtcpNTCPConnection : NSObject < JavaIoCloseable >
@property (readonly, class) jint BUFFER_SIZE NS_SWIFT_NAME(BUFFER_SIZE);
@property (readonly, class) jint NTCP1_MAX_MSG_SIZE NS_SWIFT_NAME(NTCP1_MAX_MSG_SIZE);
@property (readonly, class) jint NTCP2_MAX_MSG_SIZE NS_SWIFT_NAME(NTCP2_MAX_MSG_SIZE);
@property (readonly, class) jint REASON_UNSPEC NS_SWIFT_NAME(REASON_UNSPEC);
@property (readonly, class) jint REASON_TERMINATION NS_SWIFT_NAME(REASON_TERMINATION);
@property (readonly, class) jint REASON_TIMEOUT NS_SWIFT_NAME(REASON_TIMEOUT);
@property (readonly, class) jint REASON_AEAD NS_SWIFT_NAME(REASON_AEAD);
@property (readonly, class) jint REASON_OPTIONS NS_SWIFT_NAME(REASON_OPTIONS);
@property (readonly, class) jint REASON_SIGTYPE NS_SWIFT_NAME(REASON_SIGTYPE);
@property (readonly, class) jint REASON_SKEW NS_SWIFT_NAME(REASON_SKEW);
@property (readonly, class) jint REASON_PADDING NS_SWIFT_NAME(REASON_PADDING);
@property (readonly, class) jint REASON_FRAMING NS_SWIFT_NAME(REASON_FRAMING);
@property (readonly, class) jint REASON_PAYLOAD NS_SWIFT_NAME(REASON_PAYLOAD);
@property (readonly, class) jint REASON_MSG1 NS_SWIFT_NAME(REASON_MSG1);
@property (readonly, class) jint REASON_MSG2 NS_SWIFT_NAME(REASON_MSG2);
@property (readonly, class) jint REASON_MSG3 NS_SWIFT_NAME(REASON_MSG3);
@property (readonly, class) jint REASON_FRAME_TIMEOUT NS_SWIFT_NAME(REASON_FRAME_TIMEOUT);
@property (readonly, class) jint REASON_SIGFAIL NS_SWIFT_NAME(REASON_SIGFAIL);
@property (readonly, class) jint REASON_S_MISMATCH NS_SWIFT_NAME(REASON_S_MISMATCH);
@property (readonly, class) jint REASON_BANNED NS_SWIFT_NAME(REASON_BANNED);
@property (readonly, class) jint PADDING_MIN_DEFAULT_INT NS_SWIFT_NAME(PADDING_MIN_DEFAULT_INT);
@property (readonly, class) jint PADDING_MAX_DEFAULT_INT NS_SWIFT_NAME(PADDING_MAX_DEFAULT_INT);
@property (readonly, class) jint DUMMY_DEFAULT NS_SWIFT_NAME(DUMMY_DEFAULT);
@property (readonly, class) jint DELAY_DEFAULT NS_SWIFT_NAME(DELAY_DEFAULT);

+ (jint)BUFFER_SIZE;

+ (jint)NTCP1_MAX_MSG_SIZE;

+ (jint)NTCP2_MAX_MSG_SIZE;

+ (jint)REASON_UNSPEC;

+ (jint)REASON_TERMINATION;

+ (jint)REASON_TIMEOUT;

+ (jint)REASON_AEAD;

+ (jint)REASON_OPTIONS;

+ (jint)REASON_SIGTYPE;

+ (jint)REASON_SKEW;

+ (jint)REASON_PADDING;

+ (jint)REASON_FRAMING;

+ (jint)REASON_PAYLOAD;

+ (jint)REASON_MSG1;

+ (jint)REASON_MSG2;

+ (jint)REASON_MSG3;

+ (jint)REASON_FRAME_TIMEOUT;

+ (jint)REASON_SIGFAIL;

+ (jint)REASON_S_MISMATCH;

+ (jint)REASON_BANNED;

+ (jint)PADDING_MIN_DEFAULT_INT;

+ (jint)PADDING_MAX_DEFAULT_INT;

+ (jint)DUMMY_DEFAULT;

+ (jint)DELAY_DEFAULT;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                 withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport
                         withNetI2pDataRouterRouterIdentity:(NetI2pDataRouterRouterIdentity *)remotePeer
                          withNetI2pDataRouterRouterAddress:(NetI2pDataRouterRouterAddress *)remAddr
                                                    withInt:(jint)version_;

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                 withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport
                           withJavaNioChannelsSocketChannel:(JavaNioChannelsSocketChannel *)chan
                            withJavaNioChannelsSelectionKey:(JavaNioChannelsSelectionKey *)key;

- (void)close;

- (void)closeWithBoolean:(jboolean)allowRequeue;

- (JavaNioChannelsSocketChannel *)getChannel;

- (jlong)getClockSkew;

- (jlong)getCreated;

- (JavaNioChannelsSelectionKey *)getKey;

- (jboolean)getMayDisconnect;

- (jint)getMessagesReceived;

- (jint)getMessagesSent;

- (jint)getOutboundQueueSize;

- (jfloat)getRecvRate;

- (NetI2pDataRouterRouterAddress *)getRemoteAddress;

- (NetI2pDataRouterRouterIdentity *)getRemotePeer;

- (jfloat)getSendRate;

- (jlong)getTimeSinceCreated;

- (jlong)getTimeSinceReceive;

- (jlong)getTimeSinceSend;

- (jlong)getUptime;

- (jint)getVersion;

- (jboolean)isBacklogged;

- (jboolean)isClosed;

- (jboolean)isEstablished;

- (jboolean)isInbound;

- (jboolean)isIPv6;

- (void)sendWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

- (void)setChannelWithJavaNioChannelsSocketChannel:(JavaNioChannelsSocketChannel *)chan;

- (void)setKeyWithJavaNioChannelsSelectionKey:(JavaNioChannelsSelectionKey *)key;

- (void)setMayDisconnect;

- (void)setRemotePeerWithNetI2pDataRouterRouterIdentity:(NetI2pDataRouterRouterIdentity *)ident;

- (void)setVersionWithInt:(jint)ver;

- (jboolean)tooBacklogged;

- (NSString *)description;

#pragma mark Package-Private

- (void)clearZeroRead;

- (void)closeOnTimeoutWithNSString:(NSString *)cause
             withJavaLangException:(JavaLangException *)e;

- (void)enqueueInfoMessage;

- (void)failInboundEstablishmentWithComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)sender
                                                               withByteArray:(IOSByteArray *)sip_ba
                                                                     withInt:(jint)reason;

- (void)finishInboundEstablishmentWithComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)sender
                                  withComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)receiver
                                                                 withByteArray:(IOSByteArray *)sip_ba
                                                                 withByteArray:(IOSByteArray *)sip_ab
                                                                      withLong:(jlong)clockSkew
                                     withNetI2pRouterTransportNtcpNTCP2Options:(NetI2pRouterTransportNtcpNTCP2Options *)hisPadding;

- (void)finishInboundEstablishmentWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key
                                                  withLong:(jlong)clockSkew
                                             withByteArray:(IOSByteArray *)prevWriteEnd
                                             withByteArray:(IOSByteArray *)prevReadEnd;

- (void)finishOutboundEstablishmentWithComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)sender
                                   withComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)receiver
                                                                  withByteArray:(IOSByteArray *)sip_ab
                                                                  withByteArray:(IOSByteArray *)sip_ba
                                                                       withLong:(jlong)clockSkew;

- (void)finishOutboundEstablishmentWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key
                                                   withLong:(jlong)clockSkew
                                              withByteArray:(IOSByteArray *)prevWriteEnd
                                              withByteArray:(IOSByteArray *)prevReadEnd;

- (id<NetI2pRouterTransportNtcpEstablishState>)getEstablishState;

- (JavaNioByteBuffer *)getNextReadBuf;

- (JavaNioByteBuffer *)getNextWriteBuf;

- (jint)gotZeroRead;

- (jboolean)isWriteBufEmpty;

- (void)outboundConnected;

- (void)prepareNextWriteWithNetI2pRouterTransportNtcpNTCPConnection_PrepBuffer:(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer *)prep;

- (void)queuedRecvWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf
withNetI2pRouterTransportFIFOBandwidthLimiter_Request:(id<NetI2pRouterTransportFIFOBandwidthLimiter_Request>)req;

- (void)queuedWriteWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf
withNetI2pRouterTransportFIFOBandwidthLimiter_Request:(id<NetI2pRouterTransportFIFOBandwidthLimiter_Request>)req;

- (void)recvWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf;

- (void)recvEncryptedI2NPWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf;

+ (void)releaseResources;

- (void)removeWriteBufWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf;

- (void)sendTerminationAndClose;

- (void)writeWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportNtcpNTCPConnection)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_BUFFER_SIZE(void);
#define NetI2pRouterTransportNtcpNTCPConnection_BUFFER_SIZE 16384
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, BUFFER_SIZE, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_NTCP1_MAX_MSG_SIZE(void);
#define NetI2pRouterTransportNtcpNTCPConnection_NTCP1_MAX_MSG_SIZE 16378
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, NTCP1_MAX_MSG_SIZE, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_NTCP2_MAX_MSG_SIZE(void);
#define NetI2pRouterTransportNtcpNTCPConnection_NTCP2_MAX_MSG_SIZE 65516
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, NTCP2_MAX_MSG_SIZE, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_UNSPEC(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_UNSPEC 0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_UNSPEC, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_TERMINATION(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_TERMINATION 1
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_TERMINATION, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_TIMEOUT(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_TIMEOUT 2
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_TIMEOUT, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_AEAD(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_AEAD 4
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_AEAD, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_OPTIONS(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_OPTIONS 5
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_OPTIONS, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_SIGTYPE(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_SIGTYPE 6
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_SIGTYPE, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_SKEW(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_SKEW 7
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_SKEW, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_PADDING(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_PADDING 8
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_PADDING, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_FRAMING(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_FRAMING 9
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_FRAMING, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_PAYLOAD(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_PAYLOAD 10
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_PAYLOAD, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_MSG1(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_MSG1 11
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_MSG1, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_MSG2(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_MSG2 12
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_MSG2, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_MSG3(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_MSG3 13
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_MSG3, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_FRAME_TIMEOUT(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_FRAME_TIMEOUT 14
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_FRAME_TIMEOUT, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_SIGFAIL(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_SIGFAIL 15
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_SIGFAIL, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_S_MISMATCH(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_S_MISMATCH 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_S_MISMATCH, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_REASON_BANNED(void);
#define NetI2pRouterTransportNtcpNTCPConnection_REASON_BANNED 17
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, REASON_BANNED, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_PADDING_MIN_DEFAULT_INT(void);
#define NetI2pRouterTransportNtcpNTCPConnection_PADDING_MIN_DEFAULT_INT 0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, PADDING_MIN_DEFAULT_INT, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_PADDING_MAX_DEFAULT_INT(void);
#define NetI2pRouterTransportNtcpNTCPConnection_PADDING_MAX_DEFAULT_INT 1
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, PADDING_MAX_DEFAULT_INT, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_DUMMY_DEFAULT(void);
#define NetI2pRouterTransportNtcpNTCPConnection_DUMMY_DEFAULT 0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, DUMMY_DEFAULT, jint)

inline jint NetI2pRouterTransportNtcpNTCPConnection_get_DELAY_DEFAULT(void);
#define NetI2pRouterTransportNtcpNTCPConnection_DELAY_DEFAULT 0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpNTCPConnection, DELAY_DEFAULT, jint)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpNTCPConnection_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withJavaNioChannelsSocketChannel_withJavaNioChannelsSelectionKey_(NetI2pRouterTransportNtcpNTCPConnection *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, JavaNioChannelsSocketChannel *chan, JavaNioChannelsSelectionKey *key);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPConnection *new_NetI2pRouterTransportNtcpNTCPConnection_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withJavaNioChannelsSocketChannel_withJavaNioChannelsSelectionKey_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, JavaNioChannelsSocketChannel *chan, JavaNioChannelsSelectionKey *key) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPConnection *create_NetI2pRouterTransportNtcpNTCPConnection_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withJavaNioChannelsSocketChannel_withJavaNioChannelsSelectionKey_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, JavaNioChannelsSocketChannel *chan, JavaNioChannelsSelectionKey *key);

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpNTCPConnection_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pDataRouterRouterIdentity_withNetI2pDataRouterRouterAddress_withInt_(NetI2pRouterTransportNtcpNTCPConnection *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pDataRouterRouterIdentity *remotePeer, NetI2pDataRouterRouterAddress *remAddr, jint version_);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPConnection *new_NetI2pRouterTransportNtcpNTCPConnection_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pDataRouterRouterIdentity_withNetI2pDataRouterRouterAddress_withInt_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pDataRouterRouterIdentity *remotePeer, NetI2pDataRouterRouterAddress *remAddr, jint version_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPConnection *create_NetI2pRouterTransportNtcpNTCPConnection_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pDataRouterRouterIdentity_withNetI2pDataRouterRouterAddress_withInt_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pDataRouterRouterIdentity *remotePeer, NetI2pDataRouterRouterAddress *remAddr, jint version_);

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpNTCPConnection_releaseResources(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpNTCPConnection)

#endif

#if !defined (NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPConnection || defined(INCLUDE_NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer))
#define NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer_

@class IOSByteArray;
@class JavaUtilZipAdler32;

@interface NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer : NSObject {
 @public
  IOSByteArray *unencrypted_;
  jint unencryptedLength_;
  JavaUtilZipAdler32 *crc_;
  IOSByteArray *encrypted_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (void)init__ OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer)

J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer, unencrypted_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer, crc_, JavaUtilZipAdler32 *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer, encrypted_, IOSByteArray *)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer_init(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer *self);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer *new_NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer *create_NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpNTCPConnection_PrepBuffer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpNTCPConnection")
