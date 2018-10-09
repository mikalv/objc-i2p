//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/RouterAppManager.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/Throwable.h"
#include "java/text/Collator.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "net/i2p/app/ClientApp.h"
#include "net/i2p/app/ClientAppManagerImpl.h"
#include "net/i2p/app/ClientAppState.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/startup/RouterAppManager.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterStartupRouterAppManager () {
 @public
  NetI2pRouterRouterContext *_context_;
  NetI2pUtilLog *_log_;
  JavaUtilConcurrentConcurrentHashMap *_clients_;
}

- (void)toString1WithJavaLangStringBuilder:(JavaLangStringBuilder *)buf;

- (void)toString2WithJavaLangStringBuilder:(JavaLangStringBuilder *)buf;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterStartupRouterAppManager, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterStartupRouterAppManager, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterStartupRouterAppManager, _clients_, JavaUtilConcurrentConcurrentHashMap *)

__attribute__((unused)) static void NetI2pRouterStartupRouterAppManager_toString1WithJavaLangStringBuilder_(NetI2pRouterStartupRouterAppManager *self, JavaLangStringBuilder *buf);

__attribute__((unused)) static void NetI2pRouterStartupRouterAppManager_toString2WithJavaLangStringBuilder_(NetI2pRouterStartupRouterAppManager *self, JavaLangStringBuilder *buf);

@interface NetI2pRouterStartupRouterAppManager_Shutdown () {
 @public
  NetI2pRouterStartupRouterAppManager *this$0_;
}

@end

@implementation NetI2pRouterStartupRouterAppManager

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterStartupRouterAppManager_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (jboolean)addAndStartWithNetI2pAppClientApp:(id<NetI2pAppClientApp>)app
                            withNSStringArray:(IOSObjectArray *)args {
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$$", @"Client ", [((id<NetI2pAppClientApp>) nil_chk(app)) getDisplayName], @" ADDED")];
  IOSObjectArray *old = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_clients_)) putIfAbsentWithId:app withId:args];
  if (old != nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"already added");
  @try {
    [((id<NetI2pAppClientApp>) nil_chk(app)) startup];
    return true;
  }
  @catch (JavaLangThrowable *t) {
    [_clients_ removeWithId:app];
    [_log_ errorWithNSString:JreStrcat("$@$", @"Client ", app, @" failed to start") withJavaLangThrowable:t];
    return false;
  }
}

- (id<NetI2pAppClientApp>)getClientAppWithNSString:(NSString *)className_
                                 withNSStringArray:(IOSObjectArray *)args {
  for (id<JavaUtilMap_Entry> __strong e in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_clients_)) entrySet])) {
    if ([((NSString *) nil_chk([[((id<NetI2pAppClientApp>) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(e)) getKey])) java_getClass] getName])) isEqual:className_] && JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_([e getValue], args)) return [e getKey];
  }
  if ([((NSString *) nil_chk(className_)) isEqual:@"net.i2p.jetty.JettyStart"] && ((IOSObjectArray *) nil_chk(args))->size_ > 0) {
    for (id<NetI2pAppClientApp> __strong app in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_registered_)) values])) {
      if ([((NSString *) nil_chk([[((id<NetI2pAppClientApp>) nil_chk(app)) java_getClass] getName])) isEqual:className_]) {
        NSString *dname = [app getDisplayName];
        jint idx = 0;
        jboolean match = true;
        {
          IOSObjectArray *a__ = args;
          NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          NSString * const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            NSString *arg = *b__++;
            idx = [((NSString *) nil_chk(dname)) java_indexOfString:arg fromIndex:idx];
            if (idx < 0) {
              match = false;
              break;
            }
          }
        }
        if (match) return app;
      }
    }
  }
  return nil;
}

- (void)notifyWithNetI2pAppClientApp:(id<NetI2pAppClientApp>)app
         withNetI2pAppClientAppState:(NetI2pAppClientAppState *)state
                        withNSString:(NSString *)message
               withJavaLangException:(JavaLangException *)e {
  switch ([state ordinal]) {
    case NetI2pAppClientAppState_Enum_UNINITIALIZED:
    case NetI2pAppClientAppState_Enum_INITIALIZED:
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$$$@", @"Client ", [((id<NetI2pAppClientApp>) nil_chk(app)) getDisplayName], @" is now ", state)];
    break;
    case NetI2pAppClientAppState_Enum_STARTING:
    case NetI2pAppClientAppState_Enum_RUNNING:
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$$@", @"Client ", [((id<NetI2pAppClientApp>) nil_chk(app)) getDisplayName], @" is now ", state)];
    break;
    case NetI2pAppClientAppState_Enum_FORKED:
    case NetI2pAppClientAppState_Enum_STOPPING:
    case NetI2pAppClientAppState_Enum_STOPPED:
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_clients_)) removeWithId:app];
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_registered_)) removeWithId:[((id<NetI2pAppClientApp>) nil_chk(app)) getName] withId:app];
    if (message == nil) message = @"";
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$$@C$", @"Client ", [app getDisplayName], @" is now ", state, ' ', message) withJavaLangThrowable:e];
    break;
    case NetI2pAppClientAppState_Enum_CRASHED:
    case NetI2pAppClientAppState_Enum_START_FAILED:
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_clients_)) removeWithId:app];
    [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_registered_)) removeWithId:[((id<NetI2pAppClientApp>) nil_chk(app)) getName] withId:app];
    if (message == nil) message = @"";
    [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:JreStrcat("$$C@C$", @"Client ", [app getDisplayName], ' ', state, ' ', message) withJavaLangThrowable:e];
    break;
  }
}

- (jboolean)register__WithNetI2pAppClientApp:(id<NetI2pAppClientApp>)app {
  if (![((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_clients_)) containsKeyWithId:app]) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$", @"Registering untracked client ", [((id<NetI2pAppClientApp>) nil_chk(app)) getName])];
  }
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$$$", @"Client ", [((id<NetI2pAppClientApp>) nil_chk(app)) getDisplayName], @" REGISTERED AS ", [app getName])];
  return [super register__WithNetI2pAppClientApp:app];
}

- (void)shutdown {
  @synchronized(self) {
    id<JavaUtilSet> apps = create_JavaUtilHashSet_initWithJavaUtilCollection_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_clients_)) keySet]);
    for (id<NetI2pAppClientApp> __strong app in apps) {
      NetI2pAppClientAppState *state = [((id<NetI2pAppClientApp>) nil_chk(app)) getState];
      if (state == JreLoadEnum(NetI2pAppClientAppState, RUNNING) || state == JreLoadEnum(NetI2pAppClientAppState, STARTING)) {
        @try {
          if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldWarn]) [_log_ warnWithNSString:JreStrcat("$$", @"Shutting down client ", [app getDisplayName])];
          [app shutdownWithNSStringArray:nil];
        }
        @catch (JavaLangThrowable *t) {
        }
      }
    }
  }
}

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(1024);
  [buf appendWithNSString:@"<h2>App Manager</h2>"];
  [buf appendWithNSString:@"<h3>Tracked</h3>"];
  [buf appendWithNSString:@"<div class=\"debug_container\">"];
  NetI2pRouterStartupRouterAppManager_toString1WithJavaLangStringBuilder_(self, buf);
  [buf appendWithNSString:@"</div>"];
  [buf appendWithNSString:@"<h3>Registered</h3>"];
  [buf appendWithNSString:@"<div class=\"debug_container\">"];
  NetI2pRouterStartupRouterAppManager_toString2WithJavaLangStringBuilder_(self, buf);
  [buf appendWithNSString:@"</div>"];
  [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[buf description]];
}

- (void)toString1WithJavaLangStringBuilder:(JavaLangStringBuilder *)buf {
  NetI2pRouterStartupRouterAppManager_toString1WithJavaLangStringBuilder_(self, buf);
}

- (void)toString2WithJavaLangStringBuilder:(JavaLangStringBuilder *)buf {
  NetI2pRouterStartupRouterAppManager_toString2WithJavaLangStringBuilder_(self, buf);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_clients_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pAppClientApp;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 11, -1, -1, -1 },
    { NULL, "V", 0x2, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 13, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(addAndStartWithNetI2pAppClientApp:withNSStringArray:);
  methods[2].selector = @selector(getClientAppWithNSString:withNSStringArray:);
  methods[3].selector = @selector(notifyWithNetI2pAppClientApp:withNetI2pAppClientAppState:withNSString:withJavaLangException:);
  methods[4].selector = @selector(register__WithNetI2pAppClientApp:);
  methods[5].selector = @selector(shutdown);
  methods[6].selector = @selector(renderStatusHTMLWithJavaIoWriter:);
  methods[7].selector = @selector(toString1WithJavaLangStringBuilder:);
  methods[8].selector = @selector(toString2WithJavaLangStringBuilder:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_clients_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 15, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "addAndStart", "LNetI2pAppClientApp;[LNSString;", "getClientApp", "LNSString;[LNSString;", "notify", "LNetI2pAppClientApp;LNetI2pAppClientAppState;LNSString;LJavaLangException;", "register", "LNetI2pAppClientApp;", "renderStatusHTML", "LJavaIoWriter;", "LJavaIoIOException;", "toString1", "LJavaLangStringBuilder;", "toString2", "Ljava/util/concurrent/ConcurrentHashMap<Lnet/i2p/app/ClientApp;[Ljava/lang/String;>;", "LNetI2pRouterStartupRouterAppManager_Shutdown;" };
  static const J2ObjcClassInfo _NetI2pRouterStartupRouterAppManager = { "RouterAppManager", "net.i2p.router.startup", ptrTable, methods, fields, 7, 0x1, 9, 3, -1, 16, -1, -1, -1 };
  return &_NetI2pRouterStartupRouterAppManager;
}

@end

void NetI2pRouterStartupRouterAppManager_initWithNetI2pRouterRouterContext_(NetI2pRouterStartupRouterAppManager *self, NetI2pRouterRouterContext *ctx) {
  NetI2pAppClientAppManagerImpl_initWithNetI2pI2PAppContext_(self, ctx);
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterStartupRouterAppManager_class_()]);
  JreStrongAssignAndConsume(&self->_clients_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(16));
  [ctx addShutdownTaskWithJavaLangRunnable:create_NetI2pRouterStartupRouterAppManager_Shutdown_initWithNetI2pRouterStartupRouterAppManager_(self)];
}

NetI2pRouterStartupRouterAppManager *new_NetI2pRouterStartupRouterAppManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupRouterAppManager, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterStartupRouterAppManager *create_NetI2pRouterStartupRouterAppManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupRouterAppManager, initWithNetI2pRouterRouterContext_, ctx)
}

void NetI2pRouterStartupRouterAppManager_toString1WithJavaLangStringBuilder_(NetI2pRouterStartupRouterAppManager *self, JavaLangStringBuilder *buf) {
  id<JavaUtilList> list = create_JavaUtilArrayList_initWithInt_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(self->_clients_)) size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([self->_clients_ entrySet])) {
    id<NetI2pAppClientApp> key = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    IOSObjectArray *val = [entry_ getValue];
    [list addWithId:JreStrcat("$$$$C$$@$", @"[<b>", [((id<NetI2pAppClientApp>) nil_chk(key)) getName], @"</b>] = [", [[key java_getClass] getName], ' ', JavaUtilArrays_toStringWithNSObjectArray_(val), @"] <i>", [key getState], @"</i><br>")];
  }
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(list, JavaTextCollator_getInstance());
  for (NSString * __strong e in list) {
    [((JavaLangStringBuilder *) nil_chk(buf)) appendWithNSString:e];
  }
}

void NetI2pRouterStartupRouterAppManager_toString2WithJavaLangStringBuilder_(NetI2pRouterStartupRouterAppManager *self, JavaLangStringBuilder *buf) {
  id<JavaUtilList> list = create_JavaUtilArrayList_initWithInt_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(self->_registered_)) size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([self->_registered_ entrySet])) {
    NSString *key = [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey];
    id<NetI2pAppClientApp> val = [entry_ getValue];
    [list addWithId:JreStrcat("$$$$$", @"[<b>", key, @"</b>] = [", [[((id<NetI2pAppClientApp>) nil_chk(val)) java_getClass] getName], @"]<br>")];
  }
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(list, JavaTextCollator_getInstance());
  for (NSString * __strong e in list) {
    [((JavaLangStringBuilder *) nil_chk(buf)) appendWithNSString:e];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupRouterAppManager)

@implementation NetI2pRouterStartupRouterAppManager_Shutdown

- (instancetype)initWithNetI2pRouterStartupRouterAppManager:(NetI2pRouterStartupRouterAppManager *)outer$ {
  NetI2pRouterStartupRouterAppManager_Shutdown_initWithNetI2pRouterStartupRouterAppManager_(self, outer$);
  return self;
}

- (void)run {
  [this$0_ shutdown];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterStartupRouterAppManager:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterStartupRouterAppManager;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterStartupRouterAppManager;" };
  static const J2ObjcClassInfo _NetI2pRouterStartupRouterAppManager_Shutdown = { "Shutdown", "net.i2p.router.startup", ptrTable, methods, fields, 7, 0x1, 2, 1, 0, -1, -1, -1, -1 };
  return &_NetI2pRouterStartupRouterAppManager_Shutdown;
}

@end

void NetI2pRouterStartupRouterAppManager_Shutdown_initWithNetI2pRouterStartupRouterAppManager_(NetI2pRouterStartupRouterAppManager_Shutdown *self, NetI2pRouterStartupRouterAppManager *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

NetI2pRouterStartupRouterAppManager_Shutdown *new_NetI2pRouterStartupRouterAppManager_Shutdown_initWithNetI2pRouterStartupRouterAppManager_(NetI2pRouterStartupRouterAppManager *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupRouterAppManager_Shutdown, initWithNetI2pRouterStartupRouterAppManager_, outer$)
}

NetI2pRouterStartupRouterAppManager_Shutdown *create_NetI2pRouterStartupRouterAppManager_Shutdown_initWithNetI2pRouterStartupRouterAppManager_(NetI2pRouterStartupRouterAppManager *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupRouterAppManager_Shutdown, initWithNetI2pRouterStartupRouterAppManager_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupRouterAppManager_Shutdown)