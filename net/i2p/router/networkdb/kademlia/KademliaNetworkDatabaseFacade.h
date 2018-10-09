//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/KademliaNetworkDatabaseFacade.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade || defined(INCLUDE_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade))
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_

#define RESTRICT_NetI2pRouterNetworkDatabaseFacade 1
#define INCLUDE_NetI2pRouterNetworkDatabaseFacade 1
#include "net/i2p/router/NetworkDatabaseFacade.h"

@class JavaIoWriter;
@class NetI2pDataDatabaseEntry;
@class NetI2pDataDestination;
@class NetI2pDataHash;
@class NetI2pDataLeaseSet;
@class NetI2pDataRouterRouterInfo;
@class NetI2pKademliaKBucketSet;
@class NetI2pRouterNetworkdbKademliaPeerSelector;
@class NetI2pRouterNetworkdbKademliaSearchJob;
@class NetI2pRouterNetworkdbReseedReseedChecker;
@class NetI2pRouterRouterContext;
@class NetI2pUtilLog;
@protocol JavaUtilCollection;
@protocol JavaUtilSet;
@protocol NetI2pRouterJob;
@protocol NetI2pRouterNetworkdbKademliaDataStore;

@interface NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade : NetI2pRouterNetworkDatabaseFacade {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterNetworkdbKademliaPeerSelector *_peerSelector_;
  NetI2pRouterRouterContext *_context_;
  jint _networkID_;
}
@property (readonly, class) jlong DONT_FAIL_PERIOD NS_SWIFT_NAME(DONT_FAIL_PERIOD);
@property (readonly, copy, class) NSString *PROP_DB_DIR NS_SWIFT_NAME(PROP_DB_DIR);
@property (readonly, copy, class) NSString *DEFAULT_DB_DIR NS_SWIFT_NAME(DEFAULT_DB_DIR);
@property (readonly, class) jint MIN_RESEED NS_SWIFT_NAME(MIN_RESEED);
@property (readonly, class) jint MIN_REMAINING_ROUTERS NS_SWIFT_NAME(MIN_REMAINING_ROUTERS);
@property (readonly, class) jlong PUBLISH_JOB_DELAY NS_SWIFT_NAME(PUBLISH_JOB_DELAY);
@property (readonly, class) jint MAX_EXPLORE_QUEUE NS_SWIFT_NAME(MAX_EXPLORE_QUEUE);
@property (readonly, class) jlong MAX_LEASE_FUTURE NS_SWIFT_NAME(MAX_LEASE_FUTURE);

+ (jlong)DONT_FAIL_PERIOD;

+ (NSString *)PROP_DB_DIR;

+ (NSString *)DEFAULT_DB_DIR;

+ (jint)MIN_RESEED;

+ (jint)MIN_REMAINING_ROUTERS;

+ (jlong)PUBLISH_JOB_DELAY;

+ (jint)MAX_EXPLORE_QUEUE;

+ (jlong)MAX_LEASE_FUTURE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (void)failWithNetI2pDataHash:(NetI2pDataHash *)dbEntry;

- (id<JavaUtilSet>)findNearestRoutersWithNetI2pDataHash:(NetI2pDataHash *)key
                                                withInt:(jint)maxNumRouters
                                        withJavaUtilSet:(id<JavaUtilSet>)peersToIgnore;

- (id<JavaUtilSet>)getAllRouters;

- (id<JavaUtilSet>)getExploreKeys;

- (jint)getKnownLeaseSets;

- (jint)getKnownRouters;

- (jlong)getLastRouterInfoPublishTime;

- (id<JavaUtilSet>)getLeases;

- (NetI2pRouterNetworkdbKademliaPeerSelector *)getPeerSelector;

- (jint)getPeerTimeoutWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (id<JavaUtilSet>)getRouters;

- (jboolean)isInitialized;

- (jboolean)isNegativeCachedForeverWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)lookupDestinationWithNetI2pDataHash:(NetI2pDataHash *)key
                        withNetI2pRouterJob:(id<NetI2pRouterJob>)onFinishedJob
                                   withLong:(jlong)timeoutMs
                         withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest;

- (NetI2pDataDestination *)lookupDestinationLocallyWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)lookupLeaseSetWithNetI2pDataHash:(NetI2pDataHash *)key
                     withNetI2pRouterJob:(id<NetI2pRouterJob>)onFindJob
                     withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedLookupJob
                                withLong:(jlong)timeoutMs;

- (void)lookupLeaseSetWithNetI2pDataHash:(NetI2pDataHash *)key
                     withNetI2pRouterJob:(id<NetI2pRouterJob>)onFindJob
                     withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedLookupJob
                                withLong:(jlong)timeoutMs
                      withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest;

- (NetI2pDataLeaseSet *)lookupLeaseSetLocallyWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)lookupLeaseSetRemotelyWithNetI2pDataHash:(NetI2pDataHash *)key
                              withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest;

- (NetI2pDataDatabaseEntry *)lookupLocallyWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)lookupRouterInfoWithNetI2pDataHash:(NetI2pDataHash *)key
                       withNetI2pRouterJob:(id<NetI2pRouterJob>)onFindJob
                       withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedLookupJob
                                  withLong:(jlong)timeoutMs;

- (NetI2pDataRouterRouterInfo *)lookupRouterInfoLocallyWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)publishWithNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)localLeaseSet;

- (void)publishWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)localRouterInfo;

- (void)queueForExplorationWithJavaUtilCollection:(id<JavaUtilCollection>)keys;

- (void)removeFromExploreKeysWithJavaUtilCollection:(id<JavaUtilCollection>)toRemove;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)rescan;

- (NetI2pRouterNetworkdbReseedReseedChecker *)reseedChecker;

- (void)restart;

- (void)sendStoreWithNetI2pDataHash:(NetI2pDataHash *)key
        withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)ds
                withNetI2pRouterJob:(id<NetI2pRouterJob>)onSuccess
                withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailure
                           withLong:(jlong)sendTimeout
                    withJavaUtilSet:(id<JavaUtilSet>)toIgnore;

- (void)shutdown;

- (void)startup;

- (NetI2pDataLeaseSet *)storeWithNetI2pDataHash:(NetI2pDataHash *)key
                         withNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)leaseSet;

- (NetI2pDataRouterRouterInfo *)storeWithNetI2pDataHash:(NetI2pDataHash *)key
                         withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)routerInfo;

- (void)unpublishWithNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)localLeaseSet;

#pragma mark Protected

- (void)createHandlers;

- (NetI2pRouterNetworkdbKademliaPeerSelector *)createPeerSelector;

- (jint)getKBucketSetSize;

- (void)lookupBeforeDroppingWithNetI2pDataHash:(NetI2pDataHash *)peer
                withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)info;

#pragma mark Package-Private

- (void)dropAfterLookupFailedWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (void)failPermanentlyWithNetI2pDataDestination:(NetI2pDataDestination *)dest;

- (id<NetI2pRouterNetworkdbKademliaDataStore>)getDataStore;

- (NSString *)getDbDir;

- (NetI2pKademliaKBucketSet *)getKBuckets;

- (jlong)getLastExploreNewDate;

- (jboolean)isNegativeCachedWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)lookupFailedWithNetI2pDataHash:(NetI2pDataHash *)key;

- (NetI2pDataDatabaseEntry *)lookupLocallyWithoutValidationWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)routerInfoPublishSuccessful;

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

- (void)searchCompleteWithNetI2pDataHash:(NetI2pDataHash *)key;

- (void)setLastExploreNewDateWithLong:(jlong)when;

- (void)stopPublishingWithNetI2pDataHash:(NetI2pDataHash *)target;

- (NetI2pDataRouterRouterInfo *)storeWithNetI2pDataHash:(NetI2pDataHash *)key
                         withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)routerInfo
                                            withBoolean:(jboolean)persist;

- (NSString *)validateWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)routerInfo;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade)

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, _peerSelector_, NetI2pRouterNetworkdbKademliaPeerSelector *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, _context_, NetI2pRouterRouterContext *)

inline jlong NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_DONT_FAIL_PERIOD(void);
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_DONT_FAIL_PERIOD 600000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, DONT_FAIL_PERIOD, jlong)

inline NSString *NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_PROP_DB_DIR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_PROP_DB_DIR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, PROP_DB_DIR, NSString *)

inline NSString *NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_DEFAULT_DB_DIR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_DEFAULT_DB_DIR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, DEFAULT_DB_DIR, NSString *)

inline jint NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_MIN_RESEED(void);
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_MIN_RESEED 50
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, MIN_RESEED, jint)

inline jint NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_MIN_REMAINING_ROUTERS(void);
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_MIN_REMAINING_ROUTERS 40
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, MIN_REMAINING_ROUTERS, jint)

inline jlong NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_PUBLISH_JOB_DELAY(void);
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_PUBLISH_JOB_DELAY 300000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, PUBLISH_JOB_DELAY, jlong)

inline jint NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_MAX_EXPLORE_QUEUE(void);
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_MAX_EXPLORE_QUEUE 128
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, MAX_EXPLORE_QUEUE, jint)

inline jlong NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_get_MAX_LEASE_FUTURE(void);
#define NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_MAX_LEASE_FUTURE 1200000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade, MAX_LEASE_FUTURE, jlong)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_initWithNetI2pRouterRouterContext_(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *self, NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade")
