//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/CryptoCheck.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/ExceptionInInitializerError.h"
#include "java/lang/NoSuchMethodError.h"
#include "java/lang/System.h"
#include "java/security/GeneralSecurityException.h"
#include "javax/crypto/Cipher.h"
#include "javax/crypto/spec/SecretKeySpec.h"
#include "net/i2p/crypto/CryptoCheck.h"

@interface NetI2pCryptoCryptoCheck ()

- (instancetype)init;

@end

inline jboolean NetI2pCryptoCryptoCheck_get__isUnlimited(void);
static jboolean NetI2pCryptoCryptoCheck__isUnlimited;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pCryptoCryptoCheck, _isUnlimited, jboolean)

__attribute__((unused)) static void NetI2pCryptoCryptoCheck_init(NetI2pCryptoCryptoCheck *self);

__attribute__((unused)) static NetI2pCryptoCryptoCheck *new_NetI2pCryptoCryptoCheck_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pCryptoCryptoCheck *create_NetI2pCryptoCryptoCheck_init(void);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoCryptoCheck)

@implementation NetI2pCryptoCryptoCheck

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoCryptoCheck_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jboolean)isUnlimited {
  return NetI2pCryptoCryptoCheck_isUnlimited();
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pCryptoCryptoCheck_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isUnlimited);
  methods[2].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_isUnlimited", "Z", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "main", "[LNSString;", &NetI2pCryptoCryptoCheck__isUnlimited };
  static const J2ObjcClassInfo _NetI2pCryptoCryptoCheck = { "CryptoCheck", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoCryptoCheck;
}

+ (void)initialize {
  if (self == [NetI2pCryptoCryptoCheck class]) {
    {
      jboolean unlimited = false;
      @try {
        unlimited = (JavaxCryptoCipher_getMaxAllowedKeyLengthWithNSString_(@"AES") >= 256);
      }
      @catch (JavaSecurityGeneralSecurityException *gse) {
      }
      @catch (JavaLangNoSuchMethodError *nsme) {
        @try {
          JavaxCryptoCipher *cipher = JavaxCryptoCipher_getInstanceWithNSString_(@"AES/CBC/NoPadding");
          JavaxCryptoSpecSecretKeySpec *key = create_JavaxCryptoSpecSecretKeySpec_initWithByteArray_withNSString_([IOSByteArray arrayWithLength:32], @"AES");
          [((JavaxCryptoCipher *) nil_chk(cipher)) init__WithInt:JavaxCryptoCipher_ENCRYPT_MODE withJavaSecurityKey:key];
          unlimited = true;
        }
        @catch (JavaSecurityGeneralSecurityException *gse) {
        }
      }
      @catch (JavaLangExceptionInInitializerError *eiie) {
      }
      NetI2pCryptoCryptoCheck__isUnlimited = unlimited;
    }
    J2OBJC_SET_INITIALIZED(NetI2pCryptoCryptoCheck)
  }
}

@end

void NetI2pCryptoCryptoCheck_init(NetI2pCryptoCryptoCheck *self) {
  NSObject_init(self);
}

NetI2pCryptoCryptoCheck *new_NetI2pCryptoCryptoCheck_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoCryptoCheck, init)
}

NetI2pCryptoCryptoCheck *create_NetI2pCryptoCryptoCheck_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoCryptoCheck, init)
}

jboolean NetI2pCryptoCryptoCheck_isUnlimited() {
  NetI2pCryptoCryptoCheck_initialize();
  return NetI2pCryptoCryptoCheck__isUnlimited;
}

void NetI2pCryptoCryptoCheck_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pCryptoCryptoCheck_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Unlimited? ", NetI2pCryptoCryptoCheck_isUnlimited())];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoCryptoCheck)