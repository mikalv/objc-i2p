//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/SocketTimeout.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Runnable.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/net/Socket.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"
#include "net/i2p/util/SimpleTimer2.h"
#include "net/i2p/util/SocketTimeout.h"

@interface NetI2pUtilSocketTimeout () {
 @public
  volatile_id _targetSocket_;
  jlong _startTime_;
  volatile_jlong _inactivityDelay_;
  volatile_jlong _lastActivity_;
  volatile_jlong _totalTimeoutTime_;
  volatile_jboolean _cancelled_;
  volatile_id _command_;
}

+ (NSString *)tsWithLong:(jlong)when;

@end

J2OBJC_VOLATILE_FIELD_SETTER(NetI2pUtilSocketTimeout, _targetSocket_, JavaNetSocket *)
J2OBJC_VOLATILE_FIELD_SETTER(NetI2pUtilSocketTimeout, _command_, id<JavaLangRunnable>)

inline JavaTextSimpleDateFormat *NetI2pUtilSocketTimeout_get__fmt(void);
static JavaTextSimpleDateFormat *NetI2pUtilSocketTimeout__fmt;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilSocketTimeout, _fmt, JavaTextSimpleDateFormat *)

__attribute__((unused)) static NSString *NetI2pUtilSocketTimeout_tsWithLong_(jlong when);

J2OBJC_INITIALIZED_DEFN(NetI2pUtilSocketTimeout)

@implementation NetI2pUtilSocketTimeout

- (instancetype)initWithLong:(jlong)delay {
  NetI2pUtilSocketTimeout_initWithLong_(self, delay);
  return self;
}

- (instancetype)initWithJavaNetSocket:(JavaNetSocket *)socket
                             withLong:(jlong)delay {
  NetI2pUtilSocketTimeout_initWithJavaNetSocket_withLong_(self, socket, delay);
  return self;
}

- (void)timeReached {
  if (JreLoadVolatileBoolean(&_cancelled_)) return;
  if (((JreLoadVolatileLong(&_totalTimeoutTime_) > 0) && (JreLoadVolatileLong(&_totalTimeoutTime_) <= JavaLangSystem_currentTimeMillis())) || (JreLoadVolatileLong(&_inactivityDelay_) + JreLoadVolatileLong(&_lastActivity_) <= JavaLangSystem_currentTimeMillis())) {
    if (JreLoadVolatileId(&_targetSocket_) != nil) {
      @try {
        if (![((JavaNetSocket *) nil_chk(JreLoadVolatileId(&_targetSocket_))) isClosed]) [((JavaNetSocket *) nil_chk(JreLoadVolatileId(&_targetSocket_))) close];
      }
      @catch (JavaIoIOException *ioe) {
      }
    }
    if (JreLoadVolatileId(&_command_) != nil) [((id<JavaLangRunnable>) nil_chk(JreLoadVolatileId(&_command_))) run];
  }
  else {
    [self scheduleWithLong:JreLoadVolatileLong(&_inactivityDelay_)];
  }
}

- (jboolean)cancel {
  JreAssignVolatileBoolean(&_cancelled_, true);
  return [super cancel];
}

- (void)setSocketWithJavaNetSocket:(JavaNetSocket *)s {
  JreVolatileStrongAssign(&_targetSocket_, s);
}

- (void)resetTimer {
  JreAssignVolatileLong(&_lastActivity_, JavaLangSystem_currentTimeMillis());
}

- (void)setInactivityTimeoutWithLong:(jlong)timeout {
  JreAssignVolatileLong(&_inactivityDelay_, timeout);
}

- (void)setTotalTimeoutPeriodWithLong:(jlong)timeoutPeriod {
  if (timeoutPeriod > 0) JreAssignVolatileLong(&_totalTimeoutTime_, _startTime_ + timeoutPeriod);
  else JreAssignVolatileLong(&_totalTimeoutTime_, -1);
}

- (void)setTimeoutCommandWithJavaLangRunnable:(id<JavaLangRunnable>)job {
  JreVolatileStrongAssign(&_command_, job);
}

+ (NSString *)tsWithLong:(jlong)when {
  return NetI2pUtilSocketTimeout_tsWithLong_(when);
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"SocketTimeout started on "];
  [buf appendWithNSString:NetI2pUtilSocketTimeout_tsWithLong_(_startTime_)];
  [buf appendWithNSString:@" idle for "];
  [buf appendWithLong:JavaLangSystem_currentTimeMillis() - JreLoadVolatileLong(&_lastActivity_)];
  [buf appendWithNSString:@"ms "];
  if (JreLoadVolatileLong(&_totalTimeoutTime_) > 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"total timeout at "])) appendWithNSString:NetI2pUtilSocketTimeout_tsWithLong_(JreLoadVolatileLong(&_totalTimeoutTime_))];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"cancelled? "])) appendWithBoolean:JreLoadVolatileBoolean(&_cancelled_)];
  return [buf description];
}

- (void)__javaClone:(NetI2pUtilSocketTimeout *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&_targetSocket_, &original->_targetSocket_);
  JreCloneVolatileStrong(&_command_, &original->_command_);
}

- (void)dealloc {
  JreReleaseVolatile(&_targetSocket_);
  JreReleaseVolatile(&_command_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 8, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithLong:);
  methods[1].selector = @selector(initWithJavaNetSocket:withLong:);
  methods[2].selector = @selector(timeReached);
  methods[3].selector = @selector(cancel);
  methods[4].selector = @selector(setSocketWithJavaNetSocket:);
  methods[5].selector = @selector(resetTimer);
  methods[6].selector = @selector(setInactivityTimeoutWithLong:);
  methods[7].selector = @selector(setTotalTimeoutPeriodWithLong:);
  methods[8].selector = @selector(setTimeoutCommandWithJavaLangRunnable:);
  methods[9].selector = @selector(tsWithLong:);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_targetSocket_", "LJavaNetSocket;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_startTime_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_inactivityDelay_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_lastActivity_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_totalTimeoutTime_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_cancelled_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_command_", "LJavaLangRunnable;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_fmt", "LJavaTextSimpleDateFormat;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "J", "LJavaNetSocket;J", "setSocket", "LJavaNetSocket;", "setInactivityTimeout", "setTotalTimeoutPeriod", "setTimeoutCommand", "LJavaLangRunnable;", "ts", "toString", &NetI2pUtilSocketTimeout__fmt };
  static const J2ObjcClassInfo _NetI2pUtilSocketTimeout = { "SocketTimeout", "net.i2p.util", ptrTable, methods, fields, 7, 0x1, 11, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilSocketTimeout;
}

+ (void)initialize {
  if (self == [NetI2pUtilSocketTimeout class]) {
    JreStrongAssignAndConsume(&NetI2pUtilSocketTimeout__fmt, new_JavaTextSimpleDateFormat_initWithNSString_(@"yyyy/MM/dd hh:mm:ss.SSS"));
    J2OBJC_SET_INITIALIZED(NetI2pUtilSocketTimeout)
  }
}

@end

void NetI2pUtilSocketTimeout_initWithLong_(NetI2pUtilSocketTimeout *self, jlong delay) {
  NetI2pUtilSocketTimeout_initWithJavaNetSocket_withLong_(self, nil, delay);
}

NetI2pUtilSocketTimeout *new_NetI2pUtilSocketTimeout_initWithLong_(jlong delay) {
  J2OBJC_NEW_IMPL(NetI2pUtilSocketTimeout, initWithLong_, delay)
}

NetI2pUtilSocketTimeout *create_NetI2pUtilSocketTimeout_initWithLong_(jlong delay) {
  J2OBJC_CREATE_IMPL(NetI2pUtilSocketTimeout, initWithLong_, delay)
}

void NetI2pUtilSocketTimeout_initWithJavaNetSocket_withLong_(NetI2pUtilSocketTimeout *self, JavaNetSocket *socket, jlong delay) {
  NetI2pUtilSimpleTimer2_TimedEvent_initWithNetI2pUtilSimpleTimer2_(self, NetI2pUtilSimpleTimer2_getInstance());
  JreAssignVolatileLong(&self->_inactivityDelay_, delay);
  JreVolatileStrongAssign(&self->_targetSocket_, socket);
  JreAssignVolatileBoolean(&self->_cancelled_, false);
  JreAssignVolatileLong(&self->_lastActivity_, self->_startTime_ = JavaLangSystem_currentTimeMillis());
  JreAssignVolatileLong(&self->_totalTimeoutTime_, -1);
  [self scheduleWithLong:delay];
}

NetI2pUtilSocketTimeout *new_NetI2pUtilSocketTimeout_initWithJavaNetSocket_withLong_(JavaNetSocket *socket, jlong delay) {
  J2OBJC_NEW_IMPL(NetI2pUtilSocketTimeout, initWithJavaNetSocket_withLong_, socket, delay)
}

NetI2pUtilSocketTimeout *create_NetI2pUtilSocketTimeout_initWithJavaNetSocket_withLong_(JavaNetSocket *socket, jlong delay) {
  J2OBJC_CREATE_IMPL(NetI2pUtilSocketTimeout, initWithJavaNetSocket_withLong_, socket, delay)
}

NSString *NetI2pUtilSocketTimeout_tsWithLong_(jlong when) {
  NetI2pUtilSocketTimeout_initialize();
  @synchronized(NetI2pUtilSocketTimeout__fmt) {
    return JreRetainedLocalValue([((JavaTextSimpleDateFormat *) nil_chk(NetI2pUtilSocketTimeout__fmt)) formatWithJavaUtilDate:create_JavaUtilDate_initWithLong_(when)]);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilSocketTimeout)
