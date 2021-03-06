//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/StoreJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreJob")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaStoreJob
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreJob 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreJob 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaStoreJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaStoreJob_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreJob || defined(INCLUDE_NetI2pRouterNetworkdbKademliaStoreJob))
#define NetI2pRouterNetworkdbKademliaStoreJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pDataDatabaseEntry;
@class NetI2pDataHash;
@class NetI2pDataRouterRouterInfo;
@class NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade;
@class NetI2pRouterNetworkdbKademliaStoreState;
@class NetI2pRouterRouterContext;
@class NetI2pUtilLog;
@protocol JavaUtilSet;
@protocol NetI2pRouterJob;

@interface NetI2pRouterNetworkdbKademliaStoreJob : NetI2pRouterJobImpl {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterNetworkdbKademliaStoreState *_state_;
}
@property (readonly, copy, class) NSString *MIN_STORE_VERSION NS_SWIFT_NAME(MIN_STORE_VERSION);

+ (NSString *)MIN_STORE_VERSION;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *)facade
                                         withNetI2pDataHash:(NetI2pDataHash *)key
                                withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)data
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)onSuccess
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailure
                                                   withLong:(jlong)timeoutMs;

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *)facade
                                         withNetI2pDataHash:(NetI2pDataHash *)key
                                withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)data
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)onSuccess
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailure
                                                   withLong:(jlong)timeoutMs
                                            withJavaUtilSet:(id<JavaUtilSet>)toSkip;

- (NSString *)getName;

- (void)runJob;

#pragma mark Protected

- (void)fail;

- (jint)getParallelization;

- (jint)getRedundancy;

- (void)succeed;

#pragma mark Package-Private

+ (jboolean)shouldStoreToWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)ri;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaStoreJob)

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaStoreJob, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaStoreJob, _state_, NetI2pRouterNetworkdbKademliaStoreState *)

inline NSString *NetI2pRouterNetworkdbKademliaStoreJob_get_MIN_STORE_VERSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterNetworkdbKademliaStoreJob_MIN_STORE_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterNetworkdbKademliaStoreJob, MIN_STORE_VERSION, NSString *)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaStoreJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_withNetI2pDataHash_withNetI2pDataDatabaseEntry_withNetI2pRouterJob_withNetI2pRouterJob_withLong_(NetI2pRouterNetworkdbKademliaStoreJob *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *facade, NetI2pDataHash *key, NetI2pDataDatabaseEntry *data, id<NetI2pRouterJob> onSuccess, id<NetI2pRouterJob> onFailure, jlong timeoutMs);

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaStoreJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade_withNetI2pDataHash_withNetI2pDataDatabaseEntry_withNetI2pRouterJob_withNetI2pRouterJob_withLong_withJavaUtilSet_(NetI2pRouterNetworkdbKademliaStoreJob *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaKademliaNetworkDatabaseFacade *facade, NetI2pDataHash *key, NetI2pDataDatabaseEntry *data, id<NetI2pRouterJob> onSuccess, id<NetI2pRouterJob> onFailure, jlong timeoutMs, id<JavaUtilSet> toSkip);

FOUNDATION_EXPORT jboolean NetI2pRouterNetworkdbKademliaStoreJob_shouldStoreToWithNetI2pDataRouterRouterInfo_(NetI2pDataRouterRouterInfo *ri);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaStoreJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaStoreJob")
