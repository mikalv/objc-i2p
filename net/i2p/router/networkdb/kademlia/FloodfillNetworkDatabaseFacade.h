//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodfillNetworkDatabaseFacade.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade || defined(INCLUDE_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade))
#define NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_

#define RESTRICT_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade 1
#define INCLUDE_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade 1
#include "net/i2p/router/networkdb/kademlia/KademliaNetworkDatabaseFacade.h"

@class NetI2pDataDatabaseEntry;
@class NetI2pDataHash;
@class NetI2pDataRouterRouterInfo;
@class NetI2pDataTunnelId;
@class NetI2pRouterNetworkdbKademliaPeerSelector;
@class NetI2pRouterNetworkdbKademliaSearchJob;
@class NetI2pRouterRouterContext;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol NetI2pRouterJob;

@interface NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade : NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade
@property (readonly, class) jchar CAPABILITY_FLOODFILL NS_SWIFT_NAME(CAPABILITY_FLOODFILL);
@property (readonly, class) jint MAX_TO_FLOOD NS_SWIFT_NAME(MAX_TO_FLOOD);
@property (readonly, class) jlong PUBLISH_TIMEOUT NS_SWIFT_NAME(PUBLISH_TIMEOUT);
@property (readonly, class) jint MIN_ACTIVE_PEERS NS_SWIFT_NAME(MIN_ACTIVE_PEERS);

+ (jchar)CAPABILITY_FLOODFILL;

+ (jint)MAX_TO_FLOOD;

+ (jlong)PUBLISH_TIMEOUT;

+ (jint)MIN_ACTIVE_PEERS;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (void)floodWithNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)ds;

- (jboolean)floodConditionalWithNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)ds;

- (jboolean)floodfillEnabled;

- (id<JavaUtilList>)getFloodfillPeers;

- (id<JavaUtilList>)getKnownRouterData;

+ (jboolean)isFloodfillWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)peer;

- (void)publishWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)localRouterInfo;

- (void)sendStoreWithNetI2pDataHash:(NetI2pDataHash *)key
        withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)ds
                withNetI2pRouterJob:(id<NetI2pRouterJob>)onSuccess
                withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailure
                           withLong:(jlong)sendTimeout
                    withJavaUtilSet:(id<JavaUtilSet>)toIgnore;

- (void)setFloodfillEnabledWithBoolean:(jboolean)yes;

- (void)shutdown;

- (void)startup;

#pragma mark Protected

- (void)createHandlers;

- (NetI2pRouterNetworkdbKademliaPeerSelector *)createPeerSelector;

- (void)lookupBeforeDroppingWithNetI2pDataHash:(NetI2pDataHash *)peer
                withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)info;

#pragma mark Package-Private

- (void)completeWithNetI2pDataHash:(NetI2pDataHash *)key;

- (jboolean)isVerifyInProgressWithNetI2pDataHash:(NetI2pDataHash *)h;

- (NetI2pRouterNetworkdbKademliaSearchJob *)searchWithNetI2pDataHash:(NetI2pDataHash *)key
                                                 withNetI2pRouterJob:(id<NetI2pRouterJob>)onFindJob
                                                 withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedLookupJob
                                                            withLong:(jlong)timeoutMs
                                                         withBoolean:(jboolean)isLease;

- (NetI2pRouterNetworkdbKademliaSearchJob *)searchWithNetI2pDataHash:(NetI2pDataHash *)key
                                                 withNetI2pRouterJob:(id<NetI2pRouterJob>)onFindJob
                                                 withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedLookupJob
                                                            withLong:(jlong)timeoutMs
                                                         withBoolean:(jboolean)isLease
                                                  withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest;

- (void)setFloodfillEnabledFromMonitorWithBoolean:(jboolean)yes;

- (jboolean)shouldThrottleFloodWithNetI2pDataHash:(NetI2pDataHash *)key;

- (jboolean)shouldThrottleLookupWithNetI2pDataHash:(NetI2pDataHash *)from
                            withNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_;

- (void)verifyFinishedWithNetI2pDataHash:(NetI2pDataHash *)h;

- (void)verifyStartedWithNetI2pDataHash:(NetI2pDataHash *)h;

@end

J2OBJC_STATIC_INIT(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade)

inline jchar NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_get_CAPABILITY_FLOODFILL(void);
#define NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_CAPABILITY_FLOODFILL 'f'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade, CAPABILITY_FLOODFILL, jchar)

inline jint NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_get_MAX_TO_FLOOD(void);
#define NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_MAX_TO_FLOOD 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade, MAX_TO_FLOOD, jint)

inline jlong NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_get_PUBLISH_TIMEOUT(void);
#define NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_PUBLISH_TIMEOUT 90000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade, PUBLISH_TIMEOUT, jlong)

inline jint NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_get_MIN_ACTIVE_PEERS(void);
#define NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_MIN_ACTIVE_PEERS 5
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade, MIN_ACTIVE_PEERS, jint)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_initWithNetI2pRouterRouterContext_(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *new_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *create_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT jboolean NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_isFloodfillWithNetI2pDataRouterRouterInfo_(NetI2pDataRouterRouterInfo *peer);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade")
