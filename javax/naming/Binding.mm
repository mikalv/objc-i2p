//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/Binding.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "javax/naming/Binding.h"
#include "javax/naming/NameClassPair.h"

@interface JavaxNamingBinding () {
 @public
  id boundObj_;
}

@end

J2OBJC_FIELD_SETTER(JavaxNamingBinding, boundObj_, id)

inline jlong JavaxNamingBinding_get_serialVersionUID(void);
#define JavaxNamingBinding_serialVersionUID 8839217842691845890LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingBinding, serialVersionUID, jlong)

@implementation JavaxNamingBinding

- (instancetype)initWithNSString:(NSString *)name
                          withId:(id)obj {
  JavaxNamingBinding_initWithNSString_withId_(self, name, obj);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                          withId:(id)obj
                     withBoolean:(jboolean)isRelative {
  JavaxNamingBinding_initWithNSString_withId_withBoolean_(self, name, obj, isRelative);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)className_
                          withId:(id)obj {
  JavaxNamingBinding_initWithNSString_withNSString_withId_(self, name, className_, obj);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)className_
                          withId:(id)obj
                     withBoolean:(jboolean)isRelative {
  JavaxNamingBinding_initWithNSString_withNSString_withId_withBoolean_(self, name, className_, obj, isRelative);
  return self;
}

- (NSString *)getClassName {
  NSString *cname = [super getClassName];
  if (cname != nil) {
    return cname;
  }
  if (boundObj_ != nil) return [[boundObj_ java_getClass] getName];
  else return nil;
}

- (id)getObject {
  return boundObj_;
}

- (void)setObjectWithId:(id)obj {
  JreStrongAssign(&boundObj_, obj);
}

- (NSString *)description {
  return JreStrcat("$C@", [super description], ':', [self getObject]);
}

- (void)dealloc {
  RELEASE_(boundObj_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withId:);
  methods[1].selector = @selector(initWithNSString:withId:withBoolean:);
  methods[2].selector = @selector(initWithNSString:withNSString:withId:);
  methods[3].selector = @selector(initWithNSString:withNSString:withId:withBoolean:);
  methods[4].selector = @selector(getClassName);
  methods[5].selector = @selector(getObject);
  methods[6].selector = @selector(setObjectWithId:);
  methods[7].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "boundObj_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingBinding_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSObject;", "LNSString;LNSObject;Z", "LNSString;LNSString;LNSObject;", "LNSString;LNSString;LNSObject;Z", "setObject", "LNSObject;", "toString" };
  static const J2ObjcClassInfo _JavaxNamingBinding = { "Binding", "javax.naming", ptrTable, methods, fields, 7, 0x1, 8, 2, -1, -1, -1, -1, -1 };
  return &_JavaxNamingBinding;
}

@end

void JavaxNamingBinding_initWithNSString_withId_(JavaxNamingBinding *self, NSString *name, id obj) {
  JavaxNamingNameClassPair_initWithNSString_withNSString_(self, name, nil);
  JreStrongAssign(&self->boundObj_, obj);
}

JavaxNamingBinding *new_JavaxNamingBinding_initWithNSString_withId_(NSString *name, id obj) {
  J2OBJC_NEW_IMPL(JavaxNamingBinding, initWithNSString_withId_, name, obj)
}

JavaxNamingBinding *create_JavaxNamingBinding_initWithNSString_withId_(NSString *name, id obj) {
  J2OBJC_CREATE_IMPL(JavaxNamingBinding, initWithNSString_withId_, name, obj)
}

void JavaxNamingBinding_initWithNSString_withId_withBoolean_(JavaxNamingBinding *self, NSString *name, id obj, jboolean isRelative) {
  JavaxNamingNameClassPair_initWithNSString_withNSString_withBoolean_(self, name, nil, isRelative);
  JreStrongAssign(&self->boundObj_, obj);
}

JavaxNamingBinding *new_JavaxNamingBinding_initWithNSString_withId_withBoolean_(NSString *name, id obj, jboolean isRelative) {
  J2OBJC_NEW_IMPL(JavaxNamingBinding, initWithNSString_withId_withBoolean_, name, obj, isRelative)
}

JavaxNamingBinding *create_JavaxNamingBinding_initWithNSString_withId_withBoolean_(NSString *name, id obj, jboolean isRelative) {
  J2OBJC_CREATE_IMPL(JavaxNamingBinding, initWithNSString_withId_withBoolean_, name, obj, isRelative)
}

void JavaxNamingBinding_initWithNSString_withNSString_withId_(JavaxNamingBinding *self, NSString *name, NSString *className_, id obj) {
  JavaxNamingNameClassPair_initWithNSString_withNSString_(self, name, className_);
  JreStrongAssign(&self->boundObj_, obj);
}

JavaxNamingBinding *new_JavaxNamingBinding_initWithNSString_withNSString_withId_(NSString *name, NSString *className_, id obj) {
  J2OBJC_NEW_IMPL(JavaxNamingBinding, initWithNSString_withNSString_withId_, name, className_, obj)
}

JavaxNamingBinding *create_JavaxNamingBinding_initWithNSString_withNSString_withId_(NSString *name, NSString *className_, id obj) {
  J2OBJC_CREATE_IMPL(JavaxNamingBinding, initWithNSString_withNSString_withId_, name, className_, obj)
}

void JavaxNamingBinding_initWithNSString_withNSString_withId_withBoolean_(JavaxNamingBinding *self, NSString *name, NSString *className_, id obj, jboolean isRelative) {
  JavaxNamingNameClassPair_initWithNSString_withNSString_withBoolean_(self, name, className_, isRelative);
  JreStrongAssign(&self->boundObj_, obj);
}

JavaxNamingBinding *new_JavaxNamingBinding_initWithNSString_withNSString_withId_withBoolean_(NSString *name, NSString *className_, id obj, jboolean isRelative) {
  J2OBJC_NEW_IMPL(JavaxNamingBinding, initWithNSString_withNSString_withId_withBoolean_, name, className_, obj, isRelative)
}

JavaxNamingBinding *create_JavaxNamingBinding_initWithNSString_withNSString_withId_withBoolean_(NSString *name, NSString *className_, id obj, jboolean isRelative) {
  J2OBJC_CREATE_IMPL(JavaxNamingBinding, initWithNSString_withNSString_withId_withBoolean_, name, className_, obj, isRelative)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingBinding)
