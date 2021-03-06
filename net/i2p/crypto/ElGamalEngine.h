//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/ElGamalEngine.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoElGamalEngine")
#ifdef RESTRICT_NetI2pCryptoElGamalEngine
#define INCLUDE_ALL_NetI2pCryptoElGamalEngine 0
#else
#define INCLUDE_ALL_NetI2pCryptoElGamalEngine 1
#endif
#undef RESTRICT_NetI2pCryptoElGamalEngine

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoElGamalEngine_) && (INCLUDE_ALL_NetI2pCryptoElGamalEngine || defined(INCLUDE_NetI2pCryptoElGamalEngine))
#define NetI2pCryptoElGamalEngine_

@class IOSByteArray;
@class NetI2pDataPrivateKey;
@class NetI2pDataPublicKey;
@class NetI2pI2PAppContext;

@interface NetI2pCryptoElGamalEngine : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (IOSByteArray *)decryptWithByteArray:(IOSByteArray *)encrypted
              withNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)privateKey;

- (IOSByteArray *)encryptWithByteArray:(IOSByteArray *)data
               withNetI2pDataPublicKey:(NetI2pDataPublicKey *)publicKey;

- (void)restart;

- (void)shutdown;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoElGamalEngine)

FOUNDATION_EXPORT void NetI2pCryptoElGamalEngine_initWithNetI2pI2PAppContext_(NetI2pCryptoElGamalEngine *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pCryptoElGamalEngine *new_NetI2pCryptoElGamalEngine_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoElGamalEngine *create_NetI2pCryptoElGamalEngine_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoElGamalEngine)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoElGamalEngine")
