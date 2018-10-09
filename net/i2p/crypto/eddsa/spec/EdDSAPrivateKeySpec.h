//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec")
#ifdef RESTRICT_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec
#define INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_) && (INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec || defined(INCLUDE_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec))
#define NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_

#define RESTRICT_JavaSecuritySpecKeySpec 1
#define INCLUDE_JavaSecuritySpecKeySpec 1
#include "java/security/spec/KeySpec.h"

@class IOSByteArray;
@class NetI2pCryptoEddsaMathGroupElement;
@class NetI2pCryptoEddsaSpecEdDSAParameterSpec;

@interface NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec : NSObject < JavaSecuritySpecKeySpec >

#pragma mark Public

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)seed
                              withByteArray:(IOSByteArray *)h
                              withByteArray:(IOSByteArray *)a
      withNetI2pCryptoEddsaMathGroupElement:(NetI2pCryptoEddsaMathGroupElement *)A
withNetI2pCryptoEddsaSpecEdDSAParameterSpec:(NetI2pCryptoEddsaSpecEdDSAParameterSpec *)spec;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)seed
withNetI2pCryptoEddsaSpecEdDSAParameterSpec:(NetI2pCryptoEddsaSpecEdDSAParameterSpec *)spec;

- (instancetype __nonnull)initWithNetI2pCryptoEddsaSpecEdDSAParameterSpec:(NetI2pCryptoEddsaSpecEdDSAParameterSpec *)spec
                                                            withByteArray:(IOSByteArray *)h;

- (IOSByteArray *)geta;

- (NetI2pCryptoEddsaMathGroupElement *)getA;

- (IOSByteArray *)getH;

- (NetI2pCryptoEddsaSpecEdDSAParameterSpec *)getParams;

- (IOSByteArray *)getSeed;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec)

FOUNDATION_EXPORT void NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *self, IOSByteArray *seed, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec);

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *new_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(IOSByteArray *seed, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *create_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithByteArray_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(IOSByteArray *seed, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec);

FOUNDATION_EXPORT void NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithNetI2pCryptoEddsaSpecEdDSAParameterSpec_withByteArray_(NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *self, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec, IOSByteArray *h);

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *new_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithNetI2pCryptoEddsaSpecEdDSAParameterSpec_withByteArray_(NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec, IOSByteArray *h) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *create_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithNetI2pCryptoEddsaSpecEdDSAParameterSpec_withByteArray_(NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec, IOSByteArray *h);

FOUNDATION_EXPORT void NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithByteArray_withByteArray_withByteArray_withNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *self, IOSByteArray *seed, IOSByteArray *h, IOSByteArray *a, NetI2pCryptoEddsaMathGroupElement *A, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec);

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *new_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithByteArray_withByteArray_withByteArray_withNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(IOSByteArray *seed, IOSByteArray *h, IOSByteArray *a, NetI2pCryptoEddsaMathGroupElement *A, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec *create_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec_initWithByteArray_withByteArray_withByteArray_withNetI2pCryptoEddsaMathGroupElement_withNetI2pCryptoEddsaSpecEdDSAParameterSpec_(IOSByteArray *seed, IOSByteArray *h, IOSByteArray *a, NetI2pCryptoEddsaMathGroupElement *A, NetI2pCryptoEddsaSpecEdDSAParameterSpec *spec);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAPrivateKeySpec")