//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "net/i2p/crypto/eddsa/math/Field.h"
#include "net/i2p/crypto/eddsa/math/FieldElement.h"
#include "net/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement.h"

inline jlong NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_get_serialVersionUID(void);
#define NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_serialVersionUID 4890398908392808LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement, serialVersionUID, jlong)

@implementation NetI2pCryptoEddsaMathBigintBigIntegerFieldElement

- (instancetype)initWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)f
                            withJavaMathBigInteger:(JavaMathBigInteger *)bi {
  NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(self, f, bi);
  return self;
}

- (jboolean)isNonZero {
  return ![((JavaMathBigInteger *) nil_chk(bi_)) isEqual:JreLoadStatic(JavaMathBigInteger, ZERO)];
}

- (NetI2pCryptoEddsaMathFieldElement *)addWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val {
  return [create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) addWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(val, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_]) modWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)addOne {
  return [create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) addWithJavaMathBigInteger:JreLoadStatic(JavaMathBigInteger, ONE)]) modWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)subtractWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val {
  return [create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) subtractWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(val, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_]) modWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)subtractOne {
  return [create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) subtractWithJavaMathBigInteger:JreLoadStatic(JavaMathBigInteger, ONE)]) modWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)negate {
  return [((NetI2pCryptoEddsaMathFieldElement *) nil_chk([((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ])) subtractWithNetI2pCryptoEddsaMathFieldElement:self];
}

- (NetI2pCryptoEddsaMathFieldElement *)divideWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val {
  return [self divideWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(val, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_];
}

- (NetI2pCryptoEddsaMathFieldElement *)divideWithJavaMathBigInteger:(JavaMathBigInteger *)val {
  return [create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) divideWithJavaMathBigInteger:val]) modWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)multiplyWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val {
  return [create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) multiplyWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(val, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_]) modWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)square {
  return [self multiplyWithNetI2pCryptoEddsaMathFieldElement:self];
}

- (NetI2pCryptoEddsaMathFieldElement *)squareAndDouble {
  NetI2pCryptoEddsaMathFieldElement *sq = [self square];
  return [((NetI2pCryptoEddsaMathFieldElement *) nil_chk(sq)) addWithNetI2pCryptoEddsaMathFieldElement:sq];
}

- (NetI2pCryptoEddsaMathFieldElement *)invert {
  return create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) modInverseWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk([((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ], [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_]);
}

- (NetI2pCryptoEddsaMathFieldElement *)modWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)m {
  return create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) modWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(m, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_]);
}

- (NetI2pCryptoEddsaMathFieldElement *)modPowWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)e
                                             withNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)m {
  return create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk(bi_)) modPowWithJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(e, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_ withJavaMathBigInteger:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(m, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_]);
}

- (NetI2pCryptoEddsaMathFieldElement *)powWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)e {
  return [self modPowWithNetI2pCryptoEddsaMathFieldElement:e withNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQ]];
}

- (NetI2pCryptoEddsaMathFieldElement *)pow22523 {
  return [self powWithNetI2pCryptoEddsaMathFieldElement:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getQm5d8]];
}

- (NetI2pCryptoEddsaMathFieldElement *)cmovWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val
                                                                         withInt:(jint)b {
  return b == 0 ? self : val;
}

- (NSUInteger)hash {
  return ((jint) [((JavaMathBigInteger *) nil_chk(bi_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (!([obj isKindOfClass:[NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]])) return false;
  NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *fe = (NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(obj, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]);
  return [((JavaMathBigInteger *) nil_chk(bi_)) isEqual:((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(fe))->bi_];
}

- (NSString *)description {
  return JreStrcat("$@C", @"[BigIntegerFieldElement val=", bi_, ']');
}

- (void)dealloc {
  RELEASE_(bi_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 6, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 7, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 10, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pCryptoEddsaMathField:withJavaMathBigInteger:);
  methods[1].selector = @selector(isNonZero);
  methods[2].selector = @selector(addWithNetI2pCryptoEddsaMathFieldElement:);
  methods[3].selector = @selector(addOne);
  methods[4].selector = @selector(subtractWithNetI2pCryptoEddsaMathFieldElement:);
  methods[5].selector = @selector(subtractOne);
  methods[6].selector = @selector(negate);
  methods[7].selector = @selector(divideWithNetI2pCryptoEddsaMathFieldElement:);
  methods[8].selector = @selector(divideWithJavaMathBigInteger:);
  methods[9].selector = @selector(multiplyWithNetI2pCryptoEddsaMathFieldElement:);
  methods[10].selector = @selector(square);
  methods[11].selector = @selector(squareAndDouble);
  methods[12].selector = @selector(invert);
  methods[13].selector = @selector(modWithNetI2pCryptoEddsaMathFieldElement:);
  methods[14].selector = @selector(modPowWithNetI2pCryptoEddsaMathFieldElement:withNetI2pCryptoEddsaMathFieldElement:);
  methods[15].selector = @selector(powWithNetI2pCryptoEddsaMathFieldElement:);
  methods[16].selector = @selector(pow22523);
  methods[17].selector = @selector(cmovWithNetI2pCryptoEddsaMathFieldElement:withInt:);
  methods[18].selector = @selector(hash);
  methods[19].selector = @selector(isEqual:);
  methods[20].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "bi_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pCryptoEddsaMathField;LJavaMathBigInteger;", "add", "LNetI2pCryptoEddsaMathFieldElement;", "subtract", "divide", "LJavaMathBigInteger;", "multiply", "mod", "modPow", "LNetI2pCryptoEddsaMathFieldElement;LNetI2pCryptoEddsaMathFieldElement;", "pow", "cmov", "LNetI2pCryptoEddsaMathFieldElement;I", "hashCode", "equals", "LNSObject;", "toString" };
  static const J2ObjcClassInfo _NetI2pCryptoEddsaMathBigintBigIntegerFieldElement = { "BigIntegerFieldElement", "net.i2p.crypto.eddsa.math.bigint", ptrTable, methods, fields, 7, 0x1, 21, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement;
}

@end

void NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *self, NetI2pCryptoEddsaMathField *f, JavaMathBigInteger *bi) {
  NetI2pCryptoEddsaMathFieldElement_initWithNetI2pCryptoEddsaMathField_(self, f);
  JreStrongAssign(&self->bi_, bi);
}

NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *new_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(NetI2pCryptoEddsaMathField *f, JavaMathBigInteger *bi) {
  J2OBJC_NEW_IMPL(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement, initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_, f, bi)
}

NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(NetI2pCryptoEddsaMathField *f, JavaMathBigInteger *bi) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement, initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_, f, bi)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement)