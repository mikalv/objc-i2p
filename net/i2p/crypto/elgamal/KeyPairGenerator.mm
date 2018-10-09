//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/KeyPairGenerator.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/security/InvalidAlgorithmParameterException.h"
#include "java/security/InvalidParameterException.h"
#include "java/security/KeyPair.h"
#include "java/security/KeyPairGeneratorSpi.h"
#include "java/security/SecureRandom.h"
#include "java/security/spec/AlgorithmParameterSpec.h"
#include "net/i2p/crypto/CryptoConstants.h"
#include "net/i2p/crypto/KeyGenerator.h"
#include "net/i2p/crypto/elgamal/ElGamalPrivateKey.h"
#include "net/i2p/crypto/elgamal/ElGamalPublicKey.h"
#include "net/i2p/crypto/elgamal/KeyPairGenerator.h"
#include "net/i2p/crypto/elgamal/impl/ElGamalPrivateKeyImpl.h"
#include "net/i2p/crypto/elgamal/impl/ElGamalPublicKeyImpl.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalGenParameterSpec.h"
#include "net/i2p/crypto/elgamal/spec/ElGamalParameterSpec.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/SimpleDataStructure.h"
#include "net/i2p/util/NativeBigInteger.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pCryptoElgamalKeyPairGenerator () {
 @public
  NetI2pCryptoElgamalSpecElGamalParameterSpec *elgParams_;
  jboolean initialized_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoElgamalKeyPairGenerator, elgParams_, NetI2pCryptoElgamalSpecElGamalParameterSpec *)

inline jint NetI2pCryptoElgamalKeyPairGenerator_get_DEFAULT_STRENGTH(void);
#define NetI2pCryptoElgamalKeyPairGenerator_DEFAULT_STRENGTH 2048
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoElgamalKeyPairGenerator, DEFAULT_STRENGTH, jint)

@implementation NetI2pCryptoElgamalKeyPairGenerator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoElgamalKeyPairGenerator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)initialize__WithInt:(jint)strength
withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random {
  if (strength != NetI2pCryptoElgamalKeyPairGenerator_DEFAULT_STRENGTH) @throw create_JavaSecurityInvalidParameterException_initWithNSString_(@"unknown key type.");
  JreStrongAssign(&elgParams_, JreLoadStatic(NetI2pCryptoCryptoConstants, I2P_ELGAMAL_2048_SPEC));
  @try {
    [self initialize__WithJavaSecuritySpecAlgorithmParameterSpec:elgParams_ withJavaSecuritySecureRandom:random];
  }
  @catch (JavaSecurityInvalidAlgorithmParameterException *e) {
    @throw create_JavaSecurityInvalidParameterException_initWithNSString_(@"key type not configurable.");
  }
}

- (void)initialize__WithJavaSecuritySpecAlgorithmParameterSpec:(id<JavaSecuritySpecAlgorithmParameterSpec>)params
                                  withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random {
  if ([params isKindOfClass:[NetI2pCryptoElgamalSpecElGamalParameterSpec class]]) {
    JreStrongAssign(&elgParams_, (NetI2pCryptoElgamalSpecElGamalParameterSpec *) cast_chk(params, [NetI2pCryptoElgamalSpecElGamalParameterSpec class]));
    if (![((NetI2pCryptoElgamalSpecElGamalParameterSpec *) nil_chk(elgParams_)) isEqual:JreLoadStatic(NetI2pCryptoCryptoConstants, I2P_ELGAMAL_2048_SPEC)]) @throw create_JavaSecurityInvalidAlgorithmParameterException_initWithNSString_(@"unsupported ElGamalParameterSpec");
  }
  else if ([params isKindOfClass:[NetI2pCryptoElgamalSpecElGamalGenParameterSpec class]]) {
    NetI2pCryptoElgamalSpecElGamalGenParameterSpec *elgGPS = (NetI2pCryptoElgamalSpecElGamalGenParameterSpec *) cast_chk(params, [NetI2pCryptoElgamalSpecElGamalGenParameterSpec class]);
    if ([((NetI2pCryptoElgamalSpecElGamalGenParameterSpec *) nil_chk(elgGPS)) getPrimeSize] != NetI2pCryptoElgamalKeyPairGenerator_DEFAULT_STRENGTH) @throw create_JavaSecurityInvalidAlgorithmParameterException_initWithNSString_(@"unsupported prime size");
    JreStrongAssign(&elgParams_, JreLoadStatic(NetI2pCryptoCryptoConstants, I2P_ELGAMAL_2048_SPEC));
  }
  else {
    @throw create_JavaSecurityInvalidAlgorithmParameterException_initWithNSString_(@"parameter object not a ElGamalParameterSpec");
  }
  initialized_ = true;
}

- (JavaSecurityKeyPair *)generateKeyPair {
  if (!initialized_) [self initialize__WithInt:NetI2pCryptoElgamalKeyPairGenerator_DEFAULT_STRENGTH withJavaSecuritySecureRandom:NetI2pUtilRandomSource_getInstance()];
  NetI2pCryptoKeyGenerator *kg = NetI2pCryptoKeyGenerator_getInstance();
  IOSObjectArray *keys = [((NetI2pCryptoKeyGenerator *) nil_chk(kg)) generatePKIKeys];
  NetI2pDataPublicKey *pubKey = (NetI2pDataPublicKey *) cast_chk(IOSObjectArray_Get(nil_chk(keys), 0), [NetI2pDataPublicKey class]);
  NetI2pDataPrivateKey *privKey = (NetI2pDataPrivateKey *) cast_chk(IOSObjectArray_Get(keys, 1), [NetI2pDataPrivateKey class]);
  id<NetI2pCryptoElgamalElGamalPublicKey> epubKey = create_NetI2pCryptoElgamalImplElGamalPublicKeyImpl_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_(create_NetI2pUtilNativeBigInteger_initWithInt_withByteArray_(1, [((NetI2pDataPublicKey *) nil_chk(pubKey)) getData]), elgParams_);
  id<NetI2pCryptoElgamalElGamalPrivateKey> eprivKey = create_NetI2pCryptoElgamalImplElGamalPrivateKeyImpl_initWithJavaMathBigInteger_withNetI2pCryptoElgamalSpecElGamalParameterSpec_(create_NetI2pUtilNativeBigInteger_initWithInt_withByteArray_(1, [((NetI2pDataPrivateKey *) nil_chk(privKey)) getData]), elgParams_);
  return create_JavaSecurityKeyPair_initWithJavaSecurityPublicKey_withJavaSecurityPrivateKey_(epubKey, eprivKey);
}

- (void)dealloc {
  RELEASE_(elgParams_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 2, 3, -1, -1, -1 },
    { NULL, "LJavaSecurityKeyPair;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initialize__WithInt:withJavaSecuritySecureRandom:);
  methods[2].selector = @selector(initialize__WithJavaSecuritySpecAlgorithmParameterSpec:withJavaSecuritySecureRandom:);
  methods[3].selector = @selector(generateKeyPair);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STRENGTH", "I", .constantValue.asInt = NetI2pCryptoElgamalKeyPairGenerator_DEFAULT_STRENGTH, 0x1a, -1, -1, -1, -1 },
    { "elgParams_", "LNetI2pCryptoElgamalSpecElGamalParameterSpec;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "initialized_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "initialize", "ILJavaSecuritySecureRandom;", "LJavaSecuritySpecAlgorithmParameterSpec;LJavaSecuritySecureRandom;", "LJavaSecurityInvalidAlgorithmParameterException;" };
  static const J2ObjcClassInfo _NetI2pCryptoElgamalKeyPairGenerator = { "KeyPairGenerator", "net.i2p.crypto.elgamal", ptrTable, methods, fields, 7, 0x11, 4, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoElgamalKeyPairGenerator;
}

@end

void NetI2pCryptoElgamalKeyPairGenerator_init(NetI2pCryptoElgamalKeyPairGenerator *self) {
  JavaSecurityKeyPairGeneratorSpi_init(self);
}

NetI2pCryptoElgamalKeyPairGenerator *new_NetI2pCryptoElgamalKeyPairGenerator_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoElgamalKeyPairGenerator, init)
}

NetI2pCryptoElgamalKeyPairGenerator *create_NetI2pCryptoElgamalKeyPairGenerator_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoElgamalKeyPairGenerator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoElgamalKeyPairGenerator)
