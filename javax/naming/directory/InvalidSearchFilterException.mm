//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InvalidSearchFilterException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/InvalidSearchFilterException.h"

inline jlong JavaxNamingDirectoryInvalidSearchFilterException_get_serialVersionUID(void);
#define JavaxNamingDirectoryInvalidSearchFilterException_serialVersionUID 2902700940682875441LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectoryInvalidSearchFilterException, serialVersionUID, jlong)

@implementation JavaxNamingDirectoryInvalidSearchFilterException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectoryInvalidSearchFilterException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)msg {
  JavaxNamingDirectoryInvalidSearchFilterException_initWithNSString_(self, msg);
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
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingDirectoryInvalidSearchFilterException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryInvalidSearchFilterException = { "InvalidSearchFilterException", "javax.naming.directory", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingDirectoryInvalidSearchFilterException;
}

@end

void JavaxNamingDirectoryInvalidSearchFilterException_init(JavaxNamingDirectoryInvalidSearchFilterException *self) {
  JavaxNamingNamingException_init(self);
}

JavaxNamingDirectoryInvalidSearchFilterException *new_JavaxNamingDirectoryInvalidSearchFilterException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInvalidSearchFilterException, init)
}

JavaxNamingDirectoryInvalidSearchFilterException *create_JavaxNamingDirectoryInvalidSearchFilterException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInvalidSearchFilterException, init)
}

void JavaxNamingDirectoryInvalidSearchFilterException_initWithNSString_(JavaxNamingDirectoryInvalidSearchFilterException *self, NSString *msg) {
  JavaxNamingNamingException_initWithNSString_(self, msg);
}

JavaxNamingDirectoryInvalidSearchFilterException *new_JavaxNamingDirectoryInvalidSearchFilterException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInvalidSearchFilterException, initWithNSString_, msg)
}

JavaxNamingDirectoryInvalidSearchFilterException *create_JavaxNamingDirectoryInvalidSearchFilterException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInvalidSearchFilterException, initWithNSString_, msg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryInvalidSearchFilterException)
