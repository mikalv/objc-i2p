//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/JobTiming.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/JobTiming.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/util/Clock.h"

@interface NetI2pRouterJobTiming () {
 @public
  volatile_jlong _start_;
  volatile_jlong _actualStart_;
  volatile_jlong _actualEnd_;
  NetI2pRouterRouterContext *_context_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterJobTiming, _context_, NetI2pRouterRouterContext *)

@implementation NetI2pRouterJobTiming

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context {
  NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(self, context);
  return self;
}

- (jlong)getStartAfter {
  return JreLoadVolatileLong(&_start_);
}

- (void)setStartAfterWithLong:(jlong)startTime {
  JreAssignVolatileLong(&_start_, startTime);
}

- (jlong)getActualStart {
  return JreLoadVolatileLong(&_actualStart_);
}

- (void)setActualStartWithLong:(jlong)actualStartTime {
  JreAssignVolatileLong(&_actualStart_, actualStartTime);
}

- (void)start {
  JreAssignVolatileLong(&_actualStart_, [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now]);
}

- (jlong)getActualEnd {
  return JreLoadVolatileLong(&_actualEnd_);
}

- (void)setActualEndWithLong:(jlong)actualEndTime {
  JreAssignVolatileLong(&_actualEnd_, actualEndTime);
}

- (void)end {
  JreAssignVolatileLong(&_actualEnd_, [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now]);
}

- (void)offsetChangedWithLong:(jlong)delta {
  if (JreLoadVolatileLong(&_start_) != 0) JrePlusAssignVolatileLongJ(&_start_, delta);
  if (JreLoadVolatileLong(&_actualStart_) != 0) JrePlusAssignVolatileLongJ(&_actualStart_, delta);
  if (JreLoadVolatileLong(&_actualEnd_) != 0) JrePlusAssignVolatileLongJ(&_actualEnd_, delta);
}

- (void)dealloc {
  RELEASE_(_context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getStartAfter);
  methods[2].selector = @selector(setStartAfterWithLong:);
  methods[3].selector = @selector(getActualStart);
  methods[4].selector = @selector(setActualStartWithLong:);
  methods[5].selector = @selector(start);
  methods[6].selector = @selector(getActualEnd);
  methods[7].selector = @selector(setActualEndWithLong:);
  methods[8].selector = @selector(end);
  methods[9].selector = @selector(offsetChangedWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_start_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_actualStart_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_actualEnd_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "setStartAfter", "J", "setActualStart", "setActualEnd", "offsetChanged" };
  static const J2ObjcClassInfo _NetI2pRouterJobTiming = { "JobTiming", "net.i2p.router", ptrTable, methods, fields, 7, 0x1, 10, 4, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterJobTiming;
}

@end

void NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(NetI2pRouterJobTiming *self, NetI2pRouterRouterContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreAssignVolatileLong(&self->_start_, [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) clock])) now]);
}

NetI2pRouterJobTiming *new_NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_NEW_IMPL(NetI2pRouterJobTiming, initWithNetI2pRouterRouterContext_, context)
}

NetI2pRouterJobTiming *create_NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pRouterJobTiming, initWithNetI2pRouterRouterContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterJobTiming)
