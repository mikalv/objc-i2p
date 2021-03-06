//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/ECUtil.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/spec/ECField.h"
#include "java/security/spec/ECFieldFp.h"
#include "java/security/spec/ECPoint.h"
#include "java/security/spec/EllipticCurve.h"
#include "net/i2p/crypto/ECUtil.h"
#include "net/i2p/util/NativeBigInteger.h"

@interface NetI2pCryptoECUtil ()

+ (JavaSecuritySpecECPoint *)addPointWithJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)r
                                     withJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)s
                               withJavaSecuritySpecEllipticCurve:(JavaSecuritySpecEllipticCurve *)curve;

+ (JavaSecuritySpecECPoint *)doublePointWithJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)r
                                  withJavaSecuritySpecEllipticCurve:(JavaSecuritySpecEllipticCurve *)curve;

@end

inline JavaMathBigInteger *NetI2pCryptoECUtil_get_TWO(void);
static JavaMathBigInteger *NetI2pCryptoECUtil_TWO;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoECUtil, TWO, JavaMathBigInteger *)

inline JavaMathBigInteger *NetI2pCryptoECUtil_get_THREE(void);
static JavaMathBigInteger *NetI2pCryptoECUtil_THREE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoECUtil, THREE, JavaMathBigInteger *)

__attribute__((unused)) static JavaSecuritySpecECPoint *NetI2pCryptoECUtil_addPointWithJavaSecuritySpecECPoint_withJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(JavaSecuritySpecECPoint *r, JavaSecuritySpecECPoint *s, JavaSecuritySpecEllipticCurve *curve);

__attribute__((unused)) static JavaSecuritySpecECPoint *NetI2pCryptoECUtil_doublePointWithJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(JavaSecuritySpecECPoint *r, JavaSecuritySpecEllipticCurve *curve);

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoECUtil)

@implementation NetI2pCryptoECUtil

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoECUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (JavaSecuritySpecECPoint *)scalarMultWithJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)p
                                            withJavaMathBigInteger:(JavaMathBigInteger *)kin
                                 withJavaSecuritySpecEllipticCurve:(JavaSecuritySpecEllipticCurve *)curve {
  return NetI2pCryptoECUtil_scalarMultWithJavaSecuritySpecECPoint_withJavaMathBigInteger_withJavaSecuritySpecEllipticCurve_(p, kin, curve);
}

+ (JavaSecuritySpecECPoint *)addPointWithJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)r
                                     withJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)s
                               withJavaSecuritySpecEllipticCurve:(JavaSecuritySpecEllipticCurve *)curve {
  return NetI2pCryptoECUtil_addPointWithJavaSecuritySpecECPoint_withJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(r, s, curve);
}

+ (JavaSecuritySpecECPoint *)doublePointWithJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)r
                                  withJavaSecuritySpecEllipticCurve:(JavaSecuritySpecEllipticCurve *)curve {
  return NetI2pCryptoECUtil_doublePointWithJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(r, curve);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaSecuritySpecECPoint;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaSecuritySpecECPoint;", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaSecuritySpecECPoint;", 0xa, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(scalarMultWithJavaSecuritySpecECPoint:withJavaMathBigInteger:withJavaSecuritySpecEllipticCurve:);
  methods[2].selector = @selector(addPointWithJavaSecuritySpecECPoint:withJavaSecuritySpecECPoint:withJavaSecuritySpecEllipticCurve:);
  methods[3].selector = @selector(doublePointWithJavaSecuritySpecECPoint:withJavaSecuritySpecEllipticCurve:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TWO", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "THREE", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "scalarMult", "LJavaSecuritySpecECPoint;LJavaMathBigInteger;LJavaSecuritySpecEllipticCurve;", "addPoint", "LJavaSecuritySpecECPoint;LJavaSecuritySpecECPoint;LJavaSecuritySpecEllipticCurve;", "doublePoint", "LJavaSecuritySpecECPoint;LJavaSecuritySpecEllipticCurve;", &NetI2pCryptoECUtil_TWO, &NetI2pCryptoECUtil_THREE };
  static const J2ObjcClassInfo _NetI2pCryptoECUtil = { "ECUtil", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x10, 4, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoECUtil;
}

+ (void)initialize {
  if (self == [NetI2pCryptoECUtil class]) {
    JreStrongAssignAndConsume(&NetI2pCryptoECUtil_TWO, new_JavaMathBigInteger_initWithNSString_(@"2"));
    JreStrongAssignAndConsume(&NetI2pCryptoECUtil_THREE, new_JavaMathBigInteger_initWithNSString_(@"3"));
    J2OBJC_SET_INITIALIZED(NetI2pCryptoECUtil)
  }
}

@end

void NetI2pCryptoECUtil_init(NetI2pCryptoECUtil *self) {
  NSObject_init(self);
}

NetI2pCryptoECUtil *new_NetI2pCryptoECUtil_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoECUtil, init)
}

NetI2pCryptoECUtil *create_NetI2pCryptoECUtil_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoECUtil, init)
}

JavaSecuritySpecECPoint *NetI2pCryptoECUtil_scalarMultWithJavaSecuritySpecECPoint_withJavaMathBigInteger_withJavaSecuritySpecEllipticCurve_(JavaSecuritySpecECPoint *p, JavaMathBigInteger *kin, JavaSecuritySpecEllipticCurve *curve) {
  NetI2pCryptoECUtil_initialize();
  JavaSecuritySpecECPoint *r = JreLoadStatic(JavaSecuritySpecECPoint, POINT_INFINITY);
  JavaMathBigInteger *prime = [((JavaSecuritySpecECFieldFp *) nil_chk(((JavaSecuritySpecECFieldFp *) cast_chk([((JavaSecuritySpecEllipticCurve *) nil_chk(curve)) getField], [JavaSecuritySpecECFieldFp class])))) getP];
  JavaMathBigInteger *k = [((JavaMathBigInteger *) nil_chk(kin)) modWithJavaMathBigInteger:prime];
  jint length = [((JavaMathBigInteger *) nil_chk(k)) bitLength];
  IOSByteArray *binarray = [IOSByteArray arrayWithLength:length];
  for (jint i = 0; i <= length - 1; i++) {
    *IOSByteArray_GetRef(binarray, i) = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(k)) modWithJavaMathBigInteger:NetI2pCryptoECUtil_TWO])) charValue];
    k = [k divideWithJavaMathBigInteger:NetI2pCryptoECUtil_TWO];
  }
  for (jint i = length - 1; i >= 0; i--) {
    r = NetI2pCryptoECUtil_doublePointWithJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(r, curve);
    if (IOSByteArray_Get(binarray, i) == 1) r = NetI2pCryptoECUtil_addPointWithJavaSecuritySpecECPoint_withJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(r, p, curve);
  }
  return r;
}

JavaSecuritySpecECPoint *NetI2pCryptoECUtil_addPointWithJavaSecuritySpecECPoint_withJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(JavaSecuritySpecECPoint *r, JavaSecuritySpecECPoint *s, JavaSecuritySpecEllipticCurve *curve) {
  NetI2pCryptoECUtil_initialize();
  if ([((JavaSecuritySpecECPoint *) nil_chk(r)) isEqual:s]) return NetI2pCryptoECUtil_doublePointWithJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(r, curve);
  else if ([r isEqual:JreLoadStatic(JavaSecuritySpecECPoint, POINT_INFINITY)]) return s;
  else if ([((JavaSecuritySpecECPoint *) nil_chk(s)) isEqual:JreLoadStatic(JavaSecuritySpecECPoint, POINT_INFINITY)]) return r;
  JavaMathBigInteger *prime = [((JavaSecuritySpecECFieldFp *) nil_chk(((JavaSecuritySpecECFieldFp *) cast_chk([((JavaSecuritySpecEllipticCurve *) nil_chk(curve)) getField], [JavaSecuritySpecECFieldFp class])))) getP];
  JavaMathBigInteger *tmp = [((JavaMathBigInteger *) nil_chk([r getAffineX])) subtractWithJavaMathBigInteger:[s getAffineX]];
  tmp = create_NetI2pUtilNativeBigInteger_initWithJavaMathBigInteger_(tmp);
  JavaMathBigInteger *slope = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(([((JavaMathBigInteger *) nil_chk([r getAffineY])) subtractWithJavaMathBigInteger:[s getAffineY]]))) multiplyWithJavaMathBigInteger:[tmp modInverseWithJavaMathBigInteger:prime]])) modWithJavaMathBigInteger:prime];
  slope = create_NetI2pUtilNativeBigInteger_initWithJavaMathBigInteger_(slope);
  JavaMathBigInteger *xOut = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(([((JavaMathBigInteger *) nil_chk([slope modPowWithJavaMathBigInteger:NetI2pCryptoECUtil_TWO withJavaMathBigInteger:prime])) subtractWithJavaMathBigInteger:[r getAffineX]]))) subtractWithJavaMathBigInteger:[s getAffineX]])) modWithJavaMathBigInteger:prime];
  JavaMathBigInteger *yOut = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk([s getAffineY])) negate])) modWithJavaMathBigInteger:prime];
  yOut = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(yOut)) addWithJavaMathBigInteger:[slope multiplyWithJavaMathBigInteger:[((JavaMathBigInteger *) nil_chk([s getAffineX])) subtractWithJavaMathBigInteger:xOut]]])) modWithJavaMathBigInteger:prime];
  JavaSecuritySpecECPoint *out = create_JavaSecuritySpecECPoint_initWithJavaMathBigInteger_withJavaMathBigInteger_(xOut, yOut);
  return out;
}

JavaSecuritySpecECPoint *NetI2pCryptoECUtil_doublePointWithJavaSecuritySpecECPoint_withJavaSecuritySpecEllipticCurve_(JavaSecuritySpecECPoint *r, JavaSecuritySpecEllipticCurve *curve) {
  NetI2pCryptoECUtil_initialize();
  if ([((JavaSecuritySpecECPoint *) nil_chk(r)) isEqual:JreLoadStatic(JavaSecuritySpecECPoint, POINT_INFINITY)]) return r;
  JavaMathBigInteger *slope = [((JavaMathBigInteger *) nil_chk(([((JavaMathBigInteger *) nil_chk([r getAffineX])) powWithInt:2]))) multiplyWithJavaMathBigInteger:NetI2pCryptoECUtil_THREE];
  slope = [((JavaMathBigInteger *) nil_chk(slope)) addWithJavaMathBigInteger:[((JavaSecuritySpecEllipticCurve *) nil_chk(curve)) getA]];
  JavaMathBigInteger *prime = [((JavaSecuritySpecECFieldFp *) nil_chk(((JavaSecuritySpecECFieldFp *) cast_chk([curve getField], [JavaSecuritySpecECFieldFp class])))) getP];
  JavaMathBigInteger *tmp = [((JavaMathBigInteger *) nil_chk([r getAffineY])) multiplyWithJavaMathBigInteger:NetI2pCryptoECUtil_TWO];
  tmp = create_NetI2pUtilNativeBigInteger_initWithJavaMathBigInteger_(tmp);
  slope = [((JavaMathBigInteger *) nil_chk(slope)) multiplyWithJavaMathBigInteger:[tmp modInverseWithJavaMathBigInteger:prime]];
  JavaMathBigInteger *xOut = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(slope)) powWithInt:2])) subtractWithJavaMathBigInteger:[((JavaMathBigInteger *) nil_chk([r getAffineX])) multiplyWithJavaMathBigInteger:NetI2pCryptoECUtil_TWO]])) modWithJavaMathBigInteger:prime];
  JavaMathBigInteger *yOut = [((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(([((JavaMathBigInteger *) nil_chk([r getAffineY])) negate]))) addWithJavaMathBigInteger:[slope multiplyWithJavaMathBigInteger:[((JavaMathBigInteger *) nil_chk([r getAffineX])) subtractWithJavaMathBigInteger:xOut]]])) modWithJavaMathBigInteger:prime];
  JavaSecuritySpecECPoint *out = create_JavaSecuritySpecECPoint_initWithJavaMathBigInteger_withJavaMathBigInteger_(xOut, yOut);
  return out;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoECUtil)
