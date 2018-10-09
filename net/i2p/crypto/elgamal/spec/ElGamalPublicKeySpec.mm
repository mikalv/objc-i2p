//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/spec/ElGamalPublicKeySpec.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalKeySpec.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalParameterSpec.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalPublicKeySpec.h"

@interface NetI2pCryptoElgamalSpecElGamalPublicKeySpec () {
 @public
  JavaMathBigInteger *y_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoElgamalSpecElGamalPublicKeySpec, y_, JavaMathBigInteger *)

@implementation NetI2pCryptoElgamalSpecElGamalPublicKeySpec

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)y
withNetI2pCryptoElgamalSpecElGamalParameterSpec:(NetI2pCryptoElgamalSpecElGamalParameterSpec *)spec {
  NetI2pCryptoElgamalSpecElGamalPublicKeySpec_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_(self, y, spec);
  return self;
}

- (JavaMathBigInteger *)getY {
  return y_;
}

- (void)dealloc {
  RELEASE_(y_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaMathBigInteger:withNetI2pCryptoElgamalSpecElGamalParameterSpec:);
  methods[1].selector = @selector(getY);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "y_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaMathBigInteger;LNetI2pCryptoElgamalSpecElGamalParameterSpec;" };
  static const J2ObjcClassInfo _NetI2pCryptoElgamalSpecElGamalPublicKeySpec = { "ElGamalPublicKeySpec", "net.i2p.crypto.elgamal.spec", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoElgamalSpecElGamalPublicKeySpec;
}

@end

void NetI2pCryptoElgamalSpecElGamalPublicKeySpec_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_(NetI2pCryptoElgamalSpecElGamalPublicKeySpec *self, JavaMathBigInteger *y, NetI2pCryptoElgamalSpecElGamalParameterSpec *spec) {
  NetI2pCryptoElgamalSpecElGamalKeySpec_initWithNetI2pCryptoElgamalSpecElGamalParameterSpec_(self, spec);
  JreStrongAssign(&self->y_, y);
}

NetI2pCryptoElgamalSpecElGamalPublicKeySpec *new_NetI2pCryptoElgamalSpecElGamalPublicKeySpec_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_(JavaMathBigInteger *y, NetI2pCryptoElgamalSpecElGamalParameterSpec *spec) {
  J2OBJC_NEW_IMPL(NetI2pCryptoElgamalSpecElGamalPublicKeySpec, initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_, y, spec)
}

NetI2pCryptoElgamalSpecElGamalPublicKeySpec *create_NetI2pCryptoElgamalSpecElGamalPublicKeySpec_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_(JavaMathBigInteger *y, NetI2pCryptoElgamalSpecElGamalParameterSpec *spec) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoElgamalSpecElGamalPublicKeySpec, initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_, y, spec)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoElgamalSpecElGamalPublicKeySpec)
