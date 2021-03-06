//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/KeyGenerator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/annotation/Annotation.h"
#include "java/math/BigInteger.h"
#include "java/security/GeneralSecurityException.h"
#include "java/security/InvalidKeyException.h"
#include "java/security/KeyFactory.h"
#include "java/security/KeyPair.h"
#include "java/security/KeyPairGenerator.h"
#include "java/security/MessageDigest.h"
#include "java/security/PrivateKey.h"
#include "java/security/Provider.h"
#include "java/security/ProviderException.h"
#include "java/security/PublicKey.h"
#include "java/security/interfaces/ECPrivateKey.h"
#include "java/security/interfaces/ECPublicKey.h"
#include "java/security/interfaces/RSAPrivateKey.h"
#include "java/security/interfaces/RSAPublicKey.h"
#include "java/security/spec/AlgorithmParameterSpec.h"
#include "java/security/spec/ECParameterSpec.h"
#include "java/security/spec/ECPoint.h"
#include "java/security/spec/ECPublicKeySpec.h"
#include "java/security/spec/EllipticCurve.h"
#include "java/security/spec/RSAKeyGenParameterSpec.h"
#include "java/security/spec/RSAPublicKeySpec.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/CryptoConstants.h"
#include "net/i2p/crypto/DSAEngine.h"
#include "net/i2p/crypto/ECConstants.h"
#include "net/i2p/crypto/ECUtil.h"
#include "net/i2p/crypto/KeyGenerator.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/crypto/SigAlgo.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/crypto/SigUtil.h"
#include "net/i2p/crypto/eddsa/EdDSAPrivateKey.h"
#include "net/i2p/crypto/eddsa/EdDSAPublicKey.h"
#include "net/i2p/crypto/eddsa/KeyPairGenerator.h"
#include "net/i2p/crypto/eddsa/math/GroupElement.h"
#include "net/i2p/crypto/eddsa/spec/EdDSAParameterSpec.h"
#include "net/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec.h"
#include "net/i2p/crypto/provider/I2PProvider.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/data/Signature.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/SigningPublicKey.h"
#include "net/i2p/data/SimpleDataStructure.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/NativeBigInteger.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pCryptoKeyGenerator () {
 @public
  NetI2pI2PAppContext *_context_;
}

+ (void)main2WithNSStringArray:(IOSObjectArray *)args;

+ (void)testSigWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type
                               withInt:(jint)runs;

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoKeyGenerator, _context_, NetI2pI2PAppContext *)

inline jint NetI2pCryptoKeyGenerator_get_PBE_ROUNDS(void);
#define NetI2pCryptoKeyGenerator_PBE_ROUNDS 1000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoKeyGenerator, PBE_ROUNDS, jint)

inline jint NetI2pCryptoKeyGenerator_get_PUBKEY_EXPONENT_SIZE_FULL(void);
#define NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_FULL 2048
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoKeyGenerator, PUBKEY_EXPONENT_SIZE_FULL, jint)

inline jint NetI2pCryptoKeyGenerator_get_PUBKEY_EXPONENT_SIZE_SHORT(void);
#define NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_SHORT 226
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoKeyGenerator, PUBKEY_EXPONENT_SIZE_SHORT, jint)

inline jboolean NetI2pCryptoKeyGenerator_get_DEFAULT_USE_LONG_EXPONENT(void);
static jboolean NetI2pCryptoKeyGenerator_DEFAULT_USE_LONG_EXPONENT;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pCryptoKeyGenerator, DEFAULT_USE_LONG_EXPONENT, jboolean)

inline NSString *NetI2pCryptoKeyGenerator_get_PROP_LONG_EXPONENT(void);
static NSString *NetI2pCryptoKeyGenerator_PROP_LONG_EXPONENT = @"crypto.elGamal.useLongKey";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoKeyGenerator, PROP_LONG_EXPONENT, NSString *)

__attribute__((unused)) static void NetI2pCryptoKeyGenerator_main2WithNSStringArray_(IOSObjectArray *args);

__attribute__((unused)) static void NetI2pCryptoKeyGenerator_testSigWithNetI2pCryptoSigType_withInt_(NetI2pCryptoSigType *type, jint runs);

__attribute__((unused)) static IOSObjectArray *NetI2pCryptoKeyGenerator__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoKeyGenerator)

jint NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE;

@implementation NetI2pCryptoKeyGenerator

+ (jint)PUBKEY_EXPONENT_SIZE {
  return NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

+ (NetI2pCryptoKeyGenerator *)getInstance {
  return NetI2pCryptoKeyGenerator_getInstance();
}

- (NetI2pDataSessionKey *)generateSessionKey {
  NetI2pDataSessionKey *key = create_NetI2pDataSessionKey_init();
  IOSByteArray *data = [IOSByteArray arrayWithLength:NetI2pDataSessionKey_KEYSIZE_BYTES];
  [((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) random])) nextBytesWithByteArray:data];
  [key setDataWithByteArray:data];
  return key;
}

- (NetI2pDataSessionKey *)generateSessionKeyWithByteArray:(IOSByteArray *)salt
                                            withByteArray:(IOSByteArray *)passphrase {
  IOSByteArray *salted = [IOSByteArray arrayWithLength:16 + ((IOSByteArray *) nil_chk(passphrase))->size_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(salt, 0, salted, 0, JavaLangMath_minWithInt_withInt_(((IOSByteArray *) nil_chk(salt))->size_, 16));
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(passphrase, 0, salted, 16, passphrase->size_);
  IOSByteArray *h = [((NetI2pDataHash *) nil_chk([((NetI2pCryptoSHA256Generator *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) sha])) calculateHashWithByteArray:salted])) getData];
  for (jint i = 1; i < NetI2pCryptoKeyGenerator_PBE_ROUNDS; i++) [((NetI2pCryptoSHA256Generator *) nil_chk([_context_ sha])) calculateHashWithByteArray:h withInt:0 withInt:NetI2pDataHash_HASH_LENGTH withByteArray:h withInt:0];
  return create_NetI2pDataSessionKey_initWithByteArray_(h);
}

- (jboolean)useLongElGamalExponent {
  return [((NetI2pI2PAppContext *) nil_chk(_context_)) getPropertyWithNSString:NetI2pCryptoKeyGenerator_PROP_LONG_EXPONENT withBoolean:NetI2pCryptoKeyGenerator_DEFAULT_USE_LONG_EXPONENT];
}

- (jint)getElGamalExponentSize {
  return [self useLongElGamalExponent] ? NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_FULL : NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_SHORT;
}

- (IOSObjectArray *)generatePKIKeypair {
  return [self generatePKIKeys];
}

- (IOSObjectArray *)generatePKIKeys {
  JavaMathBigInteger *a = create_NetI2pUtilNativeBigInteger_initWithInt_withJavaUtilRandom_([self getElGamalExponentSize], [((NetI2pI2PAppContext *) nil_chk(_context_)) random]);
  JavaMathBigInteger *aalpha = [((NetI2pUtilNativeBigInteger *) nil_chk(JreLoadStatic(NetI2pCryptoCryptoConstants, elgg))) modPowWithJavaMathBigInteger:a withJavaMathBigInteger:JreLoadStatic(NetI2pCryptoCryptoConstants, elgp)];
  IOSObjectArray *keys = [IOSObjectArray arrayWithLength:2 type:NetI2pDataSimpleDataStructure_class_()];
  IOSObjectArray_SetAndConsume(keys, 0, new_NetI2pDataPublicKey_init());
  IOSObjectArray_SetAndConsume(keys, 1, new_NetI2pDataPrivateKey_init());
  @try {
    [((NetI2pDataSimpleDataStructure *) nil_chk(IOSObjectArray_Get(keys, 0))) setDataWithByteArray:NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(aalpha, NetI2pDataPublicKey_KEYSIZE_BYTES)];
    [((NetI2pDataSimpleDataStructure *) nil_chk(IOSObjectArray_Get(keys, 1))) setDataWithByteArray:NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(a, NetI2pDataPrivateKey_KEYSIZE_BYTES)];
  }
  @catch (JavaSecurityInvalidKeyException *ike) {
    @throw create_JavaLangIllegalArgumentException_initWithJavaLangThrowable_(ike);
  }
  return keys;
}

+ (NetI2pDataPublicKey *)getPublicKeyWithNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)priv {
  return NetI2pCryptoKeyGenerator_getPublicKeyWithNetI2pDataPrivateKey_(priv);
}

- (IOSObjectArray *)generateSigningKeypair {
  return [self generateSigningKeys];
}

- (IOSObjectArray *)generateSigningKeys {
  IOSObjectArray *keys = [IOSObjectArray arrayWithLength:2 type:NetI2pDataSimpleDataStructure_class_()];
  JavaMathBigInteger *x = nil;
  do {
    x = create_NetI2pUtilNativeBigInteger_initWithInt_withJavaUtilRandom_(160, [((NetI2pI2PAppContext *) nil_chk(_context_)) random]);
  }
  while ([x compareToWithId:JreLoadStatic(NetI2pCryptoCryptoConstants, dsaq)] >= 0 || [x isEqual:JreLoadStatic(JavaMathBigInteger, ZERO)]);
  JavaMathBigInteger *y = [((NetI2pUtilNativeBigInteger *) nil_chk(JreLoadStatic(NetI2pCryptoCryptoConstants, dsag))) modPowWithJavaMathBigInteger:x withJavaMathBigInteger:JreLoadStatic(NetI2pCryptoCryptoConstants, dsap)];
  IOSObjectArray_SetAndConsume(keys, 0, new_NetI2pDataSigningPublicKey_init());
  IOSObjectArray_SetAndConsume(keys, 1, new_NetI2pDataSigningPrivateKey_init());
  @try {
    [((NetI2pDataSimpleDataStructure *) nil_chk(IOSObjectArray_Get(keys, 0))) setDataWithByteArray:NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(y, JreLoadStatic(NetI2pDataSigningPublicKey, KEYSIZE_BYTES))];
    [((NetI2pDataSimpleDataStructure *) nil_chk(IOSObjectArray_Get(keys, 1))) setDataWithByteArray:NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(x, JreLoadStatic(NetI2pDataSigningPrivateKey, KEYSIZE_BYTES))];
  }
  @catch (JavaSecurityInvalidKeyException *ike) {
    @throw create_JavaLangIllegalStateException_initWithJavaLangThrowable_(ike);
  }
  return keys;
}

- (IOSObjectArray *)generateSigningKeysWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type {
  if (type == JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1)) return [self generateSigningKeys];
  JavaSecurityKeyPair *kp;
  if ([((NetI2pCryptoSigType *) nil_chk(type)) getBaseAlgorithm] == JreLoadEnum(NetI2pCryptoSigAlgo, EdDSA)) {
    NetI2pCryptoEddsaKeyPairGenerator *kpg = create_NetI2pCryptoEddsaKeyPairGenerator_init();
    [kpg initialize__WithJavaSecuritySpecAlgorithmParameterSpec:[type getParams] withJavaSecuritySecureRandom:[((NetI2pI2PAppContext *) nil_chk(_context_)) random]];
    kp = [kpg generateKeyPair];
  }
  else {
    JavaSecurityKeyPairGenerator *kpg = JavaSecurityKeyPairGenerator_getInstanceWithNSString_([((NetI2pCryptoSigAlgo *) nil_chk([type getBaseAlgorithm])) getName]);
    @try {
      [((JavaSecurityKeyPairGenerator *) nil_chk(kpg)) initialize__WithJavaSecuritySpecAlgorithmParameterSpec:[type getParams] withJavaSecuritySecureRandom:[((NetI2pI2PAppContext *) nil_chk(_context_)) random]];
      kp = [kpg generateKeyPair];
    }
    @catch (JavaSecurityProviderException *pe) {
      NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:NetI2pCryptoKeyGenerator_class_()];
      NSString *pname = [((JavaSecurityProvider *) nil_chk([kpg getProvider])) getName];
      if ([@"BC" isEqual:pname]) {
        if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:JreStrcat("$@", @"BC KPG failed for ", type) withJavaLangThrowable:pe];
        @throw create_JavaSecurityGeneralSecurityException_initWithNSString_withJavaLangThrowable_(JreStrcat("$@", @"BC KPG for ", type), pe);
      }
      if (!NetI2pCryptoECConstants_isBCAvailable()) @throw create_JavaSecurityGeneralSecurityException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$@", pname, @" KPG failed for ", type), pe);
      if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:JreStrcat("$$@$", pname, @" KPG failed for ", type, @", trying BC")];
      @try {
        kpg = JavaSecurityKeyPairGenerator_getInstanceWithNSString_withNSString_([((NetI2pCryptoSigAlgo *) nil_chk([type getBaseAlgorithm])) getName], @"BC");
        [((JavaSecurityKeyPairGenerator *) nil_chk(kpg)) initialize__WithJavaSecuritySpecAlgorithmParameterSpec:[type getParams] withJavaSecuritySecureRandom:[_context_ random]];
        kp = [kpg generateKeyPair];
      }
      @catch (JavaSecurityProviderException *pe2) {
        if ([log shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:JreStrcat("$@$", @"BC KPG failed for ", type, @" also") withJavaLangThrowable:pe2];
        @throw create_JavaSecurityGeneralSecurityException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$@", pname, @" KPG for ", type), pe);
      }
      @catch (JavaSecurityGeneralSecurityException *gse) {
        if ([log shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:JreStrcat("$@$", @"BC KPG failed for ", type, @" also") withJavaLangThrowable:gse];
        @throw create_JavaSecurityGeneralSecurityException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$@", pname, @" KPG for ", type), pe);
      }
    }
  }
  id<JavaSecurityPublicKey> pubkey = [((JavaSecurityKeyPair *) nil_chk(kp)) getPublic];
  id<JavaSecurityPrivateKey> privkey = [kp getPrivate];
  IOSObjectArray *keys = [IOSObjectArray arrayWithLength:2 type:NetI2pDataSimpleDataStructure_class_()];
  IOSObjectArray_Set(keys, 0, NetI2pCryptoSigUtil_fromJavaKeyWithJavaSecurityPublicKey_withNetI2pCryptoSigType_(pubkey, type));
  IOSObjectArray_Set(keys, 1, NetI2pCryptoSigUtil_fromJavaKeyWithJavaSecurityPrivateKey_withNetI2pCryptoSigType_(privkey, type));
  return keys;
}

+ (NetI2pDataSigningPublicKey *)getSigningPublicKeyWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)priv {
  return NetI2pCryptoKeyGenerator_getSigningPublicKeyWithNetI2pDataSigningPrivateKey_(priv);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pCryptoKeyGenerator_mainWithNSStringArray_(args);
}

+ (void)main2WithNSStringArray:(IOSObjectArray *)args {
  NetI2pCryptoKeyGenerator_main2WithNSStringArray_(args);
}

+ (void)testSigWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type
                               withInt:(jint)runs {
  NetI2pCryptoKeyGenerator_testSigWithNetI2pCryptoSigType_withInt_(type, runs);
}

- (void)dealloc {
  RELEASE_(_context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoKeyGenerator;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNetI2pDataSimpleDataStructure;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPublicKey;", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "[LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNetI2pDataSimpleDataStructure;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNetI2pDataSimpleDataStructure;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LNetI2pDataSigningPublicKey;", 0x9, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 12, 11, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 13, 14, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(getInstance);
  methods[2].selector = @selector(generateSessionKey);
  methods[3].selector = @selector(generateSessionKeyWithByteArray:withByteArray:);
  methods[4].selector = @selector(useLongElGamalExponent);
  methods[5].selector = @selector(getElGamalExponentSize);
  methods[6].selector = @selector(generatePKIKeypair);
  methods[7].selector = @selector(generatePKIKeys);
  methods[8].selector = @selector(getPublicKeyWithNetI2pDataPrivateKey:);
  methods[9].selector = @selector(generateSigningKeypair);
  methods[10].selector = @selector(generateSigningKeys);
  methods[11].selector = @selector(generateSigningKeysWithNetI2pCryptoSigType:);
  methods[12].selector = @selector(getSigningPublicKeyWithNetI2pDataSigningPrivateKey:);
  methods[13].selector = @selector(mainWithNSStringArray:);
  methods[14].selector = @selector(main2WithNSStringArray:);
  methods[15].selector = @selector(testSigWithNetI2pCryptoSigType:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "PBE_ROUNDS", "I", .constantValue.asInt = NetI2pCryptoKeyGenerator_PBE_ROUNDS, 0x1a, -1, -1, -1, -1 },
    { "PUBKEY_EXPONENT_SIZE_FULL", "I", .constantValue.asInt = NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_FULL, 0x1a, -1, -1, -1, -1 },
    { "PUBKEY_EXPONENT_SIZE_SHORT", "I", .constantValue.asInt = NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_SHORT, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_USE_LONG_EXPONENT", "Z", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "PUBKEY_EXPONENT_SIZE", "I", .constantValue.asLong = 0, 0x19, -1, 16, -1, 17 },
    { "PROP_LONG_EXPONENT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "generateSessionKey", "[B[B", "getPublicKey", "LNetI2pDataPrivateKey;", "generateSigningKeys", "LNetI2pCryptoSigType;", "LJavaSecurityGeneralSecurityException;", "getSigningPublicKey", "LNetI2pDataSigningPrivateKey;", "main", "[LNSString;", "main2", "testSig", "LNetI2pCryptoSigType;I", &NetI2pCryptoKeyGenerator_DEFAULT_USE_LONG_EXPONENT, &NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE, (void *)&NetI2pCryptoKeyGenerator__Annotations$0, &NetI2pCryptoKeyGenerator_PROP_LONG_EXPONENT };
  static const J2ObjcClassInfo _NetI2pCryptoKeyGenerator = { "KeyGenerator", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x11, 16, 7, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoKeyGenerator;
}

+ (void)initialize {
  if (self == [NetI2pCryptoKeyGenerator class]) {
    {
      NetI2pCryptoProviderI2PProvider_addProvider();
    }
    NetI2pCryptoKeyGenerator_DEFAULT_USE_LONG_EXPONENT = !NetI2pUtilSystemVersion_isSlow();
    NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE = NetI2pCryptoKeyGenerator_DEFAULT_USE_LONG_EXPONENT ? NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_FULL : NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE_SHORT;
    J2OBJC_SET_INITIALIZED(NetI2pCryptoKeyGenerator)
  }
}

@end

void NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(NetI2pCryptoKeyGenerator *self, NetI2pI2PAppContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
}

NetI2pCryptoKeyGenerator *new_NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pCryptoKeyGenerator, initWithNetI2pI2PAppContext_, context)
}

NetI2pCryptoKeyGenerator *create_NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoKeyGenerator, initWithNetI2pI2PAppContext_, context)
}

NetI2pCryptoKeyGenerator *NetI2pCryptoKeyGenerator_getInstance() {
  NetI2pCryptoKeyGenerator_initialize();
  return [((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) keyGenerator];
}

NetI2pDataPublicKey *NetI2pCryptoKeyGenerator_getPublicKeyWithNetI2pDataPrivateKey_(NetI2pDataPrivateKey *priv) {
  NetI2pCryptoKeyGenerator_initialize();
  JavaMathBigInteger *a = create_NetI2pUtilNativeBigInteger_initWithInt_withByteArray_(1, [((NetI2pDataPrivateKey *) nil_chk(priv)) toByteArray]);
  JavaMathBigInteger *aalpha = [((NetI2pUtilNativeBigInteger *) nil_chk(JreLoadStatic(NetI2pCryptoCryptoConstants, elgg))) modPowWithJavaMathBigInteger:a withJavaMathBigInteger:JreLoadStatic(NetI2pCryptoCryptoConstants, elgp)];
  NetI2pDataPublicKey *pub = create_NetI2pDataPublicKey_init();
  @try {
    [pub setDataWithByteArray:NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(aalpha, NetI2pDataPublicKey_KEYSIZE_BYTES)];
  }
  @catch (JavaSecurityInvalidKeyException *ike) {
    @throw create_JavaLangIllegalArgumentException_initWithJavaLangThrowable_(ike);
  }
  return pub;
}

NetI2pDataSigningPublicKey *NetI2pCryptoKeyGenerator_getSigningPublicKeyWithNetI2pDataSigningPrivateKey_(NetI2pDataSigningPrivateKey *priv) {
  NetI2pCryptoKeyGenerator_initialize();
  NetI2pCryptoSigType *type = [((NetI2pDataSigningPrivateKey *) nil_chk(priv)) getType];
  if (type == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Unknown type");
  @try {
    {
      JavaMathBigInteger *x;
      JavaMathBigInteger *y;
      NetI2pDataSigningPublicKey *pub;
      id<JavaSecurityInterfacesECPrivateKey> ecpriv;
      JavaMathBigInteger *s;
      JavaSecuritySpecECParameterSpec *spec;
      JavaSecuritySpecEllipticCurve *curve;
      JavaSecuritySpecECPoint *g;
      JavaSecuritySpecECPoint *w;
      JavaSecuritySpecECPublicKeySpec *ecks;
      JavaSecurityKeyFactory *eckf;
      id<JavaSecurityInterfacesECPublicKey> ecpub;
      id<JavaSecurityInterfacesRSAPrivateKey> rsapriv;
      JavaMathBigInteger *exp;
      JavaSecuritySpecRSAPublicKeySpec *rsaks;
      JavaSecurityKeyFactory *rsakf;
      id<JavaSecurityInterfacesRSAPublicKey> rsapub;
      NetI2pCryptoEddsaEdDSAPrivateKey *epriv;
      NetI2pCryptoEddsaEdDSAPublicKey *epub;
      switch ([[type getBaseAlgorithm] ordinal]) {
        case NetI2pCryptoSigAlgo_Enum_DSA:
        x = create_NetI2pUtilNativeBigInteger_initWithInt_withByteArray_(1, [priv toByteArray]);
        y = [((NetI2pUtilNativeBigInteger *) nil_chk(JreLoadStatic(NetI2pCryptoCryptoConstants, dsag))) modPowWithJavaMathBigInteger:x withJavaMathBigInteger:JreLoadStatic(NetI2pCryptoCryptoConstants, dsap)];
        pub = create_NetI2pDataSigningPublicKey_init();
        [pub setDataWithByteArray:NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(y, JreLoadStatic(NetI2pDataSigningPublicKey, KEYSIZE_BYTES))];
        return pub;
        case NetI2pCryptoSigAlgo_Enum_EC:
        ecpriv = NetI2pCryptoSigUtil_toJavaECKeyWithNetI2pDataSigningPrivateKey_(priv);
        s = [((id<JavaSecurityInterfacesECPrivateKey>) nil_chk(ecpriv)) getS];
        spec = (JavaSecuritySpecECParameterSpec *) cast_chk([type getParams], [JavaSecuritySpecECParameterSpec class]);
        curve = [((JavaSecuritySpecECParameterSpec *) nil_chk(spec)) getCurve];
        g = [spec getGenerator];
        w = NetI2pCryptoECUtil_scalarMultWithJavaSecuritySpecECPoint_withJavaMathBigInteger_withJavaSecuritySpecEllipticCurve_(g, s, curve);
        ecks = create_JavaSecuritySpecECPublicKeySpec_initWithJavaSecuritySpecECPoint_withJavaSecuritySpecECParameterSpec_(w, [ecpriv getParams]);
        eckf = JavaSecurityKeyFactory_getInstanceWithNSString_(@"EC");
        ecpub = (id<JavaSecurityInterfacesECPublicKey>) cast_check([((JavaSecurityKeyFactory *) nil_chk(eckf)) generatePublicWithJavaSecuritySpecKeySpec:ecks], JavaSecurityInterfacesECPublicKey_class_());
        return NetI2pCryptoSigUtil_fromJavaKeyWithJavaSecurityInterfacesECPublicKey_withNetI2pCryptoSigType_(ecpub, type);
        case NetI2pCryptoSigAlgo_Enum_RSA:
        rsapriv = NetI2pCryptoSigUtil_toJavaRSAKeyWithNetI2pDataSigningPrivateKey_(priv);
        exp = [((JavaSecuritySpecRSAKeyGenParameterSpec *) nil_chk(((JavaSecuritySpecRSAKeyGenParameterSpec *) cast_chk([type getParams], [JavaSecuritySpecRSAKeyGenParameterSpec class])))) getPublicExponent];
        rsaks = create_JavaSecuritySpecRSAPublicKeySpec_initWithJavaMathBigInteger_withJavaMathBigInteger_([((id<JavaSecurityInterfacesRSAPrivateKey>) nil_chk(rsapriv)) getModulus], exp);
        rsakf = JavaSecurityKeyFactory_getInstanceWithNSString_(@"RSA");
        rsapub = (id<JavaSecurityInterfacesRSAPublicKey>) cast_check([((JavaSecurityKeyFactory *) nil_chk(rsakf)) generatePublicWithJavaSecuritySpecKeySpec:rsaks], JavaSecurityInterfacesRSAPublicKey_class_());
        return NetI2pCryptoSigUtil_fromJavaKeyWithJavaSecurityInterfacesRSAPublicKey_withNetI2pCryptoSigType_(rsapub, type);
        case NetI2pCryptoSigAlgo_Enum_EdDSA:
        epriv = NetI2pCryptoSigUtil_toJavaEdDSAKeyWithNetI2pDataSigningPrivateKey_(priv);
        epub = create_NetI2pCryptoEddsaEdDSAPublicKey_initWithNetI2pCryptoEddsaSpecEdDSAPublicKeySpec_(create_NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_([((NetI2pCryptoEddsaEdDSAPrivateKey *) nil_chk(epriv)) getA], [epriv getParams]));
        return NetI2pCryptoSigUtil_fromJavaKeyWithNetI2pCryptoEddsaEdDSAPublicKey_withNetI2pCryptoSigType_(epub, type);
        default:
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Unsupported algorithm");
      }
    }
  }
  @catch (JavaSecurityGeneralSecurityException *gse) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withJavaLangThrowable_(@"Conversion failed", gse);
  }
}

void NetI2pCryptoKeyGenerator_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pCryptoKeyGenerator_initialize();
  @try {
    NetI2pCryptoKeyGenerator_main2WithNSStringArray_(args);
  }
  @catch (JavaLangRuntimeException *e) {
    [e printStackTrace];
  }
}

void NetI2pCryptoKeyGenerator_main2WithNSStringArray_(IOSObjectArray *args) {
  NetI2pCryptoKeyGenerator_initialize();
  [((NetI2pUtilRandomSource *) nil_chk(NetI2pUtilRandomSource_getInstance())) nextBoolean];
  @try {
    JavaLangThread_sleepWithLong_(1000);
  }
  @catch (JavaLangInterruptedException *ie) {
  }
  jint runs = 200;
  id<JavaUtilCollection> toTest;
  if (((IOSObjectArray *) nil_chk(args))->size_ > 0) {
    toTest = create_JavaUtilArrayList_init();
    for (jint i = 0; i < args->size_; i++) {
      NetI2pCryptoSigType *type = NetI2pCryptoSigType_parseSigTypeWithNSString_(IOSObjectArray_Get(args, i));
      if (type != nil) [toTest addWithId:type];
      else [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Unknown type: ", IOSObjectArray_Get(args, i))];
    }
    if ([toTest isEmpty]) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"No types to test"];
      return;
    }
  }
  else {
    toTest = JavaUtilArrays_asListWithNSObjectArray_(NetI2pCryptoSigType_values());
  }
  for (jint j = 0; j < 2; j++) {
    for (NetI2pCryptoSigType * __strong type in nil_chk(toTest)) {
      if (![((NetI2pCryptoSigType *) nil_chk(type)) isAvailable]) {
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"Skipping unavailable: ", type)];
        continue;
      }
      @try {
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"Testing ", type)];
        NetI2pCryptoKeyGenerator_testSigWithNetI2pCryptoSigType_withInt_(type, runs);
      }
      @catch (JavaSecurityGeneralSecurityException *e) {
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"error testing ", type)];
        [e printStackTrace];
      }
    }
    runs = 1000;
  }
}

void NetI2pCryptoKeyGenerator_testSigWithNetI2pCryptoSigType_withInt_(NetI2pCryptoSigType *type, jint runs) {
  NetI2pCryptoKeyGenerator_initialize();
  IOSByteArray *src = [IOSByteArray arrayWithLength:512];
  jdouble gtime = 0;
  jlong stime = 0;
  jlong vtime = 0;
  IOSObjectArray *keys = nil;
  jlong st = JavaLangSystem_nanoTime();
  jint genruns = ([((NetI2pCryptoSigType *) nil_chk(type)) getBaseAlgorithm] == JreLoadEnum(NetI2pCryptoSigAlgo, RSA)) ? JavaLangMath_minWithInt_withInt_(runs, 5) : runs;
  for (jint i = 0; i < genruns; i++) {
    keys = [((NetI2pCryptoKeyGenerator *) nil_chk(NetI2pCryptoKeyGenerator_getInstance())) generateSigningKeysWithNetI2pCryptoSigType:type];
  }
  jlong en = JavaLangSystem_nanoTime();
  gtime = ((en - st) / (1000 * 1000.0)) / genruns;
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("@$I$D$", type, @" key gen ", genruns, @" times: ", gtime, @" ms each")];
  NetI2pDataSigningPublicKey *pubkey = (NetI2pDataSigningPublicKey *) cast_chk(IOSObjectArray_Get(nil_chk(keys), 0), [NetI2pDataSigningPublicKey class]);
  NetI2pDataSigningPrivateKey *privkey = (NetI2pDataSigningPrivateKey *) cast_chk(IOSObjectArray_Get(keys, 1), [NetI2pDataSigningPrivateKey class]);
  NetI2pDataSigningPublicKey *pubkey2 = NetI2pCryptoKeyGenerator_getSigningPublicKeyWithNetI2pDataSigningPrivateKey_(privkey);
  if ([((NetI2pDataSigningPublicKey *) nil_chk(pubkey)) isEqual:pubkey2]) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("@$", type, @" private-to-public test PASSED")];
  else [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("@$", type, @" private-to-public test FAILED")];
  JavaSecurityMessageDigest *md = [type getDigestInstance];
  for (jint i = 0; i < runs; i++) {
    [((NetI2pUtilRandomSource *) nil_chk(NetI2pUtilRandomSource_getInstance())) nextBytesWithByteArray:src];
    [((JavaSecurityMessageDigest *) nil_chk(md)) updateWithByteArray:src];
    IOSByteArray *sha = [md digest];
    NetI2pDataSimpleDataStructure *hash_ = [type getHashInstance];
    [((NetI2pDataSimpleDataStructure *) nil_chk(hash_)) setDataWithByteArray:sha];
    jlong start = JavaLangSystem_nanoTime();
    NetI2pDataSignature *sig = [((NetI2pCryptoDSAEngine *) nil_chk(NetI2pCryptoDSAEngine_getInstance())) signWithByteArray:src withNetI2pDataSigningPrivateKey:privkey];
    NetI2pDataSignature *sig2 = [((NetI2pCryptoDSAEngine *) nil_chk(NetI2pCryptoDSAEngine_getInstance())) signWithNetI2pDataSimpleDataStructure:hash_ withNetI2pDataSigningPrivateKey:privkey];
    if (sig == nil) @throw create_JavaSecurityGeneralSecurityException_initWithNSString_(@"signature generation failed");
    if (sig2 == nil) @throw create_JavaSecurityGeneralSecurityException_initWithNSString_(@"signature generation (H) failed");
    jlong mid = JavaLangSystem_nanoTime();
    jboolean ok = [((NetI2pCryptoDSAEngine *) nil_chk(NetI2pCryptoDSAEngine_getInstance())) verifySignatureWithNetI2pDataSignature:sig withByteArray:src withNetI2pDataSigningPublicKey:pubkey];
    jboolean ok2 = [((NetI2pCryptoDSAEngine *) nil_chk(NetI2pCryptoDSAEngine_getInstance())) verifySignatureWithNetI2pDataSignature:sig2 withNetI2pDataSimpleDataStructure:hash_ withNetI2pDataSigningPublicKey:pubkey];
    jlong end = JavaLangSystem_nanoTime();
    stime += mid - start;
    vtime += end - mid;
    if (!ok) @throw create_JavaSecurityGeneralSecurityException_initWithNSString_(JreStrcat("@$", type, @" V(S(data)) fail"));
    if (!ok2) @throw create_JavaSecurityGeneralSecurityException_initWithNSString_(JreStrcat("@$", type, @" V(S(H(data))) fail"));
  }
  stime /= 1000 * 1000;
  vtime /= 1000 * 1000;
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("@$I$J$D$D$D$", type, @" sign/verify ", runs, @" times: ", (vtime + stime), @" ms = ", (((jdouble) stime) / runs), @" each sign, ", (((jdouble) vtime) / runs), @" each verify, ", (((jdouble) (stime + vtime)) / runs), @" s+v")];
}

IOSObjectArray *NetI2pCryptoKeyGenerator__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoKeyGenerator)
