//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/ParserException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "org/cybergarage/xml/ParserException.h"

@implementation OrgCybergarageXmlParserException

- (instancetype)initWithJavaLangException:(JavaLangException *)e {
  OrgCybergarageXmlParserException_initWithJavaLangException_(self, e);
  return self;
}

- (instancetype)initWithNSString:(NSString *)s {
  OrgCybergarageXmlParserException_initWithNSString_(self, s);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaLangException:);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaLangException;", "LNSString;" };
  static const J2ObjcClassInfo _OrgCybergarageXmlParserException = { "ParserException", "org.cybergarage.xml", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageXmlParserException;
}

@end

void OrgCybergarageXmlParserException_initWithJavaLangException_(OrgCybergarageXmlParserException *self, JavaLangException *e) {
  JavaLangException_initWithJavaLangThrowable_(self, e);
}

OrgCybergarageXmlParserException *new_OrgCybergarageXmlParserException_initWithJavaLangException_(JavaLangException *e) {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlParserException, initWithJavaLangException_, e)
}

OrgCybergarageXmlParserException *create_OrgCybergarageXmlParserException_initWithJavaLangException_(JavaLangException *e) {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlParserException, initWithJavaLangException_, e)
}

void OrgCybergarageXmlParserException_initWithNSString_(OrgCybergarageXmlParserException *self, NSString *s) {
  JavaLangException_initWithNSString_(self, s);
}

OrgCybergarageXmlParserException *new_OrgCybergarageXmlParserException_initWithNSString_(NSString *s) {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlParserException, initWithNSString_, s)
}

OrgCybergarageXmlParserException *create_OrgCybergarageXmlParserException_initWithNSString_(NSString *s) {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlParserException, initWithNSString_, s)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageXmlParserException)
