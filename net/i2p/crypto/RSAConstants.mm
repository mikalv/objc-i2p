//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/RSAConstants.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/spec/RSAKeyGenParameterSpec.h"
#include "net/i2p/crypto/RSAConstants.h"
#include "net/i2p/util/NativeBigInteger.h"

@interface NetI2pCryptoRSAConstants ()

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)genSpecWithInt:(jint)size
                                    withJavaMathBigInteger:(JavaMathBigInteger *)exp;

@end

inline JavaMathBigInteger *NetI2pCryptoRSAConstants_get_F4(void);
static JavaMathBigInteger *NetI2pCryptoRSAConstants_F4;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoRSAConstants, F4, JavaMathBigInteger *)

__attribute__((unused)) static JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(jint size, JavaMathBigInteger *exp);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoRSAConstants)

JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_1024_SPEC;
JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_2048_SPEC;
JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_3072_SPEC;
JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_4096_SPEC;

@implementation NetI2pCryptoRSAConstants

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_1024_SPEC {
  return NetI2pCryptoRSAConstants_F4_1024_SPEC;
}

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_2048_SPEC {
  return NetI2pCryptoRSAConstants_F4_2048_SPEC;
}

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_3072_SPEC {
  return NetI2pCryptoRSAConstants_F4_3072_SPEC;
}

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_4096_SPEC {
  return NetI2pCryptoRSAConstants_F4_4096_SPEC;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoRSAConstants_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)genSpecWithInt:(jint)size
                                    withJavaMathBigInteger:(JavaMathBigInteger *)exp {
  return NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(size, exp);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaSecuritySpecRSAKeyGenParameterSpec;", 0xa, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(genSpecWithInt:withJavaMathBigInteger:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "F4", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x1a, -1, 2, -1, -1 },
    { "F4_1024_SPEC", "LJavaSecuritySpecRSAKeyGenParameterSpec;", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "F4_2048_SPEC", "LJavaSecuritySpecRSAKeyGenParameterSpec;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "F4_3072_SPEC", "LJavaSecuritySpecRSAKeyGenParameterSpec;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "F4_4096_SPEC", "LJavaSecuritySpecRSAKeyGenParameterSpec;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "genSpec", "ILJavaMathBigInteger;", &NetI2pCryptoRSAConstants_F4, &NetI2pCryptoRSAConstants_F4_1024_SPEC, &NetI2pCryptoRSAConstants_F4_2048_SPEC, &NetI2pCryptoRSAConstants_F4_3072_SPEC, &NetI2pCryptoRSAConstants_F4_4096_SPEC };
  static const J2ObjcClassInfo _NetI2pCryptoRSAConstants = { "RSAConstants", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x10, 2, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoRSAConstants;
}

+ (void)initialize {
  if (self == [NetI2pCryptoRSAConstants class]) {
    JreStrongAssignAndConsume(&NetI2pCryptoRSAConstants_F4, new_NetI2pUtilNativeBigInteger_initWithJavaMathBigInteger_(JreLoadStatic(JavaSecuritySpecRSAKeyGenParameterSpec, F4)));
    JreStrongAssign(&NetI2pCryptoRSAConstants_F4_1024_SPEC, NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(1024, NetI2pCryptoRSAConstants_F4));
    JreStrongAssign(&NetI2pCryptoRSAConstants_F4_2048_SPEC, NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(2048, NetI2pCryptoRSAConstants_F4));
    JreStrongAssign(&NetI2pCryptoRSAConstants_F4_3072_SPEC, NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(3072, NetI2pCryptoRSAConstants_F4));
    JreStrongAssign(&NetI2pCryptoRSAConstants_F4_4096_SPEC, NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(4096, NetI2pCryptoRSAConstants_F4));
    J2OBJC_SET_INITIALIZED(NetI2pCryptoRSAConstants)
  }
}

@end

void NetI2pCryptoRSAConstants_init(NetI2pCryptoRSAConstants *self) {
  NSObject_init(self);
}

NetI2pCryptoRSAConstants *new_NetI2pCryptoRSAConstants_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoRSAConstants, init)
}

NetI2pCryptoRSAConstants *create_NetI2pCryptoRSAConstants_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoRSAConstants, init)
}

JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_genSpecWithInt_withJavaMathBigInteger_(jint size, JavaMathBigInteger *exp) {
  NetI2pCryptoRSAConstants_initialize();
  return create_JavaSecuritySpecRSAKeyGenParameterSpec_initWithInt_withJavaMathBigInteger_(size, exp);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoRSAConstants)