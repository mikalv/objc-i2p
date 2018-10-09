//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ServiceStateTable.java
//

#include "J2ObjC_source.h"
#include "java/util/Vector.h"
#include "org/cybergarage/upnp/ServiceStateTable.h"
#include "org/cybergarage/upnp/StateVariable.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

NSString *OrgCybergarageUpnpServiceStateTable_ELEM_NAME = @"serviceStateTable";

@implementation OrgCybergarageUpnpServiceStateTable

+ (NSString *)ELEM_NAME {
  return OrgCybergarageUpnpServiceStateTable_ELEM_NAME;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpServiceStateTable_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgCybergarageUpnpStateVariable *)getStateVariableWithInt:(jint)n {
  return [self getWithInt:n];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpStateVariable;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getStateVariableWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ELEM_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "getStateVariable", "I", &OrgCybergarageUpnpServiceStateTable_ELEM_NAME, "Ljava/util/Vector<Lorg/cybergarage/upnp/StateVariable;>;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpServiceStateTable = { "ServiceStateTable", "org.cybergarage.upnp", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, 3, -1 };
  return &_OrgCybergarageUpnpServiceStateTable;
}

@end

void OrgCybergarageUpnpServiceStateTable_init(OrgCybergarageUpnpServiceStateTable *self) {
  JavaUtilVector_init(self);
}

OrgCybergarageUpnpServiceStateTable *new_OrgCybergarageUpnpServiceStateTable_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpServiceStateTable, init)
}

OrgCybergarageUpnpServiceStateTable *create_OrgCybergarageUpnpServiceStateTable_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpServiceStateTable, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpServiceStateTable)