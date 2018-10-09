//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelCreatorConfig.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelCreatorConfig")
#ifdef RESTRICT_NetI2pRouterTunnelTunnelCreatorConfig
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelCreatorConfig 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelCreatorConfig 1
#endif
#undef RESTRICT_NetI2pRouterTunnelTunnelCreatorConfig

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelTunnelCreatorConfig_) && (INCLUDE_ALL_NetI2pRouterTunnelTunnelCreatorConfig || defined(INCLUDE_NetI2pRouterTunnelTunnelCreatorConfig))
#define NetI2pRouterTunnelTunnelCreatorConfig_

#define RESTRICT_NetI2pRouterTunnelInfo 1
#define INCLUDE_NetI2pRouterTunnelInfo 1
#include "net/i2p/router/TunnelInfo.h"

@class JavaUtilProperties;
@class NetI2pDataHash;
@class NetI2pDataTunnelId;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelHopConfig;
@protocol JavaUtilList;

@interface NetI2pRouterTunnelTunnelCreatorConfig : NSObject < NetI2pRouterTunnelInfo > {
 @public
  NetI2pRouterRouterContext *_context_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                    withInt:(jint)length
                                                withBoolean:(jboolean)isInbound;

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                    withInt:(jint)length
                                                withBoolean:(jboolean)isInbound
                                         withNetI2pDataHash:(NetI2pDataHash *)destination;

- (NetI2pRouterTunnelHopConfig *)getConfigWithInt:(jint)hop;

- (NetI2pDataHash *)getDestination;

- (NetI2pDataHash *)getEndpoint;

- (jlong)getExpiration;

- (NetI2pDataHash *)getFarEnd;

- (NetI2pDataHash *)getGateway;

- (jint)getLength;

- (JavaUtilProperties *)getOptions;

- (NetI2pDataHash *)getPeerWithInt:(jint)hop;

- (jint)getPriority;

- (jint)getProcessedMessagesCount;

- (NetI2pDataTunnelId *)getReceiveTunnelIdWithInt:(jint)hop;

- (jlong)getReplyMessageId;

- (id<JavaUtilList>)getReplyOrder;

- (NetI2pDataTunnelId *)getSendTunnelIdWithInt:(jint)hop;

- (jboolean)getTunnelFailed;

- (jint)getTunnelFailures;

- (jlong)getVerifiedBytesTransferred;

- (void)incrementProcessedMessages;

- (void)incrementVerifiedBytesTransferredWithInt:(jint)bytes;

- (jboolean)isInbound;

- (void)setExpirationWithLong:(jlong)when;

- (void)setPeerWithInt:(jint)hop
    withNetI2pDataHash:(NetI2pDataHash *)peer;

- (void)setPriorityWithInt:(jint)priority;

- (void)setReplyMessageIdWithLong:(jlong)id_;

- (void)setReplyOrderWithJavaUtilList:(id<JavaUtilList>)order;

- (void)setReused;

- (void)testSuccessfulWithInt:(jint)ms;

- (NSString *)description;

- (jboolean)tunnelFailed;

- (jboolean)wasReused;

#pragma mark Package-Private

+ (NSString *)formatWithLong:(jlong)date;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTunnelTunnelCreatorConfig)

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelCreatorConfig, _context_, NetI2pRouterRouterContext *)

FOUNDATION_EXPORT void NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(NetI2pRouterTunnelTunnelCreatorConfig *self, NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelCreatorConfig *new_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelCreatorConfig *create_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound);

FOUNDATION_EXPORT void NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(NetI2pRouterTunnelTunnelCreatorConfig *self, NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound, NetI2pDataHash *destination);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelCreatorConfig *new_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound, NetI2pDataHash *destination) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelCreatorConfig *create_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound, NetI2pDataHash *destination);

FOUNDATION_EXPORT NSString *NetI2pRouterTunnelTunnelCreatorConfig_formatWithLong_(jlong date);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelCreatorConfig)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelCreatorConfig")