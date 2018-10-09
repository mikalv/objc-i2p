//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec")
#ifdef RESTRICT_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec
#define INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaSpecEdDSAGenParameterSpec_) && (INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec || defined(INCLUDE_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec))
#define NetI2pCryptoEddsaSpecEdDSAGenParameterSpec_

#define RESTRICT_JavaSecuritySpecAlgorithmParameterSpec 1
#define INCLUDE_JavaSecuritySpecAlgorithmParameterSpec 1
#include "java/security/spec/AlgorithmParameterSpec.h"

@interface NetI2pCryptoEddsaSpecEdDSAGenParameterSpec : NSObject < JavaSecuritySpecAlgorithmParameterSpec >

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)stdName;

- (NSString *)getName;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoEddsaSpecEdDSAGenParameterSpec)

FOUNDATION_EXPORT void NetI2pCryptoEddsaSpecEdDSAGenParameterSpec_initWithNSString_(NetI2pCryptoEddsaSpecEdDSAGenParameterSpec *self, NSString *stdName);

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAGenParameterSpec *new_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec_initWithNSString_(NSString *stdName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSAGenParameterSpec *create_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec_initWithNSString_(NSString *stdName);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaSpecEdDSAGenParameterSpec)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSAGenParameterSpec")
