//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/KeyFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoElgamalKeyFactory")
#ifdef RESTRICT_NetI2pCryptoElgamalKeyFactory
#define INCLUDE_ALL_NetI2pCryptoElgamalKeyFactory 0
#else
#define INCLUDE_ALL_NetI2pCryptoElgamalKeyFactory 1
#endif
#undef RESTRICT_NetI2pCryptoElgamalKeyFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoElgamalKeyFactory_) && (INCLUDE_ALL_NetI2pCryptoElgamalKeyFactory || defined(INCLUDE_NetI2pCryptoElgamalKeyFactory))
#define NetI2pCryptoElgamalKeyFactory_

#define RESTRICT_JavaSecurityKeyFactorySpi 1
#define INCLUDE_JavaSecurityKeyFactorySpi 1
#include "java/security/KeyFactorySpi.h"

@class IOSClass;
@protocol JavaSecurityKey;
@protocol JavaSecurityPrivateKey;
@protocol JavaSecurityPublicKey;
@protocol JavaSecuritySpecKeySpec;

@interface NetI2pCryptoElgamalKeyFactory : JavaSecurityKeyFactorySpi

#pragma mark Public

- (instancetype __nonnull)init;

#pragma mark Protected

- (id<JavaSecurityPrivateKey>)engineGeneratePrivateWithJavaSecuritySpecKeySpec:(id<JavaSecuritySpecKeySpec>)keySpec;

- (id<JavaSecurityPublicKey>)engineGeneratePublicWithJavaSecuritySpecKeySpec:(id<JavaSecuritySpecKeySpec>)keySpec;

- (id<JavaSecuritySpecKeySpec>)engineGetKeySpecWithJavaSecurityKey:(id<JavaSecurityKey>)key
                                                      withIOSClass:(IOSClass *)keySpec;

- (id<JavaSecurityKey>)engineTranslateKeyWithJavaSecurityKey:(id<JavaSecurityKey>)key;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoElgamalKeyFactory)

FOUNDATION_EXPORT void NetI2pCryptoElgamalKeyFactory_init(NetI2pCryptoElgamalKeyFactory *self);

FOUNDATION_EXPORT NetI2pCryptoElgamalKeyFactory *new_NetI2pCryptoElgamalKeyFactory_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoElgamalKeyFactory *create_NetI2pCryptoElgamalKeyFactory_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoElgamalKeyFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoElgamalKeyFactory")