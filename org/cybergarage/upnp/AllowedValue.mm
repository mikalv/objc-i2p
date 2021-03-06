//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/AllowedValue.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/AllowedValue.h"
#include "org/cybergarage/xml/Node.h"

@interface OrgCybergarageUpnpAllowedValue () {
 @public
  OrgCybergarageXmlNode *allowedValueNode_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpAllowedValue, allowedValueNode_, OrgCybergarageXmlNode *)

NSString *OrgCybergarageUpnpAllowedValue_ELEM_NAME = @"allowedValue";

@implementation OrgCybergarageUpnpAllowedValue

+ (NSString *)ELEM_NAME {
  return OrgCybergarageUpnpAllowedValue_ELEM_NAME;
}

- (OrgCybergarageXmlNode *)getAllowedValueNode {
  return allowedValueNode_;
}

- (instancetype)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  OrgCybergarageUpnpAllowedValue_initWithOrgCybergarageXmlNode_(self, node);
  return self;
}

- (instancetype)initWithNSString:(NSString *)value {
  OrgCybergarageUpnpAllowedValue_initWithNSString_(self, value);
  return self;
}

+ (jboolean)isAllowedValueNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  return OrgCybergarageUpnpAllowedValue_isAllowedValueNodeWithOrgCybergarageXmlNode_(node);
}

- (void)setValueWithNSString:(NSString *)value {
  [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueNode])) setValueWithNSString:value];
}

- (NSString *)getValue {
  return [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueNode])) getValue];
}

- (void)dealloc {
  RELEASE_(allowedValueNode_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgCybergarageXmlNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getAllowedValueNode);
  methods[1].selector = @selector(initWithOrgCybergarageXmlNode:);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(isAllowedValueNodeWithOrgCybergarageXmlNode:);
  methods[4].selector = @selector(setValueWithNSString:);
  methods[5].selector = @selector(getValue);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ELEM_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "allowedValueNode_", "LOrgCybergarageXmlNode;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgCybergarageXmlNode;", "LNSString;", "isAllowedValueNode", "setValue", &OrgCybergarageUpnpAllowedValue_ELEM_NAME };
  static const J2ObjcClassInfo _OrgCybergarageUpnpAllowedValue = { "AllowedValue", "org.cybergarage.upnp", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpAllowedValue;
}

@end

void OrgCybergarageUpnpAllowedValue_initWithOrgCybergarageXmlNode_(OrgCybergarageUpnpAllowedValue *self, OrgCybergarageXmlNode *node) {
  NSObject_init(self);
  JreStrongAssign(&self->allowedValueNode_, node);
}

OrgCybergarageUpnpAllowedValue *new_OrgCybergarageUpnpAllowedValue_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpAllowedValue, initWithOrgCybergarageXmlNode_, node)
}

OrgCybergarageUpnpAllowedValue *create_OrgCybergarageUpnpAllowedValue_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpAllowedValue, initWithOrgCybergarageXmlNode_, node)
}

void OrgCybergarageUpnpAllowedValue_initWithNSString_(OrgCybergarageUpnpAllowedValue *self, NSString *value) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->allowedValueNode_, new_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageUpnpAllowedValue_ELEM_NAME));
  [self setValueWithNSString:value];
}

OrgCybergarageUpnpAllowedValue *new_OrgCybergarageUpnpAllowedValue_initWithNSString_(NSString *value) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpAllowedValue, initWithNSString_, value)
}

OrgCybergarageUpnpAllowedValue *create_OrgCybergarageUpnpAllowedValue_initWithNSString_(NSString *value) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpAllowedValue, initWithNSString_, value)
}

jboolean OrgCybergarageUpnpAllowedValue_isAllowedValueNodeWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) {
  OrgCybergarageUpnpAllowedValue_initialize();
  return [((NSString *) nil_chk(OrgCybergarageUpnpAllowedValue_ELEM_NAME)) isEqual:[((OrgCybergarageXmlNode *) nil_chk(node)) getName]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpAllowedValue)
