//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/NoSuchAttributeException.java
//

#include "J2ObjC_source.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/NoSuchAttributeException.h"

inline jlong JavaxNamingDirectoryNoSuchAttributeException_get_serialVersionUID(void);
#define JavaxNamingDirectoryNoSuchAttributeException_serialVersionUID 4836415647935888137LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectoryNoSuchAttributeException, serialVersionUID, jlong)

@implementation JavaxNamingDirectoryNoSuchAttributeException

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(self, explanation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectoryNoSuchAttributeException_init(self);
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
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingDirectoryNoSuchAttributeException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryNoSuchAttributeException = { "NoSuchAttributeException", "javax.naming.directory", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingDirectoryNoSuchAttributeException;
}

@end

void JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(JavaxNamingDirectoryNoSuchAttributeException *self, NSString *explanation) {
  JavaxNamingNamingException_initWithNSString_(self, explanation);
}

JavaxNamingDirectoryNoSuchAttributeException *new_JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(NSString *explanation) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryNoSuchAttributeException, initWithNSString_, explanation)
}

JavaxNamingDirectoryNoSuchAttributeException *create_JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(NSString *explanation) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryNoSuchAttributeException, initWithNSString_, explanation)
}

void JavaxNamingDirectoryNoSuchAttributeException_init(JavaxNamingDirectoryNoSuchAttributeException *self) {
  JavaxNamingNamingException_init(self);
}

JavaxNamingDirectoryNoSuchAttributeException *new_JavaxNamingDirectoryNoSuchAttributeException_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryNoSuchAttributeException, init)
}

JavaxNamingDirectoryNoSuchAttributeException *create_JavaxNamingDirectoryNoSuchAttributeException_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryNoSuchAttributeException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryNoSuchAttributeException)