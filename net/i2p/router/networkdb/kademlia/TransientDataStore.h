//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/TransientDataStore.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaTransientDataStore")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaTransientDataStore
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaTransientDataStore 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaTransientDataStore 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaTransientDataStore

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaTransientDataStore_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaTransientDataStore || defined(INCLUDE_NetI2pRouterNetworkdbKademliaTransientDataStore))
#define NetI2pRouterNetworkdbKademliaTransientDataStore_

#define RESTRICT_NetI2pRouterNetworkdbKademliaDataStore 1
#define INCLUDE_NetI2pRouterNetworkdbKademliaDataStore 1
#include "net/i2p/router/networkdb/kademlia/DataStore.h"

@class NetI2pDataDatabaseEntry;
@class NetI2pDataHash;
@class NetI2pRouterRouterContext;
@class NetI2pUtilLog;
@protocol JavaUtilCollection;
@protocol JavaUtilSet;

@interface NetI2pRouterNetworkdbKademliaTransientDataStore : NSObject < NetI2pRouterNetworkdbKademliaDataStore > {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterRouterContext *_context_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (jint)countLeaseSets;

- (NetI2pDataDatabaseEntry *)getWithNetI2pDataHash:(NetI2pDataHash *)key;

- (NetI2pDataDatabaseEntry *)getWithNetI2pDataHash:(NetI2pDataHash *)key
                                       withBoolean:(jboolean)persist;

- (id<JavaUtilCollection>)getEntries;

- (id<JavaUtilSet>)getKeys;

- (id<JavaUtilSet>)getMapEntries;

- (jboolean)isInitialized;

- (jboolean)isKnownWithNetI2pDataHash:(NetI2pDataHash *)key;

- (jboolean)putWithNetI2pDataHash:(NetI2pDataHash *)key
      withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)data;

- (jboolean)putWithNetI2pDataHash:(NetI2pDataHash *)key
      withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)data
                      withBoolean:(jboolean)persist;

- (NetI2pDataDatabaseEntry *)removeWithNetI2pDataHash:(NetI2pDataHash *)key;

- (NetI2pDataDatabaseEntry *)removeWithNetI2pDataHash:(NetI2pDataHash *)key
                                          withBoolean:(jboolean)persist;

- (void)rescan;

- (void)restart;

- (jint)size;

- (void)stop;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaTransientDataStore)

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaTransientDataStore, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaTransientDataStore, _context_, NetI2pRouterRouterContext *)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(NetI2pRouterNetworkdbKademliaTransientDataStore *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaTransientDataStore *new_NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaTransientDataStore *create_NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaTransientDataStore)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaTransientDataStore")
