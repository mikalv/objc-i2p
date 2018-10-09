//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/spec/ElGamalGenParameterSpec.java
//

#include "J2ObjC_source.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalGenParameterSpec.h"

@interface NetI2pCryptoElgamalSpecElGamalGenParameterSpec () {
 @public
  jint primeSize_;
}

@end

@implementation NetI2pCryptoElgamalSpecElGamalGenParameterSpec

- (instancetype)initWithInt:(jint)primeSize {
  NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(self, primeSize);
  return self;
}

- (jint)getPrimeSize {
  return primeSize_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(getPrimeSize);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "primeSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I" };
  static const J2ObjcClassInfo _NetI2pCryptoElgamalSpecElGamalGenParameterSpec = { "ElGamalGenParameterSpec", "net.i2p.crypto.elgamal.spec", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoElgamalSpecElGamalGenParameterSpec;
}

@end

void NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(NetI2pCryptoElgamalSpecElGamalGenParameterSpec *self, jint primeSize) {
  NSObject_init(self);
  self->primeSize_ = primeSize;
}

NetI2pCryptoElgamalSpecElGamalGenParameterSpec *new_NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(jint primeSize) {
  J2OBJC_NEW_IMPL(NetI2pCryptoElgamalSpecElGamalGenParameterSpec, initWithInt_, primeSize)
}

NetI2pCryptoElgamalSpecElGamalGenParameterSpec *create_NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(jint primeSize) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoElgamalSpecElGamalGenParameterSpec, initWithInt_, primeSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoElgamalSpecElGamalGenParameterSpec)