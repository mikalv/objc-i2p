//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/ReconfigureSessionMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpReconfigureSessionMessage")
#ifdef RESTRICT_NetI2pDataI2cpReconfigureSessionMessage
#define INCLUDE_ALL_NetI2pDataI2cpReconfigureSessionMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpReconfigureSessionMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpReconfigureSessionMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpReconfigureSessionMessage_) && (INCLUDE_ALL_NetI2pDataI2cpReconfigureSessionMessage || defined(INCLUDE_NetI2pDataI2cpReconfigureSessionMessage))
#define NetI2pDataI2cpReconfigureSessionMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pDataI2cpSessionConfig;
@class NetI2pDataI2cpSessionId;

@interface NetI2pDataI2cpReconfigureSessionMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (NetI2pDataI2cpSessionConfig *)getSessionConfig;

- (NetI2pDataI2cpSessionId *)getSessionId;

- (jint)getType;

- (NetI2pDataI2cpSessionId *)sessionId;

- (void)setSessionConfigWithNetI2pDataI2cpSessionConfig:(NetI2pDataI2cpSessionConfig *)config;

- (void)setSessionIdWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpReconfigureSessionMessage)

inline jint NetI2pDataI2cpReconfigureSessionMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpReconfigureSessionMessage_MESSAGE_TYPE 2
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpReconfigureSessionMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpReconfigureSessionMessage_init(NetI2pDataI2cpReconfigureSessionMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpReconfigureSessionMessage *new_NetI2pDataI2cpReconfigureSessionMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpReconfigureSessionMessage *create_NetI2pDataI2cpReconfigureSessionMessage_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpReconfigureSessionMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpReconfigureSessionMessage")
