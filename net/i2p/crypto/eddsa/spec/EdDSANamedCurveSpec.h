//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec")
#ifdef RESTRICT_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec
#define INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaSpecEdDSANamedCurveSpec_) && (INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec || defined(INCLUDE_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec))
#define NetI2pCryptoEddsaSpecEdDSANamedCurveSpec_

#define RESTRICT_NetI2pCryptoEddsaSpecEdDSAParameterSpec 1
#define INCLUDE_NetI2pCryptoEddsaSpecEdDSAParameterSpec 1
#include "net/i2p/crypto/eddsa/spec/EdDSAParameterSpec.h"

@class NetI2pCryptoEddsaMathCurve;
@class NetI2pCryptoEddsaMathGroupElement;
@protocol NetI2pCryptoEddsaMathScalarOps;

@interface NetI2pCryptoEddsaSpecEdDSANamedCurveSpec : NetI2pCryptoEddsaSpecEdDSAParameterSpec

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)name
            withNetI2pCryptoEddsaMathCurve:(NetI2pCryptoEddsaMathCurve *)curve
                              withNSString:(NSString *)hashAlgo
        withNetI2pCryptoEddsaMathScalarOps:(id<NetI2pCryptoEddsaMathScalarOps>)sc
     withNetI2pCryptoEddsaMathGroupElement:(NetI2pCryptoEddsaMathGroupElement *)B;

- (NSString *)getName;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pCryptoEddsaMathCurve:(NetI2pCryptoEddsaMathCurve *)arg0
                                                withNSString:(NSString *)arg1
                          withNetI2pCryptoEddsaMathScalarOps:(id<NetI2pCryptoEddsaMathScalarOps>)arg2
                       withNetI2pCryptoEddsaMathGroupElement:(NetI2pCryptoEddsaMathGroupElement *)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec)

FOUNDATION_EXPORT void NetI2pCryptoEddsaSpecEdDSANamedCurveSpec_initWithNSString_withNetI2pCryptoEddsaMathCurve_withNSString_withNetI2pCryptoEddsaMathScalarOps_withNetI2pCryptoEddsaMathGroupElement_(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *self, NSString *name, NetI2pCryptoEddsaMathCurve *curve, NSString *hashAlgo, id<NetI2pCryptoEddsaMathScalarOps> sc, NetI2pCryptoEddsaMathGroupElement *B);

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *new_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec_initWithNSString_withNetI2pCryptoEddsaMathCurve_withNSString_withNetI2pCryptoEddsaMathScalarOps_withNetI2pCryptoEddsaMathGroupElement_(NSString *name, NetI2pCryptoEddsaMathCurve *curve, NSString *hashAlgo, id<NetI2pCryptoEddsaMathScalarOps> sc, NetI2pCryptoEddsaMathGroupElement *B) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaSpecEdDSANamedCurveSpec *create_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec_initWithNSString_withNetI2pCryptoEddsaMathCurve_withNSString_withNetI2pCryptoEddsaMathScalarOps_withNetI2pCryptoEddsaMathGroupElement_(NSString *name, NetI2pCryptoEddsaMathCurve *curve, NSString *hashAlgo, id<NetI2pCryptoEddsaMathScalarOps> sc, NetI2pCryptoEddsaMathGroupElement *B);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaSpecEdDSANamedCurveSpec)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaSpecEdDSANamedCurveSpec")
