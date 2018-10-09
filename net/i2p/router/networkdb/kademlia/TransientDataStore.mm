//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/TransientDataStore.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Date.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "net/i2p/data/DatabaseEntry.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/LeaseSet.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/networkdb/kademlia/TransientDataStore.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterNetworkdbKademliaTransientDataStore () {
 @public
  JavaUtilConcurrentConcurrentHashMap *_data_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaTransientDataStore, _data_, JavaUtilConcurrentConcurrentHashMap *)

@implementation NetI2pRouterNetworkdbKademliaTransientDataStore

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (jboolean)isInitialized {
  return true;
}

- (void)stop {
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) clear];
}

- (void)restart {
  [self stop];
}

- (void)rescan {
}

- (jint)size {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) size];
}

- (id<JavaUtilSet>)getKeys {
  return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) keySet]);
}

- (id<JavaUtilCollection>)getEntries {
  return JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) values]);
}

- (id<JavaUtilSet>)getMapEntries {
  return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) entrySet]);
}

- (NetI2pDataDatabaseEntry *)getWithNetI2pDataHash:(NetI2pDataHash *)key
                                       withBoolean:(jboolean)persist {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (NetI2pDataDatabaseEntry *)getWithNetI2pDataHash:(NetI2pDataHash *)key {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) getWithId:key];
}

- (jboolean)isKnownWithNetI2pDataHash:(NetI2pDataHash *)key {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) containsKeyWithId:key];
}

- (jint)countLeaseSets {
  jint count = 0;
  for (NetI2pDataDatabaseEntry * __strong d in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) values])) {
    if ([((NetI2pDataDatabaseEntry *) nil_chk(d)) getType] == NetI2pDataDatabaseEntry_KEY_TYPE_LEASESET) count++;
  }
  return count;
}

- (jboolean)putWithNetI2pDataHash:(NetI2pDataHash *)key
      withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)data
                      withBoolean:(jboolean)persist {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jboolean)putWithNetI2pDataHash:(NetI2pDataHash *)key
      withNetI2pDataDatabaseEntry:(NetI2pDataDatabaseEntry *)data {
  if (data == nil) return false;
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$@", @"Storing key ", key)];
  NetI2pDataDatabaseEntry *old = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) putIfAbsentWithId:key withId:data];
  jboolean rv = false;
  if ([data getType] == NetI2pDataDatabaseEntry_KEY_TYPE_ROUTERINFO) {
    NetI2pDataRouterRouterInfo *ri = (NetI2pDataRouterRouterInfo *) cast_chk(data, [NetI2pDataRouterRouterInfo class]);
    if (old != nil) {
      NetI2pDataRouterRouterInfo *ori = (NetI2pDataRouterRouterInfo *) cast_chk(old, [NetI2pDataRouterRouterInfo class]);
      if ([ri getPublished] < [ori getPublished]) {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@$@$@C", @"Almost clobbered an old router! ", key, @": [old published on ", create_JavaUtilDate_initWithLong_([ori getPublished]), @" new on ", create_JavaUtilDate_initWithLong_([ri getPublished]), ']')];
      }
      else if ([ri getPublished] == [ori getPublished]) {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@", @"Duplicate ", key)];
      }
      else {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@$@$@C", @"Updated the old router for ", key, @": [old published on ", create_JavaUtilDate_initWithLong_([ori getPublished]), @" new on ", create_JavaUtilDate_initWithLong_([ri getPublished]), ']')];
        [_data_ putWithId:key withId:data];
        rv = true;
      }
    }
    else {
      if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@$@", @"New router for ", key, @": published on ", create_JavaUtilDate_initWithLong_([ri getPublished]))];
      rv = true;
    }
  }
  else if ([data getType] == NetI2pDataDatabaseEntry_KEY_TYPE_LEASESET) {
    NetI2pDataLeaseSet *ls = (NetI2pDataLeaseSet *) cast_chk(data, [NetI2pDataLeaseSet class]);
    if (old != nil) {
      NetI2pDataLeaseSet *ols = (NetI2pDataLeaseSet *) cast_chk(old, [NetI2pDataLeaseSet class]);
      if ([ls getEarliestLeaseDate] < [ols getEarliestLeaseDate]) {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@$@$@C", @"Almost clobbered an old leaseSet! ", key, @": [old expires ", create_JavaUtilDate_initWithLong_([ols getEarliestLeaseDate]), @" new on ", create_JavaUtilDate_initWithLong_([ls getEarliestLeaseDate]), ']')];
      }
      else if ([ls getEarliestLeaseDate] == [ols getEarliestLeaseDate]) {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@", @"Duplicate ", key)];
      }
      else {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) {
          [_log_ infoWithNSString:JreStrcat("$@$@$@C", @"Updated old leaseSet ", key, @": [old expires ", create_JavaUtilDate_initWithLong_([ols getEarliestLeaseDate]), @" new on ", create_JavaUtilDate_initWithLong_([ls getEarliestLeaseDate]), ']')];
          if ([_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$Z$Z", @"RAP? ", [ls getReceivedAsPublished], @" RAR? ", [ls getReceivedAsReply])];
        }
        [_data_ putWithId:key withId:data];
        rv = true;
      }
    }
    else {
      if ([_log_ shouldLogWithInt:NetI2pUtilLog_INFO]) {
        [_log_ infoWithNSString:JreStrcat("$@$@", @"New leaseset for ", key, @": expires ", create_JavaUtilDate_initWithLong_([ls getEarliestLeaseDate]))];
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$Z$Z", @"RAP? ", [ls getReceivedAsPublished], @" RAR? ", [ls getReceivedAsReply])];
      }
      rv = true;
    }
  }
  return rv;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"Transient DataStore: "])) appendWithInt:[((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) size]])) appendWithNSString:@"\nKeys: "];
  for (id<JavaUtilMap_Entry> __strong e in nil_chk([_data_ entrySet])) {
    NetI2pDataHash *key = [((id<JavaUtilMap_Entry>) nil_chk(e)) getKey];
    NetI2pDataDatabaseEntry *dp = [e getValue];
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\t*Key:   "])) appendWithNSString:[((NetI2pDataHash *) nil_chk(key)) description]])) appendWithNSString:@"\n\tContent: "])) appendWithNSString:[((NetI2pDataDatabaseEntry *) nil_chk(dp)) description]];
  }
  [buf appendWithNSString:@"\n"];
  return [buf description];
}

- (NetI2pDataDatabaseEntry *)removeWithNetI2pDataHash:(NetI2pDataHash *)key
                                          withBoolean:(jboolean)persist {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (NetI2pDataDatabaseEntry *)removeWithNetI2pDataHash:(NetI2pDataHash *)key {
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$@", @"Removing key ", key)];
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_data_)) removeWithId:key];
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_data_);
  RELEASE_(_context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x1, 12, 5, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x1, 12, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(isInitialized);
  methods[2].selector = @selector(stop);
  methods[3].selector = @selector(restart);
  methods[4].selector = @selector(rescan);
  methods[5].selector = @selector(size);
  methods[6].selector = @selector(getKeys);
  methods[7].selector = @selector(getEntries);
  methods[8].selector = @selector(getMapEntries);
  methods[9].selector = @selector(getWithNetI2pDataHash:withBoolean:);
  methods[10].selector = @selector(getWithNetI2pDataHash:);
  methods[11].selector = @selector(isKnownWithNetI2pDataHash:);
  methods[12].selector = @selector(countLeaseSets);
  methods[13].selector = @selector(putWithNetI2pDataHash:withNetI2pDataDatabaseEntry:withBoolean:);
  methods[14].selector = @selector(putWithNetI2pDataHash:withNetI2pDataDatabaseEntry:);
  methods[15].selector = @selector(description);
  methods[16].selector = @selector(removeWithNetI2pDataHash:withBoolean:);
  methods[17].selector = @selector(removeWithNetI2pDataHash:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_data_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 13, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "()Ljava/util/Set<Lnet/i2p/data/Hash;>;", "()Ljava/util/Collection<Lnet/i2p/data/DatabaseEntry;>;", "()Ljava/util/Set<Ljava/util/Map$Entry<Lnet/i2p/data/Hash;Lnet/i2p/data/DatabaseEntry;>;>;", "get", "LNetI2pDataHash;Z", "LNetI2pDataHash;", "isKnown", "put", "LNetI2pDataHash;LNetI2pDataDatabaseEntry;Z", "LNetI2pDataHash;LNetI2pDataDatabaseEntry;", "toString", "remove", "Ljava/util/concurrent/ConcurrentHashMap<Lnet/i2p/data/Hash;Lnet/i2p/data/DatabaseEntry;>;" };
  static const J2ObjcClassInfo _NetI2pRouterNetworkdbKademliaTransientDataStore = { "TransientDataStore", "net.i2p.router.networkdb.kademlia", ptrTable, methods, fields, 7, 0x0, 18, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterNetworkdbKademliaTransientDataStore;
}

@end

void NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(NetI2pRouterNetworkdbKademliaTransientDataStore *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:[self java_getClass]]);
  JreStrongAssignAndConsume(&self->_data_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(1024));
  if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [self->_log_ infoWithNSString:@"Data Store initialized"];
}

NetI2pRouterNetworkdbKademliaTransientDataStore *new_NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterNetworkdbKademliaTransientDataStore, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterNetworkdbKademliaTransientDataStore *create_NetI2pRouterNetworkdbKademliaTransientDataStore_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterNetworkdbKademliaTransientDataStore, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterNetworkdbKademliaTransientDataStore)