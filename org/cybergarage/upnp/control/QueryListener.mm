//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/control/QueryListener.java
//

#include "J2ObjC_source.h"
#include "org/cybergarage/upnp/control/QueryListener.h"

@interface OrgCybergarageUpnpControlQueryListener : NSObject

@end

@implementation OrgCybergarageUpnpControlQueryListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(queryControlReceivedWithOrgCybergarageUpnpStateVariable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "queryControlReceived", "LOrgCybergarageUpnpStateVariable;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpControlQueryListener = { "QueryListener", "org.cybergarage.upnp.control", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpControlQueryListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpControlQueryListener)
