//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/Rdn.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ObjectInputStream.h"
#include "java/io/ObjectOutputStream.h"
#include "java/io/StreamCorruptedException.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/Character.h"
#include "java/lang/ClassCastException.h"
#include "java/lang/Comparable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/Locale.h"
#include "javax/naming/InvalidNameException.h"
#include "javax/naming/NamingEnumeration.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/directory/Attribute.h"
#include "javax/naming/directory/Attributes.h"
#include "javax/naming/directory/BasicAttributes.h"
#include "javax/naming/ldap/Rdn.h"
#include "javax/naming/ldap/Rfc2253Parser.h"

@interface JavaxNamingLdapRdn () {
 @public
  JavaUtilArrayList *entries_;
}

- (jboolean)isEmptyValueWithId:(id)val;

+ (NSString *)escapeStringValueWithNSString:(NSString *)val;

+ (NSString *)escapeBinaryValueWithByteArray:(IOSByteArray *)val;

+ (IOSByteArray *)decodeHexPairsWithCharArray:(IOSCharArray *)chars
                                      withInt:(jint)beg
                                      withInt:(jint)end;

+ (IOSByteArray *)getUtf8OctetsWithCharArray:(IOSCharArray *)chars
                                     withInt:(jint)beg
                                     withInt:(jint)end;

+ (jboolean)isWhitespaceWithChar:(jchar)c;

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s;

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s;

@end

J2OBJC_FIELD_SETTER(JavaxNamingLdapRdn, entries_, JavaUtilArrayList *)

inline jint JavaxNamingLdapRdn_get_DEFAULT_SIZE(void);
#define JavaxNamingLdapRdn_DEFAULT_SIZE 1
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapRdn, DEFAULT_SIZE, jint)

inline jlong JavaxNamingLdapRdn_get_serialVersionUID(void);
#define JavaxNamingLdapRdn_serialVersionUID -5994465067210009656LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapRdn, serialVersionUID, jlong)

inline NSString *JavaxNamingLdapRdn_get_escapees(void);
static NSString *JavaxNamingLdapRdn_escapees = @",=+<>#;\"\\";
J2OBJC_STATIC_FIELD_OBJ_FINAL(JavaxNamingLdapRdn, escapees, NSString *)

__attribute__((unused)) static jboolean JavaxNamingLdapRdn_isEmptyValueWithId_(JavaxNamingLdapRdn *self, id val);

__attribute__((unused)) static NSString *JavaxNamingLdapRdn_escapeStringValueWithNSString_(NSString *val);

__attribute__((unused)) static NSString *JavaxNamingLdapRdn_escapeBinaryValueWithByteArray_(IOSByteArray *val);

__attribute__((unused)) static IOSByteArray *JavaxNamingLdapRdn_decodeHexPairsWithCharArray_withInt_withInt_(IOSCharArray *chars, jint beg, jint end);

__attribute__((unused)) static IOSByteArray *JavaxNamingLdapRdn_getUtf8OctetsWithCharArray_withInt_withInt_(IOSCharArray *chars, jint beg, jint end);

__attribute__((unused)) static jboolean JavaxNamingLdapRdn_isWhitespaceWithChar_(jchar c);

__attribute__((unused)) static void JavaxNamingLdapRdn_writeObjectWithJavaIoObjectOutputStream_(JavaxNamingLdapRdn *self, JavaIoObjectOutputStream *s);

__attribute__((unused)) static void JavaxNamingLdapRdn_readObjectWithJavaIoObjectInputStream_(JavaxNamingLdapRdn *self, JavaIoObjectInputStream *s);

@interface JavaxNamingLdapRdn_RdnEntry : NSObject < JavaLangComparable > {
 @public
  NSString *type_;
  id value_;
  NSString *comparable_;
}

- (instancetype)init;

- (NSString *)getType;

- (id)getValue;

- (jint)compareToWithId:(JavaxNamingLdapRdn_RdnEntry *)that;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)description;

- (NSString *)getValueComparable;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingLdapRdn_RdnEntry)

J2OBJC_FIELD_SETTER(JavaxNamingLdapRdn_RdnEntry, type_, NSString *)
J2OBJC_FIELD_SETTER(JavaxNamingLdapRdn_RdnEntry, value_, id)
J2OBJC_FIELD_SETTER(JavaxNamingLdapRdn_RdnEntry, comparable_, NSString *)

__attribute__((unused)) static void JavaxNamingLdapRdn_RdnEntry_init(JavaxNamingLdapRdn_RdnEntry *self);

__attribute__((unused)) static JavaxNamingLdapRdn_RdnEntry *new_JavaxNamingLdapRdn_RdnEntry_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static JavaxNamingLdapRdn_RdnEntry *create_JavaxNamingLdapRdn_RdnEntry_init(void);

__attribute__((unused)) static NSString *JavaxNamingLdapRdn_RdnEntry_getValueComparable(JavaxNamingLdapRdn_RdnEntry *self);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingLdapRdn_RdnEntry)

@implementation JavaxNamingLdapRdn

- (instancetype)initWithJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrSet {
  JavaxNamingLdapRdn_initWithJavaxNamingDirectoryAttributes_(self, attrSet);
  return self;
}

- (instancetype)initWithNSString:(NSString *)rdnString {
  JavaxNamingLdapRdn_initWithNSString_(self, rdnString);
  return self;
}

- (instancetype)initWithJavaxNamingLdapRdn:(JavaxNamingLdapRdn *)rdn {
  JavaxNamingLdapRdn_initWithJavaxNamingLdapRdn_(self, rdn);
  return self;
}

- (instancetype)initWithNSString:(NSString *)type
                          withId:(id)value {
  JavaxNamingLdapRdn_initWithNSString_withId_(self, type, value);
  return self;
}

- (jboolean)isEmptyValueWithId:(id)val {
  return JavaxNamingLdapRdn_isEmptyValueWithId_(self, val);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingLdapRdn_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaxNamingLdapRdn *)putWithNSString:(NSString *)type
                                 withId:(id)value {
  JavaxNamingLdapRdn_RdnEntry *newEntry = create_JavaxNamingLdapRdn_RdnEntry_init();
  JreStrongAssign(&newEntry->type_, type);
  if ([value isKindOfClass:[IOSByteArray class]]) {
    JreStrongAssign(&newEntry->value_, [((IOSByteArray *) nil_chk(((IOSByteArray *) cast_chk(value, [IOSByteArray class])))) java_clone]);
  }
  else {
    JreStrongAssign(&newEntry->value_, value);
  }
  [((JavaUtilArrayList *) nil_chk(entries_)) addWithId:newEntry];
  return self;
}

- (void)sort {
  if ([((JavaUtilArrayList *) nil_chk(entries_)) size] > 1) {
    JavaUtilCollections_sortWithJavaUtilList_(entries_);
  }
}

- (id)getValue {
  return [((JavaxNamingLdapRdn_RdnEntry *) nil_chk([((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:0])) getValue];
}

- (NSString *)getType {
  return [((JavaxNamingLdapRdn_RdnEntry *) nil_chk([((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:0])) getType];
}

- (NSString *)description {
  JavaLangStringBuilder *builder = create_JavaLangStringBuilder_init();
  jint size = [((JavaUtilArrayList *) nil_chk(entries_)) size];
  if (size > 0) {
    [builder appendWithId:[((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:0]];
  }
  for (jint next = 1; next < size; next++) {
    [builder appendWithChar:'+'];
    [builder appendWithId:[((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:next]];
  }
  return [builder description];
}

- (jint)compareToWithId:(id)obj {
  cast_chk(obj, [NSObject class]);
  if (!([obj isKindOfClass:[JavaxNamingLdapRdn class]])) {
    @throw create_JavaLangClassCastException_initWithNSString_(@"The obj is not a Rdn");
  }
  if (obj == self) {
    return 0;
  }
  JavaxNamingLdapRdn *that = (JavaxNamingLdapRdn *) cast_chk(obj, [JavaxNamingLdapRdn class]);
  jint minSize = JavaLangMath_minWithInt_withInt_([((JavaUtilArrayList *) nil_chk(entries_)) size], [((JavaUtilArrayList *) nil_chk(((JavaxNamingLdapRdn *) nil_chk(that))->entries_)) size]);
  for (jint i = 0; i < minSize; i++) {
    jint diff = [((JavaxNamingLdapRdn_RdnEntry *) nil_chk([((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:i])) compareToWithId:[((JavaUtilArrayList *) nil_chk(that->entries_)) getWithInt:i]];
    if (diff != 0) {
      return diff;
    }
  }
  return ([((JavaUtilArrayList *) nil_chk(entries_)) size] - [((JavaUtilArrayList *) nil_chk(that->entries_)) size]);
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  if (!([obj isKindOfClass:[JavaxNamingLdapRdn class]])) {
    return false;
  }
  JavaxNamingLdapRdn *that = (JavaxNamingLdapRdn *) cast_chk(obj, [JavaxNamingLdapRdn class]);
  if ([((JavaUtilArrayList *) nil_chk(entries_)) size] != [((JavaxNamingLdapRdn *) nil_chk(that)) size]) {
    return false;
  }
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(entries_)) size]; i++) {
    if (![((JavaxNamingLdapRdn_RdnEntry *) nil_chk([((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:i])) isEqual:[((JavaUtilArrayList *) nil_chk(that->entries_)) getWithInt:i]]) {
      return false;
    }
  }
  return true;
}

- (NSUInteger)hash {
  jint hash_ = 0;
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(entries_)) size]; i++) {
    hash_ += ((jint) [((JavaxNamingLdapRdn_RdnEntry *) nil_chk([((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:i])) hash]);
  }
  return hash_;
}

- (id<JavaxNamingDirectoryAttributes>)toAttributes {
  id<JavaxNamingDirectoryAttributes> attrs = create_JavaxNamingDirectoryBasicAttributes_initWithBoolean_(true);
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(entries_)) size]; i++) {
    JavaxNamingLdapRdn_RdnEntry *entry_ = [((JavaUtilArrayList *) nil_chk(entries_)) getWithInt:i];
    id<JavaxNamingDirectoryAttribute> attr = [attrs putWithNSString:[((JavaxNamingLdapRdn_RdnEntry *) nil_chk(entry_)) getType] withId:[entry_ getValue]];
    if (attr != nil) {
      [attr addWithId:[entry_ getValue]];
      [attrs putWithJavaxNamingDirectoryAttribute:attr];
    }
  }
  return attrs;
}

- (jint)size {
  return [((JavaUtilArrayList *) nil_chk(entries_)) size];
}

+ (NSString *)escapeValueWithId:(id)val {
  return JavaxNamingLdapRdn_escapeValueWithId_(val);
}

+ (NSString *)escapeStringValueWithNSString:(NSString *)val {
  return JavaxNamingLdapRdn_escapeStringValueWithNSString_(val);
}

+ (NSString *)escapeBinaryValueWithByteArray:(IOSByteArray *)val {
  return JavaxNamingLdapRdn_escapeBinaryValueWithByteArray_(val);
}

+ (id)unescapeValueWithNSString:(NSString *)val {
  return JavaxNamingLdapRdn_unescapeValueWithNSString_(val);
}

+ (IOSByteArray *)decodeHexPairsWithCharArray:(IOSCharArray *)chars
                                      withInt:(jint)beg
                                      withInt:(jint)end {
  return JavaxNamingLdapRdn_decodeHexPairsWithCharArray_withInt_withInt_(chars, beg, end);
}

+ (IOSByteArray *)getUtf8OctetsWithCharArray:(IOSCharArray *)chars
                                     withInt:(jint)beg
                                     withInt:(jint)end {
  return JavaxNamingLdapRdn_getUtf8OctetsWithCharArray_withInt_withInt_(chars, beg, end);
}

+ (jboolean)isWhitespaceWithChar:(jchar)c {
  return JavaxNamingLdapRdn_isWhitespaceWithChar_(c);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(JavaIoObjectOutputStream *)s {
  JavaxNamingLdapRdn_writeObjectWithJavaIoObjectOutputStream_(self, s);
}

- (void)readObjectWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)s {
  JavaxNamingLdapRdn_readObjectWithJavaIoObjectInputStream_(self, s);
}

- (void)dealloc {
  RELEASE_(entries_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, 1, -1, -1, -1 },
    { NULL, "Z", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingLdapRdn;", 0x0, 7, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttributes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 12, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 13, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 14, 15, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 16, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0xa, 17, 18, -1, -1, -1, -1 },
    { NULL, "[B", 0xa, 19, 18, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 20, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 22, 23, 24, -1, -1, -1 },
    { NULL, "V", 0x2, 25, 26, 27, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaxNamingDirectoryAttributes:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithJavaxNamingLdapRdn:);
  methods[3].selector = @selector(initWithNSString:withId:);
  methods[4].selector = @selector(isEmptyValueWithId:);
  methods[5].selector = @selector(init);
  methods[6].selector = @selector(putWithNSString:withId:);
  methods[7].selector = @selector(sort);
  methods[8].selector = @selector(getValue);
  methods[9].selector = @selector(getType);
  methods[10].selector = @selector(description);
  methods[11].selector = @selector(compareToWithId:);
  methods[12].selector = @selector(isEqual:);
  methods[13].selector = @selector(hash);
  methods[14].selector = @selector(toAttributes);
  methods[15].selector = @selector(size);
  methods[16].selector = @selector(escapeValueWithId:);
  methods[17].selector = @selector(escapeStringValueWithNSString:);
  methods[18].selector = @selector(escapeBinaryValueWithByteArray:);
  methods[19].selector = @selector(unescapeValueWithNSString:);
  methods[20].selector = @selector(decodeHexPairsWithCharArray:withInt:withInt:);
  methods[21].selector = @selector(getUtf8OctetsWithCharArray:withInt:withInt:);
  methods[22].selector = @selector(isWhitespaceWithChar:);
  methods[23].selector = @selector(writeObjectWithJavaIoObjectOutputStream:);
  methods[24].selector = @selector(readObjectWithJavaIoObjectInputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "entries_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x82, -1, -1, 28, -1 },
    { "DEFAULT_SIZE", "I", .constantValue.asInt = JavaxNamingLdapRdn_DEFAULT_SIZE, 0x1a, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingLdapRdn_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "escapees", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 29, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaxNamingDirectoryAttributes;", "LJavaxNamingInvalidNameException;", "LNSString;", "LJavaxNamingLdapRdn;", "LNSString;LNSObject;", "isEmptyValue", "LNSObject;", "put", "toString", "compareTo", "equals", "hashCode", "escapeValue", "escapeStringValue", "escapeBinaryValue", "[B", "unescapeValue", "decodeHexPairs", "[CII", "getUtf8Octets", "isWhitespace", "C", "writeObject", "LJavaIoObjectOutputStream;", "LJavaIoIOException;", "readObject", "LJavaIoObjectInputStream;", "LJavaIoIOException;LJavaLangClassNotFoundException;", "Ljava/util/ArrayList<Ljavax/naming/ldap/Rdn$RdnEntry;>;", &JavaxNamingLdapRdn_escapees, "LJavaxNamingLdapRdn_RdnEntry;", "Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Comparable<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _JavaxNamingLdapRdn = { "Rdn", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x1, 25, 4, -1, 30, -1, 31, -1 };
  return &_JavaxNamingLdapRdn;
}

@end

void JavaxNamingLdapRdn_initWithJavaxNamingDirectoryAttributes_(JavaxNamingLdapRdn *self, id<JavaxNamingDirectoryAttributes> attrSet) {
  NSObject_init(self);
  if ([((id<JavaxNamingDirectoryAttributes>) nil_chk(attrSet)) size] == 0) {
    @throw create_JavaxNamingInvalidNameException_initWithNSString_(@"Attributes cannot be empty");
  }
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilArrayList_initWithInt_([attrSet size]));
  id<JavaxNamingNamingEnumeration> attrs = [attrSet getAll];
  @try {
    for (jint nEntries = 0; [((id<JavaxNamingNamingEnumeration>) nil_chk(attrs)) hasMore]; nEntries++) {
      JavaxNamingLdapRdn_RdnEntry *entry_ = create_JavaxNamingLdapRdn_RdnEntry_init();
      id<JavaxNamingDirectoryAttribute> attr = [attrs next];
      JreStrongAssign(&entry_->type_, [((id<JavaxNamingDirectoryAttribute>) nil_chk(attr)) getID]);
      JreStrongAssign(&entry_->value_, [attr get]);
      [((JavaUtilArrayList *) nil_chk(self->entries_)) addWithInt:nEntries withId:entry_];
    }
  }
  @catch (JavaxNamingNamingException *e) {
    JavaxNamingInvalidNameException *e2 = create_JavaxNamingInvalidNameException_initWithNSString_([e getMessage]);
    [e2 initCauseWithJavaLangThrowable:e];
    @throw e2;
  }
  [self sort];
}

JavaxNamingLdapRdn *new_JavaxNamingLdapRdn_initWithJavaxNamingDirectoryAttributes_(id<JavaxNamingDirectoryAttributes> attrSet) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapRdn, initWithJavaxNamingDirectoryAttributes_, attrSet)
}

JavaxNamingLdapRdn *create_JavaxNamingLdapRdn_initWithJavaxNamingDirectoryAttributes_(id<JavaxNamingDirectoryAttributes> attrSet) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapRdn, initWithJavaxNamingDirectoryAttributes_, attrSet)
}

void JavaxNamingLdapRdn_initWithNSString_(JavaxNamingLdapRdn *self, NSString *rdnString) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilArrayList_initWithInt_(JavaxNamingLdapRdn_DEFAULT_SIZE));
  [(create_JavaxNamingLdapRfc2253Parser_initWithNSString_(rdnString)) parseRdnWithJavaxNamingLdapRdn:self];
}

JavaxNamingLdapRdn *new_JavaxNamingLdapRdn_initWithNSString_(NSString *rdnString) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapRdn, initWithNSString_, rdnString)
}

JavaxNamingLdapRdn *create_JavaxNamingLdapRdn_initWithNSString_(NSString *rdnString) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapRdn, initWithNSString_, rdnString)
}

void JavaxNamingLdapRdn_initWithJavaxNamingLdapRdn_(JavaxNamingLdapRdn *self, JavaxNamingLdapRdn *rdn) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilArrayList_initWithInt_([((JavaUtilArrayList *) nil_chk(((JavaxNamingLdapRdn *) nil_chk(rdn))->entries_)) size]));
  [self->entries_ addAllWithJavaUtilCollection:rdn->entries_];
}

JavaxNamingLdapRdn *new_JavaxNamingLdapRdn_initWithJavaxNamingLdapRdn_(JavaxNamingLdapRdn *rdn) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapRdn, initWithJavaxNamingLdapRdn_, rdn)
}

JavaxNamingLdapRdn *create_JavaxNamingLdapRdn_initWithJavaxNamingLdapRdn_(JavaxNamingLdapRdn *rdn) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapRdn, initWithJavaxNamingLdapRdn_, rdn)
}

void JavaxNamingLdapRdn_initWithNSString_withId_(JavaxNamingLdapRdn *self, NSString *type, id value) {
  NSObject_init(self);
  if (value == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(@"Cannot set value to null");
  }
  if ([((NSString *) nil_chk(type)) isEqual:@""] || JavaxNamingLdapRdn_isEmptyValueWithId_(self, value)) {
    @throw create_JavaxNamingInvalidNameException_initWithNSString_(JreStrcat("$$$@", @"type or value cannot be empty, type:", type, @" value:", value));
  }
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilArrayList_initWithInt_(JavaxNamingLdapRdn_DEFAULT_SIZE));
  [self putWithNSString:type withId:value];
}

JavaxNamingLdapRdn *new_JavaxNamingLdapRdn_initWithNSString_withId_(NSString *type, id value) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapRdn, initWithNSString_withId_, type, value)
}

JavaxNamingLdapRdn *create_JavaxNamingLdapRdn_initWithNSString_withId_(NSString *type, id value) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapRdn, initWithNSString_withId_, type, value)
}

jboolean JavaxNamingLdapRdn_isEmptyValueWithId_(JavaxNamingLdapRdn *self, id val) {
  return (([val isKindOfClass:[NSString class]]) && [nil_chk(val) isEqual:@""]) || (([val isKindOfClass:[IOSByteArray class]]) && (((IOSByteArray *) nil_chk(((IOSByteArray *) cast_chk(val, [IOSByteArray class]))))->size_ == 0));
}

void JavaxNamingLdapRdn_init(JavaxNamingLdapRdn *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilArrayList_initWithInt_(JavaxNamingLdapRdn_DEFAULT_SIZE));
}

JavaxNamingLdapRdn *new_JavaxNamingLdapRdn_init() {
  J2OBJC_NEW_IMPL(JavaxNamingLdapRdn, init)
}

JavaxNamingLdapRdn *create_JavaxNamingLdapRdn_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapRdn, init)
}

NSString *JavaxNamingLdapRdn_escapeValueWithId_(id val) {
  JavaxNamingLdapRdn_initialize();
  return ([val isKindOfClass:[IOSByteArray class]]) ? JavaxNamingLdapRdn_escapeBinaryValueWithByteArray_((IOSByteArray *) cast_chk(val, [IOSByteArray class])) : JavaxNamingLdapRdn_escapeStringValueWithNSString_((NSString *) cast_chk(val, [NSString class]));
}

NSString *JavaxNamingLdapRdn_escapeStringValueWithNSString_(NSString *val) {
  JavaxNamingLdapRdn_initialize();
  IOSCharArray *chars = [((NSString *) nil_chk(val)) java_toCharArray];
  JavaLangStringBuilder *builder = create_JavaLangStringBuilder_initWithInt_(2 * [val java_length]);
  jint lead;
  for (lead = 0; lead < ((IOSCharArray *) nil_chk(chars))->size_; lead++) {
    if (!JavaxNamingLdapRdn_isWhitespaceWithChar_(IOSCharArray_Get(chars, lead))) {
      break;
    }
  }
  jint trail;
  for (trail = chars->size_ - 1; trail >= 0; trail--) {
    if (!JavaxNamingLdapRdn_isWhitespaceWithChar_(IOSCharArray_Get(chars, trail))) {
      break;
    }
  }
  for (jint i = 0; i < chars->size_; i++) {
    jchar c = IOSCharArray_Get(chars, i);
    if ((i < lead) || (i > trail) || ([((NSString *) nil_chk(JavaxNamingLdapRdn_escapees)) java_indexOf:c] >= 0)) {
      [builder appendWithChar:'\\'];
    }
    [builder appendWithChar:c];
  }
  return [builder description];
}

NSString *JavaxNamingLdapRdn_escapeBinaryValueWithByteArray_(IOSByteArray *val) {
  JavaxNamingLdapRdn_initialize();
  JavaLangStringBuilder *builder = create_JavaLangStringBuilder_initWithInt_(1 + 2 * ((IOSByteArray *) nil_chk(val))->size_);
  [builder appendWithNSString:@"#"];
  for (jint i = 0; i < val->size_; i++) {
    jbyte b = IOSByteArray_Get(val, i);
    [builder appendWithChar:JavaLangCharacter_forDigitWithInt_withInt_((jint) 0xF & (JreURShift32(b, 4)), 16)];
    [builder appendWithChar:JavaLangCharacter_forDigitWithInt_withInt_((jint) 0xF & b, 16)];
  }
  return [builder description];
}

id JavaxNamingLdapRdn_unescapeValueWithNSString_(NSString *val) {
  JavaxNamingLdapRdn_initialize();
  IOSCharArray *chars = [((NSString *) nil_chk(val)) java_toCharArray];
  jint beg = 0;
  jint end = ((IOSCharArray *) nil_chk(chars))->size_;
  while ((beg < end) && JavaxNamingLdapRdn_isWhitespaceWithChar_(IOSCharArray_Get(chars, beg))) {
    ++beg;
  }
  while ((beg < end) && JavaxNamingLdapRdn_isWhitespaceWithChar_(IOSCharArray_Get(chars, end - 1))) {
    --end;
  }
  if (end != chars->size_ && (beg < end) && IOSCharArray_Get(chars, end - 1) == '\\') {
    end++;
  }
  if (beg >= end) {
    return @"";
  }
  if (IOSCharArray_Get(chars, beg) == '#') {
    return JavaxNamingLdapRdn_decodeHexPairsWithCharArray_withInt_withInt_(chars, ++beg, end);
  }
  if ((IOSCharArray_Get(chars, beg) == '"') && (IOSCharArray_Get(chars, end - 1) == '"')) {
    ++beg;
    --end;
  }
  JavaLangStringBuilder *builder = create_JavaLangStringBuilder_initWithInt_(end - beg);
  jint esc = -1;
  for (jint i = beg; i < end; i++) {
    if ((IOSCharArray_Get(chars, i) == '\\') && (i + 1 < end)) {
      if (!JavaLangCharacter_isLetterOrDigitWithChar_(IOSCharArray_Get(chars, i + 1))) {
        ++i;
        [builder appendWithChar:IOSCharArray_Get(chars, i)];
        esc = i;
      }
      else {
        IOSByteArray *utf8 = JavaxNamingLdapRdn_getUtf8OctetsWithCharArray_withInt_withInt_(chars, i, end);
        if (((IOSByteArray *) nil_chk(utf8))->size_ > 0) {
          @try {
            [builder appendWithNSString:[NSString java_stringWithBytes:utf8 charsetName:@"UTF8"]];
          }
          @catch (JavaIoUnsupportedEncodingException *e) {
          }
          i += utf8->size_ * 3 - 1;
        }
        else {
          @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Not a valid attribute string value:", val, @",improper usage of backslash"));
        }
      }
    }
    else {
      [builder appendWithChar:IOSCharArray_Get(chars, i)];
    }
  }
  jint len = [builder java_length];
  if (JavaxNamingLdapRdn_isWhitespaceWithChar_([builder charAtWithInt:len - 1]) && esc != (end - 1)) {
    [builder setLengthWithInt:len - 1];
  }
  return [builder description];
}

IOSByteArray *JavaxNamingLdapRdn_decodeHexPairsWithCharArray_withInt_withInt_(IOSCharArray *chars, jint beg, jint end) {
  JavaxNamingLdapRdn_initialize();
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:(end - beg) / 2];
  for (jint i = 0; beg + 1 < end; i++) {
    jint hi = JavaLangCharacter_digitWithChar_withInt_(IOSCharArray_Get(nil_chk(chars), beg), 16);
    jint lo = JavaLangCharacter_digitWithChar_withInt_(IOSCharArray_Get(chars, beg + 1), 16);
    if (hi < 0 || lo < 0) {
      break;
    }
    *IOSByteArray_GetRef(bytes, i) = (jbyte) ((JreLShift32(hi, 4)) + lo);
    beg += 2;
  }
  if (beg != end) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Illegal attribute value: ", [NSString java_stringWithCharacters:chars]));
  }
  return bytes;
}

IOSByteArray *JavaxNamingLdapRdn_getUtf8OctetsWithCharArray_withInt_withInt_(IOSCharArray *chars, jint beg, jint end) {
  JavaxNamingLdapRdn_initialize();
  IOSByteArray *utf8 = [IOSByteArray arrayWithLength:(end - beg) / 3];
  jint len = 0;
  while ((beg + 2 < end) && (IOSCharArray_Get(nil_chk(chars), beg++) == '\\')) {
    jint hi = JavaLangCharacter_digitWithChar_withInt_(IOSCharArray_Get(nil_chk(chars), beg++), 16);
    jint lo = JavaLangCharacter_digitWithChar_withInt_(IOSCharArray_Get(chars, beg++), 16);
    if (hi < 0 || lo < 0) {
      break;
    }
    *IOSByteArray_GetRef(utf8, len++) = (jbyte) ((JreLShift32(hi, 4)) + lo);
  }
  if (len == utf8->size_) {
    return utf8;
  }
  else {
    IOSByteArray *res = [IOSByteArray arrayWithLength:len];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(utf8, 0, res, 0, len);
    return res;
  }
}

jboolean JavaxNamingLdapRdn_isWhitespaceWithChar_(jchar c) {
  JavaxNamingLdapRdn_initialize();
  return (c == ' ' || c == 0x000d);
}

void JavaxNamingLdapRdn_writeObjectWithJavaIoObjectOutputStream_(JavaxNamingLdapRdn *self, JavaIoObjectOutputStream *s) {
  [((JavaIoObjectOutputStream *) nil_chk(s)) defaultWriteObject];
  [s writeObjectWithId:[self description]];
}

void JavaxNamingLdapRdn_readObjectWithJavaIoObjectInputStream_(JavaxNamingLdapRdn *self, JavaIoObjectInputStream *s) {
  [((JavaIoObjectInputStream *) nil_chk(s)) defaultReadObject];
  JreStrongAssignAndConsume(&self->entries_, new_JavaUtilArrayList_initWithInt_(JavaxNamingLdapRdn_DEFAULT_SIZE));
  NSString *unparsed = (NSString *) cast_chk([s readObject], [NSString class]);
  @try {
    [(create_JavaxNamingLdapRfc2253Parser_initWithNSString_(unparsed)) parseRdnWithJavaxNamingLdapRdn:self];
  }
  @catch (JavaxNamingInvalidNameException *e) {
    @throw create_JavaIoStreamCorruptedException_initWithNSString_(JreStrcat("$$", @"Invalid name: ", unparsed));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapRdn)

@implementation JavaxNamingLdapRdn_RdnEntry

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingLdapRdn_RdnEntry_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getType {
  return type_;
}

- (id)getValue {
  return value_;
}

- (jint)compareToWithId:(JavaxNamingLdapRdn_RdnEntry *)that {
  cast_chk(that, [JavaxNamingLdapRdn_RdnEntry class]);
  jint diff = [((NSString *) nil_chk(type_)) java_compareToIgnoreCase:((JavaxNamingLdapRdn_RdnEntry *) nil_chk(that))->type_];
  if (diff != 0) {
    return diff;
  }
  if ([nil_chk(value_) isEqual:that->value_]) {
    return 0;
  }
  return [((NSString *) nil_chk(JavaxNamingLdapRdn_RdnEntry_getValueComparable(self))) compareToWithId:JavaxNamingLdapRdn_RdnEntry_getValueComparable(that)];
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  if (!([obj isKindOfClass:[JavaxNamingLdapRdn_RdnEntry class]])) {
    return false;
  }
  JavaxNamingLdapRdn_RdnEntry *that = (JavaxNamingLdapRdn_RdnEntry *) cast_chk(obj, [JavaxNamingLdapRdn_RdnEntry class]);
  return ([((NSString *) nil_chk(type_)) java_equalsIgnoreCase:((JavaxNamingLdapRdn_RdnEntry *) nil_chk(that))->type_]) && ([((NSString *) nil_chk(JavaxNamingLdapRdn_RdnEntry_getValueComparable(self))) isEqual:JavaxNamingLdapRdn_RdnEntry_getValueComparable(that)]);
}

- (NSUInteger)hash {
  return (((jint) [((NSString *) nil_chk([((NSString *) nil_chk(type_)) java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)])) hash]) + ((jint) [((NSString *) nil_chk(JavaxNamingLdapRdn_RdnEntry_getValueComparable(self))) hash]));
}

- (NSString *)description {
  return JreStrcat("$C$", type_, '=', JavaxNamingLdapRdn_escapeValueWithId_(value_));
}

- (NSString *)getValueComparable {
  return JavaxNamingLdapRdn_RdnEntry_getValueComparable(self);
}

- (void)dealloc {
  RELEASE_(type_);
  RELEASE_(value_);
  RELEASE_(comparable_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getType);
  methods[2].selector = @selector(getValue);
  methods[3].selector = @selector(compareToWithId:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(getValueComparable);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "type_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "comparable_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "compareTo", "LJavaxNamingLdapRdn_RdnEntry;", "equals", "LNSObject;", "hashCode", "toString", "LJavaxNamingLdapRdn;", "Ljava/lang/Object;Ljava/lang/Comparable<Ljavax/naming/ldap/Rdn$RdnEntry;>;" };
  static const J2ObjcClassInfo _JavaxNamingLdapRdn_RdnEntry = { "RdnEntry", "javax.naming.ldap", ptrTable, methods, fields, 7, 0xa, 8, 3, 6, -1, -1, 7, -1 };
  return &_JavaxNamingLdapRdn_RdnEntry;
}

@end

void JavaxNamingLdapRdn_RdnEntry_init(JavaxNamingLdapRdn_RdnEntry *self) {
  NSObject_init(self);
  JreStrongAssign(&self->comparable_, nil);
}

JavaxNamingLdapRdn_RdnEntry *new_JavaxNamingLdapRdn_RdnEntry_init() {
  J2OBJC_NEW_IMPL(JavaxNamingLdapRdn_RdnEntry, init)
}

JavaxNamingLdapRdn_RdnEntry *create_JavaxNamingLdapRdn_RdnEntry_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapRdn_RdnEntry, init)
}

NSString *JavaxNamingLdapRdn_RdnEntry_getValueComparable(JavaxNamingLdapRdn_RdnEntry *self) {
  if (self->comparable_ != nil) {
    return self->comparable_;
  }
  if ([self->value_ isKindOfClass:[IOSByteArray class]]) {
    JreStrongAssign(&self->comparable_, JavaxNamingLdapRdn_escapeBinaryValueWithByteArray_((IOSByteArray *) cast_chk(self->value_, [IOSByteArray class])));
  }
  else {
    JreStrongAssign(&self->comparable_, [((NSString *) nil_chk(((NSString *) cast_chk(self->value_, [NSString class])))) java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)]);
  }
  return self->comparable_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapRdn_RdnEntry)
