//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/SchemaViolationException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/SchemaViolationException.h"

inline jlong JavaxNamingDirectorySchemaViolationException_get_serialVersionUID(void);
#define JavaxNamingDirectorySchemaViolationException_serialVersionUID -3041762429525049663LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectorySchemaViolationException, serialVersionUID, jlong)

@implementation JavaxNamingDirectorySchemaViolationException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectorySchemaViolationException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingDirectorySchemaViolationException_initWithNSString_(self, explanation);
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
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingDirectorySchemaViolationException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingDirectorySchemaViolationException = { "SchemaViolationException", "javax.naming.directory", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingDirectorySchemaViolationException;
}

@end

void JavaxNamingDirectorySchemaViolationException_init(JavaxNamingDirectorySchemaViolationException *self) {
  JavaxNamingNamingException_init(self);
}

JavaxNamingDirectorySchemaViolationException *new_JavaxNamingDirectorySchemaViolationException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectorySchemaViolationException, init)
}

JavaxNamingDirectorySchemaViolationException *create_JavaxNamingDirectorySchemaViolationException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectorySchemaViolationException, init)
}

void JavaxNamingDirectorySchemaViolationException_initWithNSString_(JavaxNamingDirectorySchemaViolationException *self, NSString *explanation) {
  JavaxNamingNamingException_initWithNSString_(self, explanation);
}

JavaxNamingDirectorySchemaViolationException *new_JavaxNamingDirectorySchemaViolationException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectorySchemaViolationException, initWithNSString_, explanation)
}

JavaxNamingDirectorySchemaViolationException *create_JavaxNamingDirectorySchemaViolationException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectorySchemaViolationException, initWithNSString_, explanation)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectorySchemaViolationException)
