//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/app/ClientAppManager.java
//

#include "J2ObjC_source.h"
#include "net/i2p/app/ClientAppManager.h"

@interface NetI2pAppClientAppManager : NSObject

@end

@implementation NetI2pAppClientAppManager

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pAppClientApp;", 0x401, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(notifyWithNetI2pAppClientApp:withNetI2pAppClientAppState:withNSString:withJavaLangException:);
  methods[1].selector = @selector(register__WithNetI2pAppClientApp:);
  methods[2].selector = @selector(unregisterWithNetI2pAppClientApp:);
  methods[3].selector = @selector(getRegisteredAppWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "notify", "LNetI2pAppClientApp;LNetI2pAppClientAppState;LNSString;LJavaLangException;", "register", "LNetI2pAppClientApp;", "unregister", "getRegisteredApp", "LNSString;" };
  static const J2ObjcClassInfo _NetI2pAppClientAppManager = { "ClientAppManager", "net.i2p.app", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pAppClientAppManager;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pAppClientAppManager)