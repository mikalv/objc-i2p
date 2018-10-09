//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/JobQueueRunner.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/OutOfMemoryError.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "net/i2p/router/Job.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/JobQueue.h"
#include "net/i2p/router/JobQueueRunner.h"
#include "net/i2p/router/JobTiming.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/I2PThread.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterJobQueueRunner () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterRouterContext *_context_;
  volatile_jboolean _keepRunning_;
  jint _id_;
  volatile_id _currentJob_;
  volatile_id _lastJob_;
  volatile_jlong _lastBegin_;
  volatile_jlong _lastEnd_;
}

- (void)runCurrentJob;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterJobQueueRunner, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterJobQueueRunner, _context_, NetI2pRouterRouterContext *)
J2OBJC_VOLATILE_FIELD_SETTER(NetI2pRouterJobQueueRunner, _currentJob_, id<NetI2pRouterJob>)
J2OBJC_VOLATILE_FIELD_SETTER(NetI2pRouterJobQueueRunner, _lastJob_, id<NetI2pRouterJob>)

__attribute__((unused)) static void NetI2pRouterJobQueueRunner_runCurrentJob(NetI2pRouterJobQueueRunner *self);

@implementation NetI2pRouterJobQueueRunner

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
                                          withInt:(jint)id_ {
  NetI2pRouterJobQueueRunner_initWithNetI2pRouterRouterContext_withInt_(self, context, id_);
  return self;
}

- (id<NetI2pRouterJob>)getCurrentJob {
  return JreLoadVolatileId(&_currentJob_);
}

- (id<NetI2pRouterJob>)getLastJob {
  return JreLoadVolatileId(&_lastJob_);
}

- (jint)getRunnerId {
  return _id_;
}

- (void)stopRunning {
  JreAssignVolatileBoolean(&_keepRunning_, false);
}

- (void)startRunning {
  JreAssignVolatileBoolean(&_keepRunning_, true);
}

- (jlong)getLastBegin {
  return JreLoadVolatileLong(&_lastBegin_);
}

- (jlong)getLastEnd {
  return JreLoadVolatileLong(&_lastEnd_);
}

- (void)run {
  jlong lastActive = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now];
  while ((JreLoadVolatileBoolean(&_keepRunning_)) && ([((NetI2pRouterJobQueue *) nil_chk([_context_ jobQueue])) isAlive])) {
    @try {
      id<NetI2pRouterJob> job = [((NetI2pRouterJobQueue *) nil_chk([_context_ jobQueue])) getNext];
      if (job == nil) {
        if ([((NetI2pRouterRouter *) nil_chk([_context_ router])) isAlive]) if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_ERROR]) [_log_ errorWithNSString:@"getNext returned null - dead?"];
        continue;
      }
      jlong now = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
      jlong enqueuedTime = 0;
      if ([job isKindOfClass:[NetI2pRouterJobImpl class]]) {
        jlong when = [((NetI2pRouterJobImpl *) cast_chk(job, [NetI2pRouterJobImpl class])) getMadeReadyOn];
        if (when <= 0) {
          [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$@", @"Job was not made ready?! ", job) withJavaLangThrowable:create_JavaLangException_initWithNSString_(@"Not made ready?!")];
        }
        else {
          enqueuedTime = now - when;
        }
      }
      JreVolatileStrongAssign(&_currentJob_, job);
      JreVolatileStrongAssign(&_lastJob_, nil);
      if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$I$J$$", @"Runner ", _id_, @" running job ", [job getJobId], @": ", [job getName])];
      jlong origStartAfter = [((NetI2pRouterJobTiming *) nil_chk([job getTiming])) getStartAfter];
      jlong doStart = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
      [((NetI2pRouterJobTiming *) nil_chk([job getTiming])) start];
      NetI2pRouterJobQueueRunner_runCurrentJob(self);
      [((NetI2pRouterJobTiming *) nil_chk([job getTiming])) end];
      jlong duration = [((NetI2pRouterJobTiming *) nil_chk([job getTiming])) getActualEnd] - [((NetI2pRouterJobTiming *) nil_chk([job getTiming])) getActualStart];
      jlong beforeUpdate = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
      [((NetI2pRouterJobQueue *) nil_chk([_context_ jobQueue])) updateStatsWithNetI2pRouterJob:job withLong:doStart withLong:origStartAfter withLong:duration];
      jlong diff = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now] - beforeUpdate;
      jlong lag = doStart - origStartAfter;
      if (lag < 0) lag = 0;
      [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"jobQueue.jobRun" withLong:duration withLong:duration];
      [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"jobQueue.jobLag" withLong:lag];
      [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"jobQueue.jobWait" withLong:enqueuedTime withLong:enqueuedTime];
      if (duration > 1000) {
        [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"jobQueue.jobRunSlow" withLong:duration withLong:duration];
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$J$J$@", @"Duration of ", duration, @" (lag ", (doStart - origStartAfter), @") on job ", JreLoadVolatileId(&_currentJob_))];
      }
      if (diff > 100) {
        if ([_log_ shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$J$", @"Updating statistics for the job took too long [", diff, @"ms]")];
      }
      if ([_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$J$$$J$", @"Job duration ", duration, @"ms for ", [job getName], @" with lag of ", (doStart - origStartAfter), @"ms")];
      lastActive = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
      JreVolatileStrongAssign(&_lastJob_, JreLoadVolatileId(&_currentJob_));
      JreVolatileStrongAssign(&_currentJob_, nil);
      JreAssignVolatileLong(&_lastEnd_, lastActive);
    }
    @catch (JavaLangThrowable *t) {
      [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"error running?" withJavaLangThrowable:t];
    }
  }
  if ([((NetI2pRouterRouter *) nil_chk([_context_ router])) isAlive]) [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:JreStrcat("$I$", @"Queue runner ", _id_, @" exiting")];
  [((NetI2pRouterJobQueue *) nil_chk([_context_ jobQueue])) removeRunnerWithInt:_id_];
}

- (void)runCurrentJob {
  NetI2pRouterJobQueueRunner_runCurrentJob(self);
}

- (void)__javaClone:(NetI2pRouterJobQueueRunner *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&_currentJob_, &original->_currentJob_);
  JreCloneVolatileStrong(&_lastJob_, &original->_lastJob_);
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_context_);
  JreReleaseVolatile(&_currentJob_);
  JreReleaseVolatile(&_lastJob_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterJob;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterJob;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withInt:);
  methods[1].selector = @selector(getCurrentJob);
  methods[2].selector = @selector(getLastJob);
  methods[3].selector = @selector(getRunnerId);
  methods[4].selector = @selector(stopRunning);
  methods[5].selector = @selector(startRunning);
  methods[6].selector = @selector(getLastBegin);
  methods[7].selector = @selector(getLastEnd);
  methods[8].selector = @selector(run);
  methods[9].selector = @selector(runCurrentJob);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_keepRunning_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_id_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_currentJob_", "LNetI2pRouterJob;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_lastJob_", "LNetI2pRouterJob;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_lastBegin_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_lastEnd_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;I" };
  static const J2ObjcClassInfo _NetI2pRouterJobQueueRunner = { "JobQueueRunner", "net.i2p.router", ptrTable, methods, fields, 7, 0x0, 10, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterJobQueueRunner;
}

@end

void NetI2pRouterJobQueueRunner_initWithNetI2pRouterRouterContext_withInt_(NetI2pRouterJobQueueRunner *self, NetI2pRouterRouterContext *context, jint id_) {
  NetI2pUtilI2PThread_init(self);
  JreStrongAssign(&self->_context_, context);
  self->_id_ = id_;
  JreAssignVolatileBoolean(&self->_keepRunning_, true);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) logManager])) getLogWithIOSClass:NetI2pRouterJobQueueRunner_class_()]);
  [self setPriorityWithInt:JavaLangThread_NORM_PRIORITY + 1];
}

NetI2pRouterJobQueueRunner *new_NetI2pRouterJobQueueRunner_initWithNetI2pRouterRouterContext_withInt_(NetI2pRouterRouterContext *context, jint id_) {
  J2OBJC_NEW_IMPL(NetI2pRouterJobQueueRunner, initWithNetI2pRouterRouterContext_withInt_, context, id_)
}

NetI2pRouterJobQueueRunner *create_NetI2pRouterJobQueueRunner_initWithNetI2pRouterRouterContext_withInt_(NetI2pRouterRouterContext *context, jint id_) {
  J2OBJC_CREATE_IMPL(NetI2pRouterJobQueueRunner, initWithNetI2pRouterRouterContext_withInt_, context, id_)
}

void NetI2pRouterJobQueueRunner_runCurrentJob(NetI2pRouterJobQueueRunner *self) {
  @try {
    JreAssignVolatileLong(&self->_lastBegin_, [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now]);
    [((id<NetI2pRouterJob>) nil_chk(JreLoadVolatileId(&self->_currentJob_))) runJob];
  }
  @catch (JavaLangOutOfMemoryError *oom) {
    @try {
      if (NetI2pUtilSystemVersion_isAndroid()) [((NetI2pRouterRouter *) nil_chk([self->_context_ router])) shutdownWithInt:NetI2pRouterRouter_EXIT_OOM];
      else [self fireOOMWithJavaLangOutOfMemoryError:oom];
    }
    @catch (JavaLangThrowable *t) {
    }
  }
  @catch (JavaLangThrowable *t) {
    [((NetI2pUtilLog *) nil_chk(self->_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:JreStrcat("$$$I$$", @"Error processing job [", [((id<NetI2pRouterJob>) nil_chk(JreLoadVolatileId(&self->_currentJob_))) getName], @"] on thread ", self->_id_, @": ", [t getMessage]) withJavaLangThrowable:t];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterJobQueueRunner)