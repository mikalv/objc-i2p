//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/QueryRequest.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/http/HTTPRequest.h"
#include "org/cybergarage/soap/SOAP.h"
#include "org/cybergarage/soap/SOAPResponse.h"
#include "org/cybergarage/upnp/Service.h"
#include "org/cybergarage/upnp/StateVariable.h"
#include "org/cybergarage/upnp/control/Control.h"
#include "org/cybergarage/upnp/control/ControlRequest.h"
#include "org/cybergarage/upnp/control/QueryRequest.h"
#include "org/cybergarage/upnp/control/QueryResponse.h"
#include "org/cybergarage/xml/Node.h"

@interface OrgCybergarageUpnpControlQueryRequest ()

- (OrgCybergarageXmlNode *)getVarNameNode;

- (OrgCybergarageXmlNode *)createContentNodeWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)stateVar;

@end

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryRequest_getVarNameNode(OrgCybergarageUpnpControlQueryRequest *self);

__attribute__((unused)) static OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryRequest_createContentNodeWithOrgCybergarageUpnpStateVariable_(OrgCybergarageUpnpControlQueryRequest *self, OrgCybergarageUpnpStateVariable *stateVar);

@implementation OrgCybergarageUpnpControlQueryRequest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpControlQueryRequest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq {
  OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(self, httpReq);
  return self;
}

- (OrgCybergarageXmlNode *)getVarNameNode {
  return OrgCybergarageUpnpControlQueryRequest_getVarNameNode(self);
}

- (NSString *)getVarName {
  OrgCybergarageXmlNode *node = OrgCybergarageUpnpControlQueryRequest_getVarNameNode(self);
  if (node == nil) return @"";
  return [node getValue];
}

- (void)setRequestWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)stateVar {
  OrgCybergarageUpnpService *service = [((OrgCybergarageUpnpStateVariable *) nil_chk(stateVar)) getService];
  NSString *ctrlURL = [((OrgCybergarageUpnpService *) nil_chk(service)) getControlURL];
  [self setRequestHostWithOrgCybergarageUpnpService:service];
  [self setEnvelopeNodeWithOrgCybergarageXmlNode:OrgCybergarageSoapSOAP_createEnvelopeBodyNode()];
  OrgCybergarageXmlNode *envNode = [self getEnvelopeNode];
  OrgCybergarageXmlNode *bodyNode = [self getBodyNode];
  OrgCybergarageXmlNode *qeuryNode = OrgCybergarageUpnpControlQueryRequest_createContentNodeWithOrgCybergarageUpnpStateVariable_(self, stateVar);
  [((OrgCybergarageXmlNode *) nil_chk(bodyNode)) addNodeWithOrgCybergarageXmlNode:qeuryNode];
  [self setContentWithOrgCybergarageXmlNode:envNode];
  [self setSOAPActionWithNSString:OrgCybergarageUpnpControlControl_QUERY_SOAPACTION];
}

- (OrgCybergarageXmlNode *)createContentNodeWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)stateVar {
  return OrgCybergarageUpnpControlQueryRequest_createContentNodeWithOrgCybergarageUpnpStateVariable_(self, stateVar);
}

- (OrgCybergarageUpnpControlQueryResponse *)post {
  OrgCybergarageSoapSOAPResponse *soapRes = [self postMessageWithNSString:[self getRequestHost] withInt:[self getRequestPort]];
  return create_OrgCybergarageUpnpControlQueryResponse_initWithOrgCybergarageSoapSOAPResponse_(soapRes);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x2, 3, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpControlQueryResponse;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgCybergarageHttpHTTPRequest:);
  methods[2].selector = @selector(getVarNameNode);
  methods[3].selector = @selector(getVarName);
  methods[4].selector = @selector(setRequestWithOrgCybergarageUpnpStateVariable:);
  methods[5].selector = @selector(createContentNodeWithOrgCybergarageUpnpStateVariable:);
  methods[6].selector = @selector(post);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgCybergarageHttpHTTPRequest;", "setRequest", "LOrgCybergarageUpnpStateVariable;", "createContentNode" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpControlQueryRequest = { "QueryRequest", "org.cybergarage.upnp.control", ptrTable, methods, NULL, 7, 0x1, 7, 0, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpControlQueryRequest;
}

@end

void OrgCybergarageUpnpControlQueryRequest_init(OrgCybergarageUpnpControlQueryRequest *self) {
  OrgCybergarageUpnpControlControlRequest_init(self);
}

OrgCybergarageUpnpControlQueryRequest *new_OrgCybergarageUpnpControlQueryRequest_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlQueryRequest, init)
}

OrgCybergarageUpnpControlQueryRequest *create_OrgCybergarageUpnpControlQueryRequest_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlQueryRequest, init)
}

void OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageUpnpControlQueryRequest *self, OrgCybergarageHttpHTTPRequest *httpReq) {
  OrgCybergarageUpnpControlControlRequest_init(self);
  [self setWithOrgCybergarageHttpHTTPRequest:httpReq];
}

OrgCybergarageUpnpControlQueryRequest *new_OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpControlQueryRequest, initWithOrgCybergarageHttpHTTPRequest_, httpReq)
}

OrgCybergarageUpnpControlQueryRequest *create_OrgCybergarageUpnpControlQueryRequest_initWithOrgCybergarageHttpHTTPRequest_(OrgCybergarageHttpHTTPRequest *httpReq) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpControlQueryRequest, initWithOrgCybergarageHttpHTTPRequest_, httpReq)
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryRequest_getVarNameNode(OrgCybergarageUpnpControlQueryRequest *self) {
  OrgCybergarageXmlNode *bodyNode = [self getBodyNode];
  if (bodyNode == nil) return nil;
  if ([bodyNode hasNodes] == false) return nil;
  OrgCybergarageXmlNode *queryStateVarNode = [bodyNode getNodeWithInt:0];
  if (queryStateVarNode == nil) return nil;
  if ([queryStateVarNode hasNodes] == false) return nil;
  return [queryStateVarNode getNodeWithInt:0];
}

OrgCybergarageXmlNode *OrgCybergarageUpnpControlQueryRequest_createContentNodeWithOrgCybergarageUpnpStateVariable_(OrgCybergarageUpnpControlQueryRequest *self, OrgCybergarageUpnpStateVariable *stateVar) {
  OrgCybergarageXmlNode *queryVarNode = create_OrgCybergarageXmlNode_init();
  [queryVarNode setNameWithNSString:OrgCybergarageUpnpControlControl_NS withNSString:OrgCybergarageUpnpControlControl_QUERY_STATE_VARIABLE];
  [queryVarNode setNameSpaceWithNSString:OrgCybergarageUpnpControlControl_NS withNSString:OrgCybergarageUpnpControlControl_XMLNS];
  OrgCybergarageXmlNode *varNode = create_OrgCybergarageXmlNode_init();
  [varNode setNameWithNSString:OrgCybergarageUpnpControlControl_NS withNSString:OrgCybergarageUpnpControlControl_VAR_NAME];
  [varNode setValueWithNSString:[((OrgCybergarageUpnpStateVariable *) nil_chk(stateVar)) getName]];
  [queryVarNode addNodeWithOrgCybergarageXmlNode:varNode];
  return queryVarNode;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpControlQueryRequest)
