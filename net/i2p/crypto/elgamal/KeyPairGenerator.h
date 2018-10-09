//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/KeyPairGenerator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoElgamalKeyPairGenerator")
#ifdef RESTRICT_NetI2pCryptoElgamalKeyPairGenerator
#define INCLUDE_ALL_NetI2pCryptoElgamalKeyPairGenerator 0
#else
#define INCLUDE_ALL_NetI2pCryptoElgamalKeyPairGenerator 1
#endif
#undef RESTRICT_NetI2pCryptoElgamalKeyPairGenerator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoElgamalKeyPairGenerator_) && (INCLUDE_ALL_NetI2pCryptoElgamalKeyPairGenerator || defined(INCLUDE_NetI2pCryptoElgamalKeyPairGenerator))
#define NetI2pCryptoElgamalKeyPairGenerator_

#define RESTRICT_JavaSecurityKeyPairGeneratorSpi 1
#define INCLUDE_JavaSecurityKeyPairGeneratorSpi 1
#include "java/security/KeyPairGeneratorSpi.h"

@class JavaSecurityKeyPair;
@class JavaSecuritySecureRandom;
@protocol JavaSecuritySpecAlgorithmParameterSpec;

@interface NetI2pCryptoElgamalKeyPairGenerator : JavaSecurityKeyPairGeneratorSpi

#pragma mark Public

- (instancetype __nonnull)init;

- (JavaSecurityKeyPair *)generateKeyPair;

- (void)initialize__WithJavaSecuritySpecAlgorithmParameterSpec:(id<JavaSecuritySpecAlgorithmParameterSpec>)params
                                  withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random OBJC_METHOD_FAMILY_NONE;

- (void)initialize__WithInt:(jint)strength
withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoElgamalKeyPairGenerator)

FOUNDATION_EXPORT void NetI2pCryptoElgamalKeyPairGenerator_init(NetI2pCryptoElgamalKeyPairGenerator *self);

FOUNDATION_EXPORT NetI2pCryptoElgamalKeyPairGenerator *new_NetI2pCryptoElgamalKeyPairGenerator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoElgamalKeyPairGenerator *create_NetI2pCryptoElgamalKeyPairGenerator_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoElgamalKeyPairGenerator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoElgamalKeyPairGenerator")
