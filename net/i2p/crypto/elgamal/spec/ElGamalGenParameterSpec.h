//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/spec/ElGamalGenParameterSpec.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoElgamalSpecElGamalGenParameterSpec")
#ifdef RESTRICT_NetI2pCryptoElgamalSpecElGamalGenParameterSpec
#define INCLUDE_ALL_NetI2pCryptoElgamalSpecElGamalGenParameterSpec 0
#else
#define INCLUDE_ALL_NetI2pCryptoElgamalSpecElGamalGenParameterSpec 1
#endif
#undef RESTRICT_NetI2pCryptoElgamalSpecElGamalGenParameterSpec

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoElgamalSpecElGamalGenParameterSpec_) && (INCLUDE_ALL_NetI2pCryptoElgamalSpecElGamalGenParameterSpec || defined(INCLUDE_NetI2pCryptoElgamalSpecElGamalGenParameterSpec))
#define NetI2pCryptoElgamalSpecElGamalGenParameterSpec_

#define RESTRICT_JavaSecuritySpecAlgorithmParameterSpec 1
#define INCLUDE_JavaSecuritySpecAlgorithmParameterSpec 1
#include "java/security/spec/AlgorithmParameterSpec.h"

@interface NetI2pCryptoElgamalSpecElGamalGenParameterSpec : NSObject < JavaSecuritySpecAlgorithmParameterSpec >

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)primeSize;

- (jint)getPrimeSize;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoElgamalSpecElGamalGenParameterSpec)

FOUNDATION_EXPORT void NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(NetI2pCryptoElgamalSpecElGamalGenParameterSpec *self, jint primeSize);

FOUNDATION_EXPORT NetI2pCryptoElgamalSpecElGamalGenParameterSpec *new_NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(jint primeSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoElgamalSpecElGamalGenParameterSpec *create_NetI2pCryptoElgamalSpecElGamalGenParameterSpec_initWithInt_(jint primeSize);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoElgamalSpecElGamalGenParameterSpec)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoElgamalSpecElGamalGenParameterSpec")
