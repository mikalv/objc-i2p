//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/TunnelInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelInfo")
#ifdef RESTRICT_NetI2pRouterTunnelInfo
#define INCLUDE_ALL_NetI2pRouterTunnelInfo 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelInfo 1
#endif
#undef RESTRICT_NetI2pRouterTunnelInfo

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelInfo_) && (INCLUDE_ALL_NetI2pRouterTunnelInfo || defined(INCLUDE_NetI2pRouterTunnelInfo))
#define NetI2pRouterTunnelInfo_

@class NetI2pDataHash;
@class NetI2pDataTunnelId;

@protocol NetI2pRouterTunnelInfo < JavaObject >

- (jint)getLength;

- (NetI2pDataTunnelId *)getReceiveTunnelIdWithInt:(jint)hop;

- (NetI2pDataTunnelId *)getSendTunnelIdWithInt:(jint)hop;

- (NetI2pDataHash *)getPeerWithInt:(jint)hop;

- (NetI2pDataHash *)getGateway;

- (NetI2pDataHash *)getEndpoint;

- (NetI2pDataHash *)getFarEnd;

- (jboolean)isInbound;

- (NetI2pDataHash *)getDestination;

- (jlong)getExpiration;

- (void)testSuccessfulWithInt:(jint)responseTime;

- (jint)getProcessedMessagesCount;

- (jlong)getVerifiedBytesTransferred;

- (void)incrementVerifiedBytesTransferredWithInt:(jint)numBytes;

- (jboolean)wasReused;

- (void)setReused;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelInfo)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelInfo)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelInfo")
