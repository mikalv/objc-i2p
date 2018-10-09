//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/KeyGenerator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoKeyGenerator")
#ifdef RESTRICT_NetI2pCryptoKeyGenerator
#define INCLUDE_ALL_NetI2pCryptoKeyGenerator 0
#else
#define INCLUDE_ALL_NetI2pCryptoKeyGenerator 1
#endif
#undef RESTRICT_NetI2pCryptoKeyGenerator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoKeyGenerator_) && (INCLUDE_ALL_NetI2pCryptoKeyGenerator || defined(INCLUDE_NetI2pCryptoKeyGenerator))
#define NetI2pCryptoKeyGenerator_

@class IOSByteArray;
@class IOSObjectArray;
@class NetI2pCryptoSigType;
@class NetI2pDataPrivateKey;
@class NetI2pDataPublicKey;
@class NetI2pDataSessionKey;
@class NetI2pDataSigningPrivateKey;
@class NetI2pDataSigningPublicKey;
@class NetI2pI2PAppContext;

@interface NetI2pCryptoKeyGenerator : NSObject
@property (readonly, class) jint PUBKEY_EXPONENT_SIZE NS_SWIFT_NAME(PUBKEY_EXPONENT_SIZE);

+ (jint)PUBKEY_EXPONENT_SIZE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (IOSObjectArray *)generatePKIKeypair;

- (IOSObjectArray *)generatePKIKeys;

- (NetI2pDataSessionKey *)generateSessionKey;

- (NetI2pDataSessionKey *)generateSessionKeyWithByteArray:(IOSByteArray *)salt
                                            withByteArray:(IOSByteArray *)passphrase;

- (IOSObjectArray *)generateSigningKeypair;

- (IOSObjectArray *)generateSigningKeys;

- (IOSObjectArray *)generateSigningKeysWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type;

- (jint)getElGamalExponentSize;

+ (NetI2pCryptoKeyGenerator *)getInstance;

+ (NetI2pDataPublicKey *)getPublicKeyWithNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)priv;

+ (NetI2pDataSigningPublicKey *)getSigningPublicKeyWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)priv;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (jboolean)useLongElGamalExponent;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoKeyGenerator)

inline jint NetI2pCryptoKeyGenerator_get_PUBKEY_EXPONENT_SIZE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint NetI2pCryptoKeyGenerator_PUBKEY_EXPONENT_SIZE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pCryptoKeyGenerator, PUBKEY_EXPONENT_SIZE, jint)

FOUNDATION_EXPORT void NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(NetI2pCryptoKeyGenerator *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pCryptoKeyGenerator *new_NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoKeyGenerator *create_NetI2pCryptoKeyGenerator_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pCryptoKeyGenerator *NetI2pCryptoKeyGenerator_getInstance(void);

FOUNDATION_EXPORT NetI2pDataPublicKey *NetI2pCryptoKeyGenerator_getPublicKeyWithNetI2pDataPrivateKey_(NetI2pDataPrivateKey *priv);

FOUNDATION_EXPORT NetI2pDataSigningPublicKey *NetI2pCryptoKeyGenerator_getSigningPublicKeyWithNetI2pDataSigningPrivateKey_(NetI2pDataSigningPrivateKey *priv);

FOUNDATION_EXPORT void NetI2pCryptoKeyGenerator_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoKeyGenerator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoKeyGenerator")