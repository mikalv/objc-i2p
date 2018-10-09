//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPHeader.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/LineNumberReader.h"
#include "java/io/StringReader.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/util/Locale.h"
#include "org/cybergarage/http/HTTPHeader.h"
#include "org/cybergarage/util/Debug.h"

@interface OrgCybergarageHttpHTTPHeader () {
 @public
  NSString *name_;
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPHeader, name_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPHeader, value_, NSString *)

inline jint OrgCybergarageHttpHTTPHeader_get_MAX_LENGTH(void);
inline jint OrgCybergarageHttpHTTPHeader_set_MAX_LENGTH(jint value);
inline jint *OrgCybergarageHttpHTTPHeader_getRef_MAX_LENGTH(void);
static jint OrgCybergarageHttpHTTPHeader_MAX_LENGTH = 1024;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgCybergarageHttpHTTPHeader, MAX_LENGTH, jint)

@implementation OrgCybergarageHttpHTTPHeader

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value {
  OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(self, name, value);
  return self;
}

- (instancetype)initWithNSString:(NSString *)lineStr {
  OrgCybergarageHttpHTTPHeader_initWithNSString_(self, lineStr);
  return self;
}

- (void)setNameWithNSString:(NSString *)name {
  JreStrongAssign(&self->name_, name);
}

- (void)setValueWithNSString:(NSString *)value {
  JreStrongAssign(&self->value_, value);
}

- (NSString *)getName {
  return name_;
}

- (NSString *)getValue {
  return value_;
}

- (jboolean)hasName {
  if (name_ == nil || [name_ java_length] <= 0) return false;
  return true;
}

+ (NSString *)getValueWithJavaIoLineNumberReader:(JavaIoLineNumberReader *)reader
                                    withNSString:(NSString *)name {
  return OrgCybergarageHttpHTTPHeader_getValueWithJavaIoLineNumberReader_withNSString_(reader, name);
}

+ (NSString *)getValueWithNSString:(NSString *)data
                      withNSString:(NSString *)name {
  return OrgCybergarageHttpHTTPHeader_getValueWithNSString_withNSString_(data, name);
}

+ (NSString *)getValueWithByteArray:(IOSByteArray *)data
                       withNSString:(NSString *)name {
  return OrgCybergarageHttpHTTPHeader_getValueWithByteArray_withNSString_(data, name);
}

+ (jint)getIntegerValueWithNSString:(NSString *)data
                       withNSString:(NSString *)name {
  return OrgCybergarageHttpHTTPHeader_getIntegerValueWithNSString_withNSString_(data, name);
}

+ (jint)getIntegerValueWithByteArray:(IOSByteArray *)data
                        withNSString:(NSString *)name {
  return OrgCybergarageHttpHTTPHeader_getIntegerValueWithByteArray_withNSString_(data, name);
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 4, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 4, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x19, 7, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x19, 7, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(setNameWithNSString:);
  methods[3].selector = @selector(setValueWithNSString:);
  methods[4].selector = @selector(getName);
  methods[5].selector = @selector(getValue);
  methods[6].selector = @selector(hasName);
  methods[7].selector = @selector(getValueWithJavaIoLineNumberReader:withNSString:);
  methods[8].selector = @selector(getValueWithNSString:withNSString:);
  methods[9].selector = @selector(getValueWithByteArray:withNSString:);
  methods[10].selector = @selector(getIntegerValueWithNSString:withNSString:);
  methods[11].selector = @selector(getIntegerValueWithByteArray:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_LENGTH", "I", .constantValue.asLong = 0, 0xa, -1, 8, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "LNSString;", "setName", "setValue", "getValue", "LJavaIoLineNumberReader;LNSString;", "[BLNSString;", "getIntegerValue", &OrgCybergarageHttpHTTPHeader_MAX_LENGTH };
  static const J2ObjcClassInfo _OrgCybergarageHttpHTTPHeader = { "HTTPHeader", "org.cybergarage.http", ptrTable, methods, fields, 7, 0x1, 12, 3, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageHttpHTTPHeader;
}

@end

void OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(OrgCybergarageHttpHTTPHeader *self, NSString *name, NSString *value) {
  NSObject_init(self);
  [self setNameWithNSString:name];
  [self setValueWithNSString:value];
}

OrgCybergarageHttpHTTPHeader *new_OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(NSString *name, NSString *value) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPHeader, initWithNSString_withNSString_, name, value)
}

OrgCybergarageHttpHTTPHeader *create_OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(NSString *name, NSString *value) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPHeader, initWithNSString_withNSString_, name, value)
}

void OrgCybergarageHttpHTTPHeader_initWithNSString_(OrgCybergarageHttpHTTPHeader *self, NSString *lineStr) {
  NSObject_init(self);
  [self setNameWithNSString:@""];
  [self setValueWithNSString:@""];
  if (lineStr == nil) return;
  jint colonIdx = [lineStr java_indexOf:':'];
  if (colonIdx < 0) return;
  NSString *name = [NSString java_stringWithBytes:[lineStr java_getBytes] offset:0 length:colonIdx];
  NSString *value = [NSString java_stringWithBytes:[lineStr java_getBytes] offset:colonIdx + 1 length:[lineStr java_length] - colonIdx - 1];
  [self setNameWithNSString:[name java_trim]];
  [self setValueWithNSString:[value java_trim]];
}

OrgCybergarageHttpHTTPHeader *new_OrgCybergarageHttpHTTPHeader_initWithNSString_(NSString *lineStr) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPHeader, initWithNSString_, lineStr)
}

OrgCybergarageHttpHTTPHeader *create_OrgCybergarageHttpHTTPHeader_initWithNSString_(NSString *lineStr) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPHeader, initWithNSString_, lineStr)
}

NSString *OrgCybergarageHttpHTTPHeader_getValueWithJavaIoLineNumberReader_withNSString_(JavaIoLineNumberReader *reader, NSString *name) {
  OrgCybergarageHttpHTTPHeader_initialize();
  NSString *bigName = [((NSString *) nil_chk(name)) java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
  @try {
    NSString *lineStr = [((JavaIoLineNumberReader *) nil_chk(reader)) readLine];
    while (lineStr != nil && 0 < [lineStr java_length]) {
      OrgCybergarageHttpHTTPHeader *header = create_OrgCybergarageHttpHTTPHeader_initWithNSString_(lineStr);
      if ([header hasName] == false) {
        lineStr = [reader readLine];
        continue;
      }
      NSString *bigLineHeaderName = [((NSString *) nil_chk([header getName])) java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
      if ([((NSString *) nil_chk(bigLineHeaderName)) isEqual:bigName] == false) {
        lineStr = [reader readLine];
        continue;
      }
      return [header getValue];
    }
  }
  @catch (JavaIoIOException *e) {
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
    return @"";
  }
  return @"";
}

NSString *OrgCybergarageHttpHTTPHeader_getValueWithNSString_withNSString_(NSString *data, NSString *name) {
  OrgCybergarageHttpHTTPHeader_initialize();
  if ([((NSString *) nil_chk(data)) java_length] <= 0) return @"";
  JavaIoStringReader *strReader = create_JavaIoStringReader_initWithNSString_(data);
  JavaIoLineNumberReader *lineReader = create_JavaIoLineNumberReader_initWithJavaIoReader_withInt_(strReader, JavaLangMath_minWithInt_withInt_([data java_length], OrgCybergarageHttpHTTPHeader_MAX_LENGTH));
  return OrgCybergarageHttpHTTPHeader_getValueWithJavaIoLineNumberReader_withNSString_(lineReader, name);
}

NSString *OrgCybergarageHttpHTTPHeader_getValueWithByteArray_withNSString_(IOSByteArray *data, NSString *name) {
  OrgCybergarageHttpHTTPHeader_initialize();
  return OrgCybergarageHttpHTTPHeader_getValueWithNSString_withNSString_([NSString java_stringWithBytes:data], name);
}

jint OrgCybergarageHttpHTTPHeader_getIntegerValueWithNSString_withNSString_(NSString *data, NSString *name) {
  OrgCybergarageHttpHTTPHeader_initialize();
  @try {
    return JavaLangInteger_parseIntWithNSString_(OrgCybergarageHttpHTTPHeader_getValueWithNSString_withNSString_(data, name));
  }
  @catch (JavaLangException *e) {
    return 0;
  }
}

jint OrgCybergarageHttpHTTPHeader_getIntegerValueWithByteArray_withNSString_(IOSByteArray *data, NSString *name) {
  OrgCybergarageHttpHTTPHeader_initialize();
  @try {
    return JavaLangInteger_parseIntWithNSString_(OrgCybergarageHttpHTTPHeader_getValueWithByteArray_withNSString_(data, name));
  }
  @catch (JavaLangException *e) {
    return 0;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageHttpHTTPHeader)