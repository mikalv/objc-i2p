//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/TunnelDataMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npTunnelDataMessage")
#ifdef RESTRICT_NetI2pDataI2npTunnelDataMessage
#define INCLUDE_ALL_NetI2pDataI2npTunnelDataMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2npTunnelDataMessage 1
#endif
#undef RESTRICT_NetI2pDataI2npTunnelDataMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npTunnelDataMessage_) && (INCLUDE_ALL_NetI2pDataI2npTunnelDataMessage || defined(INCLUDE_NetI2pDataI2npTunnelDataMessage))
#define NetI2pDataI2npTunnelDataMessage_

#define RESTRICT_NetI2pDataI2npFastI2NPMessageImpl 1
#define INCLUDE_NetI2pDataI2npFastI2NPMessageImpl 1
#include "net/i2p/data/i2np/FastI2NPMessageImpl.h"

@class IOSByteArray;
@class NetI2pDataTunnelId;
@class NetI2pI2PAppContext;

@interface NetI2pDataI2npTunnelDataMessage : NetI2pDataI2npFastI2NPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);
@property (readonly, class) jint DATA_SIZE NS_SWIFT_NAME(DATA_SIZE);

+ (jint)MESSAGE_TYPE;

+ (jint)DATA_SIZE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (jboolean)isEqual:(id)object;

- (IOSByteArray *)getData;

- (jlong)getTunnelId;

- (NetI2pDataTunnelId *)getTunnelIdObj;

- (jint)getType;

- (NSUInteger)hash;

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type;

- (void)setDataWithByteArray:(IOSByteArray *)data;

- (void)setTunnelIdWithLong:(jlong)id_;

- (void)setTunnelIdWithNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_;

- (IOSByteArray *)toByteArray;

- (NSString *)description;

#pragma mark Protected

- (jint)calculateWrittenLength;

- (jint)writeMessageBodyWithByteArray:(IOSByteArray *)outArg
                              withInt:(jint)curIndex;

@end

J2OBJC_STATIC_INIT(NetI2pDataI2npTunnelDataMessage)

inline jint NetI2pDataI2npTunnelDataMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2npTunnelDataMessage_MESSAGE_TYPE 18
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npTunnelDataMessage, MESSAGE_TYPE, jint)

inline jint NetI2pDataI2npTunnelDataMessage_get_DATA_SIZE(void);
#define NetI2pDataI2npTunnelDataMessage_DATA_SIZE 1024
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npTunnelDataMessage, DATA_SIZE, jint)

FOUNDATION_EXPORT void NetI2pDataI2npTunnelDataMessage_initWithNetI2pI2PAppContext_(NetI2pDataI2npTunnelDataMessage *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pDataI2npTunnelDataMessage *new_NetI2pDataI2npTunnelDataMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npTunnelDataMessage *create_NetI2pDataI2npTunnelDataMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npTunnelDataMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npTunnelDataMessage")
