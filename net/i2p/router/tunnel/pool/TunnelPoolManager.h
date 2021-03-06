//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/TunnelPoolManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolTunnelPoolManager")
#ifdef RESTRICT_NetI2pRouterTunnelPoolTunnelPoolManager
#define INCLUDE_ALL_NetI2pRouterTunnelPoolTunnelPoolManager 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelPoolTunnelPoolManager 1
#endif
#undef RESTRICT_NetI2pRouterTunnelPoolTunnelPoolManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelPoolTunnelPoolManager_) && (INCLUDE_ALL_NetI2pRouterTunnelPoolTunnelPoolManager || defined(INCLUDE_NetI2pRouterTunnelPoolTunnelPoolManager))
#define NetI2pRouterTunnelPoolTunnelPoolManager_

#define RESTRICT_NetI2pRouterTunnelManagerFacade 1
#define INCLUDE_NetI2pRouterTunnelManagerFacade 1
#include "net/i2p/router/TunnelManagerFacade.h"

@class JavaIoWriter;
@class NetI2pDataDestination;
@class NetI2pDataHash;
@class NetI2pDataTunnelId;
@class NetI2pRouterClientTunnelSettings;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelPoolBuildExecutor;
@class NetI2pRouterTunnelPoolPooledTunnelCreatorConfig;
@class NetI2pRouterTunnelPoolSettings;
@class NetI2pRouterTunnelPoolTunnelPool;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol NetI2pRouterTunnelInfo;

@interface NetI2pRouterTunnelPoolTunnelPoolManager : NSObject < NetI2pRouterTunnelManagerFacade >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (jboolean)addAliasWithNetI2pDataDestination:(NetI2pDataDestination *)dest
         withNetI2pRouterClientTunnelSettings:(NetI2pRouterClientTunnelSettings *)settings
                    withNetI2pDataDestination:(NetI2pDataDestination *)existingClient;

- (void)buildTunnelsWithNetI2pDataDestination:(NetI2pDataDestination *)client
         withNetI2pRouterClientTunnelSettings:(NetI2pRouterClientTunnelSettings *)settings;

- (void)failWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (jint)getFreeTunnelCount;

- (jint)getInboundBuildQueueSize;

- (id<JavaUtilMap>)getInboundClientPools;

- (jint)getInboundClientTunnelCount;

- (NetI2pRouterTunnelPoolTunnelPool *)getInboundExploratoryPool;

- (NetI2pRouterTunnelPoolTunnelPool *)getInboundPoolWithNetI2pDataHash:(NetI2pDataHash *)client;

- (NetI2pRouterTunnelPoolSettings *)getInboundSettings;

- (NetI2pRouterTunnelPoolSettings *)getInboundSettingsWithNetI2pDataHash:(NetI2pDataHash *)client;

- (jlong)getLastParticipatingExpiration;

- (id<JavaUtilMap>)getOutboundClientPools;

- (jint)getOutboundClientTunnelCount;

- (jint)getOutboundClientTunnelCountWithNetI2pDataHash:(NetI2pDataHash *)destination;

- (NetI2pRouterTunnelPoolTunnelPool *)getOutboundExploratoryPool;

- (NetI2pRouterTunnelPoolTunnelPool *)getOutboundPoolWithNetI2pDataHash:(NetI2pDataHash *)client;

- (NetI2pRouterTunnelPoolSettings *)getOutboundSettings;

- (NetI2pRouterTunnelPoolSettings *)getOutboundSettingsWithNetI2pDataHash:(NetI2pDataHash *)client;

- (jint)getOutboundTunnelCount;

- (jint)getParticipatingCount;

- (jdouble)getShareRatio;

- (id<NetI2pRouterTunnelInfo>)getTunnelInfoWithNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_;

- (jboolean)isValidTunnelWithNetI2pDataHash:(NetI2pDataHash *)client
                 withNetI2pRouterTunnelInfo:(id<NetI2pRouterTunnelInfo>)tunnel;

- (void)listPoolsWithJavaUtilList:(id<JavaUtilList>)outArg;

- (void)removeAliasWithNetI2pDataDestination:(NetI2pDataDestination *)dest;

- (void)removeTunnelsWithNetI2pDataHash:(NetI2pDataHash *)destination;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)restart;

- (id<NetI2pRouterTunnelInfo>)selectInboundExploratoryTunnelWithNetI2pDataHash:(NetI2pDataHash *)closestTo;

- (id<NetI2pRouterTunnelInfo>)selectInboundTunnel;

- (id<NetI2pRouterTunnelInfo>)selectInboundTunnelWithNetI2pDataHash:(NetI2pDataHash *)destination;

- (id<NetI2pRouterTunnelInfo>)selectInboundTunnelWithNetI2pDataHash:(NetI2pDataHash *)destination
                                                 withNetI2pDataHash:(NetI2pDataHash *)closestTo;

- (id<NetI2pRouterTunnelInfo>)selectOutboundExploratoryTunnelWithNetI2pDataHash:(NetI2pDataHash *)closestTo;

- (id<NetI2pRouterTunnelInfo>)selectOutboundTunnel;

- (id<NetI2pRouterTunnelInfo>)selectOutboundTunnelWithNetI2pDataHash:(NetI2pDataHash *)destination;

- (id<NetI2pRouterTunnelInfo>)selectOutboundTunnelWithNetI2pDataHash:(NetI2pDataHash *)destination
                                                  withNetI2pDataHash:(NetI2pDataHash *)closestTo;

- (id<JavaUtilSet>)selectPeersInTooManyTunnels;

- (void)setInboundSettingsWithNetI2pDataHash:(NetI2pDataHash *)client
          withNetI2pRouterTunnelPoolSettings:(NetI2pRouterTunnelPoolSettings *)settings;

- (void)setInboundSettingsWithNetI2pRouterTunnelPoolSettings:(NetI2pRouterTunnelPoolSettings *)settings;

- (void)setOutboundSettingsWithNetI2pDataHash:(NetI2pDataHash *)client
           withNetI2pRouterTunnelPoolSettings:(NetI2pRouterTunnelPoolSettings *)settings;

- (void)setOutboundSettingsWithNetI2pRouterTunnelPoolSettings:(NetI2pRouterTunnelPoolSettings *)settings;

- (void)shutdown;

- (void)startup;

#pragma mark Package-Private

- (void)buildCompleteWithNetI2pRouterTunnelPoolPooledTunnelCreatorConfig:(NetI2pRouterTunnelPoolPooledTunnelCreatorConfig *)cfg;

- (NetI2pRouterTunnelPoolBuildExecutor *)getExecutor;

- (jboolean)isShutdown;

- (void)tunnelFailed;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolTunnelPoolManager)

FOUNDATION_EXPORT void NetI2pRouterTunnelPoolTunnelPoolManager_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelPoolTunnelPoolManager *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTunnelPoolTunnelPoolManager *new_NetI2pRouterTunnelPoolTunnelPoolManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelPoolTunnelPoolManager *create_NetI2pRouterTunnelPoolTunnelPoolManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolTunnelPoolManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelPoolTunnelPoolManager")
