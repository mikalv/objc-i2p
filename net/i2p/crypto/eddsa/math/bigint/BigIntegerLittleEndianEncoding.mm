//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/math/BigInteger.h"
#include "net/i2p/crypto/eddsa/math/Encoding.h"
#include "net/i2p/crypto/eddsa/math/Field.h"
#include "net/i2p/crypto/eddsa/math/FieldElement.h"
#include "net/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement.h"
#include "net/i2p/crypto/eddsa/math/bigint/BigIntegerLittleEndianEncoding.h"

@interface NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding () {
 @public
  JavaMathBigInteger *mask_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding, mask_, JavaMathBigInteger *)

inline jlong NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_get_serialVersionUID(void);
#define NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_serialVersionUID 3984579843759837LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding, serialVersionUID, jlong)

@implementation NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setFieldWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)f {
  @synchronized(self) {
    [super setFieldWithNetI2pCryptoEddsaMathField:f];
    JreStrongAssign(&mask_, JreRetainedLocalValue([((JavaMathBigInteger *) nil_chk([((JavaMathBigInteger *) nil_chk(JreLoadStatic(JavaMathBigInteger, ONE))) shiftLeftWithInt:[((NetI2pCryptoEddsaMathField *) nil_chk(f)) getb] - 1])) subtractWithJavaMathBigInteger:JreLoadStatic(JavaMathBigInteger, ONE)]));
  }
}

- (IOSByteArray *)encodeWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)x {
  return [self encodeWithJavaMathBigInteger:[((JavaMathBigInteger *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(x, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_)) and__WithJavaMathBigInteger:mask_]];
}

- (IOSByteArray *)encodeWithJavaMathBigInteger:(JavaMathBigInteger *)x {
  if (f_ == nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"field not set");
  IOSByteArray *in = [((JavaMathBigInteger *) nil_chk(x)) toByteArray];
  IOSByteArray *out = [IOSByteArray arrayWithLength:[((NetI2pCryptoEddsaMathField *) nil_chk(f_)) getb] / 8];
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(in))->size_; i++) {
    *IOSByteArray_GetRef(out, i) = IOSByteArray_Get(in, in->size_ - 1 - i);
  }
  for (jint i = in->size_; i < out->size_; i++) {
    *IOSByteArray_GetRef(out, i) = 0;
  }
  return out;
}

- (NetI2pCryptoEddsaMathFieldElement *)decodeWithByteArray:(IOSByteArray *)inArg {
  if (f_ == nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"field not set");
  if (((IOSByteArray *) nil_chk(inArg))->size_ != [f_ getb] / 8) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Not a valid encoding");
  return create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(f_, [((JavaMathBigInteger *) nil_chk([self toBigIntegerWithByteArray:inArg])) and__WithJavaMathBigInteger:mask_]);
}

- (JavaMathBigInteger *)toBigIntegerWithByteArray:(IOSByteArray *)inArg {
  IOSByteArray *out = [IOSByteArray arrayWithLength:((IOSByteArray *) nil_chk(inArg))->size_];
  for (jint i = 0; i < inArg->size_; i++) {
    *IOSByteArray_GetRef(out, i) = IOSByteArray_Get(inArg, inArg->size_ - 1 - i);
  }
  return create_JavaMathBigInteger_initWithInt_withByteArray_(1, out);
}

- (jboolean)isNegativeWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)x {
  return [((JavaMathBigInteger *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) nil_chk(((NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *) cast_chk(x, [NetI2pCryptoEddsaMathBigintBigIntegerFieldElement class]))))->bi_)) testBitWithInt:0];
}

- (void)dealloc {
  RELEASE_(mask_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 0, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEddsaMathFieldElement;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setFieldWithNetI2pCryptoEddsaMathField:);
  methods[2].selector = @selector(encodeWithNetI2pCryptoEddsaMathFieldElement:);
  methods[3].selector = @selector(encodeWithJavaMathBigInteger:);
  methods[4].selector = @selector(decodeWithByteArray:);
  methods[5].selector = @selector(toBigIntegerWithByteArray:);
  methods[6].selector = @selector(isNegativeWithNetI2pCryptoEddsaMathFieldElement:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "mask_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setField", "LNetI2pCryptoEddsaMathField;", "encode", "LNetI2pCryptoEddsaMathFieldElement;", "LJavaMathBigInteger;", "decode", "[B", "toBigInteger", "isNegative" };
  static const J2ObjcClassInfo _NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding = { "BigIntegerLittleEndianEncoding", "net.i2p.crypto.eddsa.math.bigint", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding;
}

@end

void NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_init(NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding *self) {
  NetI2pCryptoEddsaMathEncoding_init(self);
}

NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding *new_NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding, init)
}

NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding *create_NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoEddsaMathBigintBigIntegerLittleEndianEncoding)
