//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/OutboundCache.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/Lease.h"
#include "net/i2p/data/LeaseSet.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/TunnelInfo.h"
#include "net/i2p/router/TunnelManagerFacade.h"
#include "net/i2p/router/message/OutboundCache.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/SimpleTimer.h"
#include "net/i2p/util/SimpleTimer2.h"

@interface NetI2pRouterMessageOutboundCache () {
 @public
  NetI2pRouterRouterContext *_context_;
}

+ (void)cleanLeaseSetCacheWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                        withJavaUtilMap:(id<JavaUtilMap>)tc;

+ (void)cleanLeaseCacheWithJavaUtilMap:(id<JavaUtilMap>)tc;

+ (void)cleanTunnelCacheWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                      withJavaUtilMap:(id<JavaUtilMap>)tc;

+ (void)cleanReplyCacheWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                     withJavaUtilMap:(id<JavaUtilMap>)tc;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache, _context_, NetI2pRouterRouterContext *)

inline jint NetI2pRouterMessageOutboundCache_get_CLEAN_INTERVAL(void);
#define NetI2pRouterMessageOutboundCache_CLEAN_INTERVAL 300000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterMessageOutboundCache, CLEAN_INTERVAL, jint)

__attribute__((unused)) static void NetI2pRouterMessageOutboundCache_cleanLeaseSetCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(NetI2pRouterRouterContext *ctx, id<JavaUtilMap> tc);

__attribute__((unused)) static void NetI2pRouterMessageOutboundCache_cleanLeaseCacheWithJavaUtilMap_(id<JavaUtilMap> tc);

__attribute__((unused)) static void NetI2pRouterMessageOutboundCache_cleanTunnelCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(NetI2pRouterRouterContext *ctx, id<JavaUtilMap> tc);

__attribute__((unused)) static void NetI2pRouterMessageOutboundCache_cleanReplyCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(NetI2pRouterRouterContext *ctx, id<JavaUtilMap> tc);

@interface NetI2pRouterMessageOutboundCache_HashPair () {
 @public
  NetI2pDataHash *sh_;
  NetI2pDataHash *dh_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache_HashPair, sh_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageOutboundCache_HashPair, dh_, NetI2pDataHash *)

@interface NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner : NSObject < NetI2pUtilSimpleTimer_TimedEvent > {
 @public
  NetI2pRouterMessageOutboundCache *this$0_;
}

- (instancetype)initWithNetI2pRouterMessageOutboundCache:(NetI2pRouterMessageOutboundCache *)outer$;

- (void)timeReached;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner)

__attribute__((unused)) static void NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner *self, NetI2pRouterMessageOutboundCache *outer$);

__attribute__((unused)) static NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner *new_NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(NetI2pRouterMessageOutboundCache *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner *create_NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(NetI2pRouterMessageOutboundCache *outer$);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner)

@implementation NetI2pRouterMessageOutboundCache

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (void)clearCachesWithNetI2pRouterMessageOutboundCache_HashPair:(NetI2pRouterMessageOutboundCache_HashPair *)hashPair
                                             withNetI2pDataLease:(NetI2pDataLease *)lease
                                      withNetI2pRouterTunnelInfo:(id<NetI2pRouterTunnelInfo>)inTunnel
                                      withNetI2pRouterTunnelInfo:(id<NetI2pRouterTunnelInfo>)outTunnel {
  if (inTunnel != nil) {
    [((id<JavaUtilMap>) nil_chk(leaseSetCache_)) removeWithId:hashPair];
  }
  if (lease != nil) {
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(leaseCache_)) removeWithId:hashPair withId:lease];
  }
  if (outTunnel != nil) {
    @synchronized(tunnelCache_) {
      id<NetI2pRouterTunnelInfo> t = [((id<JavaUtilMap>) nil_chk(backloggedTunnelCache_)) getWithId:hashPair];
      if (t != nil && [t isEqual:outTunnel]) [backloggedTunnelCache_ removeWithId:hashPair];
      t = [((id<JavaUtilMap>) nil_chk(tunnelCache_)) getWithId:hashPair];
      if (t != nil && [t isEqual:outTunnel]) [tunnelCache_ removeWithId:hashPair];
    }
  }
}

- (void)clearAllCaches {
  [((id<JavaUtilMap>) nil_chk(leaseSetCache_)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(leaseCache_)) clear];
  @synchronized(tunnelCache_) {
    [((id<JavaUtilMap>) nil_chk(backloggedTunnelCache_)) clear];
    [((id<JavaUtilMap>) nil_chk(tunnelCache_)) clear];
  }
  [((id<JavaUtilMap>) nil_chk(lastReplyRequestCache_)) clear];
}

+ (void)cleanLeaseSetCacheWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                        withJavaUtilMap:(id<JavaUtilMap>)tc {
  NetI2pRouterMessageOutboundCache_cleanLeaseSetCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(ctx, tc);
}

+ (void)cleanLeaseCacheWithJavaUtilMap:(id<JavaUtilMap>)tc {
  NetI2pRouterMessageOutboundCache_cleanLeaseCacheWithJavaUtilMap_(tc);
}

+ (void)cleanTunnelCacheWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                      withJavaUtilMap:(id<JavaUtilMap>)tc {
  NetI2pRouterMessageOutboundCache_cleanTunnelCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(ctx, tc);
}

+ (void)cleanReplyCacheWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                     withJavaUtilMap:(id<JavaUtilMap>)tc {
  NetI2pRouterMessageOutboundCache_cleanReplyCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(ctx, tc);
}

- (void)dealloc {
  RELEASE_(tunnelCache_);
  RELEASE_(backloggedTunnelCache_);
  RELEASE_(leaseSetCache_);
  RELEASE_(leaseCache_);
  RELEASE_(lastReplyRequestCache_);
  RELEASE_(_context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 3, 4, -1, 5, -1, -1 },
    { NULL, "V", 0xa, 6, 7, -1, 8, -1, -1 },
    { NULL, "V", 0xa, 9, 4, -1, 10, -1, -1 },
    { NULL, "V", 0xa, 11, 4, -1, 12, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(clearCachesWithNetI2pRouterMessageOutboundCache_HashPair:withNetI2pDataLease:withNetI2pRouterTunnelInfo:withNetI2pRouterTunnelInfo:);
  methods[2].selector = @selector(clearAllCaches);
  methods[3].selector = @selector(cleanLeaseSetCacheWithNetI2pRouterRouterContext:withJavaUtilMap:);
  methods[4].selector = @selector(cleanLeaseCacheWithJavaUtilMap:);
  methods[5].selector = @selector(cleanTunnelCacheWithNetI2pRouterRouterContext:withJavaUtilMap:);
  methods[6].selector = @selector(cleanReplyCacheWithNetI2pRouterRouterContext:withJavaUtilMap:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "tunnelCache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 13, -1 },
    { "backloggedTunnelCache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 13, -1 },
    { "leaseSetCache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 14, -1 },
    { "leaseCache_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x10, -1, -1, 15, -1 },
    { "lastReplyRequestCache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 16, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "CLEAN_INTERVAL", "I", .constantValue.asInt = NetI2pRouterMessageOutboundCache_CLEAN_INTERVAL, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "clearCaches", "LNetI2pRouterMessageOutboundCache_HashPair;LNetI2pDataLease;LNetI2pRouterTunnelInfo;LNetI2pRouterTunnelInfo;", "cleanLeaseSetCache", "LNetI2pRouterRouterContext;LJavaUtilMap;", "(Lnet/i2p/router/RouterContext;Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Lnet/i2p/data/LeaseSet;>;)V", "cleanLeaseCache", "LJavaUtilMap;", "(Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Lnet/i2p/data/Lease;>;)V", "cleanTunnelCache", "(Lnet/i2p/router/RouterContext;Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Lnet/i2p/router/TunnelInfo;>;)V", "cleanReplyCache", "(Lnet/i2p/router/RouterContext;Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Ljava/lang/Long;>;)V", "Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Lnet/i2p/router/TunnelInfo;>;", "Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Lnet/i2p/data/LeaseSet;>;", "Ljava/util/concurrent/ConcurrentHashMap<Lnet/i2p/router/message/OutboundCache$HashPair;Lnet/i2p/data/Lease;>;", "Ljava/util/Map<Lnet/i2p/router/message/OutboundCache$HashPair;Ljava/lang/Long;>;", "LNetI2pRouterMessageOutboundCache_HashPair;LNetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner;" };
  static const J2ObjcClassInfo _NetI2pRouterMessageOutboundCache = { "OutboundCache", "net.i2p.router.message", ptrTable, methods, fields, 7, 0x1, 7, 7, -1, 17, -1, -1, -1 };
  return &_NetI2pRouterMessageOutboundCache;
}

@end

void NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(NetI2pRouterMessageOutboundCache *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->tunnelCache_, new_JavaUtilHashMap_initWithInt_(64));
  JreStrongAssignAndConsume(&self->backloggedTunnelCache_, new_JavaUtilHashMap_initWithInt_(64));
  JreStrongAssignAndConsume(&self->leaseSetCache_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(64));
  JreStrongAssignAndConsume(&self->leaseCache_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(64));
  JreStrongAssignAndConsume(&self->lastReplyRequestCache_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(64));
  JreStrongAssign(&self->_context_, ctx);
  [((NetI2pUtilSimpleTimer2 *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) simpleTimer2])) addPeriodicEventWithNetI2pUtilSimpleTimer_TimedEvent:create_NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(self) withLong:NetI2pRouterMessageOutboundCache_CLEAN_INTERVAL withLong:NetI2pRouterMessageOutboundCache_CLEAN_INTERVAL];
}

NetI2pRouterMessageOutboundCache *new_NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageOutboundCache, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterMessageOutboundCache *create_NetI2pRouterMessageOutboundCache_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageOutboundCache, initWithNetI2pRouterRouterContext_, ctx)
}

void NetI2pRouterMessageOutboundCache_cleanLeaseSetCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(NetI2pRouterRouterContext *ctx, id<JavaUtilMap> tc) {
  NetI2pRouterMessageOutboundCache_initialize();
  jlong now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) clock])) now];
  for (id<JavaUtilIterator> iter = [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(tc)) values])) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
    NetI2pDataLeaseSet *l = [iter next];
    if ([((NetI2pDataLeaseSet *) nil_chk(l)) getEarliestLeaseDate] < now) [iter remove];
  }
}

void NetI2pRouterMessageOutboundCache_cleanLeaseCacheWithJavaUtilMap_(id<JavaUtilMap> tc) {
  NetI2pRouterMessageOutboundCache_initialize();
  for (id<JavaUtilIterator> iter = [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(tc)) values])) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
    NetI2pDataLease *l = [iter next];
    if ([((NetI2pDataLease *) nil_chk(l)) isExpiredWithLong:NetI2pRouterRouter_CLOCK_FUDGE_FACTOR]) [iter remove];
  }
}

void NetI2pRouterMessageOutboundCache_cleanTunnelCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(NetI2pRouterRouterContext *ctx, id<JavaUtilMap> tc) {
  NetI2pRouterMessageOutboundCache_initialize();
  for (id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(tc)) entrySet])) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
    id<JavaUtilMap_Entry> entry_ = [iter next];
    NetI2pRouterMessageOutboundCache_HashPair *k = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    id<NetI2pRouterTunnelInfo> tunnel = [entry_ getValue];
    if (![((id<NetI2pRouterTunnelManagerFacade>) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) tunnelManager])) isValidTunnelWithNetI2pDataHash:((NetI2pRouterMessageOutboundCache_HashPair *) nil_chk(k))->sh_ withNetI2pRouterTunnelInfo:tunnel]) [iter remove];
  }
}

void NetI2pRouterMessageOutboundCache_cleanReplyCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(NetI2pRouterRouterContext *ctx, id<JavaUtilMap> tc) {
  NetI2pRouterMessageOutboundCache_initialize();
  jlong now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) clock])) now];
  for (id<JavaUtilIterator> iter = [((id<JavaUtilCollection>) nil_chk([((id<JavaUtilMap>) nil_chk(tc)) values])) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
    JavaLangLong *l = [iter next];
    if ([((JavaLangLong *) nil_chk(l)) longLongValue] < now - NetI2pRouterMessageOutboundCache_CLEAN_INTERVAL) [iter remove];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessageOutboundCache)

@implementation NetI2pRouterMessageOutboundCache_HashPair

- (instancetype)initWithNetI2pDataHash:(NetI2pDataHash *)s
                    withNetI2pDataHash:(NetI2pDataHash *)d {
  NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(self, s, d);
  return self;
}

- (NSUInteger)hash {
  return ((jint) [((NetI2pDataHash *) nil_chk(sh_)) hash]) ^ ((jint) [((NetI2pDataHash *) nil_chk(dh_)) hash]);
}

- (jboolean)isEqual:(id)o {
  if (o == nil || !([o isKindOfClass:[NetI2pRouterMessageOutboundCache_HashPair class]])) return false;
  NetI2pRouterMessageOutboundCache_HashPair *hp = (NetI2pRouterMessageOutboundCache_HashPair *) cast_chk(o, [NetI2pRouterMessageOutboundCache_HashPair class]);
  return [((NetI2pDataHash *) nil_chk(sh_)) isEqual:hp->sh_] && [((NetI2pDataHash *) nil_chk(dh_)) isEqual:hp->dh_];
}

- (void)dealloc {
  RELEASE_(sh_);
  RELEASE_(dh_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pDataHash:withNetI2pDataHash:);
  methods[1].selector = @selector(hash);
  methods[2].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sh_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "dh_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pDataHash;LNetI2pDataHash;", "hashCode", "equals", "LNSObject;", "LNetI2pRouterMessageOutboundCache;" };
  static const J2ObjcClassInfo _NetI2pRouterMessageOutboundCache_HashPair = { "HashPair", "net.i2p.router.message", ptrTable, methods, fields, 7, 0x8, 3, 2, 4, -1, -1, -1, -1 };
  return &_NetI2pRouterMessageOutboundCache_HashPair;
}

@end

void NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterMessageOutboundCache_HashPair *self, NetI2pDataHash *s, NetI2pDataHash *d) {
  NSObject_init(self);
  JreStrongAssign(&self->sh_, s);
  JreStrongAssign(&self->dh_, d);
}

NetI2pRouterMessageOutboundCache_HashPair *new_NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(NetI2pDataHash *s, NetI2pDataHash *d) {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageOutboundCache_HashPair, initWithNetI2pDataHash_withNetI2pDataHash_, s, d)
}

NetI2pRouterMessageOutboundCache_HashPair *create_NetI2pRouterMessageOutboundCache_HashPair_initWithNetI2pDataHash_withNetI2pDataHash_(NetI2pDataHash *s, NetI2pDataHash *d) {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageOutboundCache_HashPair, initWithNetI2pDataHash_withNetI2pDataHash_, s, d)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessageOutboundCache_HashPair)

@implementation NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner

- (instancetype)initWithNetI2pRouterMessageOutboundCache:(NetI2pRouterMessageOutboundCache *)outer$ {
  NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(self, outer$);
  return self;
}

- (void)timeReached {
  NetI2pRouterMessageOutboundCache_cleanLeaseSetCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(this$0_->_context_, this$0_->leaseSetCache_);
  NetI2pRouterMessageOutboundCache_cleanLeaseCacheWithJavaUtilMap_(this$0_->leaseCache_);
  @synchronized(this$0_->tunnelCache_) {
    NetI2pRouterMessageOutboundCache_cleanTunnelCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(this$0_->_context_, this$0_->tunnelCache_);
    NetI2pRouterMessageOutboundCache_cleanTunnelCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(this$0_->_context_, this$0_->backloggedTunnelCache_);
  }
  NetI2pRouterMessageOutboundCache_cleanReplyCacheWithNetI2pRouterRouterContext_withJavaUtilMap_(this$0_->_context_, this$0_->lastReplyRequestCache_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterMessageOutboundCache:);
  methods[1].selector = @selector(timeReached);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterMessageOutboundCache;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterMessageOutboundCache;" };
  static const J2ObjcClassInfo _NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner = { "OCMOSJCacheCleaner", "net.i2p.router.message", ptrTable, methods, fields, 7, 0x2, 2, 1, 0, -1, -1, -1, -1 };
  return &_NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner;
}

@end

void NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner *self, NetI2pRouterMessageOutboundCache *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner *new_NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(NetI2pRouterMessageOutboundCache *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner, initWithNetI2pRouterMessageOutboundCache_, outer$)
}

NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner *create_NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner_initWithNetI2pRouterMessageOutboundCache_(NetI2pRouterMessageOutboundCache *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner, initWithNetI2pRouterMessageOutboundCache_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessageOutboundCache_OCMOSJCacheCleaner)
