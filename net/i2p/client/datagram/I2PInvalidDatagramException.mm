//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/datagram/I2PInvalidDatagramException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "net/i2p/client/datagram/I2PInvalidDatagramException.h"

@implementation NetI2pClientDatagramI2PInvalidDatagramException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pClientDatagramI2PInvalidDatagramException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)s {
  NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(self, s);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _NetI2pClientDatagramI2PInvalidDatagramException = { "I2PInvalidDatagramException", "net.i2p.client.datagram", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pClientDatagramI2PInvalidDatagramException;
}

@end

void NetI2pClientDatagramI2PInvalidDatagramException_init(NetI2pClientDatagramI2PInvalidDatagramException *self) {
  JavaLangException_init(self);
}

NetI2pClientDatagramI2PInvalidDatagramException *new_NetI2pClientDatagramI2PInvalidDatagramException_init() {
  J2OBJC_NEW_IMPL(NetI2pClientDatagramI2PInvalidDatagramException, init)
}

NetI2pClientDatagramI2PInvalidDatagramException *create_NetI2pClientDatagramI2PInvalidDatagramException_init() {
  J2OBJC_CREATE_IMPL(NetI2pClientDatagramI2PInvalidDatagramException, init)
}

void NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(NetI2pClientDatagramI2PInvalidDatagramException *self, NSString *s) {
  JavaLangException_initWithNSString_(self, s);
}

NetI2pClientDatagramI2PInvalidDatagramException *new_NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(NSString *s) {
  J2OBJC_NEW_IMPL(NetI2pClientDatagramI2PInvalidDatagramException, initWithNSString_, s)
}

NetI2pClientDatagramI2PInvalidDatagramException *create_NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(NSString *s) {
  J2OBJC_CREATE_IMPL(NetI2pClientDatagramI2PInvalidDatagramException, initWithNSString_, s)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientDatagramI2PInvalidDatagramException)
