//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ActionList.java
//

#include "J2ObjC_source.h"
#include "java/util/Vector.h"
#include "org/cybergarage/upnp/Action.h"
#include "org/cybergarage/upnp/ActionList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

NSString *OrgCybergarageUpnpActionList_ELEM_NAME = @"actionList";

@implementation OrgCybergarageUpnpActionList

+ (NSString *)ELEM_NAME {
  return OrgCybergarageUpnpActionList_ELEM_NAME;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpActionList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgCybergarageUpnpAction *)getActionWithInt:(jint)n {
  return [self getWithInt:n];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpAction;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getActionWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ELEM_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "getAction", "I", &OrgCybergarageUpnpActionList_ELEM_NAME, "Ljava/util/Vector<Lorg/cybergarage/upnp/Action;>;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpActionList = { "ActionList", "org.cybergarage.upnp", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, 3, -1 };
  return &_OrgCybergarageUpnpActionList;
}

@end

void OrgCybergarageUpnpActionList_init(OrgCybergarageUpnpActionList *self) {
  JavaUtilVector_init(self);
}

OrgCybergarageUpnpActionList *new_OrgCybergarageUpnpActionList_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpActionList, init)
}

OrgCybergarageUpnpActionList *create_OrgCybergarageUpnpActionList_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpActionList, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpActionList)
