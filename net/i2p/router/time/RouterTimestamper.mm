//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/time/RouterTimestamper.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/Runnable.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "java/util/StringTokenizer.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/router/time/NtpClient.h"
#include "net/i2p/router/time/RouterTimestamper.h"
#include "net/i2p/router/time/Zones.h"
#include "net/i2p/time/Timestamper.h"
#include "net/i2p/util/Addresses.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/I2PThread.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pRouterTimeRouterTimestamper () {
 @public
  NetI2pI2PAppContext *_context_;
  NetI2pUtilLog *_log_;
  id<JavaUtilList> _servers_;
  id<JavaUtilList> _priorityServers_;
  id<JavaUtilList> _listeners_;
  jint _queryFrequency_;
  jint _concurringServers_;
  jint _consecutiveFails_;
  volatile_jboolean _disabled_;
  jboolean _daemon_;
  volatile_jboolean _initialized_;
  jboolean _wellSynced_;
  volatile_jboolean _isRunning_;
  JavaLangThread *_timestamperThread_;
  NetI2pRouterTimeZones *_zones_;
}

- (jboolean)queryTimeWithNSStringArray:(IOSObjectArray *)serverList
                               withInt:(jint)perServerTimeout
                           withBoolean:(jboolean)preferIPv6;

- (void)stampTimeWithLong:(jlong)now
                  withInt:(jint)stratum;

- (void)updateConfig;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _servers_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _priorityServers_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _listeners_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _timestamperThread_, JavaLangThread *)
J2OBJC_FIELD_SETTER(NetI2pRouterTimeRouterTimestamper, _zones_, NetI2pRouterTimeZones *)

inline jint NetI2pRouterTimeRouterTimestamper_get_MIN_QUERY_FREQUENCY(void);
#define NetI2pRouterTimeRouterTimestamper_MIN_QUERY_FREQUENCY 300000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, MIN_QUERY_FREQUENCY, jint)

inline jint NetI2pRouterTimeRouterTimestamper_get_DEFAULT_QUERY_FREQUENCY(void);
#define NetI2pRouterTimeRouterTimestamper_DEFAULT_QUERY_FREQUENCY 660000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, DEFAULT_QUERY_FREQUENCY, jint)

inline NSString *NetI2pRouterTimeRouterTimestamper_get_DEFAULT_SERVER_LIST(void);
static NSString *NetI2pRouterTimeRouterTimestamper_DEFAULT_SERVER_LIST = @"0.pool.ntp.org,1.pool.ntp.org,2.pool.ntp.org";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTimeRouterTimestamper, DEFAULT_SERVER_LIST, NSString *)

inline jboolean NetI2pRouterTimeRouterTimestamper_get_DEFAULT_DISABLED(void);
#define NetI2pRouterTimeRouterTimestamper_DEFAULT_DISABLED true
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, DEFAULT_DISABLED, jboolean)

inline jint NetI2pRouterTimeRouterTimestamper_get_DEFAULT_CONCURRING_SERVERS(void);
#define NetI2pRouterTimeRouterTimestamper_DEFAULT_CONCURRING_SERVERS 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, DEFAULT_CONCURRING_SERVERS, jint)

inline jint NetI2pRouterTimeRouterTimestamper_get_MAX_CONSECUTIVE_FAILS(void);
#define NetI2pRouterTimeRouterTimestamper_MAX_CONSECUTIVE_FAILS 10
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, MAX_CONSECUTIVE_FAILS, jint)

inline jint NetI2pRouterTimeRouterTimestamper_get_DEFAULT_TIMEOUT(void);
#define NetI2pRouterTimeRouterTimestamper_DEFAULT_TIMEOUT 10000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, DEFAULT_TIMEOUT, jint)

inline jint NetI2pRouterTimeRouterTimestamper_get_SHORT_TIMEOUT(void);
#define NetI2pRouterTimeRouterTimestamper_SHORT_TIMEOUT 5000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, SHORT_TIMEOUT, jint)

inline jlong NetI2pRouterTimeRouterTimestamper_get_MAX_WAIT_INITIALIZATION(void);
#define NetI2pRouterTimeRouterTimestamper_MAX_WAIT_INITIALIZATION 45000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, MAX_WAIT_INITIALIZATION, jlong)

inline jint NetI2pRouterTimeRouterTimestamper_get_MAX_VARIANCE(void);
#define NetI2pRouterTimeRouterTimestamper_MAX_VARIANCE 10000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeRouterTimestamper, MAX_VARIANCE, jint)

__attribute__((unused)) static jboolean NetI2pRouterTimeRouterTimestamper_queryTimeWithNSStringArray_withInt_withBoolean_(NetI2pRouterTimeRouterTimestamper *self, IOSObjectArray *serverList, jint perServerTimeout, jboolean preferIPv6);

__attribute__((unused)) static void NetI2pRouterTimeRouterTimestamper_stampTimeWithLong_withInt_(NetI2pRouterTimeRouterTimestamper *self, jlong now, jint stratum);

__attribute__((unused)) static void NetI2pRouterTimeRouterTimestamper_updateConfig(NetI2pRouterTimeRouterTimestamper *self);

@interface NetI2pRouterTimeRouterTimestamper_Shutdown : NSObject < JavaLangRunnable > {
 @public
  NetI2pRouterTimeRouterTimestamper *this$0_;
}

- (instancetype)initWithNetI2pRouterTimeRouterTimestamper:(NetI2pRouterTimeRouterTimestamper *)outer$;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTimeRouterTimestamper_Shutdown)

__attribute__((unused)) static void NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(NetI2pRouterTimeRouterTimestamper_Shutdown *self, NetI2pRouterTimeRouterTimestamper *outer$);

__attribute__((unused)) static NetI2pRouterTimeRouterTimestamper_Shutdown *new_NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(NetI2pRouterTimeRouterTimestamper *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTimeRouterTimestamper_Shutdown *create_NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(NetI2pRouterTimeRouterTimestamper *outer$);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTimeRouterTimestamper_Shutdown)

NSString *NetI2pRouterTimeRouterTimestamper_PROP_QUERY_FREQUENCY = @"time.queryFrequencyMs";
NSString *NetI2pRouterTimeRouterTimestamper_PROP_SERVER_LIST = @"time.sntpServerList";
NSString *NetI2pRouterTimeRouterTimestamper_PROP_DISABLED = @"time.disabled";
NSString *NetI2pRouterTimeRouterTimestamper_PROP_CONCURRING_SERVERS = @"time.concurringServers";
NSString *NetI2pRouterTimeRouterTimestamper_PROP_IP_COUNTRY = @"i2np.lastCountry";

@implementation NetI2pRouterTimeRouterTimestamper

+ (NSString *)PROP_QUERY_FREQUENCY {
  return NetI2pRouterTimeRouterTimestamper_PROP_QUERY_FREQUENCY;
}

+ (NSString *)PROP_SERVER_LIST {
  return NetI2pRouterTimeRouterTimestamper_PROP_SERVER_LIST;
}

+ (NSString *)PROP_DISABLED {
  return NetI2pRouterTimeRouterTimestamper_PROP_DISABLED;
}

+ (NSString *)PROP_CONCURRING_SERVERS {
  return NetI2pRouterTimeRouterTimestamper_PROP_CONCURRING_SERVERS;
}

+ (NSString *)PROP_IP_COUNTRY {
  return NetI2pRouterTimeRouterTimestamper_PROP_IP_COUNTRY;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_(self, ctx);
  return self;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
   withNetI2pTimeTimestamper_UpdateListener:(id<NetI2pTimeTimestamper_UpdateListener>)lsnr {
  NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_(self, ctx, lsnr);
  return self;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
   withNetI2pTimeTimestamper_UpdateListener:(id<NetI2pTimeTimestamper_UpdateListener>)lsnr
                                withBoolean:(jboolean)daemon {
  NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_(self, ctx, lsnr, daemon);
  return self;
}

- (jint)getServerCount {
  @synchronized(_servers_) {
    return [((id<JavaUtilList>) nil_chk(_servers_)) size];
  }
}

- (NSString *)getServerWithInt:(jint)index {
  @synchronized(_servers_) {
    return JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(_servers_)) getWithInt:index]);
  }
}

- (jint)getQueryFrequencyMs {
  return _queryFrequency_;
}

- (jboolean)getIsDisabled {
  return JreLoadVolatileBoolean(&_disabled_);
}

- (void)addListenerWithNetI2pTimeTimestamper_UpdateListener:(id<NetI2pTimeTimestamper_UpdateListener>)lsnr {
  [((id<JavaUtilList>) nil_chk(_listeners_)) addWithId:lsnr];
}

- (void)removeListenerWithNetI2pTimeTimestamper_UpdateListener:(id<NetI2pTimeTimestamper_UpdateListener>)lsnr {
  [((id<JavaUtilList>) nil_chk(_listeners_)) removeWithId:lsnr];
}

- (jint)getListenerCount {
  return [((id<JavaUtilList>) nil_chk(_listeners_)) size];
}

- (id<NetI2pTimeTimestamper_UpdateListener>)getListenerWithInt:(jint)index {
  return [((id<JavaUtilList>) nil_chk(_listeners_)) getWithInt:index];
}

- (void)startTimestamper {
  if (JreLoadVolatileBoolean(&_disabled_) || JreLoadVolatileBoolean(&_initialized_)) return;
  JreStrongAssignAndConsume(&_timestamperThread_, new_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_withBoolean_(self, @"Timestamper", _daemon_));
  [_timestamperThread_ setPriorityWithInt:JavaLangThread_MIN_PRIORITY];
  JreAssignVolatileBoolean(&_isRunning_, true);
  [((JavaLangThread *) nil_chk(_timestamperThread_)) start];
  [((NetI2pI2PAppContext *) nil_chk(_context_)) addShutdownTaskWithJavaLangRunnable:create_NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(self)];
}

- (void)waitForInitialization {
  @try {
    @synchronized(self) {
      if (!JreLoadVolatileBoolean(&_initialized_)) [self java_waitWithLong:NetI2pRouterTimeRouterTimestamper_MAX_WAIT_INITIALIZATION];
    }
  }
  @catch (JavaLangInterruptedException *ie) {
  }
}

- (void)timestampNow {
  if (JreLoadVolatileBoolean(&_initialized_) && JreLoadVolatileBoolean(&_isRunning_) && (!JreLoadVolatileBoolean(&_disabled_)) && _timestamperThread_ != nil) [_timestamperThread_ interrupt];
}

- (void)run {
  jboolean lastFailed = false;
  @try {
    while (JreLoadVolatileBoolean(&_isRunning_)) {
      NetI2pRouterTimeRouterTimestamper_updateConfig(self);
      jboolean preferIPv6 = NetI2pUtilAddresses_isConnectedIPv6();
      if (!JreLoadVolatileBoolean(&_disabled_)) {
        if (_priorityServers_ != nil) {
          for (id<JavaUtilList> __strong servers in _priorityServers_) {
            if (_log_ != nil && [_log_ shouldDebug]) [_log_ debugWithNSString:JreStrcat("$@", @"Querying servers ", servers)];
            @try {
              lastFailed = !NetI2pRouterTimeRouterTimestamper_queryTimeWithNSStringArray_withInt_withBoolean_(self, [((id<JavaUtilList>) nil_chk(servers)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[servers size] type:NSString_class_()]], NetI2pRouterTimeRouterTimestamper_SHORT_TIMEOUT, preferIPv6);
            }
            @catch (JavaLangIllegalArgumentException *iae) {
              if (!lastFailed && _log_ != nil && [_log_ shouldWarn]) [_log_ warnWithNSString:JreStrcat("$@", @"Unable to reach any regional NTP servers: ", servers)];
              lastFailed = true;
            }
            if (!lastFailed) break;
          }
        }
        if (_priorityServers_ == nil || lastFailed) {
          if (_log_ != nil && [_log_ shouldDebug]) [_log_ debugWithNSString:JreStrcat("$@", @"Querying servers ", _servers_)];
          @try {
            jboolean prefIPv6 = preferIPv6 && !lastFailed && _log_ != nil && [((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) random])) nextIntWithInt:4] != 0;
            lastFailed = !NetI2pRouterTimeRouterTimestamper_queryTimeWithNSStringArray_withInt_withBoolean_(self, [((id<JavaUtilList>) nil_chk(_servers_)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[_servers_ size] type:NSString_class_()]], NetI2pRouterTimeRouterTimestamper_DEFAULT_TIMEOUT, prefIPv6);
          }
          @catch (JavaLangIllegalArgumentException *iae) {
            lastFailed = true;
          }
        }
      }
      jboolean wasInitialized;
      @synchronized(self) {
        wasInitialized = JreLoadVolatileBoolean(&_initialized_);
        if (!wasInitialized) JreAssignVolatileBoolean(&_initialized_, true);
        [self java_notifyAll];
      }
      if (!wasInitialized) {
        @try {
          JavaLangThread_sleepWithLong_(10 * 1000);
        }
        @catch (JavaLangInterruptedException *ie) {
        }
        JreStrongAssign(&_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:NetI2pRouterTimeRouterTimestamper_class_()]);
        if (lastFailed) {
          id<JavaUtilList> all = create_JavaUtilArrayList_initWithInt_(9);
          if (_priorityServers_ != nil) {
            for (id<JavaUtilList> __strong servers in _priorityServers_) {
              [all addAllWithJavaUtilCollection:servers];
            }
          }
          [all addAllWithJavaUtilCollection:_servers_];
          NSString *msg = JreStrcat("$@$", @"Unable to reach any of the NTP servers ", all, @" - network disconnected? Or set time.sntpServerList=myserver1.com,myserver2.com in advanced configuration.");
          [((NetI2pUtilLog *) nil_chk(_log_)) logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:msg];
          [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Warning: ", msg)];
        }
        else if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldDebug]) {
          [((NetI2pUtilLog *) nil_chk(_log_)) debugWithNSString:@"NTP initialization successful"];
          jint i = 1;
          if (_priorityServers_ != nil) {
            for (id<JavaUtilList> __strong servers in _priorityServers_) {
              [((NetI2pUtilLog *) nil_chk(_log_)) debugWithNSString:JreStrcat("$I$@", @"NTP Server list ", (i++), @": ", servers)];
            }
          }
          [((NetI2pUtilLog *) nil_chk(_log_)) debugWithNSString:JreStrcat("$I$@", @"NTP Server list ", i, @": ", _servers_)];
        }
      }
      jlong sleepTime;
      if (lastFailed) {
        if (++_consecutiveFails_ >= NetI2pRouterTimeRouterTimestamper_MAX_CONSECUTIVE_FAILS) sleepTime = 30 * 60 * 1000;
        else sleepTime = 30 * 1000;
      }
      else {
        _consecutiveFails_ = 0;
        sleepTime = [((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) random])) nextIntWithInt:_queryFrequency_ / 2] + _queryFrequency_;
        if (_wellSynced_) sleepTime *= 3;
      }
      @try {
        JavaLangThread_sleepWithLong_(sleepTime);
      }
      @catch (JavaLangInterruptedException *ie) {
      }
    }
  }
  @catch (JavaLangThrowable *t) {
    @synchronized(self) {
      [self java_notifyAll];
    }
    if (_log_ != nil) [_log_ logWithInt:NetI2pUtilLog_CRIT withNSString:@"Timestamper died!" withJavaLangThrowable:t];
    [t printStackTrace];
  }
}

- (jboolean)queryTimeWithNSStringArray:(IOSObjectArray *)serverList
                               withInt:(jint)perServerTimeout
                           withBoolean:(jboolean)preferIPv6 {
  return NetI2pRouterTimeRouterTimestamper_queryTimeWithNSStringArray_withInt_withBoolean_(self, serverList, perServerTimeout, preferIPv6);
}

- (void)stampTimeWithLong:(jlong)now
                  withInt:(jint)stratum {
  NetI2pRouterTimeRouterTimestamper_stampTimeWithLong_withInt_(self, now, stratum);
}

- (void)updateConfig {
  NetI2pRouterTimeRouterTimestamper_updateConfig(self);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_servers_);
  RELEASE_(_priorityServers_);
  RELEASE_(_listeners_);
  RELEASE_(_timestamperThread_);
  RELEASE_(_zones_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pTimeTimestamper_UpdateListener;", 0x1, 8, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 9, 10, 11, -1, -1, -1 },
    { NULL, "V", 0x2, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:withNetI2pTimeTimestamper_UpdateListener:);
  methods[2].selector = @selector(initWithNetI2pI2PAppContext:withNetI2pTimeTimestamper_UpdateListener:withBoolean:);
  methods[3].selector = @selector(getServerCount);
  methods[4].selector = @selector(getServerWithInt:);
  methods[5].selector = @selector(getQueryFrequencyMs);
  methods[6].selector = @selector(getIsDisabled);
  methods[7].selector = @selector(addListenerWithNetI2pTimeTimestamper_UpdateListener:);
  methods[8].selector = @selector(removeListenerWithNetI2pTimeTimestamper_UpdateListener:);
  methods[9].selector = @selector(getListenerCount);
  methods[10].selector = @selector(getListenerWithInt:);
  methods[11].selector = @selector(startTimestamper);
  methods[12].selector = @selector(waitForInitialization);
  methods[13].selector = @selector(timestampNow);
  methods[14].selector = @selector(run);
  methods[15].selector = @selector(queryTimeWithNSStringArray:withInt:withBoolean:);
  methods[16].selector = @selector(stampTimeWithLong:withInt:);
  methods[17].selector = @selector(updateConfig);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_servers_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 14, -1 },
    { "_priorityServers_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 15, -1 },
    { "_listeners_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 16, -1 },
    { "_queryFrequency_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_concurringServers_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_consecutiveFails_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_disabled_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_daemon_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_initialized_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_wellSynced_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_isRunning_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_timestamperThread_", "LJavaLangThread;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_zones_", "LNetI2pRouterTimeZones;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "MIN_QUERY_FREQUENCY", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_MIN_QUERY_FREQUENCY, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_QUERY_FREQUENCY", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_DEFAULT_QUERY_FREQUENCY, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_SERVER_LIST", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "DEFAULT_DISABLED", "Z", .constantValue.asBOOL = NetI2pRouterTimeRouterTimestamper_DEFAULT_DISABLED, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_CONCURRING_SERVERS", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_DEFAULT_CONCURRING_SERVERS, 0x1a, -1, -1, -1, -1 },
    { "MAX_CONSECUTIVE_FAILS", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_MAX_CONSECUTIVE_FAILS, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_TIMEOUT", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_DEFAULT_TIMEOUT, 0x1a, -1, -1, -1, -1 },
    { "SHORT_TIMEOUT", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_SHORT_TIMEOUT, 0x1a, -1, -1, -1, -1 },
    { "MAX_WAIT_INITIALIZATION", "J", .constantValue.asLong = NetI2pRouterTimeRouterTimestamper_MAX_WAIT_INITIALIZATION, 0x1a, -1, -1, -1, -1 },
    { "PROP_QUERY_FREQUENCY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "PROP_SERVER_LIST", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "PROP_DISABLED", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "PROP_CONCURRING_SERVERS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "PROP_IP_COUNTRY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "MAX_VARIANCE", "I", .constantValue.asInt = NetI2pRouterTimeRouterTimestamper_MAX_VARIANCE, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "LNetI2pI2PAppContext;LNetI2pTimeTimestamper_UpdateListener;", "LNetI2pI2PAppContext;LNetI2pTimeTimestamper_UpdateListener;Z", "getServer", "I", "addListener", "LNetI2pTimeTimestamper_UpdateListener;", "removeListener", "getListener", "queryTime", "[LNSString;IZ", "LJavaLangIllegalArgumentException;", "stampTime", "JI", "Ljava/util/List<Ljava/lang/String;>;", "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;", "Ljava/util/List<Lnet/i2p/time/Timestamper$UpdateListener;>;", &NetI2pRouterTimeRouterTimestamper_DEFAULT_SERVER_LIST, &NetI2pRouterTimeRouterTimestamper_PROP_QUERY_FREQUENCY, &NetI2pRouterTimeRouterTimestamper_PROP_SERVER_LIST, &NetI2pRouterTimeRouterTimestamper_PROP_DISABLED, &NetI2pRouterTimeRouterTimestamper_PROP_CONCURRING_SERVERS, &NetI2pRouterTimeRouterTimestamper_PROP_IP_COUNTRY, "LNetI2pRouterTimeRouterTimestamper_Shutdown;" };
  static const J2ObjcClassInfo _NetI2pRouterTimeRouterTimestamper = { "RouterTimestamper", "net.i2p.router.time", ptrTable, methods, fields, 7, 0x1, 18, 30, -1, 23, -1, -1, -1 };
  return &_NetI2pRouterTimeRouterTimestamper;
}

@end

void NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_(NetI2pRouterTimeRouterTimestamper *self, NetI2pI2PAppContext *ctx) {
  NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_(self, ctx, nil, true);
}

NetI2pRouterTimeRouterTimestamper *new_NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTimeRouterTimestamper, initWithNetI2pI2PAppContext_, ctx)
}

NetI2pRouterTimeRouterTimestamper *create_NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTimeRouterTimestamper, initWithNetI2pI2PAppContext_, ctx)
}

void NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_(NetI2pRouterTimeRouterTimestamper *self, NetI2pI2PAppContext *ctx, id<NetI2pTimeTimestamper_UpdateListener> lsnr) {
  NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_(self, ctx, lsnr, true);
}

NetI2pRouterTimeRouterTimestamper *new_NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_(NetI2pI2PAppContext *ctx, id<NetI2pTimeTimestamper_UpdateListener> lsnr) {
  J2OBJC_NEW_IMPL(NetI2pRouterTimeRouterTimestamper, initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_, ctx, lsnr)
}

NetI2pRouterTimeRouterTimestamper *create_NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_(NetI2pI2PAppContext *ctx, id<NetI2pTimeTimestamper_UpdateListener> lsnr) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTimeRouterTimestamper, initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_, ctx, lsnr)
}

void NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_(NetI2pRouterTimeRouterTimestamper *self, NetI2pI2PAppContext *ctx, id<NetI2pTimeTimestamper_UpdateListener> lsnr, jboolean daemon) {
  NetI2pTimeTimestamper_init(self);
  JreStrongAssignAndConsume(&self->_servers_, new_JavaUtilArrayList_initWithInt_(3));
  JreStrongAssignAndConsume(&self->_listeners_, new_JavaUtilConcurrentCopyOnWriteArrayList_init());
  JreStrongAssign(&self->_context_, ctx);
  self->_daemon_ = daemon;
  JreAssignVolatileBoolean(&self->_disabled_, [((NetI2pI2PAppContext *) nil_chk(ctx)) getPropertyWithNSString:NetI2pRouterTimeRouterTimestamper_PROP_DISABLED withBoolean:NetI2pRouterTimeRouterTimestamper_DEFAULT_DISABLED]);
  if (JreLoadVolatileBoolean(&self->_disabled_)) {
    JreAssignVolatileBoolean(&self->_initialized_, true);
    JreStrongAssign(&self->_zones_, nil);
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Warning: NTP is disabled"];
    return;
  }
  if (lsnr != nil) [self->_listeners_ addWithId:lsnr];
  JreStrongAssignAndConsume(&self->_zones_, new_NetI2pRouterTimeZones_initWithNetI2pI2PAppContext_(ctx));
  NetI2pRouterTimeRouterTimestamper_updateConfig(self);
}

NetI2pRouterTimeRouterTimestamper *new_NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_(NetI2pI2PAppContext *ctx, id<NetI2pTimeTimestamper_UpdateListener> lsnr, jboolean daemon) {
  J2OBJC_NEW_IMPL(NetI2pRouterTimeRouterTimestamper, initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_, ctx, lsnr, daemon)
}

NetI2pRouterTimeRouterTimestamper *create_NetI2pRouterTimeRouterTimestamper_initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_(NetI2pI2PAppContext *ctx, id<NetI2pTimeTimestamper_UpdateListener> lsnr, jboolean daemon) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTimeRouterTimestamper, initWithNetI2pI2PAppContext_withNetI2pTimeTimestamper_UpdateListener_withBoolean_, ctx, lsnr, daemon)
}

jboolean NetI2pRouterTimeRouterTimestamper_queryTimeWithNSStringArray_withInt_withBoolean_(NetI2pRouterTimeRouterTimestamper *self, IOSObjectArray *serverList, jint perServerTimeout, jboolean preferIPv6) {
  IOSLongArray *found = [IOSLongArray arrayWithLength:self->_concurringServers_];
  jlong now = -1;
  jint stratum = -1;
  jlong expectedDelta = 0;
  self->_wellSynced_ = false;
  for (jint i = 0; i < self->_concurringServers_; i++) {
    IOSLongArray *timeAndStratum = NetI2pRouterTimeNtpClient_currentTimeAndStratumWithNSStringArray_withInt_withBoolean_withNetI2pUtilLog_(serverList, perServerTimeout, preferIPv6, self->_log_);
    now = IOSLongArray_Get(nil_chk(timeAndStratum), 0);
    stratum = (jint) IOSLongArray_Get(timeAndStratum, 1);
    jlong delta = now - [((NetI2pUtilClock *) nil_chk([((NetI2pI2PAppContext *) nil_chk(self->_context_)) clock])) now];
    *IOSLongArray_GetRef(found, i) = delta;
    if (i == 0) {
      if (JavaLangMath_absWithLong_(delta) < NetI2pRouterTimeRouterTimestamper_MAX_VARIANCE) {
        if (self->_log_ != nil && [self->_log_ shouldInfo]) [self->_log_ infoWithNSString:JreStrcat("$J$", @"a single SNTP query was within the tolerance (", delta, @"ms)")];
        self->_wellSynced_ = (JavaLangMath_absWithLong_(delta) < 500);
        break;
      }
      else {
        expectedDelta = delta;
      }
    }
    else {
      if (JavaLangMath_absWithLong_(delta - expectedDelta) > NetI2pRouterTimeRouterTimestamper_MAX_VARIANCE) {
        if (self->_log_ != nil && [self->_log_ shouldError]) {
          JavaLangStringBuilder *err = create_JavaLangStringBuilder_initWithInt_(96);
          [((JavaLangStringBuilder *) nil_chk([err appendWithNSString:@"SNTP client variance exceeded at query "])) appendWithInt:i];
          [err appendWithNSString:@".  expected = "];
          [err appendWithLong:expectedDelta];
          [err appendWithNSString:@", found = "];
          [err appendWithLong:delta];
          [err appendWithNSString:@" all deltas: "];
          for (jint j = 0; j < found->size_; j++) [((JavaLangStringBuilder *) nil_chk([err appendWithLong:IOSLongArray_Get(found, j)])) appendWithChar:' '];
          [((NetI2pUtilLog *) nil_chk(self->_log_)) errorWithNSString:[err description]];
        }
        return false;
      }
    }
  }
  NetI2pRouterTimeRouterTimestamper_stampTimeWithLong_withInt_(self, now, stratum);
  if (self->_log_ != nil && [self->_log_ shouldDebug]) {
    JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(64);
    [buf appendWithNSString:@"Deltas: "];
    for (jint i = 0; i < found->size_; i++) [((JavaLangStringBuilder *) nil_chk([buf appendWithLong:IOSLongArray_Get(found, i)])) appendWithChar:' '];
    [((NetI2pUtilLog *) nil_chk(self->_log_)) debugWithNSString:[buf description]];
  }
  return true;
}

void NetI2pRouterTimeRouterTimestamper_stampTimeWithLong_withInt_(NetI2pRouterTimeRouterTimestamper *self, jlong now, jint stratum) {
  jlong before = [((NetI2pUtilClock *) nil_chk([((NetI2pI2PAppContext *) nil_chk(self->_context_)) clock])) now];
  for (id<NetI2pTimeTimestamper_UpdateListener> __strong lsnr in nil_chk(self->_listeners_)) {
    [((id<NetI2pTimeTimestamper_UpdateListener>) nil_chk(lsnr)) setNowWithLong:now withInt:stratum];
  }
  if (self->_log_ != nil && [self->_log_ shouldDebug]) [self->_log_ debugWithNSString:JreStrcat("$J$JC", @"Stamped the time as ", now, @" (delta=", (now - before), ')')];
}

void NetI2pRouterTimeRouterTimestamper_updateConfig(NetI2pRouterTimeRouterTimestamper *self) {
  NSString *serverList = [((NetI2pI2PAppContext *) nil_chk(self->_context_)) getPropertyWithNSString:NetI2pRouterTimeRouterTimestamper_PROP_SERVER_LIST];
  if ((serverList == nil) || ([((NSString *) nil_chk([((NSString *) nil_chk(serverList)) java_trim])) java_length] <= 0)) {
    serverList = NetI2pRouterTimeRouterTimestamper_DEFAULT_SERVER_LIST;
    NSString *country = [self->_context_ getPropertyWithNSString:NetI2pRouterTimeRouterTimestamper_PROP_IP_COUNTRY];
    if (country == nil) {
      country = [((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) getCountry];
      if (country != nil) country = [country java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
    }
    if (country != nil && [country java_length] > 0 && ![country isEqual:@"a1"] && ![country isEqual:@"a2"]) {
      JreStrongAssignAndConsume(&self->_priorityServers_, new_JavaUtilArrayList_initWithInt_(2));
      id<JavaUtilList> p1 = create_JavaUtilArrayList_initWithInt_(3);
      for (jint i = 0; i < 3; i++) {
        [p1 addWithId:JreStrcat("IC$$", i, '.', country, @".pool.ntp.org")];
      }
      [((id<JavaUtilList>) nil_chk(self->_priorityServers_)) addWithId:p1];
      NSString *zone = [((NetI2pRouterTimeZones *) nil_chk(self->_zones_)) getZoneWithNSString:country];
      if (zone != nil) {
        id<JavaUtilList> p2 = create_JavaUtilArrayList_initWithInt_(3);
        for (jint i = 0; i < 3; i++) {
          [p2 addWithId:JreStrcat("IC$$", i, '.', zone, @".pool.ntp.org")];
        }
        [((id<JavaUtilList>) nil_chk(self->_priorityServers_)) addWithId:p2];
      }
    }
    else {
      JreStrongAssign(&self->_priorityServers_, nil);
    }
  }
  else {
    JreStrongAssign(&self->_priorityServers_, nil);
  }
  [((id<JavaUtilList>) nil_chk(self->_servers_)) clear];
  JavaUtilStringTokenizer *tok = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(serverList, @", ");
  while ([tok hasMoreTokens]) {
    NSString *val = [tok nextToken];
    val = [((NSString *) nil_chk(val)) java_trim];
    if ([((NSString *) nil_chk(val)) java_length] > 0) [self->_servers_ addWithId:val];
  }
  self->_queryFrequency_ = JavaLangMath_maxWithInt_withInt_(NetI2pRouterTimeRouterTimestamper_MIN_QUERY_FREQUENCY, [self->_context_ getPropertyWithNSString:NetI2pRouterTimeRouterTimestamper_PROP_QUERY_FREQUENCY withInt:NetI2pRouterTimeRouterTimestamper_DEFAULT_QUERY_FREQUENCY]);
  JreAssignVolatileBoolean(&self->_disabled_, [self->_context_ getPropertyWithNSString:NetI2pRouterTimeRouterTimestamper_PROP_DISABLED withBoolean:NetI2pRouterTimeRouterTimestamper_DEFAULT_DISABLED]);
  self->_concurringServers_ = JavaLangMath_minWithInt_withInt_(4, JavaLangMath_maxWithInt_withInt_(1, [self->_context_ getPropertyWithNSString:NetI2pRouterTimeRouterTimestamper_PROP_CONCURRING_SERVERS withInt:NetI2pRouterTimeRouterTimestamper_DEFAULT_CONCURRING_SERVERS]));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTimeRouterTimestamper)

@implementation NetI2pRouterTimeRouterTimestamper_Shutdown

- (instancetype)initWithNetI2pRouterTimeRouterTimestamper:(NetI2pRouterTimeRouterTimestamper *)outer$ {
  NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(self, outer$);
  return self;
}

- (void)run {
  JreAssignVolatileBoolean(&this$0_->_isRunning_, false);
  if (this$0_->_timestamperThread_ != nil) [this$0_->_timestamperThread_ interrupt];
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
  methods[0].selector = @selector(initWithNetI2pRouterTimeRouterTimestamper:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterTimeRouterTimestamper;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterTimeRouterTimestamper;" };
  static const J2ObjcClassInfo _NetI2pRouterTimeRouterTimestamper_Shutdown = { "Shutdown", "net.i2p.router.time", ptrTable, methods, fields, 7, 0x2, 2, 1, 0, -1, -1, -1, -1 };
  return &_NetI2pRouterTimeRouterTimestamper_Shutdown;
}

@end

void NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(NetI2pRouterTimeRouterTimestamper_Shutdown *self, NetI2pRouterTimeRouterTimestamper *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

NetI2pRouterTimeRouterTimestamper_Shutdown *new_NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(NetI2pRouterTimeRouterTimestamper *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterTimeRouterTimestamper_Shutdown, initWithNetI2pRouterTimeRouterTimestamper_, outer$)
}

NetI2pRouterTimeRouterTimestamper_Shutdown *create_NetI2pRouterTimeRouterTimestamper_Shutdown_initWithNetI2pRouterTimeRouterTimestamper_(NetI2pRouterTimeRouterTimestamper *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTimeRouterTimestamper_Shutdown, initWithNetI2pRouterTimeRouterTimestamper_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTimeRouterTimestamper_Shutdown)
