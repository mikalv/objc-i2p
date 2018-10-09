//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/NoInitialContextException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/NoInitialContextException.h"

inline jlong JavaxNamingNoInitialContextException_get_serialVersionUID(void);
#define JavaxNamingNoInitialContextException_serialVersionUID -3413733186901258623LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingNoInitialContextException, serialVersionUID, jlong)

@implementation JavaxNamingNoInitialContextException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingNoInitialContextException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingNoInitialContextException_initWithNSString_(self, explanation);
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
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingNoInitialContextException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingNoInitialContextException = { "NoInitialContextException", "javax.naming", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingNoInitialContextException;
}

@end

void JavaxNamingNoInitialContextException_init(JavaxNamingNoInitialContextException *self) {
  JavaxNamingNamingException_init(self);
}

JavaxNamingNoInitialContextException *new_JavaxNamingNoInitialContextException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingNoInitialContextException, init)
}

JavaxNamingNoInitialContextException *create_JavaxNamingNoInitialContextException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingNoInitialContextException, init)
}

void JavaxNamingNoInitialContextException_initWithNSString_(JavaxNamingNoInitialContextException *self, NSString *explanation) {
  JavaxNamingNamingException_initWithNSString_(self, explanation);
}

JavaxNamingNoInitialContextException *new_JavaxNamingNoInitialContextException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingNoInitialContextException, initWithNSString_, explanation)
}

JavaxNamingNoInitialContextException *create_JavaxNamingNoInitialContextException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingNoInitialContextException, initWithNSString_, explanation)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingNoInitialContextException)
