//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/MalformedLinkException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/LinkException.h"
#include "javax/naming/MalformedLinkException.h"

inline jlong JavaxNamingMalformedLinkException_get_serialVersionUID(void);
#define JavaxNamingMalformedLinkException_serialVersionUID -3066740437737830242LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingMalformedLinkException, serialVersionUID, jlong)

@implementation JavaxNamingMalformedLinkException

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingMalformedLinkException_initWithNSString_(self, explanation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingMalformedLinkException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingMalformedLinkException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingMalformedLinkException = { "MalformedLinkException", "javax.naming", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingMalformedLinkException;
}

@end

void JavaxNamingMalformedLinkException_initWithNSString_(JavaxNamingMalformedLinkException *self, NSString *explanation) {
  JavaxNamingLinkException_initWithNSString_(self, explanation);
}

JavaxNamingMalformedLinkException *new_JavaxNamingMalformedLinkException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingMalformedLinkException, initWithNSString_, explanation)
}

JavaxNamingMalformedLinkException *create_JavaxNamingMalformedLinkException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingMalformedLinkException, initWithNSString_, explanation)
}

void JavaxNamingMalformedLinkException_init(JavaxNamingMalformedLinkException *self) {
  JavaxNamingLinkException_init(self);
}

JavaxNamingMalformedLinkException *new_JavaxNamingMalformedLinkException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingMalformedLinkException, init)
}

JavaxNamingMalformedLinkException *create_JavaxNamingMalformedLinkException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingMalformedLinkException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingMalformedLinkException)