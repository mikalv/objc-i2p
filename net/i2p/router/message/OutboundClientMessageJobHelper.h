//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/OutboundClientMessageJobHelper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageJobHelper")
#ifdef RESTRICT_NetI2pRouterMessageOutboundClientMessageJobHelper
#define INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageJobHelper 0
#else
#define INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageJobHelper 1
#endif
#undef RESTRICT_NetI2pRouterMessageOutboundClientMessageJobHelper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterMessageOutboundClientMessageJobHelper_) && (INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageJobHelper || defined(INCLUDE_NetI2pRouterMessageOutboundClientMessageJobHelper))
#define NetI2pRouterMessageOutboundClientMessageJobHelper_

@class NetI2pDataDestination;
@class NetI2pDataHash;
@class NetI2pDataI2npGarlicMessage;
@class NetI2pDataLeaseSet;
@class NetI2pDataPublicKey;
@class NetI2pDataSessionKey;
@class NetI2pRouterMessagePayloadGarlicConfig;
@class NetI2pRouterRouterContext;
@protocol JavaUtilSet;
@protocol NetI2pRouterTunnelInfo;

@interface NetI2pRouterMessageOutboundClientMessageJobHelper : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)init;

+ (NetI2pDataI2npGarlicMessage *)createGarlicMessageWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                                         withLong:(jlong)replyToken
                                                                         withLong:(jlong)expiration
                                                          withNetI2pDataPublicKey:(NetI2pDataPublicKey *)recipientPK
                                       withNetI2pRouterMessagePayloadGarlicConfig:(NetI2pRouterMessagePayloadGarlicConfig *)dataClove
                                                               withNetI2pDataHash:(NetI2pDataHash *)from
                                                        withNetI2pDataDestination:(NetI2pDataDestination *)dest
                                                       withNetI2pRouterTunnelInfo:(id<NetI2pRouterTunnelInfo>)replyTunnel
                                                                          withInt:(jint)tagsToSendOverride
                                                                          withInt:(jint)lowTagsOverride
                                                         withNetI2pDataSessionKey:(NetI2pDataSessionKey *)wrappedKey
                                                                  withJavaUtilSet:(id<JavaUtilSet>)wrappedTags
                                                                      withBoolean:(jboolean)requireAck
                                                           withNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)bundledReplyLeaseSet;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageOutboundClientMessageJobHelper)

FOUNDATION_EXPORT void NetI2pRouterMessageOutboundClientMessageJobHelper_init(NetI2pRouterMessageOutboundClientMessageJobHelper *self);

FOUNDATION_EXPORT NetI2pRouterMessageOutboundClientMessageJobHelper *new_NetI2pRouterMessageOutboundClientMessageJobHelper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterMessageOutboundClientMessageJobHelper *create_NetI2pRouterMessageOutboundClientMessageJobHelper_init(void);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterMessageOutboundClientMessageJobHelper_createGarlicMessageWithNetI2pRouterRouterContext_withLong_withLong_withNetI2pDataPublicKey_withNetI2pRouterMessagePayloadGarlicConfig_withNetI2pDataHash_withNetI2pDataDestination_withNetI2pRouterTunnelInfo_withInt_withInt_withNetI2pDataSessionKey_withJavaUtilSet_withBoolean_withNetI2pDataLeaseSet_(NetI2pRouterRouterContext *ctx, jlong replyToken, jlong expiration, NetI2pDataPublicKey *recipientPK, NetI2pRouterMessagePayloadGarlicConfig *dataClove, NetI2pDataHash *from, NetI2pDataDestination *dest, id<NetI2pRouterTunnelInfo> replyTunnel, jint tagsToSendOverride, jint lowTagsOverride, NetI2pDataSessionKey *wrappedKey, id<JavaUtilSet> wrappedTags, jboolean requireAck, NetI2pDataLeaseSet *bundledReplyLeaseSet);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageOutboundClientMessageJobHelper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageJobHelper")
