//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/HostReplyMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpHostReplyMessage")
#ifdef RESTRICT_NetI2pDataI2cpHostReplyMessage
#define INCLUDE_ALL_NetI2pDataI2cpHostReplyMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpHostReplyMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpHostReplyMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpHostReplyMessage_) && (INCLUDE_ALL_NetI2pDataI2cpHostReplyMessage || defined(INCLUDE_NetI2pDataI2cpHostReplyMessage))
#define NetI2pDataI2cpHostReplyMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pDataDestination;
@class NetI2pDataI2cpSessionId;

@interface NetI2pDataI2cpHostReplyMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);
@property (readonly, class) jint RESULT_SUCCESS NS_SWIFT_NAME(RESULT_SUCCESS);
@property (readonly, class) jint RESULT_FAILURE NS_SWIFT_NAME(RESULT_FAILURE);

+ (jint)MESSAGE_TYPE;

+ (jint)RESULT_SUCCESS;

+ (jint)RESULT_FAILURE;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_
                                withNetI2pDataDestination:(NetI2pDataDestination *)d
                                                 withLong:(jlong)reqID;

- (instancetype __nonnull)initWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_
                                                  withInt:(jint)failureCode
                                                 withLong:(jlong)reqID;

- (NetI2pDataDestination *)getDestination;

- (jlong)getReqID;

- (jint)getResultCode;

- (NetI2pDataI2cpSessionId *)getSessionId;

- (jint)getType;

- (NetI2pDataI2cpSessionId *)sessionId;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpHostReplyMessage)

inline jint NetI2pDataI2cpHostReplyMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE 39
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpHostReplyMessage, MESSAGE_TYPE, jint)

inline jint NetI2pDataI2cpHostReplyMessage_get_RESULT_SUCCESS(void);
#define NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS 0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpHostReplyMessage, RESULT_SUCCESS, jint)

inline jint NetI2pDataI2cpHostReplyMessage_get_RESULT_FAILURE(void);
#define NetI2pDataI2cpHostReplyMessage_RESULT_FAILURE 1
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpHostReplyMessage, RESULT_FAILURE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpHostReplyMessage_init(NetI2pDataI2cpHostReplyMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpHostReplyMessage *new_NetI2pDataI2cpHostReplyMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpHostReplyMessage *create_NetI2pDataI2cpHostReplyMessage_init(void);

FOUNDATION_EXPORT void NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(NetI2pDataI2cpHostReplyMessage *self, NetI2pDataI2cpSessionId *id_, NetI2pDataDestination *d, jlong reqID);

FOUNDATION_EXPORT NetI2pDataI2cpHostReplyMessage *new_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(NetI2pDataI2cpSessionId *id_, NetI2pDataDestination *d, jlong reqID) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpHostReplyMessage *create_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(NetI2pDataI2cpSessionId *id_, NetI2pDataDestination *d, jlong reqID);

FOUNDATION_EXPORT void NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(NetI2pDataI2cpHostReplyMessage *self, NetI2pDataI2cpSessionId *id_, jint failureCode, jlong reqID);

FOUNDATION_EXPORT NetI2pDataI2cpHostReplyMessage *new_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(NetI2pDataI2cpSessionId *id_, jint failureCode, jlong reqID) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpHostReplyMessage *create_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(NetI2pDataI2cpSessionId *id_, jint failureCode, jlong reqID);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpHostReplyMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpHostReplyMessage")
