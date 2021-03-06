//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/SendMessageMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpSendMessageMessage")
#ifdef RESTRICT_NetI2pDataI2cpSendMessageMessage
#define INCLUDE_ALL_NetI2pDataI2cpSendMessageMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpSendMessageMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpSendMessageMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpSendMessageMessage_) && (INCLUDE_ALL_NetI2pDataI2cpSendMessageMessage || defined(INCLUDE_NetI2pDataI2cpSendMessageMessage))
#define NetI2pDataI2cpSendMessageMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class NetI2pDataDestination;
@class NetI2pDataI2cpSessionId;
@class NetI2pDataPayload;

@interface NetI2pDataI2cpSendMessageMessage : NetI2pDataI2cpI2CPMessageImpl {
 @public
  NetI2pDataI2cpSessionId *_sessionId_;
  NetI2pDataDestination *_destination_;
  NetI2pDataPayload *_payload_;
  jlong _nonce_;
}
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (NetI2pDataDestination *)getDestination;

- (jlong)getNonce;

- (NetI2pDataPayload *)getPayload;

- (NetI2pDataI2cpSessionId *)getSessionId;

- (jint)getType;

- (void)readMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                 withInt:(jint)length
                                 withInt:(jint)type;

- (NetI2pDataI2cpSessionId *)sessionId;

- (void)setDestinationWithNetI2pDataDestination:(NetI2pDataDestination *)destination;

- (void)setNonceWithLong:(jlong)nonce;

- (void)setPayloadWithNetI2pDataPayload:(NetI2pDataPayload *)payload;

- (void)setSessionIdWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_;

- (NSString *)description;

- (void)writeMessageWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpSendMessageMessage)

J2OBJC_FIELD_SETTER(NetI2pDataI2cpSendMessageMessage, _sessionId_, NetI2pDataI2cpSessionId *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpSendMessageMessage, _destination_, NetI2pDataDestination *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpSendMessageMessage, _payload_, NetI2pDataPayload *)

inline jint NetI2pDataI2cpSendMessageMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpSendMessageMessage_MESSAGE_TYPE 5
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpSendMessageMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpSendMessageMessage_init(NetI2pDataI2cpSendMessageMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpSendMessageMessage *new_NetI2pDataI2cpSendMessageMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpSendMessageMessage *create_NetI2pDataI2cpSendMessageMessage_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpSendMessageMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpSendMessageMessage")
