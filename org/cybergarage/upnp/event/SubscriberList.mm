//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/event/SubscriberList.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/util/Vector.h"
#include "org/cybergarage/upnp/event/Subscriber.h"
#include "org/cybergarage/upnp/event/SubscriberList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgCybergarageUpnpEventSubscriberList

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpEventSubscriberList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgCybergarageUpnpEventSubscriber *)getSubscriberWithInt:(jint)n {
  id obj = nil;
  @try {
    obj = [self getWithInt:n];
  }
  @catch (JavaLangException *e) {
  }
  return (OrgCybergarageUpnpEventSubscriber *) cast_chk(obj, [OrgCybergarageUpnpEventSubscriber class]);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpEventSubscriber;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSubscriberWithInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getSubscriber", "I", "Ljava/util/Vector<Lorg/cybergarage/upnp/event/Subscriber;>;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpEventSubscriberList = { "SubscriberList", "org.cybergarage.upnp.event", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, 2, -1 };
  return &_OrgCybergarageUpnpEventSubscriberList;
}

@end

void OrgCybergarageUpnpEventSubscriberList_init(OrgCybergarageUpnpEventSubscriberList *self) {
  JavaUtilVector_init(self);
}

OrgCybergarageUpnpEventSubscriberList *new_OrgCybergarageUpnpEventSubscriberList_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpEventSubscriberList, init)
}

OrgCybergarageUpnpEventSubscriberList *create_OrgCybergarageUpnpEventSubscriberList_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpEventSubscriberList, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpEventSubscriberList)
