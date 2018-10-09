//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/ControlResponse.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "org/cybergarage/http/HTTPStatus.h"
#include "org/cybergarage/soap/SOAP.h"
#include "org/cybergarage/soap/SOAPResponse.h"
#include "org/cybergarage/upnp/UPnP.h"
#include "org/cybergarage/upnp/UPnPStatus.h"
#include "org/cybergarage/upnp/control/Control.h"
#include "org/cybergarage/upnp/control/ControlResponse.h"
#include "org/cybergarage/xml/Node.h"

@interface OrgCybergarageUpnpControlControlResponse () {
 @public
  OrgCybergarageUpnpUPnPStatus *upnpErr_;
}

- (OrgCybergarageXmlNode *)createFaultResponseNodeWithInt:(jint)errCode
                                             withNSString:(NSString *)errDescr;

- (OrgCybergarageXmlNode *)createFaultResponseNodeWithInt:(jint)errCode;

- (OrgCybergarageXmlNode *)getUPnPErrorNode;

- (OrgCybergarageXmlNode *)getUPnPErrorCodeNode;

- (OrgCybergarageXmlNode *)getUPnPErrorDescriptionNode;

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpControlControlResponse, upnpErr_, OrgCybergarageUpnpUPnPStatus *)

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_withNSString_(OrgCybergarageUpnpControlControlResponse *self, jint errCode, NSString *errDescr);

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_(OrgCybergarageUpnpControlControlResponse *self, jint errCode);

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_getUPnPErrorNode(OrgCybergarageUpnpControlControlResponse *self);

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_getUPnPErrorCodeNode(OrgCybergarageUpnpControlControlResponse *self);

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_getUPnPErrorDescriptionNode(OrgCybergarageUpnpControlControlResponse *self);

NSString *OrgCybergarageUpnpControlControlResponse_FAULT_CODE = @"Client";
NSString *OrgCybergarageUpnpControlControlResponse_FAULT_STRING = @"UPnPError";

@implementation OrgCybergarageUpnpControlControlResponse

+ (NSString *)FAULT_CODE {
  return OrgCybergarageUpnpControlControlResponse_FAULT_CODE;
}

+ (NSString *)FAULT_STRING {
  return OrgCybergarageUpnpControlControlResponse_FAULT_STRING;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpControlControlResponse_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgCybergarageSoapSOAPResponse:(OrgCybergarageSoapSOAPResponse *)soapRes {
  OrgCybergarageUpnpControlControlResponse_initWithOrgCybergarageSoapSOAPResponse_(self, soapRes);
  return self;
}

- (void)setFaultResponseWithInt:(jint)errCode
                   withNSString:(NSString *)errDescr {
  [self setStatusCodeWithInt:OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR];
  OrgCybergarageXmlNode *bodyNode = [self getBodyNode];
  OrgCybergarageXmlNode *faultNode = OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_withNSString_(self, errCode, errDescr);
  [((OrgCybergarageXmlNode *) nil_chk(bodyNode)) addNodeWithOrgCybergarageXmlNode:faultNode];
  OrgCybergarageXmlNode *envNode = [self getEnvelopeNode];
  [self setContentWithOrgCybergarageXmlNode:envNode];
}

- (void)setFaultResponseWithInt:(jint)errCode {
  [self setFaultResponseWithInt:errCode withNSString:OrgCybergarageUpnpUPnPStatus_code2StringWithInt_(errCode)];
}

- (OrgCybergarageXmlNode *)createFaultResponseNodeWithInt:(jint)errCode
                                             withNSString:(NSString *)errDescr {
  return OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_withNSString_(self, errCode, errDescr);
}

- (OrgCybergarageXmlNode *)createFaultResponseNodeWithInt:(jint)errCode {
  return OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_(self, errCode);
}

- (OrgCybergarageXmlNode *)getUPnPErrorNode {
  return OrgCybergarageUpnpControlControlResponse_getUPnPErrorNode(self);
}

- (OrgCybergarageXmlNode *)getUPnPErrorCodeNode {
  return OrgCybergarageUpnpControlControlResponse_getUPnPErrorCodeNode(self);
}

- (OrgCybergarageXmlNode *)getUPnPErrorDescriptionNode {
  return OrgCybergarageUpnpControlControlResponse_getUPnPErrorDescriptionNode(self);
}

- (jint)getUPnPErrorCode {
  OrgCybergarageXmlNode *errorCodeNode = OrgCybergarageUpnpControlControlResponse_getUPnPErrorCodeNode(self);
  if (errorCodeNode == nil) return -1;
  NSString *errorCodeStr = [errorCodeNode getValue];
  @try {
    return JavaLangInteger_parseIntWithNSString_(errorCodeStr);
  }
  @catch (JavaLangException *e) {
    return -1;
  }
}

- (NSString *)getUPnPErrorDescription {
  OrgCybergarageXmlNode *errorDescNode = OrgCybergarageUpnpControlControlResponse_getUPnPErrorDescriptionNode(self);
  if (errorDescNode == nil) return @"";
  return [errorDescNode getValue];
}

- (OrgCybergarageUpnpUPnPStatus *)getUPnPError {
  jint code = 0;
  NSString *desc = @"";
  code = [self getUPnPErrorCode];
  desc = [self getUPnPErrorDescription];
  [((OrgCybergarageUpnpUPnPStatus *) nil_chk(upnpErr_)) setCodeWithInt:code];
  [((OrgCybergarageUpnpUPnPStatus *) nil_chk(upnpErr_)) setDescriptionWithNSString:desc];
  return upnpErr_;
}

- (void)dealloc {
  RELEASE_(upnpErr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, 4, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpUPnPStatus;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgCybergarageSoapSOAPResponse:);
  methods[2].selector = @selector(setFaultResponseWithInt:withNSString:);
  methods[3].selector = @selector(setFaultResponseWithInt:);
  methods[4].selector = @selector(createFaultResponseNodeWithInt:withNSString:);
  methods[5].selector = @selector(createFaultResponseNodeWithInt:);
  methods[6].selector = @selector(getUPnPErrorNode);
  methods[7].selector = @selector(getUPnPErrorCodeNode);
  methods[8].selector = @selector(getUPnPErrorDescriptionNode);
  methods[9].selector = @selector(getUPnPErrorCode);
  methods[10].selector = @selector(getUPnPErrorDescription);
  methods[11].selector = @selector(getUPnPError);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FAULT_CODE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "FAULT_STRING", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "upnpErr_", "LOrgCybergarageUpnpUPnPStatus;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgCybergarageSoapSOAPResponse;", "setFaultResponse", "ILNSString;", "I", "createFaultResponseNode", &OrgCybergarageUpnpControlControlResponse_FAULT_CODE, &OrgCybergarageUpnpControlControlResponse_FAULT_STRING };
  static const J2ObjcClassInfo _OrgCybergarageUpnpControlControlResponse = { "ControlResponse", "org.cybergarage.upnp.control", ptrTable, methods, fields, 7, 0x1, 12, 3, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpControlControlResponse;
}

@end

void OrgCybergarageUpnpControlControlResponse_init(OrgCybergarageUpnpControlControlResponse *self) {
  OrgCybergarageSoapSOAPResponse_init(self);
  JreStrongAssignAndConsume(&self->upnpErr_, new_OrgCybergarageUpnpUPnPStatus_init());
  [self setServerWithNSString:OrgCybergarageUpnpUPnP_getServerName()];
}

OrgCybergarageUpnpControlControlResponse *new_OrgCybergarageUpnpControlControlResponse_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlControlResponse, init)
}

OrgCybergarageUpnpControlControlResponse *create_OrgCybergarageUpnpControlControlResponse_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlControlResponse, init)
}

void OrgCybergarageUpnpControlControlResponse_initWithOrgCybergarageSoapSOAPResponse_(OrgCybergarageUpnpControlControlResponse *self, OrgCybergarageSoapSOAPResponse *soapRes) {
  OrgCybergarageSoapSOAPResponse_initWithOrgCybergarageSoapSOAPResponse_(self, soapRes);
  JreStrongAssignAndConsume(&self->upnpErr_, new_OrgCybergarageUpnpUPnPStatus_init());
}

OrgCybergarageUpnpControlControlResponse *new_OrgCybergarageUpnpControlControlResponse_initWithOrgCybergarageSoapSOAPResponse_(OrgCybergarageSoapSOAPResponse *soapRes) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlControlResponse, initWithOrgCybergarageSoapSOAPResponse_, soapRes)
}

OrgCybergarageUpnpControlControlResponse *create_OrgCybergarageUpnpControlControlResponse_initWithOrgCybergarageSoapSOAPResponse_(OrgCybergarageSoapSOAPResponse *soapRes) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlControlResponse, initWithOrgCybergarageSoapSOAPResponse_, soapRes)
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_withNSString_(OrgCybergarageUpnpControlControlResponse *self, jint errCode, NSString *errDescr) {
  OrgCybergarageXmlNode *faultNode = create_OrgCybergarageXmlNode_initWithNSString_(JreStrcat("$$$", OrgCybergarageSoapSOAP_XMLNS, OrgCybergarageSoapSOAP_DELIM, OrgCybergarageSoapSOAP_FAULT));
  OrgCybergarageXmlNode *faultCodeNode = create_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageSoapSOAP_FAULT_CODE);
  [faultCodeNode setValueWithNSString:JreStrcat("$$$", OrgCybergarageSoapSOAP_XMLNS, OrgCybergarageSoapSOAP_DELIM, OrgCybergarageUpnpControlControlResponse_FAULT_CODE)];
  [faultNode addNodeWithOrgCybergarageXmlNode:faultCodeNode];
  OrgCybergarageXmlNode *faultStringNode = create_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageSoapSOAP_FAULT_STRING);
  [faultStringNode setValueWithNSString:OrgCybergarageUpnpControlControlResponse_FAULT_STRING];
  [faultNode addNodeWithOrgCybergarageXmlNode:faultStringNode];
  OrgCybergarageXmlNode *detailNode = create_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageSoapSOAP_DETAIL);
  [faultNode addNodeWithOrgCybergarageXmlNode:detailNode];
  OrgCybergarageXmlNode *upnpErrorNode = create_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageUpnpControlControlResponse_FAULT_STRING);
  [upnpErrorNode setAttributeWithNSString:@"xmlns" withNSString:OrgCybergarageUpnpControlControl_XMLNS];
  [detailNode addNodeWithOrgCybergarageXmlNode:upnpErrorNode];
  OrgCybergarageXmlNode *errorCodeNode = create_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageSoapSOAP_ERROR_CODE);
  [errorCodeNode setValueWithInt:errCode];
  [upnpErrorNode addNodeWithOrgCybergarageXmlNode:errorCodeNode];
  OrgCybergarageXmlNode *errorDesctiprionNode = create_OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageSoapSOAP_ERROR_DESCRIPTION);
  [errorDesctiprionNode setValueWithNSString:errDescr];
  [upnpErrorNode addNodeWithOrgCybergarageXmlNode:errorDesctiprionNode];
  return faultNode;
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_(OrgCybergarageUpnpControlControlResponse *self, jint errCode) {
  return OrgCybergarageUpnpControlControlResponse_createFaultResponseNodeWithInt_withNSString_(self, errCode, OrgCybergarageUpnpUPnPStatus_code2StringWithInt_(errCode));
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_getUPnPErrorNode(OrgCybergarageUpnpControlControlResponse *self) {
  OrgCybergarageXmlNode *detailNode = [self getFaultDetailNode];
  if (detailNode == nil) return nil;
  return [detailNode getNodeEndsWithWithNSString:OrgCybergarageSoapSOAP_UPNP_ERROR];
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_getUPnPErrorCodeNode(OrgCybergarageUpnpControlControlResponse *self) {
  OrgCybergarageXmlNode *errorNode = OrgCybergarageUpnpControlControlResponse_getUPnPErrorNode(self);
  if (errorNode == nil) return nil;
  return [errorNode getNodeEndsWithWithNSString:OrgCybergarageSoapSOAP_ERROR_CODE];
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlControlResponse_getUPnPErrorDescriptionNode(OrgCybergarageUpnpControlControlResponse *self) {
  OrgCybergarageXmlNode *errorNode = OrgCybergarageUpnpControlControlResponse_getUPnPErrorNode(self);
  if (errorNode == nil) return nil;
  return [errorNode getNodeEndsWithWithNSString:OrgCybergarageSoapSOAP_ERROR_DESCRIPTION];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpControlControlResponse)