//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/pool/ParticipatingThrottler.java
//

#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/TunnelManagerFacade.h"
#include "net/i2p/router/tunnel/pool/ParticipatingThrottler.h"
#include "net/i2p/util/ObjectCounter.h"
#include "net/i2p/util/SimpleTimer.h"
#include "net/i2p/util/SimpleTimer2.h"

@interface NetI2pRouterTunnelPoolParticipatingThrottler () {
 @public
  NetI2pRouterRouterContext *context_;
  NetI2pUtilObjectCounter *counter_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelPoolParticipatingThrottler, context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelPoolParticipatingThrottler, counter_, NetI2pUtilObjectCounter *)

inline jint NetI2pRouterTunnelPoolParticipatingThrottler_get_LIFETIME_PORTION(void);
#define NetI2pRouterTunnelPoolParticipatingThrottler_LIFETIME_PORTION 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelPoolParticipatingThrottler, LIFETIME_PORTION, jint)

inline jint NetI2pRouterTunnelPoolParticipatingThrottler_get_MIN_LIMIT(void);
#define NetI2pRouterTunnelPoolParticipatingThrottler_MIN_LIMIT 6
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelPoolParticipatingThrottler, MIN_LIMIT, jint)

inline jint NetI2pRouterTunnelPoolParticipatingThrottler_get_MAX_LIMIT(void);
#define NetI2pRouterTunnelPoolParticipatingThrottler_MAX_LIMIT 22
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelPoolParticipatingThrottler, MAX_LIMIT, jint)

inline jint NetI2pRouterTunnelPoolParticipatingThrottler_get_PERCENT_LIMIT(void);
#define NetI2pRouterTunnelPoolParticipatingThrottler_PERCENT_LIMIT 4
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelPoolParticipatingThrottler, PERCENT_LIMIT, jint)

inline jlong NetI2pRouterTunnelPoolParticipatingThrottler_get_CLEAN_TIME(void);
#define NetI2pRouterTunnelPoolParticipatingThrottler_CLEAN_TIME 220000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelPoolParticipatingThrottler, CLEAN_TIME, jlong)

@interface NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner : NSObject < NetI2pUtilSimpleTimer_TimedEvent > {
 @public
  NetI2pRouterTunnelPoolParticipatingThrottler *this$0_;
}

- (instancetype)initWithNetI2pRouterTunnelPoolParticipatingThrottler:(NetI2pRouterTunnelPoolParticipatingThrottler *)outer$;

- (void)timeReached;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner)

__attribute__((unused)) static void NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner *self, NetI2pRouterTunnelPoolParticipatingThrottler *outer$);

__attribute__((unused)) static NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner *new_NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(NetI2pRouterTunnelPoolParticipatingThrottler *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner *create_NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(NetI2pRouterTunnelPoolParticipatingThrottler *outer$);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner)

@implementation NetI2pRouterTunnelPoolParticipatingThrottler

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (jboolean)shouldThrottleWithNetI2pDataHash:(NetI2pDataHash *)h {
  jint numTunnels = [((id<NetI2pRouterTunnelManagerFacade>) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->context_)) tunnelManager])) getParticipatingCount];
  jint limit = JavaLangMath_maxWithInt_withInt_(NetI2pRouterTunnelPoolParticipatingThrottler_MIN_LIMIT, JavaLangMath_minWithInt_withInt_(NetI2pRouterTunnelPoolParticipatingThrottler_MAX_LIMIT, numTunnels * NetI2pRouterTunnelPoolParticipatingThrottler_PERCENT_LIMIT / 100));
  return [((NetI2pUtilObjectCounter *) nil_chk(self->counter_)) incrementWithId:h] > limit;
}

- (void)dealloc {
  RELEASE_(context_);
  RELEASE_(counter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(shouldThrottleWithNetI2pDataHash:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "counter_", "LNetI2pUtilObjectCounter;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
    { "LIFETIME_PORTION", "I", .constantValue.asInt = NetI2pRouterTunnelPoolParticipatingThrottler_LIFETIME_PORTION, 0x1a, -1, -1, -1, -1 },
    { "MIN_LIMIT", "I", .constantValue.asInt = NetI2pRouterTunnelPoolParticipatingThrottler_MIN_LIMIT, 0x1a, -1, -1, -1, -1 },
    { "MAX_LIMIT", "I", .constantValue.asInt = NetI2pRouterTunnelPoolParticipatingThrottler_MAX_LIMIT, 0x1a, -1, -1, -1, -1 },
    { "PERCENT_LIMIT", "I", .constantValue.asInt = NetI2pRouterTunnelPoolParticipatingThrottler_PERCENT_LIMIT, 0x1a, -1, -1, -1, -1 },
    { "CLEAN_TIME", "J", .constantValue.asLong = NetI2pRouterTunnelPoolParticipatingThrottler_CLEAN_TIME, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "shouldThrottle", "LNetI2pDataHash;", "Lnet/i2p/util/ObjectCounter<Lnet/i2p/data/Hash;>;", "LNetI2pRouterTunnelPoolParticipatingThrottler_Cleaner;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelPoolParticipatingThrottler = { "ParticipatingThrottler", "net.i2p.router.tunnel.pool", ptrTable, methods, fields, 7, 0x0, 2, 7, -1, 4, -1, -1, -1 };
  return &_NetI2pRouterTunnelPoolParticipatingThrottler;
}

@end

void NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelPoolParticipatingThrottler *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssign(&self->context_, ctx);
  JreStrongAssignAndConsume(&self->counter_, new_NetI2pUtilObjectCounter_init());
  [((NetI2pUtilSimpleTimer2 *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) simpleTimer2])) addPeriodicEventWithNetI2pUtilSimpleTimer_TimedEvent:create_NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(self) withLong:NetI2pRouterTunnelPoolParticipatingThrottler_CLEAN_TIME];
}

NetI2pRouterTunnelPoolParticipatingThrottler *new_NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelPoolParticipatingThrottler, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterTunnelPoolParticipatingThrottler *create_NetI2pRouterTunnelPoolParticipatingThrottler_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelPoolParticipatingThrottler, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelPoolParticipatingThrottler)

@implementation NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner

- (instancetype)initWithNetI2pRouterTunnelPoolParticipatingThrottler:(NetI2pRouterTunnelPoolParticipatingThrottler *)outer$ {
  NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(self, outer$);
  return self;
}

- (void)timeReached {
  [((NetI2pUtilObjectCounter *) nil_chk(this$0_->counter_)) clear];
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
  methods[0].selector = @selector(initWithNetI2pRouterTunnelPoolParticipatingThrottler:);
  methods[1].selector = @selector(timeReached);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterTunnelPoolParticipatingThrottler;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterTunnelPoolParticipatingThrottler;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner = { "Cleaner", "net.i2p.router.tunnel.pool", ptrTable, methods, fields, 7, 0x2, 2, 1, 0, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner;
}

@end

void NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner *self, NetI2pRouterTunnelPoolParticipatingThrottler *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner *new_NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(NetI2pRouterTunnelPoolParticipatingThrottler *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner, initWithNetI2pRouterTunnelPoolParticipatingThrottler_, outer$)
}

NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner *create_NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner_initWithNetI2pRouterTunnelPoolParticipatingThrottler_(NetI2pRouterTunnelPoolParticipatingThrottler *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner, initWithNetI2pRouterTunnelPoolParticipatingThrottler_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelPoolParticipatingThrottler_Cleaner)
