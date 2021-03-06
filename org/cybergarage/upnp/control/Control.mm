//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/Control.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/control/Control.h"

NSString *OrgCybergarageUpnpControlControl_NS = @"u";
NSString *OrgCybergarageUpnpControlControl_QUERY_SOAPACTION = @"urn:schemas-upnp-org:control-1-0#QueryStateVariable";
NSString *OrgCybergarageUpnpControlControl_XMLNS = @"urn:schemas-upnp-org:control-1-0";
NSString *OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE = @"QueryStateVariable";
NSString *OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE_RESPONSE = @"QueryStateVariableResponse";
NSString *OrgCybergarageUpnpControlControl_VAR_NAME = @"varName";
NSString *OrgCybergarageUpnpControlControl_RETURN = @"return";

@implementation OrgCybergarageUpnpControlControl

+ (NSString *)NS {
  return OrgCybergarageUpnpControlControl_NS;
}

+ (NSString *)QUERY_SOAPACTION {
  return OrgCybergarageUpnpControlControl_QUERY_SOAPACTION;
}

+ (NSString *)XMLNS {
  return OrgCybergarageUpnpControlControl_XMLNS;
}

+ (NSString *)QUERY_STATE_VARIABLE {
  return OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE;
}

+ (NSString *)QUERY_STATE_VARIABLE_RESPONSE {
  return OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE_RESPONSE;
}

+ (NSString *)VAR_NAME {
  return OrgCybergarageUpnpControlControl_VAR_NAME;
}

+ (NSString *)RETURN {
  return OrgCybergarageUpnpControlControl_RETURN;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpControlControl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
    { "QUERY_SOAPACTION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 1, -1, -1 },
    { "XMLNS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "QUERY_STATE_VARIABLE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "QUERY_STATE_VARIABLE_RESPONSE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "VAR_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "RETURN", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { &OrgCybergarageUpnpControlControl_NS, &OrgCybergarageUpnpControlControl_QUERY_SOAPACTION, &OrgCybergarageUpnpControlControl_XMLNS, &OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE, &OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE_RESPONSE, &OrgCybergarageUpnpControlControl_VAR_NAME, &OrgCybergarageUpnpControlControl_RETURN };
  static const J2ObjcClassInfo _OrgCybergarageUpnpControlControl = { "Control", "org.cybergarage.upnp.control", ptrTable, methods, fields, 7, 0x1, 1, 7, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpControlControl;
}

@end

void OrgCybergarageUpnpControlControl_init(OrgCybergarageUpnpControlControl *self) {
  NSObject_init(self);
}

OrgCybergarageUpnpControlControl *new_OrgCybergarageUpnpControlControl_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlControl, init)
}

OrgCybergarageUpnpControlControl *create_OrgCybergarageUpnpControlControl_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlControl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpControlControl)
