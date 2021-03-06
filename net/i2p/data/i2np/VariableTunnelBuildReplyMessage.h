//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/VariableTunnelBuildReplyMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npVariableTunnelBuildReplyMessage")
#ifdef RESTRICT_NetI2pDataI2npVariableTunnelBuildReplyMessage
#define INCLUDE_ALL_NetI2pDataI2npVariableTunnelBuildReplyMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2npVariableTunnelBuildReplyMessage 1
#endif
#undef RESTRICT_NetI2pDataI2npVariableTunnelBuildReplyMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npVariableTunnelBuildReplyMessage_) && (INCLUDE_ALL_NetI2pDataI2npVariableTunnelBuildReplyMessage || defined(INCLUDE_NetI2pDataI2npVariableTunnelBuildReplyMessage))
#define NetI2pDataI2npVariableTunnelBuildReplyMessage_

#define RESTRICT_NetI2pDataI2npTunnelBuildReplyMessage 1
#define INCLUDE_NetI2pDataI2npTunnelBuildReplyMessage 1
#include "net/i2p/data/i2np/TunnelBuildReplyMessage.h"

@class IOSByteArray;
@class NetI2pI2PAppContext;

@interface NetI2pDataI2npVariableTunnelBuildReplyMessage : NetI2pDataI2npTunnelBuildReplyMessage
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)records;

- (jint)getType;

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type;

- (NSString *)description;

#pragma mark Protected

- (jint)calculateWrittenLength;

- (jint)writeMessageBodyWithByteArray:(IOSByteArray *)outArg
                              withInt:(jint)curIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npVariableTunnelBuildReplyMessage)

inline jint NetI2pDataI2npVariableTunnelBuildReplyMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2npVariableTunnelBuildReplyMessage_MESSAGE_TYPE 24
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npVariableTunnelBuildReplyMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2npVariableTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(NetI2pDataI2npVariableTunnelBuildReplyMessage *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pDataI2npVariableTunnelBuildReplyMessage *new_NetI2pDataI2npVariableTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npVariableTunnelBuildReplyMessage *create_NetI2pDataI2npVariableTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pDataI2npVariableTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pDataI2npVariableTunnelBuildReplyMessage *self, NetI2pI2PAppContext *context, jint records);

FOUNDATION_EXPORT NetI2pDataI2npVariableTunnelBuildReplyMessage *new_NetI2pDataI2npVariableTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npVariableTunnelBuildReplyMessage *create_NetI2pDataI2npVariableTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npVariableTunnelBuildReplyMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npVariableTunnelBuildReplyMessage")
