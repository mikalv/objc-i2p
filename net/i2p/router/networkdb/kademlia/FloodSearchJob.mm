//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodSearchJob.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/List.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/router/Job.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/JobQueue.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/networkdb/kademlia/FloodSearchJob.h"
#include "net/i2p/router/networkdb/kademlia/FloodfillNetworkDatabaseFacade.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

inline jint NetI2pRouterNetworkdbKademliaFloodSearchJob_get_FLOOD_SEARCH_TIME_FACTOR(void);
#define NetI2pRouterNetworkdbKademliaFloodSearchJob_FLOOD_SEARCH_TIME_FACTOR 2
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaFloodSearchJob, FLOOD_SEARCH_TIME_FACTOR, jint)

@implementation NetI2pRouterNetworkdbKademliaFloodSearchJob

+ (jint)CONCURRENT_SEARCHES {
  return NetI2pRouterNetworkdbKademliaFloodSearchJob_CONCURRENT_SEARCHES;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)facade
                               withNetI2pDataHash:(NetI2pDataHash *)key
                              withNetI2pRouterJob:(id<NetI2pRouterJob>)onFind
                              withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailed
                                          withInt:(jint)timeoutMs
                                      withBoolean:(jboolean)isLease {
  NetI2pRouterNetworkdbKademliaFloodSearchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_withNetI2pDataHash_withNetI2pRouterJob_withNetI2pRouterJob_withInt_withBoolean_(self, ctx, facade, key, onFind, onFailed, timeoutMs, isLease);
  return self;
}

- (jlong)getCreated {
  return _created_;
}

- (void)addDeferredWithNetI2pRouterJob:(id<NetI2pRouterJob>)onFind
                   withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailed
                              withLong:(jlong)timeoutMs
                           withBoolean:(jboolean)isLease {
  jboolean success;
  @synchronized(self) {
    if (!JreLoadVolatileBoolean(&_dead_)) {
      if (onFind != nil) [((id<JavaUtilList>) nil_chk(_onFind_)) addWithId:onFind];
      if (onFailed != nil) [((id<JavaUtilList>) nil_chk(_onFailed_)) addWithId:onFailed];
      return;
    }
    success = _success_;
  }
  if (success && onFind != nil) [((NetI2pRouterJobQueue *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) jobQueue])) addJobWithNetI2pRouterJob:onFind];
  else if (!success && onFailed != nil) [((NetI2pRouterJobQueue *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) jobQueue])) addJobWithNetI2pRouterJob:onFailed];
}

- (jlong)getExpiration {
  return _expiration_;
}

- (void)runJob {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"use override");
}

- (NSString *)getName {
  return @"NetDb search (phase 1)";
}

- (NetI2pDataHash *)getKey {
  return _key_;
}

- (jint)decrementRemaining {
  for (; ; ) {
    jint n = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(_lookupsRemaining_)) get];
    if (n <= 0) return 0;
    if ([_lookupsRemaining_ compareAndSetWithInt:n withInt:n - 1]) return n - 1;
  }
}

- (jint)getLookupsRemaining {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(_lookupsRemaining_)) get];
}

- (void)failed {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"use override");
}

- (void)success {
  @synchronized(self) {
    _success_ = true;
  }
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_facade_);
  RELEASE_(_key_);
  RELEASE_(_onFind_);
  RELEASE_(_onFailed_);
  RELEASE_(_lookupsRemaining_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:withNetI2pDataHash:withNetI2pRouterJob:withNetI2pRouterJob:withInt:withBoolean:);
  methods[1].selector = @selector(getCreated);
  methods[2].selector = @selector(addDeferredWithNetI2pRouterJob:withNetI2pRouterJob:withLong:withBoolean:);
  methods[3].selector = @selector(getExpiration);
  methods[4].selector = @selector(runJob);
  methods[5].selector = @selector(getName);
  methods[6].selector = @selector(getKey);
  methods[7].selector = @selector(decrementRemaining);
  methods[8].selector = @selector(getLookupsRemaining);
  methods[9].selector = @selector(failed);
  methods[10].selector = @selector(success);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_facade_", "LNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_key_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_onFind_", "LJavaUtilList;", .constantValue.asLong = 0, 0x14, -1, -1, 3, -1 },
    { "_onFailed_", "LJavaUtilList;", .constantValue.asLong = 0, 0x14, -1, -1, 3, -1 },
    { "_expiration_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_timeoutMs_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_isLease_", "Z", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_lookupsRemaining_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_dead_", "Z", .constantValue.asLong = 0, 0x44, -1, -1, -1, -1 },
    { "_created_", "J", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_success_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "CONCURRENT_SEARCHES", "I", .constantValue.asInt = NetI2pRouterNetworkdbKademliaFloodSearchJob_CONCURRENT_SEARCHES, 0x1c, -1, -1, -1, -1 },
    { "FLOOD_SEARCH_TIME_FACTOR", "I", .constantValue.asInt = NetI2pRouterNetworkdbKademliaFloodSearchJob_FLOOD_SEARCH_TIME_FACTOR, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;LNetI2pDataHash;LNetI2pRouterJob;LNetI2pRouterJob;IZ", "addDeferred", "LNetI2pRouterJob;LNetI2pRouterJob;JZ", "Ljava/util/List<Lnet/i2p/router/Job;>;" };
  static const J2ObjcClassInfo _NetI2pRouterNetworkdbKademliaFloodSearchJob = { "FloodSearchJob", "net.i2p.router.networkdb.kademlia", ptrTable, methods, fields, 7, 0x400, 11, 14, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterNetworkdbKademliaFloodSearchJob;
}

@end

void NetI2pRouterNetworkdbKademliaFloodSearchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_withNetI2pDataHash_withNetI2pRouterJob_withNetI2pRouterJob_withInt_withBoolean_(NetI2pRouterNetworkdbKademliaFloodSearchJob *self, NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade, NetI2pDataHash *key, id<NetI2pRouterJob> onFind, id<NetI2pRouterJob> onFailed, jint timeoutMs, jboolean isLease) {
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
  JreStrongAssignAndConsume(&self->_lookupsRemaining_, new_JavaUtilConcurrentAtomicAtomicInteger_init());
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:[self java_getClass]]);
  JreStrongAssign(&self->_facade_, facade);
  JreStrongAssign(&self->_key_, key);
  JreStrongAssignAndConsume(&self->_onFind_, new_JavaUtilConcurrentCopyOnWriteArrayList_init());
  if (onFind != nil) [self->_onFind_ addWithId:onFind];
  JreStrongAssignAndConsume(&self->_onFailed_, new_JavaUtilConcurrentCopyOnWriteArrayList_init());
  if (onFailed != nil) [self->_onFailed_ addWithId:onFailed];
  jint timeout = timeoutMs / NetI2pRouterNetworkdbKademliaFloodSearchJob_FLOOD_SEARCH_TIME_FACTOR;
  if (timeout < timeoutMs) timeout = timeoutMs;
  self->_timeoutMs_ = timeout;
  self->_expiration_ = timeout + [((NetI2pUtilClock *) nil_chk([ctx clock])) now];
  self->_isLease_ = isLease;
  self->_created_ = JavaLangSystem_currentTimeMillis();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterNetworkdbKademliaFloodSearchJob)
