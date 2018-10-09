//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/ECUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoECUtil")
#ifdef RESTRICT_NetI2pCryptoECUtil
#define INCLUDE_ALL_NetI2pCryptoECUtil 0
#else
#define INCLUDE_ALL_NetI2pCryptoECUtil 1
#endif
#undef RESTRICT_NetI2pCryptoECUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoECUtil_) && (INCLUDE_ALL_NetI2pCryptoECUtil || defined(INCLUDE_NetI2pCryptoECUtil))
#define NetI2pCryptoECUtil_

@class JavaMathBigInteger;
@class JavaSecuritySpecECPoint;
@class JavaSecuritySpecEllipticCurve;

@interface NetI2pCryptoECUtil : NSObject

#pragma mark Public

+ (JavaSecuritySpecECPoint *)scalarMultWithJavaSecuritySpecECPoint:(JavaSecuritySpecECPoint *)p
                                            withJavaMathBigInteger:(JavaMathBigInteger *)kin
                                 withJavaSecuritySpecEllipticCurve:(JavaSecuritySpecEllipticCurve *)curve;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoECUtil)

FOUNDATION_EXPORT void NetI2pCryptoECUtil_init(NetI2pCryptoECUtil *self);

FOUNDATION_EXPORT NetI2pCryptoECUtil *new_NetI2pCryptoECUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoECUtil *create_NetI2pCryptoECUtil_init(void);

FOUNDATION_EXPORT JavaSecuritySpecECPoint *NetI2pCryptoECUtil_scalarMultWithJavaSecuritySpecECPoint_withJavaMathBigInteger_withJavaSecuritySpecEllipticCurve_(JavaSecuritySpecECPoint *p, JavaMathBigInteger *kin, JavaSecuritySpecEllipticCurve *curve);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoECUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoECUtil")