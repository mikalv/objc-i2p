//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/I2PSessionMuxedListener.java
//

#include "J2ObjC_source.h"
#include "net/i2p/client/I2PSessionMuxedListener.h"

@interface NetI2pClientI2PSessionMuxedListener : NSObject

@end

@implementation NetI2pClientI2PSessionMuxedListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(messageAvailableWithNetI2pClientI2PSession:withInt:withLong:);
  methods[1].selector = @selector(messageAvailableWithNetI2pClientI2PSession:withInt:withLong:withInt:withInt:withInt:);
  methods[2].selector = @selector(reportAbuseWithNetI2pClientI2PSession:withInt:);
  methods[3].selector = @selector(disconnectedWithNetI2pClientI2PSession:);
  methods[4].selector = @selector(errorOccurredWithNetI2pClientI2PSession:withNSString:withJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "messageAvailable", "LNetI2pClientI2PSession;IJ", "LNetI2pClientI2PSession;IJIII", "reportAbuse", "LNetI2pClientI2PSession;I", "disconnected", "LNetI2pClientI2PSession;", "errorOccurred", "LNetI2pClientI2PSession;LNSString;LJavaLangThrowable;" };
  static const J2ObjcClassInfo _NetI2pClientI2PSessionMuxedListener = { "I2PSessionMuxedListener", "net.i2p.client", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pClientI2PSessionMuxedListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pClientI2PSessionMuxedListener)