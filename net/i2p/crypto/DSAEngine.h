//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/DSAEngine.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoDSAEngine")
#ifdef RESTRICT_NetI2pCryptoDSAEngine
#define INCLUDE_ALL_NetI2pCryptoDSAEngine 0
#else
#define INCLUDE_ALL_NetI2pCryptoDSAEngine 1
#endif
#undef RESTRICT_NetI2pCryptoDSAEngine

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoDSAEngine_) && (INCLUDE_ALL_NetI2pCryptoDSAEngine || defined(INCLUDE_NetI2pCryptoDSAEngine))
#define NetI2pCryptoDSAEngine_

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pCryptoSHA1Hash;
@class NetI2pCryptoSigType;
@class NetI2pDataHash;
@class NetI2pDataSignature;
@class NetI2pDataSigningPrivateKey;
@class NetI2pDataSigningPublicKey;
@class NetI2pDataSimpleDataStructure;
@class NetI2pI2PAppContext;
@protocol JavaSecurityPrivateKey;
@protocol JavaSecurityPublicKey;

@interface NetI2pCryptoDSAEngine : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

+ (NetI2pCryptoSHA1Hash *)calculateHashWithByteArray:(IOSByteArray *)source
                                             withInt:(jint)offset
                                             withInt:(jint)len;

- (NetI2pCryptoSHA1Hash *)calculateHashWithJavaIoInputStream:(JavaIoInputStream *)inArg;

+ (NetI2pCryptoDSAEngine *)getInstance;

- (NetI2pDataSignature *)signWithByteArray:(IOSByteArray *)data
                                   withInt:(jint)offset
                                   withInt:(jint)length
           withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey;

- (NetI2pDataSignature *)signWithByteArray:(IOSByteArray *)data
           withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey;

- (NetI2pDataSignature *)signWithNetI2pDataHash:(NetI2pDataHash *)hash_
                withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey;

- (NetI2pDataSignature *)signWithJavaIoInputStream:(JavaIoInputStream *)inArg
                   withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey;

- (NetI2pDataSignature *)signWithNetI2pCryptoSHA1Hash:(NetI2pCryptoSHA1Hash *)hash_
                      withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey;

- (NetI2pDataSignature *)signWithNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)hash_
                                    withJavaSecurityPrivateKey:(id<JavaSecurityPrivateKey>)privKey
                                       withNetI2pCryptoSigType:(NetI2pCryptoSigType *)type;

- (NetI2pDataSignature *)signWithNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)hash_
                               withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                                     withByteArray:(IOSByteArray *)signedData
                                           withInt:(jint)offset
                                           withInt:(jint)size
                    withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)verifyingKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                                     withByteArray:(IOSByteArray *)signedData
                    withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)verifyingKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                                withNetI2pDataHash:(NetI2pDataHash *)hash_
                    withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)verifyingKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                             withJavaIoInputStream:(JavaIoInputStream *)inArg
                    withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)verifyingKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                          withNetI2pCryptoSHA1Hash:(NetI2pCryptoSHA1Hash *)hash_
                    withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)verifyingKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                 withNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)hash_
                         withJavaSecurityPublicKey:(id<JavaSecurityPublicKey>)pubKey;

- (jboolean)verifySignatureWithNetI2pDataSignature:(NetI2pDataSignature *)signature
                 withNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)hash_
                    withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)verifyingKey;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoDSAEngine)

FOUNDATION_EXPORT void NetI2pCryptoDSAEngine_initWithNetI2pI2PAppContext_(NetI2pCryptoDSAEngine *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pCryptoDSAEngine *new_NetI2pCryptoDSAEngine_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoDSAEngine *create_NetI2pCryptoDSAEngine_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pCryptoDSAEngine *NetI2pCryptoDSAEngine_getInstance(void);

FOUNDATION_EXPORT NetI2pCryptoSHA1Hash *NetI2pCryptoDSAEngine_calculateHashWithByteArray_withInt_withInt_(IOSByteArray *source, jint offset, jint len);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoDSAEngine)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoDSAEngine")
