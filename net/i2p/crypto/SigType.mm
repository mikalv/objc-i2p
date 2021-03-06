//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/SigType.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/security/GeneralSecurityException.h"
#include "java/security/MessageDigest.h"
#include "java/security/NoSuchAlgorithmException.h"
#include "java/security/Signature.h"
#include "java/security/interfaces/ECPrivateKey.h"
#include "java/security/spec/AlgorithmParameterSpec.h"
#include "java/security/spec/DSAParameterSpec.h"
#include "java/security/spec/ECParameterSpec.h"
#include "java/security/spec/InvalidParameterSpecException.h"
#include "java/security/spec/RSAKeyGenParameterSpec.h"
#include "java/util/HashMap.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "net/i2p/crypto/CryptoConstants.h"
#include "net/i2p/crypto/ECConstants.h"
#include "net/i2p/crypto/Hash384.h"
#include "net/i2p/crypto/Hash512.h"
#include "net/i2p/crypto/KeyGenerator.h"
#include "net/i2p/crypto/RSAConstants.h"
#include "net/i2p/crypto/SHA1.h"
#include "net/i2p/crypto/SHA1Hash.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/crypto/SigAlgo.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/crypto/SigUtil.h"
#include "net/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec.h"
#include "net/i2p/crypto/eddsa/spec/EdDSANamedCurveTable.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/SimpleDataStructure.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pCryptoSigType () {
 @public
  jint code_;
  jint pubkeyLen_;
  jint privkeyLen_;
  jint hashLen_;
  jint sigLen_;
  NetI2pCryptoSigAlgo *base_;
  NSString *digestName_;
  NSString *algoName_;
  NSString *oid_;
  NSString *since_;
  id<JavaSecuritySpecAlgorithmParameterSpec> params_;
  jboolean isAvail_;
}

- (jboolean)x_isAvailable;

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoSigType, base_, NetI2pCryptoSigAlgo *)
J2OBJC_FIELD_SETTER(NetI2pCryptoSigType, digestName_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pCryptoSigType, algoName_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pCryptoSigType, oid_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pCryptoSigType, since_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pCryptoSigType, params_, id<JavaSecuritySpecAlgorithmParameterSpec>)

inline id<JavaUtilMap> NetI2pCryptoSigType_get_BY_CODE(void);
static id<JavaUtilMap> NetI2pCryptoSigType_BY_CODE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoSigType, BY_CODE, id<JavaUtilMap>)

__attribute__((unused)) static void NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(NetI2pCryptoSigType *self, jint cod, jint pubLen, jint privLen, jint hLen, jint sLen, NetI2pCryptoSigAlgo *baseAlgo, NSString *mdName, NSString *aName, id<JavaSecuritySpecAlgorithmParameterSpec> pSpec, NSString *oid, NSString *supportedSince, NSString *__name, jint __ordinal);

__attribute__((unused)) static jboolean NetI2pCryptoSigType_x_isAvailable(NetI2pCryptoSigType *self);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoSigType)

NetI2pCryptoSigType *NetI2pCryptoSigType_values_[9];

@implementation NetI2pCryptoSigType

+ (NetI2pCryptoSigType *)DSA_SHA1 {
  return JreEnum(NetI2pCryptoSigType, DSA_SHA1);
}

+ (NetI2pCryptoSigType *)ECDSA_SHA256_P256 {
  return JreEnum(NetI2pCryptoSigType, ECDSA_SHA256_P256);
}

+ (NetI2pCryptoSigType *)ECDSA_SHA384_P384 {
  return JreEnum(NetI2pCryptoSigType, ECDSA_SHA384_P384);
}

+ (NetI2pCryptoSigType *)ECDSA_SHA512_P521 {
  return JreEnum(NetI2pCryptoSigType, ECDSA_SHA512_P521);
}

+ (NetI2pCryptoSigType *)RSA_SHA256_2048 {
  return JreEnum(NetI2pCryptoSigType, RSA_SHA256_2048);
}

+ (NetI2pCryptoSigType *)RSA_SHA384_3072 {
  return JreEnum(NetI2pCryptoSigType, RSA_SHA384_3072);
}

+ (NetI2pCryptoSigType *)RSA_SHA512_4096 {
  return JreEnum(NetI2pCryptoSigType, RSA_SHA512_4096);
}

+ (NetI2pCryptoSigType *)EdDSA_SHA512_Ed25519 {
  return JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519);
}

+ (NetI2pCryptoSigType *)EdDSA_SHA512_Ed25519ph {
  return JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519ph);
}

- (jint)getCode {
  return code_;
}

- (jint)getPubkeyLen {
  return pubkeyLen_;
}

- (jint)getPrivkeyLen {
  return privkeyLen_;
}

- (jint)getHashLen {
  return hashLen_;
}

- (jint)getSigLen {
  return sigLen_;
}

- (NetI2pCryptoSigAlgo *)getBaseAlgorithm {
  return base_;
}

- (NSString *)getAlgorithmName {
  return algoName_;
}

- (id<JavaSecuritySpecAlgorithmParameterSpec>)getParams {
  if (params_ == nil) @throw create_JavaSecuritySpecInvalidParameterSpecException_initWithNSString_(JreStrcat("$$", [self description], @" is not available in this JVM"));
  return params_;
}

- (JavaSecurityMessageDigest *)getDigestInstance {
  if ([((NSString *) nil_chk(digestName_)) isEqual:@"SHA-1"]) return NetI2pCryptoSHA1_getInstance();
  if ([digestName_ isEqual:@"SHA-256"]) return NetI2pCryptoSHA256Generator_getDigestInstance();
  @try {
    return JavaSecurityMessageDigest_getInstanceWithNSString_(digestName_);
  }
  @catch (JavaSecurityNoSuchAlgorithmException *e) {
    @throw create_JavaLangUnsupportedOperationException_initWithJavaLangThrowable_(e);
  }
}

- (NetI2pDataSimpleDataStructure *)getHashInstance {
  switch ([self getHashLen]) {
    case 20:
    return create_NetI2pCryptoSHA1Hash_init();
    case 32:
    return create_NetI2pDataHash_init();
    case 48:
    return create_NetI2pCryptoHash384_init();
    case 64:
    return create_NetI2pCryptoHash512_init();
    default:
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$I", @"Unsupported hash length: ", [self getHashLen]));
  }
}

- (NSString *)getSupportedSince {
  return since_;
}

- (NSString *)getOID {
  return oid_;
}

- (jboolean)isAvailable {
  return isAvail_;
}

- (jboolean)x_isAvailable {
  return NetI2pCryptoSigType_x_isAvailable(self);
}

+ (jboolean)isAvailableWithInt:(jint)code {
  return NetI2pCryptoSigType_isAvailableWithInt_(code);
}

+ (jboolean)isAvailableWithNSString:(NSString *)stype {
  return NetI2pCryptoSigType_isAvailableWithNSString_(stype);
}

+ (NetI2pCryptoSigType *)getByCodeWithInt:(jint)code {
  return NetI2pCryptoSigType_getByCodeWithInt_(code);
}

+ (NetI2pCryptoSigType *)parseSigTypeWithNSString:(NSString *)stype {
  return NetI2pCryptoSigType_parseSigTypeWithNSString_(stype);
}

+ (IOSObjectArray *)values {
  return NetI2pCryptoSigType_values();
}

+ (NetI2pCryptoSigType *)valueOfWithNSString:(NSString *)name {
  return NetI2pCryptoSigType_valueOfWithNSString_(name);
}

- (NetI2pCryptoSigType_Enum)toNSEnum {
  return (NetI2pCryptoSigType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigAlgo;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaSecuritySpecAlgorithmParameterSpec;", 0x1, -1, -1, 0, -1, -1, -1 },
    { NULL, "LJavaSecurityMessageDigest;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSimpleDataStructure;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 1, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigType;", 0x9, 4, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigType;", 0x9, 5, 3, -1, -1, -1, -1 },
    { NULL, "[LNetI2pCryptoSigType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigType;", 0x9, 6, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getCode);
  methods[1].selector = @selector(getPubkeyLen);
  methods[2].selector = @selector(getPrivkeyLen);
  methods[3].selector = @selector(getHashLen);
  methods[4].selector = @selector(getSigLen);
  methods[5].selector = @selector(getBaseAlgorithm);
  methods[6].selector = @selector(getAlgorithmName);
  methods[7].selector = @selector(getParams);
  methods[8].selector = @selector(getDigestInstance);
  methods[9].selector = @selector(getHashInstance);
  methods[10].selector = @selector(getSupportedSince);
  methods[11].selector = @selector(getOID);
  methods[12].selector = @selector(isAvailable);
  methods[13].selector = @selector(x_isAvailable);
  methods[14].selector = @selector(isAvailableWithInt:);
  methods[15].selector = @selector(isAvailableWithNSString:);
  methods[16].selector = @selector(getByCodeWithInt:);
  methods[17].selector = @selector(parseSigTypeWithNSString:);
  methods[18].selector = @selector(values);
  methods[19].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DSA_SHA1", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "ECDSA_SHA256_P256", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "ECDSA_SHA384_P384", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "ECDSA_SHA512_P521", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "RSA_SHA256_2048", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
    { "RSA_SHA384_3072", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 12, -1, -1 },
    { "RSA_SHA512_4096", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 13, -1, -1 },
    { "EdDSA_SHA512_Ed25519", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 14, -1, -1 },
    { "EdDSA_SHA512_Ed25519ph", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x4019, -1, 15, -1, -1 },
    { "code_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "pubkeyLen_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "privkeyLen_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "hashLen_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "sigLen_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "base_", "LNetI2pCryptoSigAlgo;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "digestName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "algoName_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "oid_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "since_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "params_", "LJavaSecuritySpecAlgorithmParameterSpec;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "isAvail_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "BY_CODE", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 16, 17, -1 },
  };
  static const void *ptrTable[] = { "LJavaSecuritySpecInvalidParameterSpecException;", "isAvailable", "I", "LNSString;", "getByCode", "parseSigType", "valueOf", &JreEnum(NetI2pCryptoSigType, DSA_SHA1), &JreEnum(NetI2pCryptoSigType, ECDSA_SHA256_P256), &JreEnum(NetI2pCryptoSigType, ECDSA_SHA384_P384), &JreEnum(NetI2pCryptoSigType, ECDSA_SHA512_P521), &JreEnum(NetI2pCryptoSigType, RSA_SHA256_2048), &JreEnum(NetI2pCryptoSigType, RSA_SHA384_3072), &JreEnum(NetI2pCryptoSigType, RSA_SHA512_4096), &JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519), &JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519ph), &NetI2pCryptoSigType_BY_CODE, "Ljava/util/Map<Ljava/lang/Integer;Lnet/i2p/crypto/SigType;>;", "Ljava/lang/Enum<Lnet/i2p/crypto/SigType;>;" };
  static const J2ObjcClassInfo _NetI2pCryptoSigType = { "SigType", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x4011, 20, 22, -1, -1, -1, 18, -1 };
  return &_NetI2pCryptoSigType;
}

+ (void)initialize {
  if (self == [NetI2pCryptoSigType class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 9 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    ((void) (JreEnum(NetI2pCryptoSigType, DSA_SHA1) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 0, 128, 20, 20, 40, JreLoadEnum(NetI2pCryptoSigAlgo, DSA), @"SHA-1", @"SHA1withDSA", JreLoadStatic(NetI2pCryptoCryptoConstants, DSA_SHA1_SPEC), @"1.2.840.10040.4.3", @"0", @"DSA_SHA1", 0);
    ((void) (JreEnum(NetI2pCryptoSigType, ECDSA_SHA256_P256) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 1, 64, 32, 32, 64, JreLoadEnum(NetI2pCryptoSigAlgo, EC), @"SHA-256", @"SHA256withECDSA", JreLoadStatic(NetI2pCryptoECConstants, P256_SPEC), @"1.2.840.10045.4.3.2", @"0.9.12", @"ECDSA_SHA256_P256", 1);
    ((void) (JreEnum(NetI2pCryptoSigType, ECDSA_SHA384_P384) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 2, 96, 48, 48, 96, JreLoadEnum(NetI2pCryptoSigAlgo, EC), @"SHA-384", @"SHA384withECDSA", JreLoadStatic(NetI2pCryptoECConstants, P384_SPEC), @"1.2.840.10045.4.3.3", @"0.9.12", @"ECDSA_SHA384_P384", 2);
    ((void) (JreEnum(NetI2pCryptoSigType, ECDSA_SHA512_P521) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 3, 132, 66, 64, 132, JreLoadEnum(NetI2pCryptoSigAlgo, EC), @"SHA-512", @"SHA512withECDSA", JreLoadStatic(NetI2pCryptoECConstants, P521_SPEC), @"1.2.840.10045.4.3.4", @"0.9.12", @"ECDSA_SHA512_P521", 3);
    ((void) (JreEnum(NetI2pCryptoSigType, RSA_SHA256_2048) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 4, 256, 512, 32, 256, JreLoadEnum(NetI2pCryptoSigAlgo, RSA), @"SHA-256", @"SHA256withRSA", JreLoadStatic(NetI2pCryptoRSAConstants, F4_2048_SPEC), @"1.2.840.113549.1.1.11", @"0.9.12", @"RSA_SHA256_2048", 4);
    ((void) (JreEnum(NetI2pCryptoSigType, RSA_SHA384_3072) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 5, 384, 768, 48, 384, JreLoadEnum(NetI2pCryptoSigAlgo, RSA), @"SHA-384", @"SHA384withRSA", JreLoadStatic(NetI2pCryptoRSAConstants, F4_3072_SPEC), @"1.2.840.113549.1.1.12", @"0.9.12", @"RSA_SHA384_3072", 5);
    ((void) (JreEnum(NetI2pCryptoSigType, RSA_SHA512_4096) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 6, 512, 1024, 64, 512, JreLoadEnum(NetI2pCryptoSigAlgo, RSA), @"SHA-512", @"SHA512withRSA", JreLoadStatic(NetI2pCryptoRSAConstants, F4_4096_SPEC), @"1.2.840.113549.1.1.13", @"0.9.12", @"RSA_SHA512_4096", 6);
    ((void) (JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 7, 32, 32, 64, 64, JreLoadEnum(NetI2pCryptoSigAlgo, EdDSA), @"SHA-512", @"SHA512withEdDSA", NetI2pCryptoEddsaSpecEdDSANamedCurveTable_getByNameWithNSString_(@"ed25519-sha-512"), @"1.3.101.101", @"0.9.17", @"EdDSA_SHA512_Ed25519", 7);
    ((void) (JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519ph) = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
    NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(e, 8, 32, 32, 64, 64, JreLoadEnum(NetI2pCryptoSigAlgo, EdDSA), @"SHA-512", @"NonewithEdDSA", NetI2pCryptoEddsaSpecEdDSANamedCurveTable_getByNameWithNSString_(@"ed25519-sha-512"), @"1.3.101.101", @"0.9.25", @"EdDSA_SHA512_Ed25519ph", 8);
    JreStrongAssignAndConsume(&NetI2pCryptoSigType_BY_CODE, new_JavaUtilHashMap_init());
    {
      {
        IOSObjectArray *a__ = NetI2pCryptoSigType_values();
        NetI2pCryptoSigType * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        NetI2pCryptoSigType * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NetI2pCryptoSigType *type = *b__++;
          if ([NetI2pCryptoSigType_BY_CODE putWithId:JavaLangInteger_valueOfWithInt_([((NetI2pCryptoSigType *) nil_chk(type)) getCode]) withId:type] != nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"Duplicate SigType code");
        }
      }
    }
    J2OBJC_SET_INITIALIZED(NetI2pCryptoSigType)
  }
}

@end

void NetI2pCryptoSigType_initWithInt_withInt_withInt_withInt_withInt_withNetI2pCryptoSigAlgo_withNSString_withNSString_withJavaSecuritySpecAlgorithmParameterSpec_withNSString_withNSString_withNSString_withInt_(NetI2pCryptoSigType *self, jint cod, jint pubLen, jint privLen, jint hLen, jint sLen, NetI2pCryptoSigAlgo *baseAlgo, NSString *mdName, NSString *aName, id<JavaSecuritySpecAlgorithmParameterSpec> pSpec, NSString *oid, NSString *supportedSince, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->code_ = cod;
  self->pubkeyLen_ = pubLen;
  self->privkeyLen_ = privLen;
  self->hashLen_ = hLen;
  self->sigLen_ = sLen;
  JreStrongAssign(&self->base_, baseAlgo);
  JreStrongAssign(&self->digestName_, mdName);
  JreStrongAssign(&self->algoName_, aName);
  JreStrongAssign(&self->params_, pSpec);
  JreStrongAssign(&self->oid_, oid);
  JreStrongAssign(&self->since_, supportedSince);
  self->isAvail_ = NetI2pCryptoSigType_x_isAvailable(self);
}

jboolean NetI2pCryptoSigType_x_isAvailable(NetI2pCryptoSigType *self) {
  if (JreEnum(NetI2pCryptoSigType, DSA_SHA1) == self) return true;
  @try {
    [self getParams];
    if ([self getBaseAlgorithm] != JreLoadEnum(NetI2pCryptoSigAlgo, EdDSA)) {
      JavaSecuritySignature *jsig = JavaSecuritySignature_getInstanceWithNSString_([self getAlgorithmName]);
      if ([self getBaseAlgorithm] == JreLoadEnum(NetI2pCryptoSigAlgo, EC) && NetI2pUtilSystemVersion_isGentoo()) {
        IOSObjectArray *keys = [((NetI2pCryptoKeyGenerator *) nil_chk(NetI2pCryptoKeyGenerator_getInstance())) generateSigningKeysWithNetI2pCryptoSigType:self];
        NetI2pDataSigningPrivateKey *privKey = (NetI2pDataSigningPrivateKey *) cast_chk(IOSObjectArray_Get(nil_chk(keys), 1), [NetI2pDataSigningPrivateKey class]);
        [((JavaSecuritySignature *) nil_chk(jsig)) initSignWithJavaSecurityPrivateKey:NetI2pCryptoSigUtil_toJavaECKeyWithNetI2pDataSigningPrivateKey_(privKey)];
        [jsig updateWithByteArray:[((NetI2pDataSimpleDataStructure *) nil_chk(IOSObjectArray_Get(keys, 0))) getData]];
        [jsig sign];
      }
    }
    [self getDigestInstance];
    [self getHashInstance];
  }
  @catch (JavaSecurityGeneralSecurityException *e) {
    return false;
  }
  @catch (JavaLangRuntimeException *e) {
    return false;
  }
  return true;
}

jboolean NetI2pCryptoSigType_isAvailableWithInt_(jint code) {
  NetI2pCryptoSigType_initialize();
  NetI2pCryptoSigType *type = NetI2pCryptoSigType_getByCodeWithInt_(code);
  if (type == nil) return false;
  return [type isAvailable];
}

jboolean NetI2pCryptoSigType_isAvailableWithNSString_(NSString *stype) {
  NetI2pCryptoSigType_initialize();
  NetI2pCryptoSigType *type = NetI2pCryptoSigType_parseSigTypeWithNSString_(stype);
  if (type == nil) return false;
  return [type isAvailable];
}

NetI2pCryptoSigType *NetI2pCryptoSigType_getByCodeWithInt_(jint code) {
  NetI2pCryptoSigType_initialize();
  return [((id<JavaUtilMap>) nil_chk(NetI2pCryptoSigType_BY_CODE)) getWithId:JavaLangInteger_valueOfWithInt_(code)];
}

NetI2pCryptoSigType *NetI2pCryptoSigType_parseSigTypeWithNSString_(NSString *stype) {
  NetI2pCryptoSigType_initialize();
  @try {
    NSString *uc = [((NSString *) nil_chk(stype)) java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
    if ([((NSString *) nil_chk(uc)) isEqual:@"EDDSA_SHA512_ED25519"]) return JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519);
    if ([uc isEqual:@"EDDSA_SHA512_ED25519PH"]) return JreEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519ph);
    return NetI2pCryptoSigType_valueOfWithNSString_(uc);
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    @try {
      jint code = JavaLangInteger_parseIntWithNSString_(stype);
      return NetI2pCryptoSigType_getByCodeWithInt_(code);
    }
    @catch (JavaLangNumberFormatException *nfe) {
      return nil;
    }
  }
}

IOSObjectArray *NetI2pCryptoSigType_values() {
  NetI2pCryptoSigType_initialize();
  return [IOSObjectArray arrayWithObjects:NetI2pCryptoSigType_values_ count:9 type:NetI2pCryptoSigType_class_()];
}

NetI2pCryptoSigType *NetI2pCryptoSigType_valueOfWithNSString_(NSString *name) {
  NetI2pCryptoSigType_initialize();
  for (int i = 0; i < 9; i++) {
    NetI2pCryptoSigType *e = NetI2pCryptoSigType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

NetI2pCryptoSigType *NetI2pCryptoSigType_fromOrdinal(NSUInteger ordinal) {
  NetI2pCryptoSigType_initialize();
  if (ordinal >= 9) {
    return nil;
  }
  return NetI2pCryptoSigType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoSigType)
