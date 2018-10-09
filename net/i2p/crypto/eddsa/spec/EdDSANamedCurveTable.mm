//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/spec/EdDSANamedCurveTable.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/HashMap.h"
#include "java/util/Locale.h"
#include "net/i2p/crypto/eddsa/Utils.h"
#include "net/i2p/crypto/eddsa/math/Curve.h"
#include "net/i2p/crypto/eddsa/math/Field.h"
#include "net/i2p/crypto/eddsa/math/FieldElement.h"
#include "net/i2p/crypto/eddsa/math/GroupElement.h"
#include "net/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding.h"
#include "net/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps.h"
#include "net/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec.h"
#include "net/i2p/crypto/eddsa/spec/EdDSANamedCurveTable.h"

@interface NetI2pCryptoEddsaSpecEdDSANamedCurveTable ()

+ (void)putCurveWithNSString:(NSString *)name
withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec:(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *)curve;

@end

inline NetI2pCryptoEddsaMathField *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_get_ed25519field(void);
static NetI2pCryptoEddsaMathField *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519field;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoEddsaSpecEdDSANamedCurveTable, ed25519field, NetI2pCryptoEddsaMathField *)

inline NetI2pCryptoEddsaMathCurve *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_get_ed25519curve(void);
static NetI2pCryptoEddsaMathCurve *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519curve;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoEddsaSpecEdDSANamedCurveTable, ed25519curve, NetI2pCryptoEddsaMathCurve *)

inline JavaUtilHashMap *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_get_curves(void);
inline JavaUtilHashMap *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_set_curves(JavaUtilHashMap *value);
static volatile_id NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves;
J2OBJC_STATIC_FIELD_OBJ_VOLATILE(NetI2pCryptoEddsaSpecEdDSANamedCurveTable, curves, JavaUtilHashMap *)

__attribute__((unused)) static void NetI2pCryptoEddsaSpecEdDSANamedCurveTable_putCurveWithNSString_withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_(NSString *name, NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *curve);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoEddsaSpecEdDSANamedCurveTable)

NSString *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519 = @"Ed25519";
NSString *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_CURVE_ED25519_SHA512 = @"ed25519-sha-512";
NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519_CURVE_SPEC;

@implementation NetI2pCryptoEddsaSpecEdDSANamedCurveTable

+ (NSString *)ED_25519 {
  return NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519;
}

+ (NSString *)CURVE_ED25519_SHA512 {
  return NetI2pCryptoEddsaSpecEdDSANamedCurveTable_CURVE_ED25519_SHA512;
}

+ (NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *)ED_25519_CURVE_SPEC {
  return NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519_CURVE_SPEC;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)putCurveWithNSString:(NSString *)name
withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec:(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *)curve {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_putCurveWithNSString_withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_(name, curve);
}

+ (void)defineCurveWithNetI2pCryptoEddsaSpecEdDSANamedCurveSpec:(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *)curve {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_defineCurveWithNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_(curve);
}

+ (void)defineCurveAliasWithNSString:(NSString *)name
                        withNSString:(NSString *)alias {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_defineCurveAliasWithNSString_withNSString_(name, alias);
}

+ (NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *)getByNameWithNSString:(NSString *)name {
  return NetI2pCryptoEddsaSpecEdDSANamedCurveTable_getByNameWithNSString_(name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2a, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaSpecEdDSANamedCurveSpec;", 0x9, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(putCurveWithNSString:withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec:);
  methods[2].selector = @selector(defineCurveWithNetI2pCryptoEddsaSpecEdDSANamedCurveSpec:);
  methods[3].selector = @selector(defineCurveAliasWithNSString:withNSString:);
  methods[4].selector = @selector(getByNameWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ED_25519", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "CURVE_ED25519_SHA512", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "ed25519field", "LNetI2pCryptoEddsaMathField;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "ed25519curve", "LNetI2pCryptoEddsaMathCurve;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "ED_25519_CURVE_SPEC", "LNetI2pCryptoEddsaSpecEdDSANamedCurveSpec;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "curves", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x4a, -1, 13, 14, -1 },
  };
  static const void *ptrTable[] = { "putCurve", "LNSString;LNetI2pCryptoEddsaSpecEdDSANamedCurveSpec;", "defineCurve", "LNetI2pCryptoEddsaSpecEdDSANamedCurveSpec;", "defineCurveAlias", "LNSString;LNSString;", "getByName", "LNSString;", &NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519, &NetI2pCryptoEddsaSpecEdDSANamedCurveTable_CURVE_ED25519_SHA512, &NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519field, &NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519curve, &NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519_CURVE_SPEC, &NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves, "Ljava/util/HashMap<Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;>;" };
  static const J2ObjcClassInfo _NetI2pCryptoEddsaSpecEdDSANamedCurveTable = { "EdDSANamedCurveTable", "net.i2p.crypto.eddsa.spec", ptrTable, methods, fields, 7, 0x1, 5, 6, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoEddsaSpecEdDSANamedCurveTable;
}

+ (void)initialize {
  if (self == [NetI2pCryptoEddsaSpecEdDSANamedCurveTable class]) {
    JreStrongAssignAndConsume(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519field, new_NetI2pCryptoEddsaMathField_initWithInt_withByteArray_withNetI2pCryptoEddsaMathEncoding_(256, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"edffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f"), create_NetI2pCryptoEddsaMathEd25519Ed25519LittleEndianEncoding_init()));
    JreStrongAssignAndConsume(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519curve, new_NetI2pCryptoEddsaMathCurve_initWithNetI2pCryptoEddsaMathField_withByteArray_withNetI2pCryptoEddsaMathFieldElement_(NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519field, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"a3785913ca4deb75abd841414d0a700098e879777940c78c73fe6f2bee6c0352"), [NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519field fromByteArrayWithByteArray:NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"b0a00e4a271beec478e42fad0618432fa7d7fb3d99004d2b0bdfc14f8024832b")]));
    JreStrongAssignAndConsume(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519_CURVE_SPEC, new_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec_initWithNSString_withNetI2pCryptoEddsaMathCurve_withNSString_withNetI2pCryptoEddsaMathScalarOps_withNetI2pCryptoEddsaMathGroupElement_(NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519, NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519curve, @"SHA-512", create_NetI2pCryptoEddsaMathEd25519Ed25519ScalarOps_init(), [NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ed25519curve createPointWithByteArray:NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"5866666666666666666666666666666666666666666666666666666666666666") withBoolean:true]));
    JreVolatileStrongAssign(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves, create_JavaUtilHashMap_init());
    {
      NetI2pCryptoEddsaSpecEdDSANamedCurveTable_defineCurveWithNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_(NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519_CURVE_SPEC);
      NetI2pCryptoEddsaSpecEdDSANamedCurveTable_defineCurveAliasWithNSString_withNSString_(NetI2pCryptoEddsaSpecEdDSANamedCurveTable_ED_25519, NetI2pCryptoEddsaSpecEdDSANamedCurveTable_CURVE_ED25519_SHA512);
    }
    J2OBJC_SET_INITIALIZED(NetI2pCryptoEddsaSpecEdDSANamedCurveTable)
  }
}

@end

void NetI2pCryptoEddsaSpecEdDSANamedCurveTable_init(NetI2pCryptoEddsaSpecEdDSANamedCurveTable *self) {
  NSObject_init(self);
}

NetI2pCryptoEddsaSpecEdDSANamedCurveTable *new_NetI2pCryptoEddsaSpecEdDSANamedCurveTable_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoEddsaSpecEdDSANamedCurveTable, init)
}

NetI2pCryptoEddsaSpecEdDSANamedCurveTable *create_NetI2pCryptoEddsaSpecEdDSANamedCurveTable_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoEddsaSpecEdDSANamedCurveTable, init)
}

void NetI2pCryptoEddsaSpecEdDSANamedCurveTable_putCurveWithNSString_withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_(NSString *name, NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *curve) {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_initialize();
  @synchronized(NetI2pCryptoEddsaSpecEdDSANamedCurveTable_class_()) {
    JavaUtilHashMap *newCurves = create_JavaUtilHashMap_initWithJavaUtilMap_(JreLoadVolatileId(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves));
    [newCurves putWithId:name withId:curve];
    JreVolatileStrongAssign(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves, newCurves);
  }
}

void NetI2pCryptoEddsaSpecEdDSANamedCurveTable_defineCurveWithNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *curve) {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_initialize();
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_putCurveWithNSString_withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_([((NSString *) nil_chk([((NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *) nil_chk(curve)) getName])) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)], curve);
}

void NetI2pCryptoEddsaSpecEdDSANamedCurveTable_defineCurveAliasWithNSString_withNSString_(NSString *name, NSString *alias) {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_initialize();
  NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *curve = [((JavaUtilHashMap *) nil_chk(JreLoadVolatileId(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves))) getWithId:[((NSString *) nil_chk(name)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)]];
  if (curve == nil) {
    @throw create_JavaLangIllegalStateException_init();
  }
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_putCurveWithNSString_withNetI2pCryptoEddsaSpecEdDSANamedCurveSpec_([((NSString *) nil_chk(alias)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)], curve);
}

NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *NetI2pCryptoEddsaSpecEdDSANamedCurveTable_getByNameWithNSString_(NSString *name) {
  NetI2pCryptoEddsaSpecEdDSANamedCurveTable_initialize();
  return [((JavaUtilHashMap *) nil_chk(JreLoadVolatileId(&NetI2pCryptoEddsaSpecEdDSANamedCurveTable_curves))) getWithId:[((NSString *) nil_chk(name)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoEddsaSpecEdDSANamedCurveTable)