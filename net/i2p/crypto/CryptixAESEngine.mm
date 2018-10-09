//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/CryptixAESEngine.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "freenet/support/CPUInformation/CPUID.h"
#include "freenet/support/CPUInformation/CPUInfo.h"
#include "freenet/support/CPUInformation/UnknownCPUException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/security/GeneralSecurityException.h"
#include "java/security/InvalidKeyException.h"
#include "javax/crypto/Cipher.h"
#include "javax/crypto/spec/IvParameterSpec.h"
#include "javax/crypto/spec/SecretKeySpec.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/AESEngine.h"
#include "net/i2p/crypto/CryptixAESEngine.h"
#include "net/i2p/crypto/CryptixRijndael_Algorithm.h"
#include "net/i2p/crypto/CryptoCheck.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SimpleByteCache.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pCryptoCryptixAESEngine ()

+ (jboolean)hasAESNI;

@end

inline NetI2pCryptoCryptixRijndael_Algorithm *NetI2pCryptoCryptixAESEngine_get__algo(void);
static NetI2pCryptoCryptixRijndael_Algorithm *NetI2pCryptoCryptixAESEngine__algo;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptixAESEngine, _algo, NetI2pCryptoCryptixRijndael_Algorithm *)

inline jint NetI2pCryptoCryptixAESEngine_get_MIN_SYSTEM_AES_LENGTH(void);
#define NetI2pCryptoCryptixAESEngine_MIN_SYSTEM_AES_LENGTH 704
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoCryptixAESEngine, MIN_SYSTEM_AES_LENGTH, jint)

inline jboolean NetI2pCryptoCryptixAESEngine_get_USE_SYSTEM_AES(void);
static jboolean NetI2pCryptoCryptixAESEngine_USE_SYSTEM_AES;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pCryptoCryptixAESEngine, USE_SYSTEM_AES, jboolean)

__attribute__((unused)) static jboolean NetI2pCryptoCryptixAESEngine_hasAESNI(void);

__attribute__((unused)) static void NetI2pCryptoCryptixAESEngine_encryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(NetI2pCryptoCryptixAESEngine *self, IOSByteArray *payload, jint inIndex, NetI2pDataSessionKey *sessionKey, IOSByteArray *outArg, jint outIndex);

__attribute__((unused)) static void NetI2pCryptoCryptixAESEngine_decryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(NetI2pCryptoCryptixAESEngine *self, IOSByteArray *payload, jint inIndex, NetI2pDataSessionKey *sessionKey, IOSByteArray *rv, jint outIndex);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoCryptixAESEngine)

@implementation NetI2pCryptoCryptixAESEngine

+ (jboolean)hasAESNI {
  return NetI2pCryptoCryptixAESEngine_hasAESNI();
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pCryptoCryptixAESEngine_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (void)encryptWithByteArray:(IOSByteArray *)payload
                     withInt:(jint)payloadIndex
               withByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outIndex
    withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sessionKey
               withByteArray:(IOSByteArray *)iv
                     withInt:(jint)length {
  [self encryptWithByteArray:payload withInt:payloadIndex withByteArray:outArg withInt:outIndex withNetI2pDataSessionKey:sessionKey withByteArray:iv withInt:0 withInt:length];
}

- (void)encryptWithByteArray:(IOSByteArray *)payload
                     withInt:(jint)payloadIndex
               withByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outIndex
    withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sessionKey
               withByteArray:(IOSByteArray *)iv
                     withInt:(jint)ivOffset
                     withInt:(jint)length {
  if (payload == nil) @throw create_JavaLangNullPointerException_initWithNSString_(@"invalid args to aes - payload");
  if (outArg == nil) @throw create_JavaLangNullPointerException_initWithNSString_(@"invalid args to aes - out");
  if (sessionKey == nil) @throw create_JavaLangNullPointerException_initWithNSString_(@"invalid args to aes - sessionKey");
  if (iv == nil) @throw create_JavaLangNullPointerException_initWithNSString_(@"invalid args to aes - iv");
  if (payload->size_ < payloadIndex + length) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Payload is too short");
  if (outArg->size_ < outIndex + length) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Output is too short");
  if (length <= 0) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Length is too small");
  if (length % 16 != 0) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Only lengths mod 16 are supported here");
  if (NetI2pCryptoCryptixAESEngine_USE_SYSTEM_AES && length >= NetI2pCryptoCryptixAESEngine_MIN_SYSTEM_AES_LENGTH) {
    @try {
      JavaxCryptoSpecSecretKeySpec *key = create_JavaxCryptoSpecSecretKeySpec_initWithByteArray_withNSString_([sessionKey getData], @"AES");
      JavaxCryptoSpecIvParameterSpec *ivps = create_JavaxCryptoSpecIvParameterSpec_initWithByteArray_withInt_withInt_(iv, ivOffset, 16);
      JavaxCryptoCipher *cipher = JavaxCryptoCipher_getInstanceWithNSString_(@"AES/CBC/NoPadding");
      [((JavaxCryptoCipher *) nil_chk(cipher)) init__WithInt:JavaxCryptoCipher_ENCRYPT_MODE withJavaSecurityKey:key withJavaSecuritySpecAlgorithmParameterSpec:ivps withJavaSecuritySecureRandom:[((NetI2pI2PAppContext *) nil_chk(_context_)) random]];
      [cipher doFinalWithByteArray:payload withInt:payloadIndex withInt:length withByteArray:outArg withInt:outIndex];
      return;
    }
    @catch (JavaSecurityGeneralSecurityException *gse) {
      if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:@"Java encrypt fail" withJavaLangThrowable:gse];
    }
  }
  jint numblock = length / 16;
  NetI2pDataDataHelper_xor__WithByteArray_withInt_withByteArray_withInt_withByteArray_withInt_withInt_(iv, ivOffset, payload, payloadIndex, outArg, outIndex, 16);
  NetI2pCryptoCryptixAESEngine_encryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(self, outArg, outIndex, sessionKey, outArg, outIndex);
  for (jint x = 1; x < numblock; x++) {
    NetI2pDataDataHelper_xor__WithByteArray_withInt_withByteArray_withInt_withByteArray_withInt_withInt_(outArg, outIndex + (x - 1) * 16, payload, payloadIndex + x * 16, outArg, outIndex + x * 16, 16);
    NetI2pCryptoCryptixAESEngine_encryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(self, outArg, outIndex + x * 16, sessionKey, outArg, outIndex + x * 16);
  }
}

- (void)decryptWithByteArray:(IOSByteArray *)payload
                     withInt:(jint)payloadIndex
               withByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outIndex
    withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sessionKey
               withByteArray:(IOSByteArray *)iv
                     withInt:(jint)length {
  [self decryptWithByteArray:payload withInt:payloadIndex withByteArray:outArg withInt:outIndex withNetI2pDataSessionKey:sessionKey withByteArray:iv withInt:0 withInt:length];
}

- (void)decryptWithByteArray:(IOSByteArray *)payload
                     withInt:(jint)payloadIndex
               withByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outIndex
    withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sessionKey
               withByteArray:(IOSByteArray *)iv
                     withInt:(jint)ivOffset
                     withInt:(jint)length {
  if ((iv == nil) || (payload == nil) || (((IOSByteArray *) nil_chk(payload))->size_ <= 0) || (sessionKey == nil)) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"bad setup");
  else if (outArg == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"out is null");
  else if (outArg->size_ - outIndex < length) @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I$I", @"out is too small (out.length=", outArg->size_, @" outIndex=", outIndex, @" length=", length));
  if (NetI2pCryptoCryptixAESEngine_USE_SYSTEM_AES && length >= NetI2pCryptoCryptixAESEngine_MIN_SYSTEM_AES_LENGTH) {
    @try {
      JavaxCryptoSpecSecretKeySpec *key = create_JavaxCryptoSpecSecretKeySpec_initWithByteArray_withNSString_([((NetI2pDataSessionKey *) nil_chk(sessionKey)) getData], @"AES");
      JavaxCryptoSpecIvParameterSpec *ivps = create_JavaxCryptoSpecIvParameterSpec_initWithByteArray_withInt_withInt_(iv, ivOffset, 16);
      JavaxCryptoCipher *cipher = JavaxCryptoCipher_getInstanceWithNSString_(@"AES/CBC/NoPadding");
      [((JavaxCryptoCipher *) nil_chk(cipher)) init__WithInt:JavaxCryptoCipher_DECRYPT_MODE withJavaSecurityKey:key withJavaSecuritySpecAlgorithmParameterSpec:ivps withJavaSecuritySecureRandom:[((NetI2pI2PAppContext *) nil_chk(_context_)) random]];
      [cipher doFinalWithByteArray:payload withInt:payloadIndex withInt:length withByteArray:outArg withInt:outIndex];
      return;
    }
    @catch (JavaSecurityGeneralSecurityException *gse) {
      if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:@"Java decrypt fail" withJavaLangThrowable:gse];
    }
  }
  jint numblock = length / 16;
  if (length % 16 != 0) {
    numblock++;
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$I", @"not %16 ", length) withJavaLangThrowable:create_JavaLangException_init()];
  }
  IOSByteArray *prev = NetI2pUtilSimpleByteCache_acquireWithInt_(16);
  IOSByteArray *cur = NetI2pUtilSimpleByteCache_acquireWithInt_(16);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(iv, ivOffset, prev, 0, 16);
  for (jint x = 0; x < numblock; x++) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(payload, payloadIndex, cur, 0, 16);
    NetI2pCryptoCryptixAESEngine_decryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(self, payload, payloadIndex, sessionKey, outArg, outIndex);
    payloadIndex += 16;
    for (jint i = 0; i < 16; i++) {
      *IOSByteArray_GetRef(outArg, outIndex++) ^= IOSByteArray_Get(nil_chk(prev), i);
    }
    iv = prev;
    prev = cur;
    cur = iv;
  }
  NetI2pUtilSimpleByteCache_release__WithByteArray_(prev);
  NetI2pUtilSimpleByteCache_release__WithByteArray_(cur);
}

- (void)encryptBlockWithByteArray:(IOSByteArray *)payload
                          withInt:(jint)inIndex
         withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sessionKey
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outIndex {
  NetI2pCryptoCryptixAESEngine_encryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(self, payload, inIndex, sessionKey, outArg, outIndex);
}

- (void)decryptBlockWithByteArray:(IOSByteArray *)payload
                          withInt:(jint)inIndex
         withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sessionKey
                    withByteArray:(IOSByteArray *)rv
                          withInt:(jint)outIndex {
  NetI2pCryptoCryptixAESEngine_decryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(self, payload, inIndex, sessionKey, rv, outIndex);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0xa, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 7, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(hasAESNI);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[2].selector = @selector(encryptWithByteArray:withInt:withByteArray:withInt:withNetI2pDataSessionKey:withByteArray:withInt:);
  methods[3].selector = @selector(encryptWithByteArray:withInt:withByteArray:withInt:withNetI2pDataSessionKey:withByteArray:withInt:withInt:);
  methods[4].selector = @selector(decryptWithByteArray:withInt:withByteArray:withInt:withNetI2pDataSessionKey:withByteArray:withInt:);
  methods[5].selector = @selector(decryptWithByteArray:withInt:withByteArray:withInt:withNetI2pDataSessionKey:withByteArray:withInt:withInt:);
  methods[6].selector = @selector(encryptBlockWithByteArray:withInt:withNetI2pDataSessionKey:withByteArray:withInt:);
  methods[7].selector = @selector(decryptBlockWithByteArray:withInt:withNetI2pDataSessionKey:withByteArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_algo", "LNetI2pCryptoCryptixRijndael_Algorithm;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "MIN_SYSTEM_AES_LENGTH", "I", .constantValue.asInt = NetI2pCryptoCryptixAESEngine_MIN_SYSTEM_AES_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "USE_SYSTEM_AES", "Z", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "encrypt", "[BI[BILNetI2pDataSessionKey;[BI", "[BI[BILNetI2pDataSessionKey;[BII", "decrypt", "encryptBlock", "[BILNetI2pDataSessionKey;[BI", "decryptBlock", &NetI2pCryptoCryptixAESEngine__algo, &NetI2pCryptoCryptixAESEngine_USE_SYSTEM_AES };
  static const J2ObjcClassInfo _NetI2pCryptoCryptixAESEngine = { "CryptixAESEngine", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x11, 8, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoCryptixAESEngine;
}

+ (void)initialize {
  if (self == [NetI2pCryptoCryptixAESEngine class]) {
    JreStrongAssignAndConsume(&NetI2pCryptoCryptixAESEngine__algo, new_NetI2pCryptoCryptixRijndael_Algorithm_init());
    NetI2pCryptoCryptixAESEngine_USE_SYSTEM_AES = (NetI2pCryptoCryptixAESEngine_hasAESNI() && NetI2pCryptoCryptoCheck_isUnlimited());
    J2OBJC_SET_INITIALIZED(NetI2pCryptoCryptixAESEngine)
  }
}

@end

jboolean NetI2pCryptoCryptixAESEngine_hasAESNI() {
  NetI2pCryptoCryptixAESEngine_initialize();
  if (NetI2pUtilSystemVersion_isX86() && NetI2pUtilSystemVersion_is64Bit() && NetI2pUtilSystemVersion_isJava7() && !NetI2pUtilSystemVersion_isApache() && !NetI2pUtilSystemVersion_isGNU()) {
    @try {
      return [((id<FreenetSupportCPUInformationCPUInfo>) nil_chk(FreenetSupportCPUInformationCPUID_getInfo())) hasAES];
    }
    @catch (FreenetSupportCPUInformationUnknownCPUException *e) {
      return false;
    }
  }
  else {
    return false;
  }
}

void NetI2pCryptoCryptixAESEngine_initWithNetI2pI2PAppContext_(NetI2pCryptoCryptixAESEngine *self, NetI2pI2PAppContext *context) {
  NetI2pCryptoAESEngine_initWithNetI2pI2PAppContext_(self, context);
}

NetI2pCryptoCryptixAESEngine *new_NetI2pCryptoCryptixAESEngine_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pCryptoCryptixAESEngine, initWithNetI2pI2PAppContext_, context)
}

NetI2pCryptoCryptixAESEngine *create_NetI2pCryptoCryptixAESEngine_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoCryptixAESEngine, initWithNetI2pI2PAppContext_, context)
}

void NetI2pCryptoCryptixAESEngine_encryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(NetI2pCryptoCryptixAESEngine *self, IOSByteArray *payload, jint inIndex, NetI2pDataSessionKey *sessionKey, IOSByteArray *outArg, jint outIndex) {
  id pkey = [((NetI2pDataSessionKey *) nil_chk(sessionKey)) getPreparedKey];
  if (pkey == nil) {
    @try {
      pkey = NetI2pCryptoCryptixRijndael_Algorithm_makeKeyWithByteArray_withInt_([sessionKey getData], 16);
      [sessionKey setPreparedKeyWithId:pkey];
    }
    @catch (JavaSecurityInvalidKeyException *ike) {
      [((NetI2pUtilLog *) nil_chk(self->_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Invalid key" withJavaLangThrowable:ike];
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"invalid key?  ", [ike getMessage]));
    }
  }
  NetI2pCryptoCryptixRijndael_Algorithm_blockEncryptWithByteArray_withByteArray_withInt_withInt_withId_(payload, outArg, inIndex, outIndex, pkey);
}

void NetI2pCryptoCryptixAESEngine_decryptBlockWithByteArray_withInt_withNetI2pDataSessionKey_withByteArray_withInt_(NetI2pCryptoCryptixAESEngine *self, IOSByteArray *payload, jint inIndex, NetI2pDataSessionKey *sessionKey, IOSByteArray *rv, jint outIndex) {
  id pkey = [((NetI2pDataSessionKey *) nil_chk(sessionKey)) getPreparedKey];
  if (pkey == nil) {
    @try {
      pkey = NetI2pCryptoCryptixRijndael_Algorithm_makeKeyWithByteArray_withInt_([sessionKey getData], 16);
      [sessionKey setPreparedKeyWithId:pkey];
    }
    @catch (JavaSecurityInvalidKeyException *ike) {
      [((NetI2pUtilLog *) nil_chk(self->_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Invalid key" withJavaLangThrowable:ike];
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"invalid key?  ", [ike getMessage]));
    }
  }
  NetI2pCryptoCryptixRijndael_Algorithm_blockDecryptWithByteArray_withByteArray_withInt_withInt_withId_(payload, rv, inIndex, outIndex, pkey);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoCryptixAESEngine)
