//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/LeaseSetKeys.java
//

#include "J2ObjC_source.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/router/LeaseSetKeys.h"

@interface NetI2pRouterLeaseSetKeys () {
 @public
  NetI2pDataSigningPrivateKey *_revocationKey_;
  NetI2pDataPrivateKey *_decryptionKey_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterLeaseSetKeys, _revocationKey_, NetI2pDataSigningPrivateKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterLeaseSetKeys, _decryptionKey_, NetI2pDataPrivateKey *)

@implementation NetI2pRouterLeaseSetKeys

- (instancetype)initWithNetI2pDataDestination:(NetI2pDataDestination *)dest
              withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)revocationKey
                     withNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)decryptionKey {
  NetI2pRouterLeaseSetKeys_initWithNetI2pDataDestination_withNetI2pDataSigningPrivateKey_withNetI2pDataPrivateKey_(self, dest, revocationKey, decryptionKey);
  return self;
}

- (NetI2pDataSigningPrivateKey *)getRevocationKey {
  return _revocationKey_;
}

- (NetI2pDataPrivateKey *)getDecryptionKey {
  return _decryptionKey_;
}

- (void)dealloc {
  RELEASE_(_revocationKey_);
  RELEASE_(_decryptionKey_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSigningPrivateKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPrivateKey;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pDataDestination:withNetI2pDataSigningPrivateKey:withNetI2pDataPrivateKey:);
  methods[1].selector = @selector(getRevocationKey);
  methods[2].selector = @selector(getDecryptionKey);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_revocationKey_", "LNetI2pDataSigningPrivateKey;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_decryptionKey_", "LNetI2pDataPrivateKey;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pDataDestination;LNetI2pDataSigningPrivateKey;LNetI2pDataPrivateKey;" };
  static const J2ObjcClassInfo _NetI2pRouterLeaseSetKeys = { "LeaseSetKeys", "net.i2p.router", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterLeaseSetKeys;
}

@end

void NetI2pRouterLeaseSetKeys_initWithNetI2pDataDestination_withNetI2pDataSigningPrivateKey_withNetI2pDataPrivateKey_(NetI2pRouterLeaseSetKeys *self, NetI2pDataDestination *dest, NetI2pDataSigningPrivateKey *revocationKey, NetI2pDataPrivateKey *decryptionKey) {
  NSObject_init(self);
  JreStrongAssign(&self->_revocationKey_, revocationKey);
  JreStrongAssign(&self->_decryptionKey_, decryptionKey);
}

NetI2pRouterLeaseSetKeys *new_NetI2pRouterLeaseSetKeys_initWithNetI2pDataDestination_withNetI2pDataSigningPrivateKey_withNetI2pDataPrivateKey_(NetI2pDataDestination *dest, NetI2pDataSigningPrivateKey *revocationKey, NetI2pDataPrivateKey *decryptionKey) {
  J2OBJC_NEW_IMPL(NetI2pRouterLeaseSetKeys, initWithNetI2pDataDestination_withNetI2pDataSigningPrivateKey_withNetI2pDataPrivateKey_, dest, revocationKey, decryptionKey)
}

NetI2pRouterLeaseSetKeys *create_NetI2pRouterLeaseSetKeys_initWithNetI2pDataDestination_withNetI2pDataSigningPrivateKey_withNetI2pDataPrivateKey_(NetI2pDataDestination *dest, NetI2pDataSigningPrivateKey *revocationKey, NetI2pDataPrivateKey *decryptionKey) {
  J2OBJC_CREATE_IMPL(NetI2pRouterLeaseSetKeys, initWithNetI2pDataDestination_withNetI2pDataSigningPrivateKey_withNetI2pDataPrivateKey_, dest, revocationKey, decryptionKey)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterLeaseSetKeys)
