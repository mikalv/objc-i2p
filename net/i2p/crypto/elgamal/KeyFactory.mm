//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/KeyFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/InvalidKeyException.h"
#include "java/security/Key.h"
#include "java/security/KeyFactorySpi.h"
#include "java/security/PrivateKey.h"
#include "java/security/PublicKey.h"
#include "java/security/spec/InvalidKeySpecException.h"
#include "java/security/spec/KeySpec.h"
#include "java/security/spec/PKCS8EncodedKeySpec.h"
#include "java/security/spec/X509EncodedKeySpec.h"
#include "net/i2p/crypto/elgamal/ElGamalPrivateKey.h"
#include "net/i2p/crypto/elgamal/ElGamalPublicKey.h"
#include "net/i2p/crypto/elgamal/KeyFactory.h"
#include "net/i2p/crypto/elgamal/impl/ElGamalPrivateKeyImpl.h"
#include "net/i2p/crypto/elgamal/impl/ElGamalPublicKeyImpl.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalParameterSpec.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalPrivateKeySpec.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalPublicKeySpec.h"

@implementation NetI2pCryptoElgamalKeyFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoElgamalKeyFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaSecurityPrivateKey>)engineGeneratePrivateWithJavaSecuritySpecKeySpec:(id<JavaSecuritySpecKeySpec>)keySpec {
  if ([keySpec isKindOfClass:[NetI2pCryptoElgamalSpecElGamalPrivateKeySpec class]]) {
    return create_NetI2pCryptoElgamalImplElGamalPrivateKeyImpl_initWithNetI2pCryptoElgamalSpecElGamalPrivateKeySpec_((NetI2pCryptoElgamalSpecElGamalPrivateKeySpec *) cast_chk(keySpec, [NetI2pCryptoElgamalSpecElGamalPrivateKeySpec class]));
  }
  if ([keySpec isKindOfClass:[JavaSecuritySpecPKCS8EncodedKeySpec class]]) {
    return create_NetI2pCryptoElgamalImplElGamalPrivateKeyImpl_initWithJavaSecuritySpecPKCS8EncodedKeySpec_((JavaSecuritySpecPKCS8EncodedKeySpec *) cast_chk(keySpec, [JavaSecuritySpecPKCS8EncodedKeySpec class]));
  }
  @throw create_JavaSecuritySpecInvalidKeySpecException_initWithNSString_(@"key spec not recognised");
}

- (id<JavaSecurityPublicKey>)engineGeneratePublicWithJavaSecuritySpecKeySpec:(id<JavaSecuritySpecKeySpec>)keySpec {
  if ([keySpec isKindOfClass:[NetI2pCryptoElgamalSpecElGamalPublicKeySpec class]]) {
    return create_NetI2pCryptoElgamalImplElGamalPublicKeyImpl_initWithNetI2pCryptoElgamalSpecElGamalPublicKeySpec_((NetI2pCryptoElgamalSpecElGamalPublicKeySpec *) cast_chk(keySpec, [NetI2pCryptoElgamalSpecElGamalPublicKeySpec class]));
  }
  if ([keySpec isKindOfClass:[JavaSecuritySpecX509EncodedKeySpec class]]) {
    return create_NetI2pCryptoElgamalImplElGamalPublicKeyImpl_initWithJavaSecuritySpecX509EncodedKeySpec_((JavaSecuritySpecX509EncodedKeySpec *) cast_chk(keySpec, [JavaSecuritySpecX509EncodedKeySpec class]));
  }
  @throw create_JavaSecuritySpecInvalidKeySpecException_initWithNSString_(@"key spec not recognised");
}

- (id<JavaSecuritySpecKeySpec>)engineGetKeySpecWithJavaSecurityKey:(id<JavaSecurityKey>)key
                                                      withIOSClass:(IOSClass *)keySpec {
  if ([((IOSClass *) nil_chk(keySpec)) isAssignableFrom:NetI2pCryptoElgamalSpecElGamalPublicKeySpec_class_()] && [NetI2pCryptoElgamalElGamalPublicKey_class_() isInstance:key]) {
    id<NetI2pCryptoElgamalElGamalPublicKey> k = (id<NetI2pCryptoElgamalElGamalPublicKey>) cast_check(key, NetI2pCryptoElgamalElGamalPublicKey_class_());
    NetI2pCryptoElgamalSpecElGamalParameterSpec *egp = [((id<NetI2pCryptoElgamalElGamalPublicKey>) nil_chk(k)) getParameters];
    if (egp != nil) {
      return create_NetI2pCryptoElgamalSpecElGamalPrivateKeySpec_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_([k getY], egp);
    }
  }
  else if ([keySpec isAssignableFrom:NetI2pCryptoElgamalSpecElGamalPrivateKeySpec_class_()] && [NetI2pCryptoElgamalElGamalPrivateKey_class_() isInstance:key]) {
    id<NetI2pCryptoElgamalElGamalPrivateKey> k = (id<NetI2pCryptoElgamalElGamalPrivateKey>) cast_check(key, NetI2pCryptoElgamalElGamalPrivateKey_class_());
    NetI2pCryptoElgamalSpecElGamalParameterSpec *egp = [((id<NetI2pCryptoElgamalElGamalPrivateKey>) nil_chk(k)) getParameters];
    if (egp != nil) {
      return create_NetI2pCryptoElgamalSpecElGamalPrivateKeySpec_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_([k getX], egp);
    }
  }
  @throw create_JavaSecuritySpecInvalidKeySpecException_initWithNSString_(JreStrcat("$@C@", @"not implemented yet ", key, ' ', keySpec));
}

- (id<JavaSecurityKey>)engineTranslateKeyWithJavaSecurityKey:(id<JavaSecurityKey>)key {
  @throw create_JavaSecurityInvalidKeyException_initWithNSString_(@"No other ElGamal key providers known");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaSecurityPrivateKey;", 0x4, 0, 1, 2, -1, -1, -1 },
    { NULL, "LJavaSecurityPublicKey;", 0x4, 3, 1, 2, -1, -1, -1 },
    { NULL, "LJavaSecuritySpecKeySpec;", 0x4, 4, 5, 2, 6, -1, -1 },
    { NULL, "LJavaSecurityKey;", 0x4, 7, 8, 9, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(engineGeneratePrivateWithJavaSecuritySpecKeySpec:);
  methods[2].selector = @selector(engineGeneratePublicWithJavaSecuritySpecKeySpec:);
  methods[3].selector = @selector(engineGetKeySpecWithJavaSecurityKey:withIOSClass:);
  methods[4].selector = @selector(engineTranslateKeyWithJavaSecurityKey:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "engineGeneratePrivate", "LJavaSecuritySpecKeySpec;", "LJavaSecuritySpecInvalidKeySpecException;", "engineGeneratePublic", "engineGetKeySpec", "LJavaSecurityKey;LIOSClass;", "<T::Ljava/security/spec/KeySpec;>(Ljava/security/Key;Ljava/lang/Class<TT;>;)TT;", "engineTranslateKey", "LJavaSecurityKey;", "LJavaSecurityInvalidKeyException;" };
  static const J2ObjcClassInfo _NetI2pCryptoElgamalKeyFactory = { "KeyFactory", "net.i2p.crypto.elgamal", ptrTable, methods, NULL, 7, 0x11, 5, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoElgamalKeyFactory;
}

@end

void NetI2pCryptoElgamalKeyFactory_init(NetI2pCryptoElgamalKeyFactory *self) {
  JavaSecurityKeyFactorySpi_init(self);
}

NetI2pCryptoElgamalKeyFactory *new_NetI2pCryptoElgamalKeyFactory_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoElgamalKeyFactory, init)
}

NetI2pCryptoElgamalKeyFactory *create_NetI2pCryptoElgamalKeyFactory_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoElgamalKeyFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoElgamalKeyFactory)
