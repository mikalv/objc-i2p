//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/LogRecord.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/LogRecord.h"

@interface NetI2pUtilLogRecord () {
 @public
  jlong _date_;
  IOSClass *_source_;
  NSString *_name_;
  NSString *_threadName_;
  jint _priority_;
  NSString *_message_;
  JavaLangThrowable *_throwable_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pUtilLogRecord, _source_, IOSClass *)
J2OBJC_FIELD_SETTER(NetI2pUtilLogRecord, _name_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pUtilLogRecord, _threadName_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pUtilLogRecord, _message_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pUtilLogRecord, _throwable_, JavaLangThrowable *)

inline jint NetI2pUtilLogRecord_get_MATCH_LEN(void);
#define NetI2pUtilLogRecord_MATCH_LEN 40
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilLogRecord, MATCH_LEN, jint)

@implementation NetI2pUtilLogRecord

- (instancetype)initWithIOSClass:(IOSClass *)src
                    withNSString:(NSString *)name
                    withNSString:(NSString *)threadName
                         withInt:(jint)priority
                    withNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)t {
  NetI2pUtilLogRecord_initWithIOSClass_withNSString_withNSString_withInt_withNSString_withJavaLangThrowable_(self, src, name, threadName, priority, msg, t);
  return self;
}

- (jlong)getDate {
  return _date_;
}

- (IOSClass *)getSource {
  return _source_;
}

- (NSString *)getSourceName {
  return _name_;
}

- (NSString *)getThreadName {
  return _threadName_;
}

- (jint)getPriority {
  return _priority_;
}

- (NSString *)getMessage {
  return _message_;
}

- (JavaLangThrowable *)getThrowable {
  return _throwable_;
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[NetI2pUtilLogRecord class]])) return false;
  NetI2pUtilLogRecord *r = (NetI2pUtilLogRecord *) cast_chk(o, [NetI2pUtilLogRecord class]);
  return _source_ == ((NetI2pUtilLogRecord *) nil_chk(r))->_source_ && ((_message_ == nil && r->_message_ == nil) || (_message_ != nil && r->_message_ != nil && (([_message_ java_length] <= NetI2pUtilLogRecord_MATCH_LEN) ? [_message_ isEqual:r->_message_] : [_message_ java_regionMatches:0 aString:r->_message_ otherOffset:0 count:NetI2pUtilLogRecord_MATCH_LEN]))) && ((_throwable_ == nil && r->_throwable_ == nil) || (_throwable_ != nil && r->_throwable_ != nil && [_throwable_ java_getClass] == [r->_throwable_ java_getClass]));
}

- (NSUInteger)hash {
  return _message_ != nil ? ((jint) [_message_ hash]) : 0;
}

- (void)dealloc {
  RELEASE_(_source_);
  RELEASE_(_name_);
  RELEASE_(_threadName_);
  RELEASE_(_message_);
  RELEASE_(_throwable_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangThrowable;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithIOSClass:withNSString:withNSString:withInt:withNSString:withJavaLangThrowable:);
  methods[1].selector = @selector(getDate);
  methods[2].selector = @selector(getSource);
  methods[3].selector = @selector(getSourceName);
  methods[4].selector = @selector(getThreadName);
  methods[5].selector = @selector(getPriority);
  methods[6].selector = @selector(getMessage);
  methods[7].selector = @selector(getThrowable);
  methods[8].selector = @selector(isEqual:);
  methods[9].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_date_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_source_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 6, -1 },
    { "_name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_threadName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_priority_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_message_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_throwable_", "LJavaLangThrowable;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "MATCH_LEN", "I", .constantValue.asInt = NetI2pUtilLogRecord_MATCH_LEN, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LIOSClass;LNSString;LNSString;ILNSString;LJavaLangThrowable;", "(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V", "()Ljava/lang/Class<*>;", "equals", "LNSObject;", "hashCode", "Ljava/lang/Class<*>;" };
  static const J2ObjcClassInfo _NetI2pUtilLogRecord = { "LogRecord", "net.i2p.util", ptrTable, methods, fields, 7, 0x0, 10, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilLogRecord;
}

@end

void NetI2pUtilLogRecord_initWithIOSClass_withNSString_withNSString_withInt_withNSString_withJavaLangThrowable_(NetI2pUtilLogRecord *self, IOSClass *src, NSString *name, NSString *threadName, jint priority, NSString *msg, JavaLangThrowable *t) {
  NSObject_init(self);
  self->_date_ = [((NetI2pUtilClock *) nil_chk(NetI2pUtilClock_getInstance())) now];
  JreStrongAssign(&self->_source_, src);
  JreStrongAssign(&self->_name_, name);
  JreStrongAssign(&self->_threadName_, threadName);
  self->_priority_ = priority;
  JreStrongAssign(&self->_message_, msg);
  JreStrongAssign(&self->_throwable_, t);
}

NetI2pUtilLogRecord *new_NetI2pUtilLogRecord_initWithIOSClass_withNSString_withNSString_withInt_withNSString_withJavaLangThrowable_(IOSClass *src, NSString *name, NSString *threadName, jint priority, NSString *msg, JavaLangThrowable *t) {
  J2OBJC_NEW_IMPL(NetI2pUtilLogRecord, initWithIOSClass_withNSString_withNSString_withInt_withNSString_withJavaLangThrowable_, src, name, threadName, priority, msg, t)
}

NetI2pUtilLogRecord *create_NetI2pUtilLogRecord_initWithIOSClass_withNSString_withNSString_withInt_withNSString_withJavaLangThrowable_(IOSClass *src, NSString *name, NSString *threadName, jint priority, NSString *msg, JavaLangThrowable *t) {
  J2OBJC_CREATE_IMPL(NetI2pUtilLogRecord, initWithIOSClass_withNSString_withNSString_withInt_withNSString_withJavaLangThrowable_, src, name, threadName, priority, msg, t)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilLogRecord)