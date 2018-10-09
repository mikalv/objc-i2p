//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/bigint/BigIntegerFieldElement.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement")
#ifdef RESTRICT_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement
#define INCLUDE_ALL_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_) && (INCLUDE_ALL_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement || defined(INCLUDE_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement))
#define NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_

#define RESTRICT_NetI2pCryptoEddsaMathFieldElement 1
#define INCLUDE_NetI2pCryptoEddsaMathFieldElement 1
#include "net/i2p/crypto/eddsa/math/FieldElement.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaMathBigInteger;
@class NetI2pCryptoEddsaMathField;

@interface NetI2pCryptoEddsaMathBigintBigIntegerFieldElement : NetI2pCryptoEddsaMathFieldElement < JavaIoSerializable > {
 @public
  JavaMathBigInteger *bi_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)f
                                      withJavaMathBigInteger:(JavaMathBigInteger *)bi;

- (NetI2pCryptoEddsaMathFieldElement *)addWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)addOne;

- (NetI2pCryptoEddsaMathFieldElement *)cmovWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val
                                                                         withInt:(jint)b;

- (NetI2pCryptoEddsaMathFieldElement *)divideWithJavaMathBigInteger:(JavaMathBigInteger *)val;

- (NetI2pCryptoEddsaMathFieldElement *)divideWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NetI2pCryptoEddsaMathFieldElement *)invert;

- (jboolean)isNonZero;

- (NetI2pCryptoEddsaMathFieldElement *)modWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)m;

- (NetI2pCryptoEddsaMathFieldElement *)modPowWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)e
                                             withNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)m;

- (NetI2pCryptoEddsaMathFieldElement *)multiplyWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)negate;

- (NetI2pCryptoEddsaMathFieldElement *)powWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)e;

- (NetI2pCryptoEddsaMathFieldElement *)pow22523;

- (NetI2pCryptoEddsaMathFieldElement *)square;

- (NetI2pCryptoEddsaMathFieldElement *)squareAndDouble;

- (NetI2pCryptoEddsaMathFieldElement *)subtractWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)subtractOne;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement)

J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement, bi_, JavaMathBigInteger *)

FOUNDATION_EXPORT void NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *self, NetI2pCryptoEddsaMathField *f, JavaMathBigInteger *bi);

FOUNDATION_EXPORT NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *new_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(NetI2pCryptoEddsaMathField *f, JavaMathBigInteger *bi) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaMathBigintBigIntegerFieldElement *create_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement_initWithNetI2pCryptoEddsaMathField_withJavaMathBigInteger_(NetI2pCryptoEddsaMathField *f, JavaMathBigInteger *bi);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaMathBigintBigIntegerFieldElement)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathBigintBigIntegerFieldElement")
