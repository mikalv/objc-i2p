//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InvalidAttributesException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/InvalidAttributesException.h"

inline jlong JavaxNamingDirectoryInvalidAttributesException_get_serialVersionUID(void);
#define JavaxNamingDirectoryInvalidAttributesException_serialVersionUID 2607612850539889765LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectoryInvalidAttributesException, serialVersionUID, jlong)

@implementation JavaxNamingDirectoryInvalidAttributesException

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(self, explanation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectoryInvalidAttributesException_init(self);
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
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingDirectoryInvalidAttributesException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryInvalidAttributesException = { "InvalidAttributesException", "javax.naming.directory", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingDirectoryInvalidAttributesException;
}

@end

void JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(JavaxNamingDirectoryInvalidAttributesException *self, NSString *explanation) {
  JavaxNamingNamingException_initWithNSString_(self, explanation);
}

JavaxNamingDirectoryInvalidAttributesException *new_JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInvalidAttributesException, initWithNSString_, explanation)
}

JavaxNamingDirectoryInvalidAttributesException *create_JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInvalidAttributesException, initWithNSString_, explanation)
}

void JavaxNamingDirectoryInvalidAttributesException_init(JavaxNamingDirectoryInvalidAttributesException *self) {
  JavaxNamingNamingException_init(self);
}

JavaxNamingDirectoryInvalidAttributesException *new_JavaxNamingDirectoryInvalidAttributesException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInvalidAttributesException, init)
}

JavaxNamingDirectoryInvalidAttributesException *create_JavaxNamingDirectoryInvalidAttributesException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInvalidAttributesException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryInvalidAttributesException)
