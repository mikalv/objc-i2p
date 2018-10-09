//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/FieldElement.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathFieldElement")
#ifdef RESTRICT_NetI2pCryptoEddsaMathFieldElement
#define INCLUDE_ALL_NetI2pCryptoEddsaMathFieldElement 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaMathFieldElement 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaMathFieldElement

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaMathFieldElement_) && (INCLUDE_ALL_NetI2pCryptoEddsaMathFieldElement || defined(INCLUDE_NetI2pCryptoEddsaMathFieldElement))
#define NetI2pCryptoEddsaMathFieldElement_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@class NetI2pCryptoEddsaMathField;

@interface NetI2pCryptoEddsaMathFieldElement : NSObject < JavaIoSerializable > {
 @public
  NetI2pCryptoEddsaMathField *f_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)f;

- (NetI2pCryptoEddsaMathFieldElement *)addWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)addOne;

- (NetI2pCryptoEddsaMathFieldElement *)cmovWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val
                                                                         withInt:(jint)b;

- (NetI2pCryptoEddsaMathFieldElement *)divideWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)invert;

- (jboolean)isNegative;

- (jboolean)isNonZero;

- (NetI2pCryptoEddsaMathFieldElement *)multiplyWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)negate;

- (NetI2pCryptoEddsaMathFieldElement *)pow22523;

- (NetI2pCryptoEddsaMathFieldElement *)square;

- (NetI2pCryptoEddsaMathFieldElement *)squareAndDouble;

- (NetI2pCryptoEddsaMathFieldElement *)subtractWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)subtractOne;

- (IOSByteArray *)toByteArray;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoEddsaMathFieldElement)

J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathFieldElement, f_, NetI2pCryptoEddsaMathField *)

FOUNDATION_EXPORT void NetI2pCryptoEddsaMathFieldElement_initWithNetI2pCryptoEddsaMathField_(NetI2pCryptoEddsaMathFieldElement *self, NetI2pCryptoEddsaMathField *f);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaMathFieldElement)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathFieldElement")