//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/Service.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/Service.h"

@interface NetI2pRouterService : NSObject

@end

@implementation NetI2pRouterService

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(startup);
  methods[1].selector = @selector(shutdown);
  methods[2].selector = @selector(restart);
  methods[3].selector = @selector(renderStatusHTMLWithJavaIoWriter:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "renderStatusHTML", "LJavaIoWriter;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _NetI2pRouterService = { "Service", "net.i2p.router", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterService;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterService)
