//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InvalidAttributeValueException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/InvalidAttributeValueException.h"

inline jlong JavaxNamingDirectoryInvalidAttributeValueException_get_serialVersionUID(void);
#define JavaxNamingDirectoryInvalidAttributeValueException_serialVersionUID 8720050295499275011LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectoryInvalidAttributeValueException, serialVersionUID, jlong)

@implementation JavaxNamingDirectoryInvalidAttributeValueException

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(self, explanation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectoryInvalidAttributeValueException_init(self);
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
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingDirectoryInvalidAttributeValueException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryInvalidAttributeValueException = { "InvalidAttributeValueException", "javax.naming.directory", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingDirectoryInvalidAttributeValueException;
}

@end

void JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(JavaxNamingDirectoryInvalidAttributeValueException *self, NSString *explanation) {
  JavaxNamingNamingException_initWithNSString_(self, explanation);
}

JavaxNamingDirectoryInvalidAttributeValueException *new_JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInvalidAttributeValueException, initWithNSString_, explanation)
}

JavaxNamingDirectoryInvalidAttributeValueException *create_JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInvalidAttributeValueException, initWithNSString_, explanation)
}

void JavaxNamingDirectoryInvalidAttributeValueException_init(JavaxNamingDirectoryInvalidAttributeValueException *self) {
  JavaxNamingNamingException_init(self);
}

JavaxNamingDirectoryInvalidAttributeValueException *new_JavaxNamingDirectoryInvalidAttributeValueException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInvalidAttributeValueException, init)
}

JavaxNamingDirectoryInvalidAttributeValueException *create_JavaxNamingDirectoryInvalidAttributeValueException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInvalidAttributeValueException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryInvalidAttributeValueException)
