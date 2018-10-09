//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "net/i2p/crypto/eddsa/math/Curve.h"
#include "net/i2p/crypto/eddsa/math/Field.h"
#include "net/i2p/crypto/eddsa/math/GroupElement.h"
#include "net/i2p/crypto/eddsa/spec/EdDSAParameterSpec.h"
#include "net/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec.h"

@interface NetI2pCryptoEddsaSpecEdDSAPublicKeySpec () {
 @public
  NetI2pCryptoEddsaMathGroupElement *A_;
  NetI2pCryptoEddsaMathGroupElement *Aneg_;
  NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, A_, NetI2pCryptoEddsaMathGroupElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, Aneg_, NetI2pCryptoEddsaMathGroupElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, spec_, NetI2pCryptoEddsaSpecEdDSAParameterSpec *)

@implementation NetI2pCryptoEddsaSpecEdDSAPublicKeySpec

- (instancetype)initWithByteArray:(IOSByteArray *)pk
withNetI2pCryptoEddsaSpecEdDSAParameterSpec:(NetI2pCryptoEddsaSpecEdDSAParameterSpec *)spec {
  NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(self, pk, spec);
  return self;
}

- (instancetype)initWithNetI2pCryptoEddsaMathGroupElement:(NetI2pCryptoEddsaMathGroupElement *)A
              withNetI2pCryptoEddsaSpecEdDSAParameterSpec:(NetI2pCryptoEddsaSpecEdDSAParameterSpec *)spec {
  NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(self, A, spec);
  return self;
}

- (NetI2pCryptoEddsaMathGroupElement *)getA {
  return A_;
}

- (NetI2pCryptoEddsaMathGroupElement *)getNegativeA {
  NetI2pCryptoEddsaMathGroupElement *ourAneg = Aneg_;
  if (ourAneg == nil) {
    ourAneg = [((NetI2pCryptoEddsaMathGroupElement *) nil_chk(A_)) negate];
    JreStrongAssign(&Aneg_, ourAneg);
  }
  return ourAneg;
}

- (NetI2pCryptoEddsaSpecEdDSAParameterSpec *)getParams {
  return spec_;
}

- (void)dealloc {
  RELEASE_(A_);
  RELEASE_(Aneg_);
  RELEASE_(spec_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathGroupElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathGroupElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaSpecEdDSAParameterSpec;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByteArray:withNetI2pCryptoEddsaSpecEdDSAParameterSpec:);
  methods[1].selector = @selector(initWithNetI2pCryptoEddsaMathGroupElement:withNetI2pCryptoEddsaSpecEdDSAParameterSpec:);
  methods[2].selector = @selector(getA);
  methods[3].selector = @selector(getNegativeA);
  methods[4].selector = @selector(getParams);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "A_", "LNetI2pCryptoEddsaMathGroupElement;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "Aneg_", "LNetI2pCryptoEddsaMathGroupElement;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "spec_", "LNetI2pCryptoEddsaSpecEdDSAParameterSpec;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[BLNetI2pCryptoEddsaSpecEdDSAParameterSpec;", "LNetI2pCryptoEddsaMathGroupElement;LNetI2pCryptoEddsaSpecEdDSAParameterSpec;" };
  static const J2ObjcClassInfo _NetI2pCryptoEddsaSpecEdDSAPublicKeySpec = { "EdDSAPublicKeySpec", "net.i2p.crypto.eddsa.spec", ptrTable, methods, fields, 7, 0x1, 5, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoEddsaSpecEdDSAPublicKeySpec;
}

@end

void NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec *self, IOSByteArray *pk, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) {
  NSObject_init(self);
  if (((IOSByteArray *) nil_chk(pk))->size_ != [((NetI2pCryptoEddsaMathField *) nil_chk([((NetI2pCryptoEddsaMathCurve *) nil_chk([((NetI2pCryptoEddsaSpecEdDSAParameterSpec *) nil_chk(spec)) getCurve])) getField])) getb] / 8) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"public-key length is wrong");
  JreStrongAssignAndConsume(&self->A_, new_NetI2pCryptoEddsaMathGroupElement_initWithNetI2pCryptoEddsaMathCurve_withByteArray_([spec getCurve], pk));
  JreStrongAssign(&self->spec_, spec);
}

NetI2pCryptoEddsaSpecEdDSAPublicKeySpec *new_NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(IOSByteArray *pk, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) {
  J2OBJC_NEW_IMPL(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_, pk, spec)
}

NetI2pCryptoEddsaSpecEdDSAPublicKeySpec *create_NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(IOSByteArray *pk, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_, pk, spec)
}

void NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec *self, NetI2pCryptoEddsaMathGroupElement *A, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) {
  NSObject_init(self);
  JreStrongAssign(&self->A_, A);
  JreStrongAssign(&self->spec_, spec);
}

NetI2pCryptoEddsaSpecEdDSAPublicKeySpec *new_NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(NetI2pCryptoEddsaMathGroupElement *A, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) {
  J2OBJC_NEW_IMPL(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_, A, spec)
}

NetI2pCryptoEddsaSpecEdDSAPublicKeySpec *create_NetI2pCryptoEddsaSpecEdDSAPublicKeySpec_initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(NetI2pCryptoEddsaMathGroupElement *A, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec, initWithNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_, A, spec)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoEddsaSpecEdDSAPublicKeySpec)