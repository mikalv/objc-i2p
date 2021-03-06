//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/RSASigningPrivateCrtKey.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/GeneralSecurityException.h"
#include "java/security/interfaces/RSAPrivateCrtKey.h"
#include "java/security/spec/AlgorithmParameterSpec.h"
#include "java/security/spec/RSAKeyGenParameterSpec.h"
#include "net/i2p/crypto/RSASigningPrivateCrtKey.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/crypto/SigUtil.h"
#include "net/i2p/data/SigningPrivateKey.h"

@interface NetI2pCryptoRSASigningPrivateCrtKey () {
 @public
  id<JavaSecurityInterfacesRSAPrivateCrtKey> _crt_;
}

- (instancetype)initWithJavaSecurityInterfacesRSAPrivateCrtKey:(id<JavaSecurityInterfacesRSAPrivateCrtKey>)pk
                                       withNetI2pCryptoSigType:(NetI2pCryptoSigType *)type
                                                 withByteArray:(IOSByteArray *)data;

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoRSASigningPrivateCrtKey, _crt_, id<JavaSecurityInterfacesRSAPrivateCrtKey>)

__attribute__((unused)) static void NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(NetI2pCryptoRSASigningPrivateCrtKey *self, id<JavaSecurityInterfacesRSAPrivateCrtKey> pk, NetI2pCryptoSigType *type, IOSByteArray *data);

__attribute__((unused)) static NetI2pCryptoRSASigningPrivateCrtKey *new_NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(id<JavaSecurityInterfacesRSAPrivateCrtKey> pk, NetI2pCryptoSigType *type, IOSByteArray *data) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pCryptoRSASigningPrivateCrtKey *create_NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(id<JavaSecurityInterfacesRSAPrivateCrtKey> pk, NetI2pCryptoSigType *type, IOSByteArray *data);

@implementation NetI2pCryptoRSASigningPrivateCrtKey

+ (NetI2pCryptoRSASigningPrivateCrtKey *)fromJavaKeyWithJavaSecurityInterfacesRSAPrivateCrtKey:(id<JavaSecurityInterfacesRSAPrivateCrtKey>)pk {
  return NetI2pCryptoRSASigningPrivateCrtKey_fromJavaKeyWithJavaSecurityInterfacesRSAPrivateCrtKey_(pk);
}

- (instancetype)initWithJavaSecurityInterfacesRSAPrivateCrtKey:(id<JavaSecurityInterfacesRSAPrivateCrtKey>)pk
                                       withNetI2pCryptoSigType:(NetI2pCryptoSigType *)type
                                                 withByteArray:(IOSByteArray *)data {
  NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(self, pk, type, data);
  return self;
}

- (id<JavaSecurityInterfacesRSAPrivateCrtKey>)toJavaKey {
  return _crt_;
}

- (void)dealloc {
  RELEASE_(_crt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNetI2pCryptoRSASigningPrivateCrtKey;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 3, -1, -1, -1, -1 },
    { NULL, "LJavaSecurityInterfacesRSAPrivateCrtKey;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(fromJavaKeyWithJavaSecurityInterfacesRSAPrivateCrtKey:);
  methods[1].selector = @selector(initWithJavaSecurityInterfacesRSAPrivateCrtKey:withNetI2pCryptoSigType:withByteArray:);
  methods[2].selector = @selector(toJavaKey);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_crt_", "LJavaSecurityInterfacesRSAPrivateCrtKey;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "fromJavaKey", "LJavaSecurityInterfacesRSAPrivateCrtKey;", "LJavaSecurityGeneralSecurityException;", "LJavaSecurityInterfacesRSAPrivateCrtKey;LNetI2pCryptoSigType;[B" };
  static const J2ObjcClassInfo _NetI2pCryptoRSASigningPrivateCrtKey = { "RSASigningPrivateCrtKey", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x10, 3, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoRSASigningPrivateCrtKey;
}

@end

NetI2pCryptoRSASigningPrivateCrtKey *NetI2pCryptoRSASigningPrivateCrtKey_fromJavaKeyWithJavaSecurityInterfacesRSAPrivateCrtKey_(id<JavaSecurityInterfacesRSAPrivateCrtKey> pk) {
  NetI2pCryptoRSASigningPrivateCrtKey_initialize();
  jint sz = [((JavaMathBigInteger *) nil_chk([((id<JavaSecurityInterfacesRSAPrivateCrtKey>) nil_chk(pk)) getModulus])) bitLength];
  NetI2pCryptoSigType *type;
  if (sz <= [((JavaSecuritySpecRSAKeyGenParameterSpec *) nil_chk(((JavaSecuritySpecRSAKeyGenParameterSpec *) cast_chk([((NetI2pCryptoSigType *) nil_chk(JreLoadEnum(NetI2pCryptoSigType, RSA_SHA256_2048))) getParams], [JavaSecuritySpecRSAKeyGenParameterSpec class])))) getKeysize]) type = JreLoadEnum(NetI2pCryptoSigType, RSA_SHA256_2048);
  else if (sz <= [((JavaSecuritySpecRSAKeyGenParameterSpec *) nil_chk(((JavaSecuritySpecRSAKeyGenParameterSpec *) cast_chk([((NetI2pCryptoSigType *) nil_chk(JreLoadEnum(NetI2pCryptoSigType, RSA_SHA384_3072))) getParams], [JavaSecuritySpecRSAKeyGenParameterSpec class])))) getKeysize]) type = JreLoadEnum(NetI2pCryptoSigType, RSA_SHA384_3072);
  else if (sz <= [((JavaSecuritySpecRSAKeyGenParameterSpec *) nil_chk(((JavaSecuritySpecRSAKeyGenParameterSpec *) cast_chk([((NetI2pCryptoSigType *) nil_chk(JreLoadEnum(NetI2pCryptoSigType, RSA_SHA512_4096))) getParams], [JavaSecuritySpecRSAKeyGenParameterSpec class])))) getKeysize]) type = JreLoadEnum(NetI2pCryptoSigType, RSA_SHA512_4096);
  else @throw create_JavaSecurityGeneralSecurityException_initWithNSString_(@"Unknown RSA type");
  JavaMathBigInteger *n = [pk getModulus];
  JavaMathBigInteger *d = [pk getPrivateExponent];
  IOSByteArray *b = NetI2pCryptoSigUtil_combineWithJavaMathBigInteger_withJavaMathBigInteger_withInt_(n, d, [type getPrivkeyLen]);
  return create_NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(pk, type, b);
}

void NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(NetI2pCryptoRSASigningPrivateCrtKey *self, id<JavaSecurityInterfacesRSAPrivateCrtKey> pk, NetI2pCryptoSigType *type, IOSByteArray *data) {
  NetI2pDataSigningPrivateKey_initWithNetI2pCryptoSigType_withByteArray_(self, type, data);
  JreStrongAssign(&self->_crt_, pk);
}

NetI2pCryptoRSASigningPrivateCrtKey *new_NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(id<JavaSecurityInterfacesRSAPrivateCrtKey> pk, NetI2pCryptoSigType *type, IOSByteArray *data) {
  J2OBJC_NEW_IMPL(NetI2pCryptoRSASigningPrivateCrtKey, initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_, pk, type, data)
}

NetI2pCryptoRSASigningPrivateCrtKey *create_NetI2pCryptoRSASigningPrivateCrtKey_initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_(id<JavaSecurityInterfacesRSAPrivateCrtKey> pk, NetI2pCryptoSigType *type, IOSByteArray *data) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoRSASigningPrivateCrtKey, initWithJavaSecurityInterfacesRSAPrivateCrtKey_withNetI2pCryptoSigType_withByteArray_, pk, type, data)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoRSASigningPrivateCrtKey)
