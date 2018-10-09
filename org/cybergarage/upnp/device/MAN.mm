//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/device/MAN.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/device/MAN.h"

NSString *OrgCybergarageUpnpDeviceMAN_DISCOVER = @"ssdp:discover";

@implementation OrgCybergarageUpnpDeviceMAN

+ (NSString *)DISCOVER {
  return OrgCybergarageUpnpDeviceMAN_DISCOVER;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpDeviceMAN_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jboolean)isDiscoverWithNSString:(NSString *)value {
  return OrgCybergarageUpnpDeviceMAN_isDiscoverWithNSString_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x19, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isDiscoverWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DISCOVER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "isDiscover", "LNSString;", &OrgCybergarageUpnpDeviceMAN_DISCOVER };
  static const J2ObjcClassInfo _OrgCybergarageUpnpDeviceMAN = { "MAN", "org.cybergarage.upnp.device", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpDeviceMAN;
}

@end

void OrgCybergarageUpnpDeviceMAN_init(OrgCybergarageUpnpDeviceMAN *self) {
  NSObject_init(self);
}

OrgCybergarageUpnpDeviceMAN *new_OrgCybergarageUpnpDeviceMAN_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpDeviceMAN, init)
}

OrgCybergarageUpnpDeviceMAN *create_OrgCybergarageUpnpDeviceMAN_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpDeviceMAN, init)
}

jboolean OrgCybergarageUpnpDeviceMAN_isDiscoverWithNSString_(NSString *value) {
  OrgCybergarageUpnpDeviceMAN_initialize();
  if (value == nil) return false;
  if ([value isEqual:OrgCybergarageUpnpDeviceMAN_DISCOVER] == true) return true;
  return [value isEqual:JreStrcat("C$C", '"', OrgCybergarageUpnpDeviceMAN_DISCOVER, '"')];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpDeviceMAN)