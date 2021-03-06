//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/NameClassPair.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "javax/naming/NameClassPair.h"

@interface JavaxNamingNameClassPair () {
 @public
  NSString *name_;
  NSString *className__;
  NSString *fullName_;
  jboolean isRel_;
}

@end

J2OBJC_FIELD_SETTER(JavaxNamingNameClassPair, name_, NSString *)
J2OBJC_FIELD_SETTER(JavaxNamingNameClassPair, className__, NSString *)
J2OBJC_FIELD_SETTER(JavaxNamingNameClassPair, fullName_, NSString *)

inline jlong JavaxNamingNameClassPair_get_serialVersionUID(void);
#define JavaxNamingNameClassPair_serialVersionUID 5620776610160863339LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingNameClassPair, serialVersionUID, jlong)

@implementation JavaxNamingNameClassPair

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)className_ {
  JavaxNamingNameClassPair_initWithNSString_withNSString_(self, name, className_);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)className_
                     withBoolean:(jboolean)isRelative {
  JavaxNamingNameClassPair_initWithNSString_withNSString_withBoolean_(self, name, className_, isRelative);
  return self;
}

- (NSString *)getClassName {
  return className__;
}

- (NSString *)getName {
  return name_;
}

- (void)setNameWithNSString:(NSString *)name {
  JreStrongAssign(&self->name_, name);
}

- (void)setClassNameWithNSString:(NSString *)name {
  JreStrongAssign(&self->className__, name);
}

- (jboolean)isRelative {
  return isRel_;
}

- (void)setRelativeWithBoolean:(jboolean)r {
  isRel_ = r;
}

- (NSString *)getNameInNamespace {
  if (fullName_ == nil) {
    @throw create_JavaLangUnsupportedOperationException_init();
  }
  return fullName_;
}

- (void)setNameInNamespaceWithNSString:(NSString *)fullName {
  JreStrongAssign(&self->fullName_, fullName);
}

- (NSString *)description {
  return JreStrcat("$$$$", ([self isRelative] ? @"" : @"(not relative)"), [self getName], @": ", [self getClassName]);
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(className__);
  RELEASE_(fullName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(initWithNSString:withNSString:withBoolean:);
  methods[2].selector = @selector(getClassName);
  methods[3].selector = @selector(getName);
  methods[4].selector = @selector(setNameWithNSString:);
  methods[5].selector = @selector(setClassNameWithNSString:);
  methods[6].selector = @selector(isRelative);
  methods[7].selector = @selector(setRelativeWithBoolean:);
  methods[8].selector = @selector(getNameInNamespace);
  methods[9].selector = @selector(setNameInNamespaceWithNSString:);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "className__", "LNSString;", .constantValue.asLong = 0, 0x2, 9, -1, -1, -1 },
    { "fullName_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "isRel_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingNameClassPair_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "LNSString;LNSString;Z", "setName", "LNSString;", "setClassName", "setRelative", "Z", "setNameInNamespace", "toString", "className" };
  static const J2ObjcClassInfo _JavaxNamingNameClassPair = { "NameClassPair", "javax.naming", ptrTable, methods, fields, 7, 0x1, 11, 5, -1, -1, -1, -1, -1 };
  return &_JavaxNamingNameClassPair;
}

@end

void JavaxNamingNameClassPair_initWithNSString_withNSString_(JavaxNamingNameClassPair *self, NSString *name, NSString *className_) {
  NSObject_init(self);
  JreStrongAssign(&self->fullName_, nil);
  self->isRel_ = true;
  JreStrongAssign(&self->name_, name);
  JreStrongAssign(&self->className__, className_);
}

JavaxNamingNameClassPair *new_JavaxNamingNameClassPair_initWithNSString_withNSString_(NSString *name, NSString *className_) {
  J2OBJC_NEW_IMPL(JavaxNamingNameClassPair, initWithNSString_withNSString_, name, className_)
}

JavaxNamingNameClassPair *create_JavaxNamingNameClassPair_initWithNSString_withNSString_(NSString *name, NSString *className_) {
  J2OBJC_CREATE_IMPL(JavaxNamingNameClassPair, initWithNSString_withNSString_, name, className_)
}

void JavaxNamingNameClassPair_initWithNSString_withNSString_withBoolean_(JavaxNamingNameClassPair *self, NSString *name, NSString *className_, jboolean isRelative) {
  NSObject_init(self);
  JreStrongAssign(&self->fullName_, nil);
  self->isRel_ = true;
  JreStrongAssign(&self->name_, name);
  JreStrongAssign(&self->className__, className_);
  self->isRel_ = isRelative;
}

JavaxNamingNameClassPair *new_JavaxNamingNameClassPair_initWithNSString_withNSString_withBoolean_(NSString *name, NSString *className_, jboolean isRelative) {
  J2OBJC_NEW_IMPL(JavaxNamingNameClassPair, initWithNSString_withNSString_withBoolean_, name, className_, isRelative)
}

JavaxNamingNameClassPair *create_JavaxNamingNameClassPair_initWithNSString_withNSString_withBoolean_(NSString *name, NSString *className_, jboolean isRelative) {
  J2OBJC_CREATE_IMPL(JavaxNamingNameClassPair, initWithNSString_withNSString_withBoolean_, name, className_, isRelative)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingNameClassPair)
