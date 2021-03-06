//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/PendingGatewayMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPendingGatewayMessage")
#ifdef RESTRICT_NetI2pRouterTunnelPendingGatewayMessage
#define INCLUDE_ALL_NetI2pRouterTunnelPendingGatewayMessage 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPendingGatewayMessage 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPendingGatewayMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPendingGatewayMessage_) && (INCLUDE_ALL_NetI2pRouterTunnelPendingGatewayMessage || defined(INCLUDE_NetI2pRouterTunnelPendingGatewayMessage))
#define NetI2pRouterTunnelPendingGatewayMessage_

#define RESTRICT_NetI2pRouterUtilCDQEntry 1
#define INCLUDE_NetI2pRouterUtilCDQEntry 1
#include "net/i2p/router/util/CDQEntry.h"

@class IOSByteArray;
@class NetI2pDataHash;
@class NetI2pDataTunnelId;
@protocol JavaUtilList;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pRouterTunnelPendingGatewayMessage : NSObject < NetI2pRouterUtilCDQEntry > {
 @public
  NetI2pDataHash *_toRouter_;
  NetI2pDataTunnelId *_toTunnel_;
  jlong _messageId_;
  jlong _expiration_;
  IOSByteArray *_remaining_;
  jint _offset_;
  jint _fragmentNumber_;
  jlong _created_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message
                                         withNetI2pDataHash:(NetI2pDataHash *)toRouter
                                     withNetI2pDataTunnelId:(NetI2pDataTunnelId *)toTunnel;

- (void)addMessageIdWithLong:(jlong)id_;

- (void)drop;

- (IOSByteArray *)getData;

- (jlong)getEnqueueTime;

- (jlong)getExpiration;

- (jint)getFragmentNumber;

- (jlong)getLifetime;

- (jlong)getMessageId;

- (id<JavaUtilList>)getMessageIds;

- (jint)getOffset;

- (NetI2pDataHash *)getToRouter;

- (NetI2pDataTunnelId *)getToTunnel;

- (void)incrementFragmentNumber;

- (void)setEnqueueTimeWithLong:(jlong)now;

- (void)setOffsetWithInt:(jint)offset;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPendingGatewayMessage)

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelPendingGatewayMessage, _toRouter_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelPendingGatewayMessage, _toTunnel_, NetI2pDataTunnelId *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelPendingGatewayMessage, _remaining_, IOSByteArray *)

FOUNDATION_EXPORT void NetI2pRouterTunnelPendingGatewayMessage_initWithNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelPendingGatewayMessage *self, id<NetI2pDataI2npI2NPMessage> message, NetI2pDataHash *toRouter, NetI2pDataTunnelId *toTunnel);

FOUNDATION_EXPORT NetI2pRouterTunnelPendingGatewayMessage *new_NetI2pRouterTunnelPendingGatewayMessage_initWithNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(id<NetI2pDataI2npI2NPMessage> message, NetI2pDataHash *toRouter, NetI2pDataTunnelId *toTunnel) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPendingGatewayMessage *create_NetI2pRouterTunnelPendingGatewayMessage_initWithNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(id<NetI2pDataI2npI2NPMessage> message, NetI2pDataHash *toRouter, NetI2pDataTunnelId *toTunnel);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPendingGatewayMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPendingGatewayMessage")
