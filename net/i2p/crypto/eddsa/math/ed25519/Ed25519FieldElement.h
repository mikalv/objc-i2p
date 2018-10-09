//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement")
#ifdef RESTRICT_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement
#define INCLUDE_ALL_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaMathEd25519Ed25519FieldElement_) && (INCLUDE_ALL_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement || defined(INCLUDE_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement))
#define NetI2pCryptoEddsaMathEd25519Ed25519FieldElement_

#define RESTRICT_NetI2pCryptoEddsaMathFieldElement 1
#define INCLUDE_NetI2pCryptoEddsaMathFieldElement 1
#include "net/i2p/crypto/eddsa/math/FieldElement.h"

@class IOSIntArray;
@class NetI2pCryptoEddsaMathField;

@interface NetI2pCryptoEddsaMathEd25519Ed25519FieldElement : NetI2pCryptoEddsaMathFieldElement {
 @public
  IOSIntArray *t_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)f
                                                withIntArray:(IOSIntArray *)t;

- (NetI2pCryptoEddsaMathFieldElement *)addWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)cmovWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val
                                                                         withInt:(jint)b;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NetI2pCryptoEddsaMathFieldElement *)invert;

- (jboolean)isNonZero;

- (NetI2pCryptoEddsaMathFieldElement *)multiplyWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NetI2pCryptoEddsaMathFieldElement *)negate;

- (NetI2pCryptoEddsaMathFieldElement *)pow22523;

- (NetI2pCryptoEddsaMathFieldElement *)square;

- (NetI2pCryptoEddsaMathFieldElement *)squareAndDouble;

- (NetI2pCryptoEddsaMathFieldElement *)subtractWithNetI2pCryptoEddsaMathFieldElement:(NetI2pCryptoEddsaMathFieldElement *)val;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pCryptoEddsaMathField:(NetI2pCryptoEddsaMathField *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoEddsaMathEd25519Ed25519FieldElement)

J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathEd25519Ed25519FieldElement, t_, IOSIntArray *)

FOUNDATION_EXPORT void NetI2pCryptoEddsaMathEd25519Ed25519FieldElement_initWithNetI2pCryptoEddsaMathField_withIntArray_(NetI2pCryptoEddsaMathEd25519Ed25519FieldElement *self, NetI2pCryptoEddsaMathField *f, IOSIntArray *t);

FOUNDATION_EXPORT NetI2pCryptoEddsaMathEd25519Ed25519FieldElement *new_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement_initWithNetI2pCryptoEddsaMathField_withIntArray_(NetI2pCryptoEddsaMathField *f, IOSIntArray *t) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaMathEd25519Ed25519FieldElement *create_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement_initWithNetI2pCryptoEddsaMathField_withIntArray_(NetI2pCryptoEddsaMathField *f, IOSIntArray *t);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaMathEd25519Ed25519FieldElement)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathEd25519Ed25519FieldElement")
