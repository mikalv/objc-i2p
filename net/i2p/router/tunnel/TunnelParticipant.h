//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelParticipant.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelParticipant")
#ifdef RESTRICT_NetI2pRouterTunnelTunnelParticipant
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelParticipant 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelParticipant 1
#endif
#undef RESTRICT_NetI2pRouterTunnelTunnelParticipant

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelTunnelParticipant_) && (INCLUDE_ALL_NetI2pRouterTunnelTunnelParticipant || defined(INCLUDE_NetI2pRouterTunnelTunnelParticipant))
#define NetI2pRouterTunnelTunnelParticipant_

@class NetI2pDataHash;
@class NetI2pDataI2npTunnelDataMessage;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelHopConfig;
@class NetI2pRouterTunnelHopProcessor;
@class NetI2pRouterTunnelInboundEndpointProcessor;

@interface NetI2pRouterTunnelTunnelParticipant : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                            withNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)config
                         withNetI2pRouterTunnelHopProcessor:(NetI2pRouterTunnelHopProcessor *)processor;

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
             withNetI2pRouterTunnelInboundEndpointProcessor:(NetI2pRouterTunnelInboundEndpointProcessor *)inEndProc;

- (void)dispatchWithNetI2pDataI2npTunnelDataMessage:(NetI2pDataI2npTunnelDataMessage *)msg
                                 withNetI2pDataHash:(NetI2pDataHash *)recvFrom;

- (jint)getCompleteCount;

- (jint)getFailedCount;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelTunnelParticipant)

FOUNDATION_EXPORT void NetI2pRouterTunnelTunnelParticipant_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(NetI2pRouterTunnelTunnelParticipant *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *config, NetI2pRouterTunnelHopProcessor *processor);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelParticipant *new_NetI2pRouterTunnelTunnelParticipant_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *config, NetI2pRouterTunnelHopProcessor *processor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelParticipant *create_NetI2pRouterTunnelTunnelParticipant_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *config, NetI2pRouterTunnelHopProcessor *processor);

FOUNDATION_EXPORT void NetI2pRouterTunnelTunnelParticipant_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelInboundEndpointProcessor_(NetI2pRouterTunnelTunnelParticipant *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelInboundEndpointProcessor *inEndProc);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelParticipant *new_NetI2pRouterTunnelTunnelParticipant_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelInboundEndpointProcessor_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelInboundEndpointProcessor *inEndProc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelParticipant *create_NetI2pRouterTunnelTunnelParticipant_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelInboundEndpointProcessor_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelInboundEndpointProcessor *inEndProc);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelParticipant)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelParticipant")
