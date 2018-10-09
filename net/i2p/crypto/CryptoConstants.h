//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/CryptoConstants.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoCryptoConstants")
#ifdef RESTRICT_NetI2pCryptoCryptoConstants
#define INCLUDE_ALL_NetI2pCryptoCryptoConstants 0
#else
#define INCLUDE_ALL_NetI2pCryptoCryptoConstants 1
#endif
#undef RESTRICT_NetI2pCryptoCryptoConstants

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoCryptoConstants_) && (INCLUDE_ALL_NetI2pCryptoCryptoConstants || defined(INCLUDE_NetI2pCryptoCryptoConstants))
#define NetI2pCryptoCryptoConstants_

@class JavaSecuritySpecDSAParameterSpec;
@class NetI2pCryptoElgamalSpecElGamalParameterSpec;
@class NetI2pUtilNativeBigInteger;
@protocol JavaSecuritySpecAlgorithmParameterSpec;

@interface NetI2pCryptoCryptoConstants : NSObject
@property (readonly, class, strong) NetI2pUtilNativeBigInteger *dsap NS_SWIFT_NAME(dsap);
@property (readonly, class, strong) NetI2pUtilNativeBigInteger *dsaq NS_SWIFT_NAME(dsaq);
@property (readonly, class, strong) NetI2pUtilNativeBigInteger *dsag NS_SWIFT_NAME(dsag);
@property (readonly, class, strong) NetI2pUtilNativeBigInteger *elgp NS_SWIFT_NAME(elgp);
@property (readonly, class, strong) NetI2pUtilNativeBigInteger *elgg NS_SWIFT_NAME(elgg);
@property (readonly, class, strong) JavaSecuritySpecDSAParameterSpec *DSA_SHA1_SPEC NS_SWIFT_NAME(DSA_SHA1_SPEC);
@property (readonly, class, strong) NetI2pCryptoElgamalSpecElGamalParameterSpec *I2P_ELGAMAL_2048_SPEC NS_SWIFT_NAME(I2P_ELGAMAL_2048_SPEC);
@property (readonly, class, strong) id<JavaSecuritySpecAlgorithmParameterSpec> ELGAMAL_2048_SPEC NS_SWIFT_NAME(ELGAMAL_2048_SPEC);

+ (NetI2pUtilNativeBigInteger *)dsap;

+ (NetI2pUtilNativeBigInteger *)dsaq;

+ (NetI2pUtilNativeBigInteger *)dsag;

+ (NetI2pUtilNativeBigInteger *)elgp;

+ (NetI2pUtilNativeBigInteger *)elgg;

+ (JavaSecuritySpecDSAParameterSpec *)DSA_SHA1_SPEC;

+ (NetI2pCryptoElgamalSpecElGamalParameterSpec *)I2P_ELGAMAL_2048_SPEC;

+ (id<JavaSecuritySpecAlgorithmParameterSpec>)ELGAMAL_2048_SPEC;

#pragma mark Public

- (instancetype __nonnull)init;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoCryptoConstants)

inline NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_get_dsap(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_dsap;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, dsap, NetI2pUtilNativeBigInteger *)

inline NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_get_dsaq(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_dsaq;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, dsaq, NetI2pUtilNativeBigInteger *)

inline NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_get_dsag(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_dsag;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, dsag, NetI2pUtilNativeBigInteger *)

inline NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_get_elgp(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_elgp;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, elgp, NetI2pUtilNativeBigInteger *)

inline NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_get_elgg(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pUtilNativeBigInteger *NetI2pCryptoCryptoConstants_elgg;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, elgg, NetI2pUtilNativeBigInteger *)

inline JavaSecuritySpecDSAParameterSpec *NetI2pCryptoCryptoConstants_get_DSA_SHA1_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaSecuritySpecDSAParameterSpec *NetI2pCryptoCryptoConstants_DSA_SHA1_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, DSA_SHA1_SPEC, JavaSecuritySpecDSAParameterSpec *)

inline NetI2pCryptoElgamalSpecElGamalParameterSpec *NetI2pCryptoCryptoConstants_get_I2P_ELGAMAL_2048_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pCryptoElgamalSpecElGamalParameterSpec *NetI2pCryptoCryptoConstants_I2P_ELGAMAL_2048_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, I2P_ELGAMAL_2048_SPEC, NetI2pCryptoElgamalSpecElGamalParameterSpec *)

inline id<JavaSecuritySpecAlgorithmParameterSpec> NetI2pCryptoCryptoConstants_get_ELGAMAL_2048_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaSecuritySpecAlgorithmParameterSpec> NetI2pCryptoCryptoConstants_ELGAMAL_2048_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoCryptoConstants, ELGAMAL_2048_SPEC, id<JavaSecuritySpecAlgorithmParameterSpec>)

FOUNDATION_EXPORT void NetI2pCryptoCryptoConstants_init(NetI2pCryptoCryptoConstants *self);

FOUNDATION_EXPORT NetI2pCryptoCryptoConstants *new_NetI2pCryptoCryptoConstants_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoCryptoConstants *create_NetI2pCryptoCryptoConstants_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoCryptoConstants)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoCryptoConstants")
