//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/BasicAttributes.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Math.h"
#include "java/util/Enumeration.h"
#include "java/util/Hashtable.h"
#include "java/util/Locale.h"
#include "javax/naming/NamingEnumeration.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/Attribute.h"
#include "javax/naming/directory/Attributes.h"
#include "javax/naming/directory/BasicAttribute.h"
#include "javax/naming/directory/BasicAttributes.h"

@interface JavaxNamingDirectoryBasicAttributes () {
 @public
  jboolean ignoreCase_;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s;

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s;

@end

inline jlong JavaxNamingDirectoryBasicAttributes_get_serialVersionUID(void);
#define JavaxNamingDirectoryBasicAttributes_serialVersionUID 4980164073184639448LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectoryBasicAttributes, serialVersionUID, jlong)

__attribute__((unused)) static void JavaxNamingDirectoryBasicAttributes_writeObjectWithJavaIoObjectOutputStream_(JavaxNamingDirectoryBasicAttributes *self, JavaIoObjectOutputStream *s);

__attribute__((unused)) static void JavaxNamingDirectoryBasicAttributes_readObjectWithJavaIoObjectInputStream_(JavaxNamingDirectoryBasicAttributes *self, JavaIoObjectInputStream *s);

@implementation JavaxNamingDirectoryBasicAttributes

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectoryBasicAttributes_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithBoolean:(jboolean)ignoreCase {
  JavaxNamingDirectoryBasicAttributes_initWithBoolean_(self, ignoreCase);
  return self;
}

- (instancetype)initWithNSString:(NSString *)attrID
                          withId:(id)val {
  JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(self, attrID, val);
  return self;
}

- (instancetype)initWithNSString:(NSString *)attrID
                          withId:(id)val
                     withBoolean:(jboolean)ignoreCase {
  JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(self, attrID, val, ignoreCase);
  return self;
}

- (id)java_clone {
  JavaxNamingDirectoryBasicAttributes *attrset;
  @try {
    attrset = (JavaxNamingDirectoryBasicAttributes *) cast_chk([super java_clone], [JavaxNamingDirectoryBasicAttributes class]);
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    attrset = create_JavaxNamingDirectoryBasicAttributes_initWithBoolean_(ignoreCase_);
  }
  JreStrongAssign(&((JavaxNamingDirectoryBasicAttributes *) nil_chk(attrset))->attrs_, (JavaUtilHashtable *) cast_chk([((JavaUtilHashtable *) nil_chk(attrs_)) java_clone], [JavaUtilHashtable class]));
  return attrset;
}

- (jboolean)isCaseIgnored {
  return ignoreCase_;
}

- (jint)size {
  return [((JavaUtilHashtable *) nil_chk(attrs_)) size];
}

- (id<JavaxNamingDirectoryAttribute>)getWithNSString:(NSString *)attrID {
  id<JavaxNamingDirectoryAttribute> attr = [((JavaUtilHashtable *) nil_chk(attrs_)) getWithId:ignoreCase_ ? [((NSString *) nil_chk(attrID)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)] : attrID];
  return (attr);
}

- (id<JavaxNamingNamingEnumeration>)getAll {
  return create_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(self);
}

- (id<JavaxNamingNamingEnumeration>)getIDs {
  return create_JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(self);
}

- (id<JavaxNamingDirectoryAttribute>)putWithNSString:(NSString *)attrID
                                              withId:(id)val {
  return [self putWithJavaxNamingDirectoryAttribute:create_JavaxNamingDirectoryBasicAttribute_initWithNSString_withId_(attrID, val)];
}

- (id<JavaxNamingDirectoryAttribute>)putWithJavaxNamingDirectoryAttribute:(id<JavaxNamingDirectoryAttribute>)attr {
  NSString *id_ = [((id<JavaxNamingDirectoryAttribute>) nil_chk(attr)) getID];
  if (ignoreCase_) {
    id_ = [((NSString *) nil_chk(id_)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)];
  }
  return [((JavaUtilHashtable *) nil_chk(attrs_)) putWithId:id_ withId:attr];
}

- (id<JavaxNamingDirectoryAttribute>)removeWithNSString:(NSString *)attrID {
  NSString *id_ = (ignoreCase_ ? [((NSString *) nil_chk(attrID)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)] : attrID);
  return [((JavaUtilHashtable *) nil_chk(attrs_)) removeWithId:id_];
}

- (NSString *)description {
  if ([((JavaUtilHashtable *) nil_chk(attrs_)) size] == 0) {
    return (@"No attributes");
  }
  else {
    return [((JavaUtilHashtable *) nil_chk(attrs_)) description];
  }
}

- (jboolean)isEqual:(id)obj {
  if ((obj != nil) && ([JavaxNamingDirectoryAttributes_class_() isInstance:obj])) {
    id<JavaxNamingDirectoryAttributes> target = (id<JavaxNamingDirectoryAttributes>) cast_check(obj, JavaxNamingDirectoryAttributes_class_());
    if (ignoreCase_ != [((id<JavaxNamingDirectoryAttributes>) nil_chk(target)) isCaseIgnored]) {
      return false;
    }
    if ([self size] == [target size]) {
      id<JavaxNamingDirectoryAttribute> their;
      id<JavaxNamingDirectoryAttribute> mine;
      @try {
        id<JavaxNamingNamingEnumeration> theirs = [target getAll];
        while ([((id<JavaxNamingNamingEnumeration>) nil_chk(theirs)) hasMore]) {
          their = (id<JavaxNamingDirectoryAttribute>) cast_check([theirs next], JavaxNamingDirectoryAttribute_class_());
          mine = [self getWithNSString:[((id<JavaxNamingDirectoryAttribute>) nil_chk(their)) getID]];
          if (![their isEqual:mine]) {
            return false;
          }
        }
      }
      @catch (JavaxNamingNamingException *e) {
        return false;
      }
      return true;
    }
  }
  return false;
}

- (NSUInteger)hash {
  jint hash_ = (ignoreCase_ ? 1 : 0);
  @try {
    id<JavaxNamingNamingEnumeration> all = [self getAll];
    while ([((id<JavaxNamingNamingEnumeration>) nil_chk(all)) hasMore]) {
      hash_ += ((jint) [nil_chk([all next]) hash]);
    }
  }
  @catch (JavaxNamingNamingException *e) {
  }
  return hash_;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s {
  JavaxNamingDirectoryBasicAttributes_writeObjectWithJavaIoObjectOutputStream_(self, s);
}

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s {
  JavaxNamingDirectoryBasicAttributes_readObjectWithJavaIoObjectInputStream_(self, s);
}

- (id)clone {
  return [self java_clone];
}

- (void)dealloc {
  RELEASE_(attrs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttribute;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, -1, -1, -1, 6, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttribute;", 0x1, 8, 1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttribute;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttribute;", 0x1, 10, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 15, 16, 17, -1, -1, -1 },
    { NULL, "V", 0x2, 18, 19, 20, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithBoolean:);
  methods[2].selector = @selector(initWithNSString:withId:);
  methods[3].selector = @selector(initWithNSString:withId:withBoolean:);
  methods[4].selector = @selector(java_clone);
  methods[5].selector = @selector(isCaseIgnored);
  methods[6].selector = @selector(size);
  methods[7].selector = @selector(getWithNSString:);
  methods[8].selector = @selector(getAll);
  methods[9].selector = @selector(getIDs);
  methods[10].selector = @selector(putWithNSString:withId:);
  methods[11].selector = @selector(putWithJavaxNamingDirectoryAttribute:);
  methods[12].selector = @selector(removeWithNSString:);
  methods[13].selector = @selector(description);
  methods[14].selector = @selector(isEqual:);
  methods[15].selector = @selector(hash);
  methods[16].selector = @selector(writeObjectWithJavaIoObjectOutputStream:);
  methods[17].selector = @selector(readObjectWithJavaIoObjectInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ignoreCase_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "attrs_", "LJavaUtilHashtable;", .constantValue.asLong = 0, 0x80, -1, -1, 21, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingDirectoryBasicAttributes_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "Z", "LNSString;LNSObject;", "LNSString;LNSObject;Z", "clone", "get", "LNSString;", "()Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/Attribute;>;", "()Ljavax/naming/NamingEnumeration<Ljava/lang/String;>;", "put", "LJavaxNamingDirectoryAttribute;", "remove", "toString", "equals", "LNSObject;", "hashCode", "writeObject", "LJavaIoObjectOutputStream;", "LJavaIoIOException;", "readObject", "LJavaIoObjectInputStream;", "LJavaIoIOException;LJavaLangClassNotFoundException;", "Ljava/util/Hashtable<Ljava/lang/String;Ljavax/naming/directory/Attribute;>;", "LJavaxNamingDirectoryBasicAttributes_AttrEnumImpl;LJavaxNamingDirectoryBasicAttributes_IDEnumImpl;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryBasicAttributes = { "BasicAttributes", "javax.naming.directory", ptrTable, methods, fields, 7, 0x1, 18, 3, -1, 22, -1, -1, -1 };
  return &_JavaxNamingDirectoryBasicAttributes;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

void JavaxNamingDirectoryBasicAttributes_init(JavaxNamingDirectoryBasicAttributes *self) {
  NSObject_init(self);
  self->ignoreCase_ = false;
  JreStrongAssignAndConsume(&self->attrs_, new_JavaUtilHashtable_initWithInt_(11));
}

JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryBasicAttributes, init)
}

JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryBasicAttributes, init)
}

void JavaxNamingDirectoryBasicAttributes_initWithBoolean_(JavaxNamingDirectoryBasicAttributes *self, jboolean ignoreCase) {
  NSObject_init(self);
  self->ignoreCase_ = false;
  JreStrongAssignAndConsume(&self->attrs_, new_JavaUtilHashtable_initWithInt_(11));
  self->ignoreCase_ = ignoreCase;
}

JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_initWithBoolean_(jboolean ignoreCase) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryBasicAttributes, initWithBoolean_, ignoreCase)
}

JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_initWithBoolean_(jboolean ignoreCase) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryBasicAttributes, initWithBoolean_, ignoreCase)
}

void JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(JavaxNamingDirectoryBasicAttributes *self, NSString *attrID, id val) {
  JavaxNamingDirectoryBasicAttributes_init(self);
  [self putWithJavaxNamingDirectoryAttribute:create_JavaxNamingDirectoryBasicAttribute_initWithNSString_withId_(attrID, val)];
}

JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(NSString *attrID, id val) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryBasicAttributes, initWithNSString_withId_, attrID, val)
}

JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(NSString *attrID, id val) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryBasicAttributes, initWithNSString_withId_, attrID, val)
}

void JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(JavaxNamingDirectoryBasicAttributes *self, NSString *attrID, id val, jboolean ignoreCase) {
  JavaxNamingDirectoryBasicAttributes_initWithBoolean_(self, ignoreCase);
  [self putWithJavaxNamingDirectoryAttribute:create_JavaxNamingDirectoryBasicAttribute_initWithNSString_withId_(attrID, val)];
}

JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(NSString *attrID, id val, jboolean ignoreCase) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryBasicAttributes, initWithNSString_withId_withBoolean_, attrID, val, ignoreCase)
}

JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(NSString *attrID, id val, jboolean ignoreCase) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryBasicAttributes, initWithNSString_withId_withBoolean_, attrID, val, ignoreCase)
}

void JavaxNamingDirectoryBasicAttributes_writeObjectWithJavaIoObjectOutputStream_(JavaxNamingDirectoryBasicAttributes *self, JavaIoObjectOutputStream *s) {
  [((JavaIoObjectOutputStream *) nil_chk(s)) defaultWriteObject];
  [s writeIntWithInt:[((JavaUtilHashtable *) nil_chk(self->attrs_)) size]];
  id<JavaUtilEnumeration> attrEnum = [((JavaUtilHashtable *) nil_chk(self->attrs_)) elements];
  while ([((id<JavaUtilEnumeration>) nil_chk(attrEnum)) hasMoreElements]) {
    [s writeObjectWithId:[attrEnum nextElement]];
  }
}

void JavaxNamingDirectoryBasicAttributes_readObjectWithJavaIoObjectInputStream_(JavaxNamingDirectoryBasicAttributes *self, JavaIoObjectInputStream *s) {
  [((JavaIoObjectInputStream *) nil_chk(s)) defaultReadObject];
  jint n = [s readInt];
  JreStrongAssign(&self->attrs_, (n >= 1) ? create_JavaUtilHashtable_initWithInt_(1 + JreFpToInt((JavaLangMath_minWithInt_withInt_(768, n) / .75f))) : create_JavaUtilHashtable_initWithInt_(2));
  while (--n >= 0) {
    [self putWithJavaxNamingDirectoryAttribute:(id<JavaxNamingDirectoryAttribute>) cast_check([s readObject], JavaxNamingDirectoryAttribute_class_())];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryBasicAttributes)

@implementation JavaxNamingDirectoryBasicAttributes_AttrEnumImpl

- (instancetype)initWithJavaxNamingDirectoryBasicAttributes:(JavaxNamingDirectoryBasicAttributes *)outer$ {
  JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(self, outer$);
  return self;
}

- (jboolean)hasMoreElements {
  return [((id<JavaUtilEnumeration>) nil_chk(elements_)) hasMoreElements];
}

- (id<JavaxNamingDirectoryAttribute>)nextElement {
  return [((id<JavaUtilEnumeration>) nil_chk(elements_)) nextElement];
}

- (jboolean)hasMore {
  return [self hasMoreElements];
}

- (id<JavaxNamingDirectoryAttribute>)next {
  return [self nextElement];
}

- (void)close {
  JreStrongAssign(&elements_, nil);
}

- (void)dealloc {
  RELEASE_(elements_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttribute;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttribute;", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaxNamingDirectoryBasicAttributes:);
  methods[1].selector = @selector(hasMoreElements);
  methods[2].selector = @selector(nextElement);
  methods[3].selector = @selector(hasMore);
  methods[4].selector = @selector(next);
  methods[5].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "elements_", "LJavaUtilEnumeration;", .constantValue.asLong = 0, 0x0, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "LJavaxNamingNamingException;", "Ljava/util/Enumeration<Ljavax/naming/directory/Attribute;>;", "LJavaxNamingDirectoryBasicAttributes;", "Ljava/lang/Object;Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/Attribute;>;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryBasicAttributes_AttrEnumImpl = { "AttrEnumImpl", "javax.naming.directory", ptrTable, methods, fields, 7, 0x0, 6, 1, 2, -1, -1, 3, -1 };
  return &_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl;
}

@end

void JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl *self, JavaxNamingDirectoryBasicAttributes *outer$) {
  NSObject_init(self);
  JreStrongAssign(&self->elements_, [((JavaUtilHashtable *) nil_chk(outer$->attrs_)) elements]);
}

JavaxNamingDirectoryBasicAttributes_AttrEnumImpl *new_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl, initWithJavaxNamingDirectoryBasicAttributes_, outer$)
}

JavaxNamingDirectoryBasicAttributes_AttrEnumImpl *create_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl, initWithJavaxNamingDirectoryBasicAttributes_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl)

@implementation JavaxNamingDirectoryBasicAttributes_IDEnumImpl

- (instancetype)initWithJavaxNamingDirectoryBasicAttributes:(JavaxNamingDirectoryBasicAttributes *)outer$ {
  JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(self, outer$);
  return self;
}

- (jboolean)hasMoreElements {
  return [((id<JavaUtilEnumeration>) nil_chk(elements_)) hasMoreElements];
}

- (NSString *)nextElement {
  id<JavaxNamingDirectoryAttribute> attr = [((id<JavaUtilEnumeration>) nil_chk(elements_)) nextElement];
  return [((id<JavaxNamingDirectoryAttribute>) nil_chk(attr)) getID];
}

- (jboolean)hasMore {
  return [self hasMoreElements];
}

- (NSString *)next {
  return [self nextElement];
}

- (void)close {
  JreStrongAssign(&elements_, nil);
}

- (void)dealloc {
  RELEASE_(elements_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaxNamingDirectoryBasicAttributes:);
  methods[1].selector = @selector(hasMoreElements);
  methods[2].selector = @selector(nextElement);
  methods[3].selector = @selector(hasMore);
  methods[4].selector = @selector(next);
  methods[5].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "elements_", "LJavaUtilEnumeration;", .constantValue.asLong = 0, 0x0, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "LJavaxNamingNamingException;", "Ljava/util/Enumeration<Ljavax/naming/directory/Attribute;>;", "LJavaxNamingDirectoryBasicAttributes;", "Ljava/lang/Object;Ljavax/naming/NamingEnumeration<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryBasicAttributes_IDEnumImpl = { "IDEnumImpl", "javax.naming.directory", ptrTable, methods, fields, 7, 0x0, 6, 1, 2, -1, -1, 3, -1 };
  return &_JavaxNamingDirectoryBasicAttributes_IDEnumImpl;
}

@end

void JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes_IDEnumImpl *self, JavaxNamingDirectoryBasicAttributes *outer$) {
  NSObject_init(self);
  JreStrongAssign(&self->elements_, [((JavaUtilHashtable *) nil_chk(outer$->attrs_)) elements]);
}

JavaxNamingDirectoryBasicAttributes_IDEnumImpl *new_JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryBasicAttributes_IDEnumImpl, initWithJavaxNamingDirectoryBasicAttributes_, outer$)
}

JavaxNamingDirectoryBasicAttributes_IDEnumImpl *create_JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryBasicAttributes_IDEnumImpl, initWithJavaxNamingDirectoryBasicAttributes_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryBasicAttributes_IDEnumImpl)
