//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/OutboundMessageDistributor.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/i2np/TunnelGatewayMessage.h"
#include "net/i2p/data/router/RouterIdentity.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/CommSystemFacade.h"
#include "net/i2p/router/InNetMessagePool.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/NetworkDatabaseFacade.h"
#include "net/i2p/router/OutNetMessage.h"
#include "net/i2p/router/OutNetMessagePool.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tunnel/OutboundMessageDistributor.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterTunnelOutboundMessageDistributor () {
 @public
  NetI2pRouterRouterContext *_context_;
  jint _priority_;
  NetI2pUtilLog *_log_;
  id<JavaUtilSet> _toRouters_;
  jint _newRouterCount_;
  jlong _newRouterTime_;
}

- (jboolean)shouldDropWithNetI2pDataHash:(NetI2pDataHash *)target;

- (void)distributeWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                 withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)target
                         withNetI2pDataTunnelId:(NetI2pDataTunnelId *)tunnel;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundMessageDistributor, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundMessageDistributor, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundMessageDistributor, _toRouters_, id<JavaUtilSet>)

inline jlong NetI2pRouterTunnelOutboundMessageDistributor_get_MAX_DISTRIBUTE_TIME(void);
#define NetI2pRouterTunnelOutboundMessageDistributor_MAX_DISTRIBUTE_TIME 15000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelOutboundMessageDistributor, MAX_DISTRIBUTE_TIME, jlong)

inline jint NetI2pRouterTunnelOutboundMessageDistributor_get_MAX_ROUTERS_PER_PERIOD(void);
#define NetI2pRouterTunnelOutboundMessageDistributor_MAX_ROUTERS_PER_PERIOD 60
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelOutboundMessageDistributor, MAX_ROUTERS_PER_PERIOD, jint)

inline jlong NetI2pRouterTunnelOutboundMessageDistributor_get_NEW_ROUTER_PERIOD(void);
#define NetI2pRouterTunnelOutboundMessageDistributor_NEW_ROUTER_PERIOD 30000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelOutboundMessageDistributor, NEW_ROUTER_PERIOD, jlong)

__attribute__((unused)) static jboolean NetI2pRouterTunnelOutboundMessageDistributor_shouldDropWithNetI2pDataHash_(NetI2pRouterTunnelOutboundMessageDistributor *self, NetI2pDataHash *target);

__attribute__((unused)) static void NetI2pRouterTunnelOutboundMessageDistributor_distributeWithNetI2pDataI2npI2NPMessage_withNetI2pDataRouterRouterInfo_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor *self, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataRouterRouterInfo *target, NetI2pDataTunnelId *tunnel);

@interface NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob : NetI2pRouterJobImpl {
 @public
  NetI2pRouterTunnelOutboundMessageDistributor *this$0_;
  id<NetI2pDataI2npI2NPMessage> _message_;
  NetI2pDataHash *_target_;
  NetI2pDataTunnelId *_tunnel_;
}

- (instancetype)initWithNetI2pRouterTunnelOutboundMessageDistributor:(NetI2pRouterTunnelOutboundMessageDistributor *)outer$
                                       withNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                       withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                                                  withNetI2pDataHash:(NetI2pDataHash *)target
                                              withNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_;

- (NSString *)getName;

- (void)runJob;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob)

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob, _message_, id<NetI2pDataI2npI2NPMessage>)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob, _target_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob, _tunnel_, NetI2pDataTunnelId *)

__attribute__((unused)) static void NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob *self, NetI2pRouterTunnelOutboundMessageDistributor *outer$, NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataHash *target, NetI2pDataTunnelId *id_);

__attribute__((unused)) static NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob *new_NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor *outer$, NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataHash *target, NetI2pDataTunnelId *id_) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob *create_NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor *outer$, NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataHash *target, NetI2pDataTunnelId *id_);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob)

@implementation NetI2pRouterTunnelOutboundMessageDistributor

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                          withInt:(jint)priority {
  NetI2pRouterTunnelOutboundMessageDistributor_initWithNetI2pRouterRouterContext_withInt_(self, ctx, priority);
  return self;
}

- (void)distributeWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                             withNetI2pDataHash:(NetI2pDataHash *)target {
  [self distributeWithNetI2pDataI2npI2NPMessage:msg withNetI2pDataHash:target withNetI2pDataTunnelId:nil];
}

- (void)distributeWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                             withNetI2pDataHash:(NetI2pDataHash *)target
                         withNetI2pDataTunnelId:(NetI2pDataTunnelId *)tunnel {
  if (NetI2pRouterTunnelOutboundMessageDistributor_shouldDropWithNetI2pDataHash_(self, target)) {
    [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"tunnel.dropAtOBEP" withLong:1];
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$@C@", @"Drop msg at OBEP (new conn throttle) to ", target, ' ', msg)];
    return;
  }
  NetI2pDataRouterRouterInfo *info = [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) netDb])) lookupRouterInfoLocallyWithNetI2pDataHash:target];
  if (info == nil) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$@C$$", @"outbound distributor to ", target, '.', (tunnel != nil ? JreStrcat("J", [tunnel getTunnelId]) : @""), @": no info locally, searching...")];
    [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([_context_ netDb])) lookupRouterInfoWithNetI2pDataHash:target withNetI2pRouterJob:create_NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(self, _context_, msg, target, tunnel) withNetI2pRouterJob:nil withLong:NetI2pRouterTunnelOutboundMessageDistributor_MAX_DISTRIBUTE_TIME];
    return;
  }
  else {
    NetI2pRouterTunnelOutboundMessageDistributor_distributeWithNetI2pDataI2npI2NPMessage_withNetI2pDataRouterRouterInfo_withNetI2pDataTunnelId_(self, msg, info, tunnel);
  }
}

- (jboolean)shouldDropWithNetI2pDataHash:(NetI2pDataHash *)target {
  return NetI2pRouterTunnelOutboundMessageDistributor_shouldDropWithNetI2pDataHash_(self, target);
}

- (void)distributeWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                 withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)target
                         withNetI2pDataTunnelId:(NetI2pDataTunnelId *)tunnel {
  NetI2pRouterTunnelOutboundMessageDistributor_distributeWithNetI2pDataI2npI2NPMessage_withNetI2pDataRouterRouterInfo_withNetI2pDataTunnelId_(self, msg, target, tunnel);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_toRouters_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withInt:);
  methods[1].selector = @selector(distributeWithNetI2pDataI2npI2NPMessage:withNetI2pDataHash:);
  methods[2].selector = @selector(distributeWithNetI2pDataI2npI2NPMessage:withNetI2pDataHash:withNetI2pDataTunnelId:);
  methods[3].selector = @selector(shouldDropWithNetI2pDataHash:);
  methods[4].selector = @selector(distributeWithNetI2pDataI2npI2NPMessage:withNetI2pDataRouterRouterInfo:withNetI2pDataTunnelId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_priority_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_toRouters_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
    { "_newRouterCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_newRouterTime_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MAX_DISTRIBUTE_TIME", "J", .constantValue.asLong = NetI2pRouterTunnelOutboundMessageDistributor_MAX_DISTRIBUTE_TIME, 0x1a, -1, -1, -1, -1 },
    { "MAX_ROUTERS_PER_PERIOD", "I", .constantValue.asInt = NetI2pRouterTunnelOutboundMessageDistributor_MAX_ROUTERS_PER_PERIOD, 0x1a, -1, -1, -1, -1 },
    { "NEW_ROUTER_PERIOD", "J", .constantValue.asLong = NetI2pRouterTunnelOutboundMessageDistributor_NEW_ROUTER_PERIOD, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;I", "distribute", "LNetI2pDataI2npI2NPMessage;LNetI2pDataHash;", "LNetI2pDataI2npI2NPMessage;LNetI2pDataHash;LNetI2pDataTunnelId;", "shouldDrop", "LNetI2pDataHash;", "LNetI2pDataI2npI2NPMessage;LNetI2pDataRouterRouterInfo;LNetI2pDataTunnelId;", "Ljava/util/Set<Lnet/i2p/data/Hash;>;", "LNetI2pRouterTunnelOutboundMessageDistributor_DistributeJob;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelOutboundMessageDistributor = { "OutboundMessageDistributor", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x0, 5, 9, -1, 8, -1, -1, -1 };
  return &_NetI2pRouterTunnelOutboundMessageDistributor;
}

@end

void NetI2pRouterTunnelOutboundMessageDistributor_initWithNetI2pRouterRouterContext_withInt_(NetI2pRouterTunnelOutboundMessageDistributor *self, NetI2pRouterRouterContext *ctx, jint priority) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
  self->_priority_ = priority;
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterTunnelOutboundMessageDistributor_class_()]);
  if (priority <= NetI2pRouterOutNetMessage_PRIORITY_PARTICIPATING) {
    JreStrongAssignAndConsume(&self->_toRouters_, new_JavaUtilHashSet_initWithInt_(4));
    [self->_toRouters_ addWithId:[ctx routerHash]];
  }
  else {
    JreStrongAssign(&self->_toRouters_, nil);
  }
}

NetI2pRouterTunnelOutboundMessageDistributor *new_NetI2pRouterTunnelOutboundMessageDistributor_initWithNetI2pRouterRouterContext_withInt_(NetI2pRouterRouterContext *ctx, jint priority) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelOutboundMessageDistributor, initWithNetI2pRouterRouterContext_withInt_, ctx, priority)
}

NetI2pRouterTunnelOutboundMessageDistributor *create_NetI2pRouterTunnelOutboundMessageDistributor_initWithNetI2pRouterRouterContext_withInt_(NetI2pRouterRouterContext *ctx, jint priority) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelOutboundMessageDistributor, initWithNetI2pRouterRouterContext_withInt_, ctx, priority)
}

jboolean NetI2pRouterTunnelOutboundMessageDistributor_shouldDropWithNetI2pDataHash_(NetI2pRouterTunnelOutboundMessageDistributor *self, NetI2pDataHash *target) {
  if (self->_toRouters_ == nil) return false;
  @synchronized(self) {
    if ([self->_toRouters_ containsWithId:target]) return false;
    jlong now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now];
    if (self->_newRouterTime_ < now - NetI2pRouterTunnelOutboundMessageDistributor_NEW_ROUTER_PERIOD) {
      self->_newRouterCount_ = 0;
      self->_newRouterTime_ = now;
    }
    else if (self->_newRouterCount_ >= NetI2pRouterTunnelOutboundMessageDistributor_MAX_ROUTERS_PER_PERIOD) {
      if (![((NetI2pRouterCommSystemFacade *) nil_chk([self->_context_ commSystem])) isEstablishedWithNetI2pDataHash:target]) return true;
    }
    self->_newRouterCount_++;
    [self->_toRouters_ addWithId:target];
  }
  return false;
}

void NetI2pRouterTunnelOutboundMessageDistributor_distributeWithNetI2pDataI2npI2NPMessage_withNetI2pDataRouterRouterInfo_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor *self, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataRouterRouterInfo *target, NetI2pDataTunnelId *tunnel) {
  id<NetI2pDataI2npI2NPMessage> m = msg;
  if (tunnel != nil) {
    NetI2pDataI2npTunnelGatewayMessage *t = create_NetI2pDataI2npTunnelGatewayMessage_initWithNetI2pI2PAppContext_(self->_context_);
    [t setMessageWithNetI2pDataI2npI2NPMessage:msg];
    [t setTunnelIdWithNetI2pDataTunnelId:tunnel];
    [t setMessageExpirationWithLong:[((id<NetI2pDataI2npI2NPMessage>) nil_chk(m)) getMessageExpiration]];
    m = t;
  }
  if ([((NetI2pDataHash *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) routerHash])) isEqual:[((NetI2pDataRouterRouterIdentity *) nil_chk([((NetI2pDataRouterRouterInfo *) nil_chk(target)) getIdentity])) calculateHash]]) {
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$@", @"queueing inbound message to ourselves: ", m)];
    [((NetI2pRouterInNetMessagePool *) nil_chk([self->_context_ inNetMessagePool])) addWithNetI2pDataI2npI2NPMessage:m withNetI2pDataRouterRouterIdentity:nil withNetI2pDataHash:nil];
    return;
  }
  else {
    NetI2pRouterOutNetMessage *out = create_NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withLong_withInt_withNetI2pDataRouterRouterInfo_(self->_context_, m, [((NetI2pUtilClock *) nil_chk([self->_context_ clock])) now] + NetI2pRouterTunnelOutboundMessageDistributor_MAX_DISTRIBUTE_TIME, self->_priority_, target);
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$@", @"queueing outbound message to ", [((NetI2pDataRouterRouterIdentity *) nil_chk([target getIdentity])) calculateHash])];
    [((NetI2pRouterOutNetMessagePool *) nil_chk([self->_context_ outNetMessagePool])) addWithNetI2pRouterOutNetMessage:out];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelOutboundMessageDistributor)

@implementation NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob

- (instancetype)initWithNetI2pRouterTunnelOutboundMessageDistributor:(NetI2pRouterTunnelOutboundMessageDistributor *)outer$
                                       withNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                       withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                                                  withNetI2pDataHash:(NetI2pDataHash *)target
                                              withNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_ {
  NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(self, outer$, ctx, msg, target, id_);
  return self;
}

- (NSString *)getName {
  return @"OBEP distribute after lookup";
}

- (void)runJob {
  NetI2pDataRouterRouterInfo *info = [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) netDb])) lookupRouterInfoLocallyWithNetI2pDataHash:_target_];
  jint stat;
  if (info != nil) {
    if ([((NetI2pUtilLog *) nil_chk(this$0_->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [this$0_->_log_ debugWithNSString:JreStrcat("$@C$$", @"outbound distributor to ", _target_, '.', (_tunnel_ != nil ? JreStrcat("J", [_tunnel_ getTunnelId]) : @""), @": found on search")];
    NetI2pRouterTunnelOutboundMessageDistributor_distributeWithNetI2pDataI2npI2NPMessage_withNetI2pDataRouterRouterInfo_withNetI2pDataTunnelId_(this$0_, _message_, info, _tunnel_);
    stat = 1;
  }
  else {
    if ([((NetI2pUtilLog *) nil_chk(this$0_->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [this$0_->_log_ warnWithNSString:JreStrcat("$@C$$", @"outbound distributor to ", _target_, '.', (_tunnel_ != nil ? JreStrcat("J", [_tunnel_ getTunnelId]) : @""), @": NOT found on search")];
    stat = 0;
  }
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(this$0_->_context_)) statManager])) addRateDataWithNSString:@"tunnel.distributeLookupSuccess" withLong:stat];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(_message_);
  RELEASE_(_target_);
  RELEASE_(_tunnel_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterTunnelOutboundMessageDistributor:withNetI2pRouterRouterContext:withNetI2pDataI2npI2NPMessage:withNetI2pDataHash:withNetI2pDataTunnelId:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(runJob);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterTunnelOutboundMessageDistributor;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "_message_", "LNetI2pDataI2npI2NPMessage;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_target_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_tunnel_", "LNetI2pDataTunnelId;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pDataI2npI2NPMessage;LNetI2pDataHash;LNetI2pDataTunnelId;", "LNetI2pRouterTunnelOutboundMessageDistributor;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob = { "DistributeJob", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x2, 3, 4, 1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob;
}

@end

void NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob *self, NetI2pRouterTunnelOutboundMessageDistributor *outer$, NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataHash *target, NetI2pDataTunnelId *id_) {
  JreStrongAssign(&self->this$0_, outer$);
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
  JreStrongAssign(&self->_message_, msg);
  JreStrongAssign(&self->_target_, target);
  JreStrongAssign(&self->_tunnel_, id_);
}

NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob *new_NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor *outer$, NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataHash *target, NetI2pDataTunnelId *id_) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob, initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_, outer$, ctx, msg, target, id_)
}

NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob *create_NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob_initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_(NetI2pRouterTunnelOutboundMessageDistributor *outer$, NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> msg, NetI2pDataHash *target, NetI2pDataTunnelId *id_) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob, initWithNetI2pRouterTunnelOutboundMessageDistributor_withNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataTunnelId_, outer$, ctx, msg, target, id_)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelOutboundMessageDistributor_DistributeJob)
