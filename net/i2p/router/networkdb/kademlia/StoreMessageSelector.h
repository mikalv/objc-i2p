//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/StoreMessageSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreMessageSelector")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaStoreMessageSelector
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreMessageSelector 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreMessageSelector 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaStoreMessageSelector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaStoreMessageSelector_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreMessageSelector || defined(INCLUDE_NetI2pRouterNetworkdbKademliaStoreMessageSelector))
#define NetI2pRouterNetworkdbKademliaStoreMessageSelector_

#define RESTRICT_NetI2pRouterMessageSelector 1
#define INCLUDE_NetI2pRouterMessageSelector 1
#include "net/i2p/router/MessageSelector.h"

@class NetI2pDataRouterRouterInfo;
@class NetI2pRouterRouterContext;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pRouterNetworkdbKademliaStoreMessageSelector : NSObject < NetI2pRouterMessageSelector >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                   withLong:(jlong)storeJobId
                             withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)peer
                                                   withLong:(jlong)waitingForId
                                                   withLong:(jlong)expiration;

- (jboolean)continueMatching;

- (jlong)getExpiration;

- (jboolean)isMatchWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaStoreMessageSelector)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaStoreMessageSelector_initWithNetI2pRouterRouterContext_withLong_withNetI2pDataRouterRouterInfo_withLong_withLong_(NetI2pRouterNetworkdbKademliaStoreMessageSelector *self, NetI2pRouterRouterContext *ctx, jlong storeJobId, NetI2pDataRouterRouterInfo *peer, jlong waitingForId, jlong expiration);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaStoreMessageSelector *new_NetI2pRouterNetworkdbKademliaStoreMessageSelector_initWithNetI2pRouterRouterContext_withLong_withNetI2pDataRouterRouterInfo_withLong_withLong_(NetI2pRouterRouterContext *ctx, jlong storeJobId, NetI2pDataRouterRouterInfo *peer, jlong waitingForId, jlong expiration) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaStoreMessageSelector *create_NetI2pRouterNetworkdbKademliaStoreMessageSelector_initWithNetI2pRouterRouterContext_withLong_withNetI2pDataRouterRouterInfo_withLong_withLong_(NetI2pRouterRouterContext *ctx, jlong storeJobId, NetI2pDataRouterRouterInfo *peer, jlong waitingForId, jlong expiration);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaStoreMessageSelector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreMessageSelector")