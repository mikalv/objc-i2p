//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/TimeLimitExceededException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/LimitExceededException.h"
#include "javax/naming/TimeLimitExceededException.h"

inline jlong JavaxNamingTimeLimitExceededException_get_serialVersionUID(void);
#define JavaxNamingTimeLimitExceededException_serialVersionUID -3597009011385034696LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingTimeLimitExceededException, serialVersionUID, jlong)

@implementation JavaxNamingTimeLimitExceededException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingTimeLimitExceededException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingTimeLimitExceededException_initWithNSString_(self, explanation);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingTimeLimitExceededException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingTimeLimitExceededException = { "TimeLimitExceededException", "javax.naming", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingTimeLimitExceededException;
}

@end

void JavaxNamingTimeLimitExceededException_init(JavaxNamingTimeLimitExceededException *self) {
  JavaxNamingLimitExceededException_init(self);
}

JavaxNamingTimeLimitExceededException *new_JavaxNamingTimeLimitExceededException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingTimeLimitExceededException, init)
}

JavaxNamingTimeLimitExceededException *create_JavaxNamingTimeLimitExceededException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingTimeLimitExceededException, init)
}

void JavaxNamingTimeLimitExceededException_initWithNSString_(JavaxNamingTimeLimitExceededException *self, NSString *explanation) {
  JavaxNamingLimitExceededException_initWithNSString_(self, explanation);
}

JavaxNamingTimeLimitExceededException *new_JavaxNamingTimeLimitExceededException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingTimeLimitExceededException, initWithNSString_, explanation)
}

JavaxNamingTimeLimitExceededException *create_JavaxNamingTimeLimitExceededException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingTimeLimitExceededException, initWithNSString_, explanation)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingTimeLimitExceededException)