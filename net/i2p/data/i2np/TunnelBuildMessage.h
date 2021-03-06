//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/TunnelBuildMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessage")
#ifdef RESTRICT_NetI2pDataI2npTunnelBuildMessage
#define INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessage 1
#endif
#undef RESTRICT_NetI2pDataI2npTunnelBuildMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npTunnelBuildMessage_) && (INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessage || defined(INCLUDE_NetI2pDataI2npTunnelBuildMessage))
#define NetI2pDataI2npTunnelBuildMessage_

#define RESTRICT_NetI2pDataI2npTunnelBuildMessageBase 1
#define INCLUDE_NetI2pDataI2npTunnelBuildMessageBase 1
#include "net/i2p/data/i2np/TunnelBuildMessageBase.h"

@class NetI2pI2PAppContext;

@interface NetI2pDataI2npTunnelBuildMessage : NetI2pDataI2npTunnelBuildMessageBase
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (jint)getType;

- (NSString *)description;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)records;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npTunnelBuildMessage)

inline jint NetI2pDataI2npTunnelBuildMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2npTunnelBuildMessage_MESSAGE_TYPE 21
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npTunnelBuildMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_(NetI2pDataI2npTunnelBuildMessage *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pDataI2npTunnelBuildMessage *new_NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npTunnelBuildMessage *create_NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pDataI2npTunnelBuildMessage *self, NetI2pI2PAppContext *context, jint records);

FOUNDATION_EXPORT NetI2pDataI2npTunnelBuildMessage *new_NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npTunnelBuildMessage *create_NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npTunnelBuildMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessage")
