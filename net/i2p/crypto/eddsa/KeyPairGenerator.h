//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/KeyPairGenerator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaKeyPairGenerator")
#ifdef RESTRICT_NetI2pCryptoEddsaKeyPairGenerator
#define INCLUDE_ALL_NetI2pCryptoEddsaKeyPairGenerator 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaKeyPairGenerator 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaKeyPairGenerator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaKeyPairGenerator_) && (INCLUDE_ALL_NetI2pCryptoEddsaKeyPairGenerator || defined(INCLUDE_NetI2pCryptoEddsaKeyPairGenerator))
#define NetI2pCryptoEddsaKeyPairGenerator_

#define RESTRICT_JavaSecurityKeyPairGeneratorSpi 1
#define INCLUDE_JavaSecurityKeyPairGeneratorSpi 1
#include "java/security/KeyPairGeneratorSpi.h"

@class JavaSecurityKeyPair;
@class JavaSecuritySecureRandom;
@class NetI2pCryptoEddsaSpecEdDSANamedCurveSpec;
@protocol JavaSecuritySpecAlgorithmParameterSpec;

@interface NetI2pCryptoEddsaKeyPairGenerator : JavaSecurityKeyPairGeneratorSpi

#pragma mark Public

- (instancetype __nonnull)init;

- (JavaSecurityKeyPair *)generateKeyPair;

- (void)initialize__WithJavaSecuritySpecAlgorithmParameterSpec:(id<JavaSecuritySpecAlgorithmParameterSpec>)params
                                  withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random OBJC_METHOD_FAMILY_NONE;

- (void)initialize__WithInt:(jint)keysize
withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random OBJC_METHOD_FAMILY_NONE;

#pragma mark Protected

- (NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *)createNamedCurveSpecWithNSString:(NSString *)curveName;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoEddsaKeyPairGenerator)

FOUNDATION_EXPORT void NetI2pCryptoEddsaKeyPairGenerator_init(NetI2pCryptoEddsaKeyPairGenerator *self);

FOUNDATION_EXPORT NetI2pCryptoEddsaKeyPairGenerator *new_NetI2pCryptoEddsaKeyPairGenerator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaKeyPairGenerator *create_NetI2pCryptoEddsaKeyPairGenerator_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaKeyPairGenerator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaKeyPairGenerator")
