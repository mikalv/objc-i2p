//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelGatewayPumper.java
//

#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/Thread.h"
#include "java/util/ArrayList.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tunnel/PumpedTunnelGateway.h"
#include "net/i2p/router/tunnel/TunnelGatewayPumper.h"
#include "net/i2p/util/I2PThread.h"
#include "net/i2p/util/SimpleTimer.h"
#include "net/i2p/util/SimpleTimer2.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterTunnelTunnelGatewayPumper () {
 @public
  NetI2pRouterRouterContext *_context_;
  id<JavaUtilSet> _wantsPumping_;
  id<JavaUtilSet> _backlogged_;
  volatile_jboolean _stop_;
  jint _pumpers_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelGatewayPumper, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelGatewayPumper, _wantsPumping_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelGatewayPumper, _backlogged_, id<JavaUtilSet>)

inline jint NetI2pRouterTunnelTunnelGatewayPumper_get_MIN_PUMPERS(void);
#define NetI2pRouterTunnelTunnelGatewayPumper_MIN_PUMPERS 1
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTunnelGatewayPumper, MIN_PUMPERS, jint)

inline jint NetI2pRouterTunnelTunnelGatewayPumper_get_MAX_PUMPERS(void);
#define NetI2pRouterTunnelTunnelGatewayPumper_MAX_PUMPERS 4
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTunnelGatewayPumper, MAX_PUMPERS, jint)

inline jlong NetI2pRouterTunnelTunnelGatewayPumper_get_REQUEUE_TIME(void);
#define NetI2pRouterTunnelTunnelGatewayPumper_REQUEUE_TIME 50LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTunnelGatewayPumper, REQUEUE_TIME, jlong)

inline jint NetI2pRouterTunnelTunnelGatewayPumper_get_POISON_PTG(void);
#define NetI2pRouterTunnelTunnelGatewayPumper_POISON_PTG -99999
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTunnelGatewayPumper, POISON_PTG, jint)

@interface NetI2pRouterTunnelTunnelGatewayPumper_Requeue : NSObject < NetI2pUtilSimpleTimer_TimedEvent > {
 @public
  NetI2pRouterTunnelTunnelGatewayPumper *this$0_;
  NetI2pRouterTunnelPumpedTunnelGateway *_ptg_;
}

- (instancetype)initWithNetI2pRouterTunnelTunnelGatewayPumper:(NetI2pRouterTunnelTunnelGatewayPumper *)outer$
                    withNetI2pRouterTunnelPumpedTunnelGateway:(NetI2pRouterTunnelPumpedTunnelGateway *)ptg;

- (void)timeReached;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelTunnelGatewayPumper_Requeue)

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelGatewayPumper_Requeue, _ptg_, NetI2pRouterTunnelPumpedTunnelGateway *)

__attribute__((unused)) static void NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(NetI2pRouterTunnelTunnelGatewayPumper_Requeue *self, NetI2pRouterTunnelTunnelGatewayPumper *outer$, NetI2pRouterTunnelPumpedTunnelGateway *ptg);

__attribute__((unused)) static NetI2pRouterTunnelTunnelGatewayPumper_Requeue *new_NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(NetI2pRouterTunnelTunnelGatewayPumper *outer$, NetI2pRouterTunnelPumpedTunnelGateway *ptg) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTunnelTunnelGatewayPumper_Requeue *create_NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(NetI2pRouterTunnelTunnelGatewayPumper *outer$, NetI2pRouterTunnelPumpedTunnelGateway *ptg);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelGatewayPumper_Requeue)

@interface NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG : NetI2pRouterTunnelPumpedTunnelGateway

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (jint)getMessagesSent;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG)

__attribute__((unused)) static void NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG *self, NetI2pRouterRouterContext *ctx);

__attribute__((unused)) static NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG *new_NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG *create_NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG)

@implementation NetI2pRouterTunnelTunnelGatewayPumper

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTunnelTunnelGatewayPumper_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (void)stopPumping {
  JreAssignVolatileBoolean(&_stop_, true);
  [((id<JavaUtilSet>) nil_chk(_wantsPumping_)) clear];
  for (jint i = 0; i < _pumpers_; i++) {
    NetI2pRouterTunnelPumpedTunnelGateway *poison = create_NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(_context_);
    [self wantsPumpingWithNetI2pRouterTunnelPumpedTunnelGateway:poison];
  }
  for (jint i = 1; i <= 5 && ![_wantsPumping_ isEmpty]; i++) {
    @try {
      JavaLangThread_sleepWithLong_(i * 50);
    }
    @catch (JavaLangInterruptedException *ie) {
    }
  }
  [_wantsPumping_ clear];
}

- (void)wantsPumpingWithNetI2pRouterTunnelPumpedTunnelGateway:(NetI2pRouterTunnelPumpedTunnelGateway *)gw {
  if (!JreLoadVolatileBoolean(&_stop_)) {
    @synchronized(_wantsPumping_) {
      if ((![((id<JavaUtilSet>) nil_chk(_backlogged_)) containsWithId:gw]) && [((id<JavaUtilSet>) nil_chk(_wantsPumping_)) addWithId:gw]) [((id<JavaUtilSet>) nil_chk(_wantsPumping_)) java_notify];
    }
  }
}

- (void)run {
  NetI2pRouterTunnelPumpedTunnelGateway *gw = nil;
  id<JavaUtilList> queueBuf = create_JavaUtilArrayList_initWithInt_(32);
  jboolean requeue = false;
  while (!JreLoadVolatileBoolean(&_stop_)) {
    @try {
      @synchronized(_wantsPumping_) {
        if (requeue && gw != nil) {
          [((id<JavaUtilSet>) nil_chk(_wantsPumping_)) removeWithId:gw];
          if ([((id<JavaUtilSet>) nil_chk(_backlogged_)) addWithId:gw]) [((NetI2pUtilSimpleTimer2 *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) simpleTimer2])) addEventWithNetI2pUtilSimpleTimer_TimedEvent:create_NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(self, gw) withLong:NetI2pRouterTunnelTunnelGatewayPumper_REQUEUE_TIME];
        }
        gw = JreRetainedLocalValue(nil);
        if ([((id<JavaUtilSet>) nil_chk(_wantsPumping_)) isEmpty]) {
          [_wantsPumping_ java_wait];
        }
        else {
          id<JavaUtilIterator> iter = [_wantsPumping_ iterator];
          gw = JreRetainedLocalValue([((id<JavaUtilIterator>) nil_chk(iter)) next]);
          [iter remove];
        }
      }
    }
    @catch (JavaLangInterruptedException *ie) {
    }
    if (gw != nil) {
      if ([gw getMessagesSent] == NetI2pRouterTunnelTunnelGatewayPumper_POISON_PTG) break;
      requeue = [gw pumpWithJavaUtilList:queueBuf];
    }
  }
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_wantsPumping_);
  RELEASE_(_backlogged_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(stopPumping);
  methods[2].selector = @selector(wantsPumpingWithNetI2pRouterTunnelPumpedTunnelGateway:);
  methods[3].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_wantsPumping_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
    { "_backlogged_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
    { "_stop_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "MIN_PUMPERS", "I", .constantValue.asInt = NetI2pRouterTunnelTunnelGatewayPumper_MIN_PUMPERS, 0x1a, -1, -1, -1, -1 },
    { "MAX_PUMPERS", "I", .constantValue.asInt = NetI2pRouterTunnelTunnelGatewayPumper_MAX_PUMPERS, 0x1a, -1, -1, -1, -1 },
    { "_pumpers_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "REQUEUE_TIME", "J", .constantValue.asLong = NetI2pRouterTunnelTunnelGatewayPumper_REQUEUE_TIME, 0x1a, -1, -1, -1, -1 },
    { "POISON_PTG", "I", .constantValue.asInt = NetI2pRouterTunnelTunnelGatewayPumper_POISON_PTG, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "wantsPumping", "LNetI2pRouterTunnelPumpedTunnelGateway;", "Ljava/util/Set<Lnet/i2p/router/tunnel/PumpedTunnelGateway;>;", "LNetI2pRouterTunnelTunnelGatewayPumper_Requeue;LNetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGatewayPumper = { "TunnelGatewayPumper", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x0, 4, 9, -1, 4, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGatewayPumper;
}

@end

void NetI2pRouterTunnelTunnelGatewayPumper_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelTunnelGatewayPumper *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssignAndConsume(&self->_wantsPumping_, new_JavaUtilLinkedHashSet_initWithInt_(16));
  JreStrongAssignAndConsume(&self->_backlogged_, new_JavaUtilHashSet_initWithInt_(16));
  if ([((NetI2pRouterRouterContext *) nil_chk(ctx)) getBooleanPropertyWithNSString:@"i2p.dummyTunnelManager"]) {
    self->_pumpers_ = 1;
  }
  else {
    jlong maxMemory = NetI2pUtilSystemVersion_getMaxMemory();
    self->_pumpers_ = (jint) JavaLangMath_maxWithLong_withLong_(NetI2pRouterTunnelTunnelGatewayPumper_MIN_PUMPERS, JavaLangMath_minWithLong_withLong_(NetI2pRouterTunnelTunnelGatewayPumper_MAX_PUMPERS, 1 + (maxMemory / (32 * 1024 * 1024))));
  }
  for (jint i = 0; i < self->_pumpers_; i++) [create_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_withBoolean_(self, JreStrcat("$ICI", @"Tunnel GW pumper ", (i + 1), '/', self->_pumpers_), true) start];
}

NetI2pRouterTunnelTunnelGatewayPumper *new_NetI2pRouterTunnelTunnelGatewayPumper_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTunnelGatewayPumper, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterTunnelTunnelGatewayPumper *create_NetI2pRouterTunnelTunnelGatewayPumper_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTunnelGatewayPumper, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGatewayPumper)

@implementation NetI2pRouterTunnelTunnelGatewayPumper_Requeue

- (instancetype)initWithNetI2pRouterTunnelTunnelGatewayPumper:(NetI2pRouterTunnelTunnelGatewayPumper *)outer$
                    withNetI2pRouterTunnelPumpedTunnelGateway:(NetI2pRouterTunnelPumpedTunnelGateway *)ptg {
  NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(self, outer$, ptg);
  return self;
}

- (void)timeReached {
  @synchronized(this$0_->_wantsPumping_) {
    [((id<JavaUtilSet>) nil_chk(this$0_->_backlogged_)) removeWithId:_ptg_];
    if ([((id<JavaUtilSet>) nil_chk(this$0_->_wantsPumping_)) addWithId:_ptg_]) [this$0_->_wantsPumping_ java_notify];
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(_ptg_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterTunnelTunnelGatewayPumper:withNetI2pRouterTunnelPumpedTunnelGateway:);
  methods[1].selector = @selector(timeReached);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterTunnelTunnelGatewayPumper;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "_ptg_", "LNetI2pRouterTunnelPumpedTunnelGateway;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterTunnelPumpedTunnelGateway;", "LNetI2pRouterTunnelTunnelGatewayPumper;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGatewayPumper_Requeue = { "Requeue", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x2, 2, 2, 1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGatewayPumper_Requeue;
}

@end

void NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(NetI2pRouterTunnelTunnelGatewayPumper_Requeue *self, NetI2pRouterTunnelTunnelGatewayPumper *outer$, NetI2pRouterTunnelPumpedTunnelGateway *ptg) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  JreStrongAssign(&self->_ptg_, ptg);
}

NetI2pRouterTunnelTunnelGatewayPumper_Requeue *new_NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(NetI2pRouterTunnelTunnelGatewayPumper *outer$, NetI2pRouterTunnelPumpedTunnelGateway *ptg) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTunnelGatewayPumper_Requeue, initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_, outer$, ptg)
}

NetI2pRouterTunnelTunnelGatewayPumper_Requeue *create_NetI2pRouterTunnelTunnelGatewayPumper_Requeue_initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_(NetI2pRouterTunnelTunnelGatewayPumper *outer$, NetI2pRouterTunnelPumpedTunnelGateway *ptg) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTunnelGatewayPumper_Requeue, initWithNetI2pRouterTunnelTunnelGatewayPumper_withNetI2pRouterTunnelPumpedTunnelGateway_, outer$, ptg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGatewayPumper_Requeue)

@implementation NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (jint)getMessagesSent {
  return NetI2pRouterTunnelTunnelGatewayPumper_POISON_PTG;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getMessagesSent);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "LNetI2pRouterTunnelTunnelGatewayPumper;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG = { "PoisonPTG", "net.i2p.router.tunnel", ptrTable, methods, NULL, 7, 0xa, 2, 0, 1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG;
}

@end

void NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG *self, NetI2pRouterRouterContext *ctx) {
  NetI2pRouterTunnelPumpedTunnelGateway_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelGateway_QueuePreprocessor_withNetI2pRouterTunnelTunnelGateway_Sender_withNetI2pRouterTunnelTunnelGateway_Receiver_withNetI2pRouterTunnelTunnelGatewayPumper_(self, ctx, nil, nil, nil, nil);
}

NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG *new_NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG *create_NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGatewayPumper_PoisonPTG)