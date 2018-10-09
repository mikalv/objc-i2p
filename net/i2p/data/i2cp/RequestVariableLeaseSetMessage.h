//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/RequestVariableLeaseSetMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpRequestVariableLeaseSetMessage")
#ifdef RESTRICT_NetI2pDataI2cpRequestVariableLeaseSetMessage
#define INCLUDE_ALL_NetI2pDataI2cpRequestVariableLeaseSetMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpRequestVariableLeaseSetMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpRequestVariableLeaseSetMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpRequestVariableLeaseSetMessage_) && (INCLUDE_ALL_NetI2pDataI2cpRequestVariableLeaseSetMessage || defined(INCLUDE_NetI2pDataI2cpRequestVariableLeaseSetMessage))
#define NetI2pDataI2cpRequestVariableLeaseSetMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pDataI2cpSessionId;
@class NetI2pDataLease;

@interface NetI2pDataI2cpRequestVariableLeaseSetMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (void)addEndpointWithNetI2pDataLease:(NetI2pDataLease *)lease;

- (NetI2pDataLease *)getEndpointWithInt:(jint)endpoint;

- (jint)getEndpoints;

- (NetI2pDataI2cpSessionId *)getSessionId;

- (jint)getType;

+ (jboolean)isSupportedWithNSString:(NSString *)clientVersion;

- (NetI2pDataI2cpSessionId *)sessionId;

- (void)setSessionIdWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpRequestVariableLeaseSetMessage)

inline jint NetI2pDataI2cpRequestVariableLeaseSetMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpRequestVariableLeaseSetMessage_MESSAGE_TYPE 37
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpRequestVariableLeaseSetMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpRequestVariableLeaseSetMessage_init(NetI2pDataI2cpRequestVariableLeaseSetMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpRequestVariableLeaseSetMessage *new_NetI2pDataI2cpRequestVariableLeaseSetMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpRequestVariableLeaseSetMessage *create_NetI2pDataI2cpRequestVariableLeaseSetMessage_init(void);

FOUNDATION_EXPORT jboolean NetI2pDataI2cpRequestVariableLeaseSetMessage_isSupportedWithNSString_(NSString *clientVersion);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpRequestVariableLeaseSetMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpRequestVariableLeaseSetMessage")