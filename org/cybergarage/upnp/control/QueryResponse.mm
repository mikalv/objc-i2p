//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/QueryResponse.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/http/HTTPStatus.h"
#include "org/cybergarage/soap/SOAPResponse.h"
#include "org/cybergarage/upnp/StateVariable.h"
#include "org/cybergarage/upnp/control/Control.h"
#include "org/cybergarage/upnp/control/ControlResponse.h"
#include "org/cybergarage/upnp/control/QueryResponse.h"
#include "org/cybergarage/xml/Node.h"

@interface OrgCybergarageUpnpControlQueryResponse ()

- (OrgCybergarageXmlNode *)getReturnNode;

- (OrgCybergarageXmlNode *)createResponseNodeWithNSString:(NSString *)var;

@end

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryResponse_getReturnNode(OrgCybergarageUpnpControlQueryResponse *self);

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryResponse_createResponseNodeWithNSString_(OrgCybergarageUpnpControlQueryResponse *self, NSString *var);

@implementation OrgCybergarageUpnpControlQueryResponse

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpControlQueryResponse_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgCybergarageSoapSOAPResponse:(OrgCybergarageSoapSOAPResponse *)soapRes {
  OrgCybergarageUpnpControlQueryResponse_initWithOrgCybergarageSoapSOAPResponse_(self, soapRes);
  return self;
}

- (OrgCybergarageXmlNode *)getReturnNode {
  return OrgCybergarageUpnpControlQueryResponse_getReturnNode(self);
}

- (NSString *)getReturnValue {
  OrgCybergarageXmlNode *node = OrgCybergarageUpnpControlQueryResponse_getReturnNode(self);
  if (node == nil) return @"";
  return [node getValue];
}

- (void)setResponseWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)stateVar {
  NSString *var = [((OrgCybergarageUpnpStateVariable *) nil_chk(stateVar)) getValue];
  [self setStatusCodeWithInt:OrgCybergarageHttpHTTPStatus_OK];
  OrgCybergarageXmlNode *bodyNode = [self getBodyNode];
  OrgCybergarageXmlNode *resNode = OrgCybergarageUpnpControlQueryResponse_createResponseNodeWithNSString_(self, var);
  [((OrgCybergarageXmlNode *) nil_chk(bodyNode)) addNodeWithOrgCybergarageXmlNode:resNode];
  OrgCybergarageXmlNode *envNodee = [self getEnvelopeNode];
  [self setContentWithOrgCybergarageXmlNode:envNodee];
}

- (OrgCybergarageXmlNode *)createResponseNodeWithNSString:(NSString *)var {
  return OrgCybergarageUpnpControlQueryResponse_createResponseNodeWithNSString_(self, var);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgCybergarageSoapSOAPResponse:);
  methods[2].selector = @selector(getReturnNode);
  methods[3].selector = @selector(getReturnValue);
  methods[4].selector = @selector(setResponseWithOrgCybergarageUpnpStateVariable:);
  methods[5].selector = @selector(createResponseNodeWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgCybergarageSoapSOAPResponse;", "setResponse", "LOrgCybergarageUpnpStateVariable;", "createResponseNode", "LNSString;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpControlQueryResponse = { "QueryResponse", "org.cybergarage.upnp.control", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpControlQueryResponse;
}

@end

void OrgCybergarageUpnpControlQueryResponse_init(OrgCybergarageUpnpControlQueryResponse *self) {
  OrgCybergarageUpnpControlControlResponse_init(self);
}

OrgCybergarageUpnpControlQueryResponse *new_OrgCybergarageUpnpControlQueryResponse_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlQueryResponse, init)
}

OrgCybergarageUpnpControlQueryResponse *create_OrgCybergarageUpnpControlQueryResponse_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlQueryResponse, init)
}

void OrgCybergarageUpnpControlQueryResponse_initWithOrgCybergarageSoapSOAPResponse_(OrgCybergarageUpnpControlQueryResponse *self, OrgCybergarageSoapSOAPResponse *soapRes) {
  OrgCybergarageUpnpControlControlResponse_initWithOrgCybergarageSoapSOAPResponse_(self, soapRes);
}

OrgCybergarageUpnpControlQueryResponse *new_OrgCybergarageUpnpControlQueryResponse_initWithOrgCybergarageSoapSOAPResponse_(OrgCybergarageSoapSOAPResponse *soapRes) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlQueryResponse, initWithOrgCybergarageSoapSOAPResponse_, soapRes)
}

OrgCybergarageUpnpControlQueryResponse *create_OrgCybergarageUpnpControlQueryResponse_initWithOrgCybergarageSoapSOAPResponse_(OrgCybergarageSoapSOAPResponse *soapRes) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlQueryResponse, initWithOrgCybergarageSoapSOAPResponse_, soapRes)
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryResponse_getReturnNode(OrgCybergarageUpnpControlQueryResponse *self) {
  OrgCybergarageXmlNode *bodyNode = [self getBodyNode];
  if (bodyNode == nil) return nil;
  if ([bodyNode hasNodes] == false) return nil;
  OrgCybergarageXmlNode *queryResNode = [bodyNode getNodeWithInt:0];
  if (queryResNode == nil) return nil;
  if ([queryResNode hasNodes] == false) return nil;
  return [queryResNode getNodeWithInt:0];
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryResponse_createResponseNodeWithNSString_(OrgCybergarageUpnpControlQueryResponse *self, NSString *var) {
  OrgCybergarageXmlNode *queryResNode = create_OrgCybergarageXmlNode_init();
  [queryResNode setNameWithNSString:OrgCybergarageUpnpControlControl_NS withNSString:OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE_RESPONSE];
  [queryResNode setNameSpaceWithNSString:OrgCybergarageUpnpControlControl_NS withNSString:OrgCybergarageUpnpControlControl_XMLNS];
  OrgCybergarageXmlNode *returnNode = create_OrgCybergarageXmlNode_init();
  [returnNode setNameWithNSString:OrgCybergarageUpnpControlControl_RETURN];
  [returnNode setValueWithNSString:var];
  [queryResNode addNodeWithOrgCybergarageXmlNode:returnNode];
  return queryResNode;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpControlQueryResponse)
