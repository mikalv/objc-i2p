//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tasks/GracefulShutdown.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/TunnelManagerFacade.h"
#include "net/i2p/router/tasks/GracefulShutdown.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterTasksGracefulShutdown () {
 @public
  NetI2pRouterRouterContext *_context_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTasksGracefulShutdown, _context_, NetI2pRouterRouterContext *)

@implementation NetI2pRouterTasksGracefulShutdown

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTasksGracefulShutdown_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (void)run {
  NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:NetI2pRouterRouter_class_()];
  while (true) {
    jboolean shutdown = [((NetI2pRouterRouter *) nil_chk([_context_ router])) gracefulShutdownInProgress];
    if (shutdown) {
      jint gracefulExitCode = [((NetI2pRouterRouter *) nil_chk([_context_ router])) scheduledGracefulExitCode];
      if (gracefulExitCode == NetI2pRouterRouter_EXIT_HARD || gracefulExitCode == NetI2pRouterRouter_EXIT_HARD_RESTART || [((id<NetI2pRouterTunnelManagerFacade>) nil_chk([_context_ tunnelManager])) getParticipatingCount] <= 0) {
        if (gracefulExitCode == NetI2pRouterRouter_EXIT_HARD) [((NetI2pUtilLog *) nil_chk(log)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Shutting down after a brief delay"];
        else if (gracefulExitCode == NetI2pRouterRouter_EXIT_HARD_RESTART) [((NetI2pUtilLog *) nil_chk(log)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Restarting after a brief delay"];
        else [((NetI2pUtilLog *) nil_chk(log)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Graceful shutdown progress: No more tunnels, starting final shutdown"];
        @try {
          @synchronized(JavaLangThread_currentThread()) {
            [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) java_waitWithLong:2 * 1000];
          }
        }
        @catch (JavaLangInterruptedException *ie) {
        }
        [((NetI2pRouterRouter *) nil_chk([_context_ router])) shutdownWithInt:gracefulExitCode];
        return;
      }
      else {
        @try {
          @synchronized(JavaLangThread_currentThread()) {
            [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) java_waitWithLong:10 * 1000];
          }
        }
        @catch (JavaLangInterruptedException *ie) {
        }
      }
    }
    else {
      @try {
        @synchronized(JavaLangThread_currentThread()) {
          [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) java_wait];
        }
      }
      @catch (JavaLangInterruptedException *ie) {
      }
    }
  }
}

- (void)dealloc {
  RELEASE_(_context_);
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
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;" };
  static const J2ObjcClassInfo _NetI2pRouterTasksGracefulShutdown = { "GracefulShutdown", "net.i2p.router.tasks", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTasksGracefulShutdown;
}

@end

void NetI2pRouterTasksGracefulShutdown_initWithNetI2pRouterRouterContext_(NetI2pRouterTasksGracefulShutdown *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
}

NetI2pRouterTasksGracefulShutdown *new_NetI2pRouterTasksGracefulShutdown_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTasksGracefulShutdown, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterTasksGracefulShutdown *create_NetI2pRouterTasksGracefulShutdown_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTasksGracefulShutdown, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTasksGracefulShutdown)
