//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/DestroySessionMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpDestroySessionMessage")
#ifdef RESTRICT_NetI2pDataI2cpDestroySessionMessage
#define INCLUDE_ALL_NetI2pDataI2cpDestroySessionMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpDestroySessionMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpDestroySessionMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpDestroySessionMessage_) && (INCLUDE_ALL_NetI2pDataI2cpDestroySessionMessage || defined(INCLUDE_NetI2pDataI2cpDestroySessionMessage))
#define NetI2pDataI2cpDestroySessionMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pDataI2cpSessionId;

@interface NetI2pDataI2cpDestroySessionMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (NetI2pDataI2cpSessionId *)getSessionId;

- (jint)getType;

- (NetI2pDataI2cpSessionId *)sessionId;

- (void)setSessionIdWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpDestroySessionMessage)

inline jint NetI2pDataI2cpDestroySessionMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpDestroySessionMessage_MESSAGE_TYPE 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpDestroySessionMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpDestroySessionMessage_init(NetI2pDataI2cpDestroySessionMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpDestroySessionMessage *new_NetI2pDataI2cpDestroySessionMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpDestroySessionMessage *create_NetI2pDataI2cpDestroySessionMessage_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpDestroySessionMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpDestroySessionMessage")
