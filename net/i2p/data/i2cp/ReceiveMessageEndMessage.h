//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/ReceiveMessageEndMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpReceiveMessageEndMessage")
#ifdef RESTRICT_NetI2pDataI2cpReceiveMessageEndMessage
#define INCLUDE_ALL_NetI2pDataI2cpReceiveMessageEndMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpReceiveMessageEndMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpReceiveMessageEndMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpReceiveMessageEndMessage_) && (INCLUDE_ALL_NetI2pDataI2cpReceiveMessageEndMessage || defined(INCLUDE_NetI2pDataI2cpReceiveMessageEndMessage))
#define NetI2pDataI2cpReceiveMessageEndMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pDataI2cpSessionId;

@interface NetI2pDataI2cpReceiveMessageEndMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (jlong)getMessageId;

- (jlong)getSessionId;

- (jint)getType;

- (NetI2pDataI2cpSessionId *)sessionId;

- (void)setMessageIdWithLong:(jlong)id_;

- (void)setSessionIdWithLong:(jlong)id_;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpReceiveMessageEndMessage)

inline jint NetI2pDataI2cpReceiveMessageEndMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpReceiveMessageEndMessage_MESSAGE_TYPE 7
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpReceiveMessageEndMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpReceiveMessageEndMessage_init(NetI2pDataI2cpReceiveMessageEndMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpReceiveMessageEndMessage *new_NetI2pDataI2cpReceiveMessageEndMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpReceiveMessageEndMessage *create_NetI2pDataI2cpReceiveMessageEndMessage_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpReceiveMessageEndMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpReceiveMessageEndMessage")
