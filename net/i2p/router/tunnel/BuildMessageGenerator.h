//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/BuildMessageGenerator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelBuildMessageGenerator")
#ifdef RESTRICT_NetI2pRouterTunnelBuildMessageGenerator
#define INCLUDE_ALL_NetI2pRouterTunnelBuildMessageGenerator 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelBuildMessageGenerator 1
#endif
#undef RESTRICT_NetI2pRouterTunnelBuildMessageGenerator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelBuildMessageGenerator_) && (INCLUDE_ALL_NetI2pRouterTunnelBuildMessageGenerator || defined(INCLUDE_NetI2pRouterTunnelBuildMessageGenerator))
#define NetI2pRouterTunnelBuildMessageGenerator_

@class NetI2pDataHash;
@class NetI2pDataI2npTunnelBuildMessage;
@class NetI2pDataPublicKey;
@class NetI2pI2PAppContext;
@class NetI2pRouterTunnelTunnelCreatorConfig;
@protocol JavaUtilList;

@interface NetI2pRouterTunnelBuildMessageGenerator : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)createRecordWithInt:(jint)recordNum
                    withInt:(jint)hop
withNetI2pDataI2npTunnelBuildMessage:(NetI2pDataI2npTunnelBuildMessage *)msg
withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
         withNetI2pDataHash:(NetI2pDataHash *)replyRouter
                   withLong:(jlong)replyTunnel
    withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
    withNetI2pDataPublicKey:(NetI2pDataPublicKey *)peerKey;

+ (jboolean)isBlankWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
                                                     withInt:(jint)hop;

+ (void)layeredEncryptWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
         withNetI2pDataI2npTunnelBuildMessage:(NetI2pDataI2npTunnelBuildMessage *)msg
    withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
                             withJavaUtilList:(id<JavaUtilList>)order;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelBuildMessageGenerator)

FOUNDATION_EXPORT void NetI2pRouterTunnelBuildMessageGenerator_init(NetI2pRouterTunnelBuildMessageGenerator *self);

FOUNDATION_EXPORT void NetI2pRouterTunnelBuildMessageGenerator_createRecordWithInt_withInt_withNetI2pDataI2npTunnelBuildMessage_withNetI2pRouterTunnelTunnelCreatorConfig_withNetI2pDataHash_withLong_withNetI2pI2PAppContext_withNetI2pDataPublicKey_(jint recordNum, jint hop, NetI2pDataI2npTunnelBuildMessage *msg, NetI2pRouterTunnelTunnelCreatorConfig *cfg, NetI2pDataHash *replyRouter, jlong replyTunnel, NetI2pI2PAppContext *ctx, NetI2pDataPublicKey *peerKey);

FOUNDATION_EXPORT void NetI2pRouterTunnelBuildMessageGenerator_layeredEncryptWithNetI2pI2PAppContext_withNetI2pDataI2npTunnelBuildMessage_withNetI2pRouterTunnelTunnelCreatorConfig_withJavaUtilList_(NetI2pI2PAppContext *ctx, NetI2pDataI2npTunnelBuildMessage *msg, NetI2pRouterTunnelTunnelCreatorConfig *cfg, id<JavaUtilList> order);

FOUNDATION_EXPORT jboolean NetI2pRouterTunnelBuildMessageGenerator_isBlankWithNetI2pRouterTunnelTunnelCreatorConfig_withInt_(NetI2pRouterTunnelTunnelCreatorConfig *cfg, jint hop);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelBuildMessageGenerator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelBuildMessageGenerator")
