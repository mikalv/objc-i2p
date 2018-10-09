//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/AllowedValueRange.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/AllowedValueRange.h"
#include "org/cybergarage/xml/Node.h"

@interface OrgCybergarageUpnpAllowedValueRange () {
 @public
  OrgCybergarageXmlNode *allowedValueRangeNode_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpAllowedValueRange, allowedValueRangeNode_, OrgCybergarageXmlNode *)

inline NSString *OrgCybergarageUpnpAllowedValueRange_get_MINIMUM(void);
static NSString *OrgCybergarageUpnpAllowedValueRange_MINIMUM = @"minimum";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpAllowedValueRange, MINIMUM, NSString *)

inline NSString *OrgCybergarageUpnpAllowedValueRange_get_MAXIMUM(void);
static NSString *OrgCybergarageUpnpAllowedValueRange_MAXIMUM = @"maximum";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpAllowedValueRange, MAXIMUM, NSString *)

inline NSString *OrgCybergarageUpnpAllowedValueRange_get_STEP(void);
static NSString *OrgCybergarageUpnpAllowedValueRange_STEP = @"step";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpAllowedValueRange, STEP, NSString *)

NSString *OrgCybergarageUpnpAllowedValueRange_ELEM_NAME = @"allowedValueRange";

@implementation OrgCybergarageUpnpAllowedValueRange

+ (NSString *)ELEM_NAME {
  return OrgCybergarageUpnpAllowedValueRange_ELEM_NAME;
}

- (OrgCybergarageXmlNode *)getAllowedValueRangeNode {
  return allowedValueRangeNode_;
}

- (instancetype)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  OrgCybergarageUpnpAllowedValueRange_initWithOrgCybergarageXmlNode_(self, node);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpAllowedValueRange_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSNumber:(NSNumber *)max
                    withNSNumber:(NSNumber *)min
                    withNSNumber:(NSNumber *)step {
  OrgCybergarageUpnpAllowedValueRange_initWithNSNumber_withNSNumber_withNSNumber_(self, max, min, step);
  return self;
}

+ (jboolean)isAllowedValueRangeNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  return OrgCybergarageUpnpAllowedValueRange_isAllowedValueRangeNodeWithOrgCybergarageXmlNode_(node);
}

- (void)setMinimumWithNSString:(NSString *)value {
  [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueRangeNode])) setNodeWithNSString:OrgCybergarageUpnpAllowedValueRange_MINIMUM withNSString:value];
}

- (NSString *)getMinimum {
  return [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueRangeNode])) getNodeValueWithNSString:OrgCybergarageUpnpAllowedValueRange_MINIMUM];
}

- (void)setMaximumWithNSString:(NSString *)value {
  [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueRangeNode])) setNodeWithNSString:OrgCybergarageUpnpAllowedValueRange_MAXIMUM withNSString:value];
}

- (NSString *)getMaximum {
  return [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueRangeNode])) getNodeValueWithNSString:OrgCybergarageUpnpAllowedValueRange_MAXIMUM];
}

- (void)setStepWithNSString:(NSString *)value {
  [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueRangeNode])) setNodeWithNSString:OrgCybergarageUpnpAllowedValueRange_STEP withNSString:value];
}

- (NSString *)getStep {
  return [((OrgCybergarageXmlNode *) nil_chk([self getAllowedValueRangeNode])) getNodeValueWithNSString:OrgCybergarageUpnpAllowedValueRange_STEP];
}

- (void)dealloc {
  RELEASE_(allowedValueRangeNode_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgCybergarageXmlNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getAllowedValueRangeNode);
  methods[1].selector = @selector(initWithOrgCybergarageXmlNode:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(initWithNSNumber:withNSNumber:withNSNumber:);
  methods[4].selector = @selector(isAllowedValueRangeNodeWithOrgCybergarageXmlNode:);
  methods[5].selector = @selector(setMinimumWithNSString:);
  methods[6].selector = @selector(getMinimum);
  methods[7].selector = @selector(setMaximumWithNSString:);
  methods[8].selector = @selector(getMaximum);
  methods[9].selector = @selector(setStepWithNSString:);
  methods[10].selector = @selector(getStep);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ELEM_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "allowedValueRangeNode_", "LOrgCybergarageXmlNode;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MINIMUM", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "MAXIMUM", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "STEP", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgCybergarageXmlNode;", "LNSNumber;LNSNumber;LNSNumber;", "isAllowedValueRangeNode", "setMinimum", "LNSString;", "setMaximum", "setStep", &OrgCybergarageUpnpAllowedValueRange_ELEM_NAME, &OrgCybergarageUpnpAllowedValueRange_MINIMUM, &OrgCybergarageUpnpAllowedValueRange_MAXIMUM, &OrgCybergarageUpnpAllowedValueRange_STEP };
  static const J2ObjcClassInfo _OrgCybergarageUpnpAllowedValueRange = { "AllowedValueRange", "org.cybergarage.upnp", ptrTable, methods, fields, 7, 0x1, 11, 5, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpAllowedValueRange;
}

@end

void OrgCybergarageUpnpAllowedValueRange_initWithOrgCybergarageXmlNode_(OrgCybergarageUpnpAllowedValueRange *self, OrgCybergarageXmlNode *node) {
  NSObject_init(self);
  JreStrongAssign(&self->allowedValueRangeNode_, node);
}

OrgCybergarageUpnpAllowedValueRange *new_OrgCybergarageUpnpAllowedValueRange_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpAllowedValueRange, initWithOrgCybergarageXmlNode_, node)
}

OrgCybergarageUpnpAllowedValueRange *create_OrgCybergarageUpnpAllowedValueRange_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpAllowedValueRange, initWithOrgCybergarageXmlNode_, node)
}

void OrgCybergarageUpnpAllowedValueRange_init(OrgCybergarageUpnpAllowedValueRange *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->allowedValueRangeNode_, new_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageUpnpAllowedValueRange_ELEM_NAME));
}

OrgCybergarageUpnpAllowedValueRange *new_OrgCybergarageUpnpAllowedValueRange_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpAllowedValueRange, init)
}

OrgCybergarageUpnpAllowedValueRange *create_OrgCybergarageUpnpAllowedValueRange_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpAllowedValueRange, init)
}

void OrgCybergarageUpnpAllowedValueRange_initWithNSNumber_withNSNumber_withNSNumber_(OrgCybergarageUpnpAllowedValueRange *self, NSNumber *max, NSNumber *min, NSNumber *step) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->allowedValueRangeNode_, new_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageUpnpAllowedValueRange_ELEM_NAME));
  if (max != nil) [self setMaximumWithNSString:[max description]];
  if (min != nil) [self setMinimumWithNSString:[min description]];
  if (step != nil) [self setStepWithNSString:[step description]];
}

OrgCybergarageUpnpAllowedValueRange *new_OrgCybergarageUpnpAllowedValueRange_initWithNSNumber_withNSNumber_withNSNumber_(NSNumber *max, NSNumber *min, NSNumber *step) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpAllowedValueRange, initWithNSNumber_withNSNumber_withNSNumber_, max, min, step)
}

OrgCybergarageUpnpAllowedValueRange *create_OrgCybergarageUpnpAllowedValueRange_initWithNSNumber_withNSNumber_withNSNumber_(NSNumber *max, NSNumber *min, NSNumber *step) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpAllowedValueRange, initWithNSNumber_withNSNumber_withNSNumber_, max, min, step)
}

jboolean OrgCybergarageUpnpAllowedValueRange_isAllowedValueRangeNodeWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) {
  OrgCybergarageUpnpAllowedValueRange_initialize();
  return [((NSString *) nil_chk(OrgCybergarageUpnpAllowedValueRange_ELEM_NAME)) isEqual:[((OrgCybergarageXmlNode *) nil_chk(node)) getName]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpAllowedValueRange)
