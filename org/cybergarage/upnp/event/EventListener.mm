//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/event/EventListener.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/event/EventListener.h"

@interface OrgCybergarageUpnpEventEventListener : NSObject

@end

@implementation OrgCybergarageUpnpEventEventListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(eventNotifyReceivedWithNSString:withLong:withNSString:withNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "eventNotifyReceived", "LNSString;JLNSString;LNSString;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpEventEventListener = { "EventListener", "org.cybergarage.upnp.event", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpEventEventListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpEventEventListener)
