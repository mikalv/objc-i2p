//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/XML.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "org/cybergarage/xml/XML.h"

@interface OrgCybergarageXmlXML ()

+ (NSString *)escapeXMLCharsWithNSString:(NSString *)input
                             withBoolean:(jboolean)quote;

@end

__attribute__((unused)) static NSString *OrgCybergarageXmlXML_escapeXMLCharsWithNSString_withBoolean_(NSString *input, jboolean quote);

NSString *OrgCybergarageXmlXML_DEFAULT_CONTENT_TYPE = @"text/xml; charset=\"utf-8\"";
NSString *OrgCybergarageXmlXML_DEFAULT_CONTENT_LANGUAGE = @"en";
NSString *OrgCybergarageXmlXML_CHARSET_UTF8 = @"utf-8";

@implementation OrgCybergarageXmlXML

+ (NSString *)DEFAULT_CONTENT_TYPE {
  return OrgCybergarageXmlXML_DEFAULT_CONTENT_TYPE;
}

+ (NSString *)DEFAULT_CONTENT_LANGUAGE {
  return OrgCybergarageXmlXML_DEFAULT_CONTENT_LANGUAGE;
}

+ (NSString *)CHARSET_UTF8 {
  return OrgCybergarageXmlXML_CHARSET_UTF8;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageXmlXML_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)escapeXMLCharsWithNSString:(NSString *)input
                             withBoolean:(jboolean)quote {
  return OrgCybergarageXmlXML_escapeXMLCharsWithNSString_withBoolean_(input, quote);
}

+ (NSString *)escapeXMLCharsWithNSString:(NSString *)input {
  return OrgCybergarageXmlXML_escapeXMLCharsWithNSString_(input);
}

+ (NSString *)unescapeXMLCharsWithNSString:(NSString *)input {
  return OrgCybergarageXmlXML_unescapeXMLCharsWithNSString_(input);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1a, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(escapeXMLCharsWithNSString:withBoolean:);
  methods[2].selector = @selector(escapeXMLCharsWithNSString:);
  methods[3].selector = @selector(unescapeXMLCharsWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_CONTENT_TYPE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "DEFAULT_CONTENT_LANGUAGE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "CHARSET_UTF8", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "escapeXMLChars", "LNSString;Z", "LNSString;", "unescapeXMLChars", &OrgCybergarageXmlXML_DEFAULT_CONTENT_TYPE, &OrgCybergarageXmlXML_DEFAULT_CONTENT_LANGUAGE, &OrgCybergarageXmlXML_CHARSET_UTF8 };
  static const J2ObjcClassInfo _OrgCybergarageXmlXML = { "XML", "org.cybergarage.xml", ptrTable, methods, fields, 7, 0x1, 4, 3, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageXmlXML;
}

@end

void OrgCybergarageXmlXML_init(OrgCybergarageXmlXML *self) {
  NSObject_init(self);
}

OrgCybergarageXmlXML *new_OrgCybergarageXmlXML_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlXML, init)
}

OrgCybergarageXmlXML *create_OrgCybergarageXmlXML_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlXML, init)
}

NSString *OrgCybergarageXmlXML_escapeXMLCharsWithNSString_withBoolean_(NSString *input, jboolean quote) {
  OrgCybergarageXmlXML_initialize();
  if (input == nil) return nil;
  JavaLangStringBuffer *out = create_JavaLangStringBuffer_init();
  jint oldsize = [input java_length];
  IOSCharArray *old = [IOSCharArray arrayWithLength:oldsize];
  [input java_getChars:0 sourceEnd:oldsize destination:old destinationBegin:0];
  jint selstart = 0;
  NSString *entity = nil;
  for (jint i = 0; i < oldsize; i++) {
    switch (IOSCharArray_Get(old, i)) {
      case '&':
      entity = @"&amp;";
      break;
      case '<':
      entity = @"&lt;";
      break;
      case '>':
      entity = @"&gt;";
      break;
      case '\'':
      if (quote) {
        entity = @"&apos;";
        break;
      }
      case '"':
      if (quote) {
        entity = @"&quot;";
        break;
      }
    }
    if (entity != nil) {
      [out appendWithCharArray:old withInt:selstart withInt:i - selstart];
      [out appendWithNSString:entity];
      selstart = i + 1;
      entity = nil;
    }
  }
  if (selstart == 0) return input;
  [out appendWithCharArray:old withInt:selstart withInt:oldsize - selstart];
  return [out description];
}

NSString *OrgCybergarageXmlXML_escapeXMLCharsWithNSString_(NSString *input) {
  OrgCybergarageXmlXML_initialize();
  return OrgCybergarageXmlXML_escapeXMLCharsWithNSString_withBoolean_(input, true);
}

NSString *OrgCybergarageXmlXML_unescapeXMLCharsWithNSString_(NSString *input) {
  OrgCybergarageXmlXML_initialize();
  if (input == nil) return nil;
  NSString *outStr;
  outStr = [input java_replace:@"&amp;" withSequence:@"&"];
  outStr = [((NSString *) nil_chk(outStr)) java_replace:@"&lt;" withSequence:@"<"];
  outStr = [((NSString *) nil_chk(outStr)) java_replace:@"&gt;" withSequence:@">"];
  outStr = [((NSString *) nil_chk(outStr)) java_replace:@"&apos;" withSequence:@"'"];
  outStr = [((NSString *) nil_chk(outStr)) java_replace:@"&quot;" withSequence:@"\""];
  return outStr;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageXmlXML)
