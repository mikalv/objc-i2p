//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/DeviceList.java
//

#include "J2ObjC_source.h"
#include "java/util/Vector.h"
#include "org/cybergarage/upnp/Device.h"
#include "org/cybergarage/upnp/DeviceList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

NSString *OrgCybergarageUpnpDeviceList_ELEM_NAME = @"deviceList";

@implementation OrgCybergarageUpnpDeviceList

+ (NSString *)ELEM_NAME {
  return OrgCybergarageUpnpDeviceList_ELEM_NAME;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpDeviceList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgCybergarageUpnpDevice *)getDeviceWithInt:(jint)n {
  return [self getWithInt:n];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpDevice;", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDeviceWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ELEM_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "getDevice", "I", &OrgCybergarageUpnpDeviceList_ELEM_NAME, "Ljava/util/Vector<Lorg/cybergarage/upnp/Device;>;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpDeviceList = { "DeviceList", "org.cybergarage.upnp", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, 3, -1 };
  return &_OrgCybergarageUpnpDeviceList;
}

@end

void OrgCybergarageUpnpDeviceList_init(OrgCybergarageUpnpDeviceList *self) {
  JavaUtilVector_init(self);
}

OrgCybergarageUpnpDeviceList *new_OrgCybergarageUpnpDeviceList_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpDeviceList, init)
}

OrgCybergarageUpnpDeviceList *create_OrgCybergarageUpnpDeviceList_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpDeviceList, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpDeviceList)