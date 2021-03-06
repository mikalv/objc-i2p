//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/RSAConstants.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoRSAConstants")
#ifdef RESTRICT_NetI2pCryptoRSAConstants
#define INCLUDE_ALL_NetI2pCryptoRSAConstants 0
#else
#define INCLUDE_ALL_NetI2pCryptoRSAConstants 1
#endif
#undef RESTRICT_NetI2pCryptoRSAConstants

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoRSAConstants_) && (INCLUDE_ALL_NetI2pCryptoRSAConstants || defined(INCLUDE_NetI2pCryptoRSAConstants))
#define NetI2pCryptoRSAConstants_

@class JavaSecuritySpecRSAKeyGenParameterSpec;

@interface NetI2pCryptoRSAConstants : NSObject
@property (readonly, class, strong) JavaSecuritySpecRSAKeyGenParameterSpec *F4_1024_SPEC NS_SWIFT_NAME(F4_1024_SPEC);
@property (readonly, class, strong) JavaSecuritySpecRSAKeyGenParameterSpec *F4_2048_SPEC NS_SWIFT_NAME(F4_2048_SPEC);
@property (readonly, class, strong) JavaSecuritySpecRSAKeyGenParameterSpec *F4_3072_SPEC NS_SWIFT_NAME(F4_3072_SPEC);
@property (readonly, class, strong) JavaSecuritySpecRSAKeyGenParameterSpec *F4_4096_SPEC NS_SWIFT_NAME(F4_4096_SPEC);

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_1024_SPEC;

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_2048_SPEC;

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_3072_SPEC;

+ (JavaSecuritySpecRSAKeyGenParameterSpec *)F4_4096_SPEC;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoRSAConstants)

inline JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_get_F4_1024_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_1024_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoRSAConstants, F4_1024_SPEC, JavaSecuritySpecRSAKeyGenParameterSpec *)

inline JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_get_F4_2048_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_2048_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoRSAConstants, F4_2048_SPEC, JavaSecuritySpecRSAKeyGenParameterSpec *)

inline JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_get_F4_3072_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_3072_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoRSAConstants, F4_3072_SPEC, JavaSecuritySpecRSAKeyGenParameterSpec *)

inline JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_get_F4_4096_SPEC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaSecuritySpecRSAKeyGenParameterSpec *NetI2pCryptoRSAConstants_F4_4096_SPEC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoRSAConstants, F4_4096_SPEC, JavaSecuritySpecRSAKeyGenParameterSpec *)

FOUNDATION_EXPORT void NetI2pCryptoRSAConstants_init(NetI2pCryptoRSAConstants *self);

FOUNDATION_EXPORT NetI2pCryptoRSAConstants *new_NetI2pCryptoRSAConstants_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoRSAConstants *create_NetI2pCryptoRSAConstants_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoRSAConstants)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoRSAConstants")
