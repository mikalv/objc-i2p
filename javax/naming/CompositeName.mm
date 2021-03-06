//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/CompositeName.java
//

#include "J2ObjC_source.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/io/StreamCorruptedException.h"
#include "java/lang/ClassCastException.h"
#include "java/util/Enumeration.h"
#include "javax/naming/CompositeName.h"
#include "javax/naming/InvalidNameException.h"
#include "javax/naming/Name.h"
#include "javax/naming/NameImpl.h"

@interface JavaxNamingCompositeName () {
 @public
  JavaxNamingNameImpl *impl_;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s;

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s;

@end

J2OBJC_FIELD_SETTER(JavaxNamingCompositeName, impl_, JavaxNamingNameImpl *)

inline jlong JavaxNamingCompositeName_get_serialVersionUID(void);
#define JavaxNamingCompositeName_serialVersionUID 1667768148915813118LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingCompositeName, serialVersionUID, jlong)

__attribute__((unused)) static void JavaxNamingCompositeName_writeObjectWithJavaIoObjectOutputStream_(JavaxNamingCompositeName *self, JavaIoObjectOutputStream *s);

__attribute__((unused)) static void JavaxNamingCompositeName_readObjectWithJavaIoObjectInputStream_(JavaxNamingCompositeName *self, JavaIoObjectInputStream *s);

@implementation JavaxNamingCompositeName

- (instancetype)initWithJavaUtilEnumeration:(id<JavaUtilEnumeration>)comps {
  JavaxNamingCompositeName_initWithJavaUtilEnumeration_(self, comps);
  return self;
}

- (instancetype)initWithNSString:(NSString *)n {
  JavaxNamingCompositeName_initWithNSString_(self, n);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingCompositeName_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  return [((JavaxNamingNameImpl *) nil_chk(impl_)) description];
}

- (jboolean)isEqual:(id)obj {
  return (obj != nil && [obj isKindOfClass:[JavaxNamingCompositeName class]] && [((JavaxNamingNameImpl *) nil_chk(impl_)) isEqual:((JavaxNamingCompositeName *) cast_chk(obj, [JavaxNamingCompositeName class]))->impl_]);
}

- (NSUInteger)hash {
  return ((jint) [((JavaxNamingNameImpl *) nil_chk(impl_)) hash]);
}

- (jint)compareToWithId:(id)obj {
  cast_chk(obj, [NSObject class]);
  if (!([obj isKindOfClass:[JavaxNamingCompositeName class]])) {
    @throw create_JavaLangClassCastException_initWithNSString_(@"Not a CompositeName");
  }
  return [((JavaxNamingNameImpl *) nil_chk(impl_)) compareToWithJavaxNamingNameImpl:((JavaxNamingCompositeName *) nil_chk(((JavaxNamingCompositeName *) cast_chk(obj, [JavaxNamingCompositeName class]))))->impl_];
}

- (id)java_clone {
  return (create_JavaxNamingCompositeName_initWithJavaUtilEnumeration_([self getAll]));
}

- (jint)size {
  return ([((JavaxNamingNameImpl *) nil_chk(impl_)) size]);
}

- (jboolean)isEmpty {
  return ([((JavaxNamingNameImpl *) nil_chk(impl_)) isEmpty]);
}

- (id<JavaUtilEnumeration>)getAll {
  return ([((JavaxNamingNameImpl *) nil_chk(impl_)) getAll]);
}

- (NSString *)getWithInt:(jint)posn {
  return ([((JavaxNamingNameImpl *) nil_chk(impl_)) getWithInt:posn]);
}

- (id<JavaxNamingName>)getPrefixWithInt:(jint)posn {
  id<JavaUtilEnumeration> comps = [((JavaxNamingNameImpl *) nil_chk(impl_)) getPrefixWithInt:posn];
  return (create_JavaxNamingCompositeName_initWithJavaUtilEnumeration_(comps));
}

- (id<JavaxNamingName>)getSuffixWithInt:(jint)posn {
  id<JavaUtilEnumeration> comps = [((JavaxNamingNameImpl *) nil_chk(impl_)) getSuffixWithInt:posn];
  return (create_JavaxNamingCompositeName_initWithJavaUtilEnumeration_(comps));
}

- (jboolean)startsWithWithJavaxNamingName:(id<JavaxNamingName>)n {
  if ([n isKindOfClass:[JavaxNamingCompositeName class]]) {
    return ([((JavaxNamingNameImpl *) nil_chk(impl_)) startsWithWithInt:[((id<JavaxNamingName>) nil_chk(n)) size] withJavaUtilEnumeration:[n getAll]]);
  }
  else {
    return false;
  }
}

- (jboolean)endsWithWithJavaxNamingName:(id<JavaxNamingName>)n {
  if ([n isKindOfClass:[JavaxNamingCompositeName class]]) {
    return ([((JavaxNamingNameImpl *) nil_chk(impl_)) endsWithWithInt:[((id<JavaxNamingName>) nil_chk(n)) size] withJavaUtilEnumeration:[n getAll]]);
  }
  else {
    return false;
  }
}

- (id<JavaxNamingName>)addAllWithJavaxNamingName:(id<JavaxNamingName>)suffix {
  if ([suffix isKindOfClass:[JavaxNamingCompositeName class]]) {
    [((JavaxNamingNameImpl *) nil_chk(impl_)) addAllWithJavaUtilEnumeration:[((id<JavaxNamingName>) nil_chk(suffix)) getAll]];
    return self;
  }
  else {
    @throw create_JavaxNamingInvalidNameException_initWithNSString_(JreStrcat("$$", @"Not a composite name: ", [((id<JavaxNamingName>) nil_chk(suffix)) description]));
  }
}

- (id<JavaxNamingName>)addAllWithInt:(jint)posn
                 withJavaxNamingName:(id<JavaxNamingName>)n {
  if ([n isKindOfClass:[JavaxNamingCompositeName class]]) {
    [((JavaxNamingNameImpl *) nil_chk(impl_)) addAllWithInt:posn withJavaUtilEnumeration:[((id<JavaxNamingName>) nil_chk(n)) getAll]];
    return self;
  }
  else {
    @throw create_JavaxNamingInvalidNameException_initWithNSString_(JreStrcat("$$", @"Not a composite name: ", [((id<JavaxNamingName>) nil_chk(n)) description]));
  }
}

- (id<JavaxNamingName>)addWithNSString:(NSString *)comp {
  [((JavaxNamingNameImpl *) nil_chk(impl_)) addWithNSString:comp];
  return self;
}

- (id<JavaxNamingName>)addWithInt:(jint)posn
                     withNSString:(NSString *)comp {
  [((JavaxNamingNameImpl *) nil_chk(impl_)) addWithInt:posn withNSString:comp];
  return self;
}

- (id)removeWithInt:(jint)posn {
  return [((JavaxNamingNameImpl *) nil_chk(impl_)) removeWithInt:posn];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s {
  JavaxNamingCompositeName_writeObjectWithJavaIoObjectOutputStream_(self, s);
}

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s {
  JavaxNamingCompositeName_readObjectWithJavaIoObjectInputStream_(self, s);
}

- (id)clone {
  return [self java_clone];
}

- (void)dealloc {
  RELEASE_(impl_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 6, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilEnumeration;", 0x1, -1, -1, -1, 10, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x1, 13, 12, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x1, 14, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 17, 16, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x1, 18, 16, 3, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x1, 18, 19, 3, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x1, 20, 2, 3, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x1, 20, 21, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 22, 12, 3, -1, -1, -1 },
    { NULL, "V", 0x2, 23, 24, 25, -1, -1, -1 },
    { NULL, "V", 0x2, 26, 27, 28, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilEnumeration:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(compareToWithId:);
  methods[7].selector = @selector(java_clone);
  methods[8].selector = @selector(size);
  methods[9].selector = @selector(isEmpty);
  methods[10].selector = @selector(getAll);
  methods[11].selector = @selector(getWithInt:);
  methods[12].selector = @selector(getPrefixWithInt:);
  methods[13].selector = @selector(getSuffixWithInt:);
  methods[14].selector = @selector(startsWithWithJavaxNamingName:);
  methods[15].selector = @selector(endsWithWithJavaxNamingName:);
  methods[16].selector = @selector(addAllWithJavaxNamingName:);
  methods[17].selector = @selector(addAllWithInt:withJavaxNamingName:);
  methods[18].selector = @selector(addWithNSString:);
  methods[19].selector = @selector(addWithInt:withNSString:);
  methods[20].selector = @selector(removeWithInt:);
  methods[21].selector = @selector(writeObjectWithJavaIoObjectOutputStream:);
  methods[22].selector = @selector(readObjectWithJavaIoObjectInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "impl_", "LJavaxNamingNameImpl;", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingCompositeName_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilEnumeration;", "(Ljava/util/Enumeration<Ljava/lang/String;>;)V", "LNSString;", "LJavaxNamingInvalidNameException;", "toString", "equals", "LNSObject;", "hashCode", "compareTo", "clone", "()Ljava/util/Enumeration<Ljava/lang/String;>;", "get", "I", "getPrefix", "getSuffix", "startsWith", "LJavaxNamingName;", "endsWith", "addAll", "ILJavaxNamingName;", "add", "ILNSString;", "remove", "writeObject", "LJavaIoObjectOutputStream;", "LJavaIoIOException;", "readObject", "LJavaIoObjectInputStream;", "LJavaIoIOException;LJavaLangClassNotFoundException;" };
  static const J2ObjcClassInfo _JavaxNamingCompositeName = { "CompositeName", "javax.naming", ptrTable, methods, fields, 7, 0x1, 23, 2, -1, -1, -1, -1, -1 };
  return &_JavaxNamingCompositeName;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

void JavaxNamingCompositeName_initWithJavaUtilEnumeration_(JavaxNamingCompositeName *self, id<JavaUtilEnumeration> comps) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->impl_, new_JavaxNamingNameImpl_initWithJavaUtilProperties_withJavaUtilEnumeration_(nil, comps));
}

JavaxNamingCompositeName *new_JavaxNamingCompositeName_initWithJavaUtilEnumeration_(id<JavaUtilEnumeration> comps) {
  J2OBJC_NEW_IMPL(JavaxNamingCompositeName, initWithJavaUtilEnumeration_, comps)
}

JavaxNamingCompositeName *create_JavaxNamingCompositeName_initWithJavaUtilEnumeration_(id<JavaUtilEnumeration> comps) {
  J2OBJC_CREATE_IMPL(JavaxNamingCompositeName, initWithJavaUtilEnumeration_, comps)
}

void JavaxNamingCompositeName_initWithNSString_(JavaxNamingCompositeName *self, NSString *n) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->impl_, new_JavaxNamingNameImpl_initWithJavaUtilProperties_withNSString_(nil, n));
}

JavaxNamingCompositeName *new_JavaxNamingCompositeName_initWithNSString_(NSString *n) {
  J2OBJC_NEW_IMPL(JavaxNamingCompositeName, initWithNSString_, n)
}

JavaxNamingCompositeName *create_JavaxNamingCompositeName_initWithNSString_(NSString *n) {
  J2OBJC_CREATE_IMPL(JavaxNamingCompositeName, initWithNSString_, n)
}

void JavaxNamingCompositeName_init(JavaxNamingCompositeName *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->impl_, new_JavaxNamingNameImpl_initWithJavaUtilProperties_(nil));
}

JavaxNamingCompositeName *new_JavaxNamingCompositeName_init() {
  J2OBJC_NEW_IMPL(JavaxNamingCompositeName, init)
}

JavaxNamingCompositeName *create_JavaxNamingCompositeName_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingCompositeName, init)
}

void JavaxNamingCompositeName_writeObjectWithJavaIoObjectOutputStream_(JavaxNamingCompositeName *self, JavaIoObjectOutputStream *s) {
  [((JavaIoObjectOutputStream *) nil_chk(s)) writeIntWithInt:[self size]];
  id<JavaUtilEnumeration> comps = [self getAll];
  while ([((id<JavaUtilEnumeration>) nil_chk(comps)) hasMoreElements]) {
    [s writeObjectWithId:[comps nextElement]];
  }
}

void JavaxNamingCompositeName_readObjectWithJavaIoObjectInputStream_(JavaxNamingCompositeName *self, JavaIoObjectInputStream *s) {
  JreStrongAssignAndConsume(&self->impl_, new_JavaxNamingNameImpl_initWithJavaUtilProperties_(nil));
  jint n = [((JavaIoObjectInputStream *) nil_chk(s)) readInt];
  @try {
    while (--n >= 0) {
      [self addWithNSString:(NSString *) cast_chk([s readObject], [NSString class])];
    }
  }
  @catch (JavaxNamingInvalidNameException *e) {
    @throw (create_JavaIoStreamCorruptedException_initWithNSString_(@"Invalid name"));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingCompositeName)
