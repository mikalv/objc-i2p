//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/SigType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoSigType")
#ifdef RESTRICT_NetI2pCryptoSigType
#define INCLUDE_ALL_NetI2pCryptoSigType 0
#else
#define INCLUDE_ALL_NetI2pCryptoSigType 1
#endif
#undef RESTRICT_NetI2pCryptoSigType

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoSigType_) && (INCLUDE_ALL_NetI2pCryptoSigType || defined(INCLUDE_NetI2pCryptoSigType))
#define NetI2pCryptoSigType_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;
@class JavaSecurityMessageDigest;
@class NetI2pCryptoSigAlgo;
@class NetI2pDataSimpleDataStructure;
@protocol JavaSecuritySpecAlgorithmParameterSpec;

typedef NS_ENUM(NSUInteger, NetI2pCryptoSigType_Enum) {
  NetI2pCryptoSigType_Enum_DSA_SHA1 = 0,
  NetI2pCryptoSigType_Enum_ECDSA_SHA256_P256 = 1,
  NetI2pCryptoSigType_Enum_ECDSA_SHA384_P384 = 2,
  NetI2pCryptoSigType_Enum_ECDSA_SHA512_P521 = 3,
  NetI2pCryptoSigType_Enum_RSA_SHA256_2048 = 4,
  NetI2pCryptoSigType_Enum_RSA_SHA384_3072 = 5,
  NetI2pCryptoSigType_Enum_RSA_SHA512_4096 = 6,
  NetI2pCryptoSigType_Enum_EdDSA_SHA512_Ed25519 = 7,
  NetI2pCryptoSigType_Enum_EdDSA_SHA512_Ed25519ph = 8,
};

@interface NetI2pCryptoSigType : JavaLangEnum

@property (readonly, class, nonnull) NetI2pCryptoSigType *DSA_SHA1 NS_SWIFT_NAME(DSA_SHA1);
@property (readonly, class, nonnull) NetI2pCryptoSigType *ECDSA_SHA256_P256 NS_SWIFT_NAME(ECDSA_SHA256_P256);
@property (readonly, class, nonnull) NetI2pCryptoSigType *ECDSA_SHA384_P384 NS_SWIFT_NAME(ECDSA_SHA384_P384);
@property (readonly, class, nonnull) NetI2pCryptoSigType *ECDSA_SHA512_P521 NS_SWIFT_NAME(ECDSA_SHA512_P521);
@property (readonly, class, nonnull) NetI2pCryptoSigType *RSA_SHA256_2048 NS_SWIFT_NAME(RSA_SHA256_2048);
@property (readonly, class, nonnull) NetI2pCryptoSigType *RSA_SHA384_3072 NS_SWIFT_NAME(RSA_SHA384_3072);
@property (readonly, class, nonnull) NetI2pCryptoSigType *RSA_SHA512_4096 NS_SWIFT_NAME(RSA_SHA512_4096);
@property (readonly, class, nonnull) NetI2pCryptoSigType *EdDSA_SHA512_Ed25519 NS_SWIFT_NAME(EdDSA_SHA512_Ed25519);
@property (readonly, class, nonnull) NetI2pCryptoSigType *EdDSA_SHA512_Ed25519ph NS_SWIFT_NAME(EdDSA_SHA512_Ed25519ph);
+ (NetI2pCryptoSigType * __nonnull)DSA_SHA1;

+ (NetI2pCryptoSigType * __nonnull)ECDSA_SHA256_P256;

+ (NetI2pCryptoSigType * __nonnull)ECDSA_SHA384_P384;

+ (NetI2pCryptoSigType * __nonnull)ECDSA_SHA512_P521;

+ (NetI2pCryptoSigType * __nonnull)RSA_SHA256_2048;

+ (NetI2pCryptoSigType * __nonnull)RSA_SHA384_3072;

+ (NetI2pCryptoSigType * __nonnull)RSA_SHA512_4096;

+ (NetI2pCryptoSigType * __nonnull)EdDSA_SHA512_Ed25519;

+ (NetI2pCryptoSigType * __nonnull)EdDSA_SHA512_Ed25519ph;

#pragma mark Public

- (NSString *)getAlgorithmName;

- (NetI2pCryptoSigAlgo *)getBaseAlgorithm;

+ (NetI2pCryptoSigType *)getByCodeWithInt:(jint)code;

- (jint)getCode;

- (JavaSecurityMessageDigest *)getDigestInstance;

- (NetI2pDataSimpleDataStructure *)getHashInstance;

- (jint)getHashLen;

- (NSString *)getOID;

- (id<JavaSecuritySpecAlgorithmParameterSpec>)getParams;

- (jint)getPrivkeyLen;

- (jint)getPubkeyLen;

- (jint)getSigLen;

- (NSString *)getSupportedSince;

- (jboolean)isAvailable;

+ (jboolean)isAvailableWithInt:(jint)code;

+ (jboolean)isAvailableWithNSString:(NSString *)stype;

+ (NetI2pCryptoSigType *)parseSigTypeWithNSString:(NSString *)stype;

+ (NetI2pCryptoSigType *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (NetI2pCryptoSigType_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoSigType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pCryptoSigType *NetI2pCryptoSigType_values_[];

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_DSA_SHA1(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, DSA_SHA1)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_ECDSA_SHA256_P256(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, ECDSA_SHA256_P256)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_ECDSA_SHA384_P384(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, ECDSA_SHA384_P384)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_ECDSA_SHA512_P521(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, ECDSA_SHA512_P521)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_RSA_SHA256_2048(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, RSA_SHA256_2048)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_RSA_SHA384_3072(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, RSA_SHA384_3072)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_RSA_SHA512_4096(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, RSA_SHA512_4096)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_EdDSA_SHA512_Ed25519(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519)

inline NetI2pCryptoSigType *NetI2pCryptoSigType_get_EdDSA_SHA512_Ed25519ph(void);
J2OBJC_ENUM_CONSTANT(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519ph)

FOUNDATION_EXPORT jboolean NetI2pCryptoSigType_isAvailableWithInt_(jint code);

FOUNDATION_EXPORT jboolean NetI2pCryptoSigType_isAvailableWithNSString_(NSString *stype);

FOUNDATION_EXPORT NetI2pCryptoSigType *NetI2pCryptoSigType_getByCodeWithInt_(jint code);

FOUNDATION_EXPORT NetI2pCryptoSigType *NetI2pCryptoSigType_parseSigTypeWithNSString_(NSString *stype);

FOUNDATION_EXPORT IOSObjectArray *NetI2pCryptoSigType_values(void);

FOUNDATION_EXPORT NetI2pCryptoSigType *NetI2pCryptoSigType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pCryptoSigType *NetI2pCryptoSigType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoSigType)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoSigType")
