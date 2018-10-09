//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/router/RouterIdentity.java
//

#include "J2ObjC_source.h"
#include "net/i2p/data/Certificate.h"
#include "net/i2p/data/KeysAndCert.h"
#include "net/i2p/data/router/RouterIdentity.h"

@implementation NetI2pDataRouterRouterIdentity

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataRouterRouterIdentity_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)isHidden {
  return (_certificate_ != nil) && ([((NetI2pDataCertificate *) nil_chk(_certificate_)) getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_HIDDEN);
}

- (jboolean)isEqual:(id)o {
  return [super isEqual:o] && ([o isKindOfClass:[NetI2pDataRouterRouterIdentity class]]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isHidden);
  methods[2].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "equals", "LNSObject;" };
  static const J2ObjcClassInfo _NetI2pDataRouterRouterIdentity = { "RouterIdentity", "net.i2p.data.router", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pDataRouterRouterIdentity;
}

@end

void NetI2pDataRouterRouterIdentity_init(NetI2pDataRouterRouterIdentity *self) {
  NetI2pDataKeysAndCert_init(self);
}

NetI2pDataRouterRouterIdentity *new_NetI2pDataRouterRouterIdentity_init() {
  J2OBJC_NEW_IMPL(NetI2pDataRouterRouterIdentity, init)
}

NetI2pDataRouterRouterIdentity *create_NetI2pDataRouterRouterIdentity_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataRouterRouterIdentity, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataRouterRouterIdentity)
