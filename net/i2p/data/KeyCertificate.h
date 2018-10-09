//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/KeyCertificate.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataKeyCertificate")
#ifdef RESTRICT_NetI2pDataKeyCertificate
#define INCLUDE_ALL_NetI2pDataKeyCertificate 0
#else
#define INCLUDE_ALL_NetI2pDataKeyCertificate 1
#endif
#undef RESTRICT_NetI2pDataKeyCertificate

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataKeyCertificate_) && (INCLUDE_ALL_NetI2pDataKeyCertificate || defined(INCLUDE_NetI2pDataKeyCertificate))
#define NetI2pDataKeyCertificate_

#define RESTRICT_NetI2pDataCertificate 1
#define INCLUDE_NetI2pDataCertificate 1
#include "net/i2p/data/Certificate.h"

@class IOSByteArray;
@class NetI2pCryptoSigType;
@class NetI2pDataSigningPublicKey;

@interface NetI2pDataKeyCertificate : NetI2pDataCertificate
@property (readonly, class) jint HEADER_LENGTH NS_SWIFT_NAME(HEADER_LENGTH);
@property (readonly, class, strong) IOSByteArray *Ed25519_PAYLOAD NS_SWIFT_NAME(Ed25519_PAYLOAD);
@property (readonly, class, strong) IOSByteArray *ECDSA256_PAYLOAD NS_SWIFT_NAME(ECDSA256_PAYLOAD);
@property (readonly, class, strong) NetI2pDataKeyCertificate *ELG_ECDSA256_CERT NS_SWIFT_NAME(ELG_ECDSA256_CERT);
@property (readonly, class, strong) NetI2pDataKeyCertificate *ELG_Ed25519_CERT NS_SWIFT_NAME(ELG_Ed25519_CERT);

+ (jint)HEADER_LENGTH;

+ (IOSByteArray *)Ed25519_PAYLOAD;

+ (IOSByteArray *)ECDSA256_PAYLOAD;

+ (NetI2pDataKeyCertificate *)ELG_ECDSA256_CERT;

+ (NetI2pDataKeyCertificate *)ELG_Ed25519_CERT;

#pragma mark Public

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)payload;

- (instancetype __nonnull)initWithNetI2pDataCertificate:(NetI2pDataCertificate *)cert;

- (instancetype __nonnull)initWithNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)spk;

- (instancetype __nonnull)initWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type;

- (jint)getCryptoTypeCode;

- (IOSByteArray *)getExtraKeyData;

- (IOSByteArray *)getExtraSigningKeyData;

- (NetI2pCryptoSigType *)getSigType;

- (jint)getSigTypeCode;

- (NetI2pDataKeyCertificate *)toKeyCertificate;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                        withByteArray:(IOSByteArray *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pDataKeyCertificate)

inline jint NetI2pDataKeyCertificate_get_HEADER_LENGTH(void);
#define NetI2pDataKeyCertificate_HEADER_LENGTH 4
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataKeyCertificate, HEADER_LENGTH, jint)

inline IOSByteArray *NetI2pDataKeyCertificate_get_Ed25519_PAYLOAD(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *NetI2pDataKeyCertificate_Ed25519_PAYLOAD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataKeyCertificate, Ed25519_PAYLOAD, IOSByteArray *)

inline IOSByteArray *NetI2pDataKeyCertificate_get_ECDSA256_PAYLOAD(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *NetI2pDataKeyCertificate_ECDSA256_PAYLOAD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataKeyCertificate, ECDSA256_PAYLOAD, IOSByteArray *)

inline NetI2pDataKeyCertificate *NetI2pDataKeyCertificate_get_ELG_ECDSA256_CERT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pDataKeyCertificate *NetI2pDataKeyCertificate_ELG_ECDSA256_CERT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataKeyCertificate, ELG_ECDSA256_CERT, NetI2pDataKeyCertificate *)

inline NetI2pDataKeyCertificate *NetI2pDataKeyCertificate_get_ELG_Ed25519_CERT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pDataKeyCertificate *NetI2pDataKeyCertificate_ELG_Ed25519_CERT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataKeyCertificate, ELG_Ed25519_CERT, NetI2pDataKeyCertificate *)

FOUNDATION_EXPORT void NetI2pDataKeyCertificate_initWithByteArray_(NetI2pDataKeyCertificate *self, IOSByteArray *payload);

FOUNDATION_EXPORT NetI2pDataKeyCertificate *new_NetI2pDataKeyCertificate_initWithByteArray_(IOSByteArray *payload) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataKeyCertificate *create_NetI2pDataKeyCertificate_initWithByteArray_(IOSByteArray *payload);

FOUNDATION_EXPORT void NetI2pDataKeyCertificate_initWithNetI2pDataSigningPublicKey_(NetI2pDataKeyCertificate *self, NetI2pDataSigningPublicKey *spk);

FOUNDATION_EXPORT NetI2pDataKeyCertificate *new_NetI2pDataKeyCertificate_initWithNetI2pDataSigningPublicKey_(NetI2pDataSigningPublicKey *spk) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataKeyCertificate *create_NetI2pDataKeyCertificate_initWithNetI2pDataSigningPublicKey_(NetI2pDataSigningPublicKey *spk);

FOUNDATION_EXPORT void NetI2pDataKeyCertificate_initWithNetI2pCryptoSigType_(NetI2pDataKeyCertificate *self, NetI2pCryptoSigType *type);

FOUNDATION_EXPORT NetI2pDataKeyCertificate *new_NetI2pDataKeyCertificate_initWithNetI2pCryptoSigType_(NetI2pCryptoSigType *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataKeyCertificate *create_NetI2pDataKeyCertificate_initWithNetI2pCryptoSigType_(NetI2pCryptoSigType *type);

FOUNDATION_EXPORT void NetI2pDataKeyCertificate_initWithNetI2pDataCertificate_(NetI2pDataKeyCertificate *self, NetI2pDataCertificate *cert);

FOUNDATION_EXPORT NetI2pDataKeyCertificate *new_NetI2pDataKeyCertificate_initWithNetI2pDataCertificate_(NetI2pDataCertificate *cert) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataKeyCertificate *create_NetI2pDataKeyCertificate_initWithNetI2pDataCertificate_(NetI2pDataCertificate *cert);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataKeyCertificate)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataKeyCertificate")