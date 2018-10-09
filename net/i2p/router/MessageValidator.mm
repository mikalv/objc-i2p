//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/MessageValidator.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "net/i2p/router/MessageValidator.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/util/DecayingBloomFilter.h"
#include "net/i2p/router/util/DecayingHashSet.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterMessageValidator () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterRouterContext *_context_;
  NetI2pRouterUtilDecayingBloomFilter *_filter_;
}

- (jboolean)noteReceptionWithLong:(jlong)messageId
                         withLong:(jlong)messageExpiration;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterMessageValidator, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageValidator, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageValidator, _filter_, NetI2pRouterUtilDecayingBloomFilter *)

inline jlong NetI2pRouterMessageValidator_get_TIME_MASK(void);
#define NetI2pRouterMessageValidator_TIME_MASK -1024LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterMessageValidator, TIME_MASK, jlong)

__attribute__((unused)) static jboolean NetI2pRouterMessageValidator_noteReceptionWithLong_withLong_(NetI2pRouterMessageValidator *self, jlong messageId, jlong messageExpiration);

@implementation NetI2pRouterMessageValidator

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context {
  NetI2pRouterMessageValidator_initWithNetI2pRouterRouterContext_(self, context);
  return self;
}

- (NSString *)validateMessageWithLong:(jlong)messageId
                             withLong:(jlong)expiration {
  NSString *msg = [self validateMessageWithLong:expiration];
  if (msg != nil) return msg;
  jboolean isDuplicate = NetI2pRouterMessageValidator_noteReceptionWithLong_withLong_(self, messageId, expiration);
  if (isDuplicate) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$J$", @"Rejecting message ", messageId, @" because it is a duplicate") withJavaLangThrowable:create_JavaLangException_initWithNSString_(@"Duplicate origin")];
    [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"router.duplicateMessageId" withLong:1];
    return @"duplicate";
  }
  else {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$J$", @"Accepting message ", messageId, @" because it is NOT a duplicate") withJavaLangThrowable:create_JavaLangException_initWithNSString_(@"Original origin")];
    return nil;
  }
}

- (NSString *)validateMessageWithLong:(jlong)expiration {
  jlong now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now];
  if (now - (NetI2pRouterRouter_CLOCK_FUDGE_FACTOR * 3 / 2) >= expiration) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$J$", @"Rejecting message because it expired ", (now - expiration), @"ms ago")];
    [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"router.invalidMessageTime" withLong:(now - expiration)];
    return JreStrcat("$J$", @"expired ", (now - expiration), @"ms ago");
  }
  else if (now + 4 * NetI2pRouterRouter_CLOCK_FUDGE_FACTOR < expiration) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$J$", @"Rejecting message because it will expire too far in the future (", (expiration - now), @"ms)")];
    [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"router.invalidMessageTime" withLong:(now - expiration)];
    return JreStrcat("$J$", @"expire too far in the future (", (expiration - now), @"ms)");
  }
  return nil;
}

- (jboolean)noteReceptionWithLong:(jlong)messageId
                         withLong:(jlong)messageExpiration {
  return NetI2pRouterMessageValidator_noteReceptionWithLong_withLong_(self, messageId, messageExpiration);
}

- (void)startup {
  @synchronized(self) {
    JreStrongAssignAndConsume(&_filter_, new_NetI2pRouterUtilDecayingHashSet_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_(_context_, (jint) NetI2pRouterRouter_CLOCK_FUDGE_FACTOR * 2, 8, @"RouterMV"));
  }
}

- (void)shutdown {
  @synchronized(self) {
    [((NetI2pRouterUtilDecayingBloomFilter *) nil_chk(_filter_)) stopDecaying];
  }
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_context_);
  RELEASE_(_filter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 4, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(validateMessageWithLong:withLong:);
  methods[2].selector = @selector(validateMessageWithLong:);
  methods[3].selector = @selector(noteReceptionWithLong:withLong:);
  methods[4].selector = @selector(startup);
  methods[5].selector = @selector(shutdown);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_filter_", "LNetI2pRouterUtilDecayingBloomFilter;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "TIME_MASK", "J", .constantValue.asLong = NetI2pRouterMessageValidator_TIME_MASK, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "validateMessage", "JJ", "J", "noteReception" };
  static const J2ObjcClassInfo _NetI2pRouterMessageValidator = { "MessageValidator", "net.i2p.router", ptrTable, methods, fields, 7, 0x1, 6, 4, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterMessageValidator;
}

@end

void NetI2pRouterMessageValidator_initWithNetI2pRouterRouterContext_(NetI2pRouterMessageValidator *self, NetI2pRouterRouterContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pRouterMessageValidator_class_()]);
  JreStrongAssign(&self->_context_, context);
  [((NetI2pStatStatManager *) nil_chk([context statManager])) createRateStatWithNSString:@"router.duplicateMessageId" withNSString:@"Note that a duplicate messageId was received" withNSString:@"Router" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 10 * 60 * 1000l, 60 * 60 * 1000l, 3 * 60 * 60 * 1000l, 24 * 60 * 60 * 1000l } count:4]];
  [((NetI2pStatStatManager *) nil_chk([context statManager])) createRateStatWithNSString:@"router.invalidMessageTime" withNSString:@"Note that a message outside the valid range was received" withNSString:@"Router" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 10 * 60 * 1000l, 60 * 60 * 1000l, 3 * 60 * 60 * 1000l, 24 * 60 * 60 * 1000l } count:4]];
}

NetI2pRouterMessageValidator *new_NetI2pRouterMessageValidator_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageValidator, initWithNetI2pRouterRouterContext_, context)
}

NetI2pRouterMessageValidator *create_NetI2pRouterMessageValidator_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageValidator, initWithNetI2pRouterRouterContext_, context)
}

jboolean NetI2pRouterMessageValidator_noteReceptionWithLong_withLong_(NetI2pRouterMessageValidator *self, jlong messageId, jlong messageExpiration) {
  jlong val = messageId;
  val ^= (messageExpiration & NetI2pRouterMessageValidator_TIME_MASK);
  jboolean dup = [((NetI2pRouterUtilDecayingBloomFilter *) nil_chk(self->_filter_)) addWithLong:val];
  if (dup && [((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) {
    [((NetI2pUtilLog *) nil_chk(self->_log_)) warnWithNSString:JreStrcat("$J$I$D", @"Duplicate with ", [((NetI2pRouterUtilDecayingBloomFilter *) nil_chk(self->_filter_)) getCurrentDuplicateCount], @" other dups, ", [((NetI2pRouterUtilDecayingBloomFilter *) nil_chk(self->_filter_)) getInsertedCount], @" other entries, and a false positive rate of ", [((NetI2pRouterUtilDecayingBloomFilter *) nil_chk(self->_filter_)) getFalsePositiveRate])];
  }
  return dup;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessageValidator)
