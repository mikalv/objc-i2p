//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/xml/ArgumentData.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/xml/ArgumentData.h"
#include "org/cybergarage/upnp/xml/NodeData.h"

@interface OrgCybergarageUpnpXmlArgumentData () {
 @public
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpXmlArgumentData, value_, NSString *)

@implementation OrgCybergarageUpnpXmlArgumentData

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpXmlArgumentData_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getValue {
  return value_;
}

- (void)setValueWithNSString:(NSString *)value {
  JreStrongAssign(&self->value_, value);
}

- (void)dealloc {
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getValue);
  methods[2].selector = @selector(setValueWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setValue", "LNSString;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpXmlArgumentData = { "ArgumentData", "org.cybergarage.upnp.xml", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpXmlArgumentData;
}

@end

void OrgCybergarageUpnpXmlArgumentData_init(OrgCybergarageUpnpXmlArgumentData *self) {
  OrgCybergarageUpnpXmlNodeData_init(self);
  JreStrongAssign(&self->value_, @"");
}

OrgCybergarageUpnpXmlArgumentData *new_OrgCybergarageUpnpXmlArgumentData_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpXmlArgumentData, init)
}

OrgCybergarageUpnpXmlArgumentData *create_OrgCybergarageUpnpXmlArgumentData_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpXmlArgumentData, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpXmlArgumentData)
