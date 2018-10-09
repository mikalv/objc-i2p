//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/elgamal/ElGamalPublicKey.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoElgamalElGamalPublicKey")
#ifdef RESTRICT_NetI2pCryptoElgamalElGamalPublicKey
#define INCLUDE_ALL_NetI2pCryptoElgamalElGamalPublicKey 0
#else
#define INCLUDE_ALL_NetI2pCryptoElgamalElGamalPublicKey 1
#endif
#undef RESTRICT_NetI2pCryptoElgamalElGamalPublicKey

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoElgamalElGamalPublicKey_) && (INCLUDE_ALL_NetI2pCryptoElgamalElGamalPublicKey || defined(INCLUDE_NetI2pCryptoElgamalElGamalPublicKey))
#define NetI2pCryptoElgamalElGamalPublicKey_

#define RESTRICT_NetI2pCryptoElgamalElGamalKey 1
#define INCLUDE_NetI2pCryptoElgamalElGamalKey 1
#include "net/i2p/crypto/elgamal/ElGamalKey.h"

#define RESTRICT_JavaxCryptoInterfacesDHPublicKey 1
#define INCLUDE_JavaxCryptoInterfacesDHPublicKey 1
#include "javax/crypto/interfaces/DHPublicKey.h"

@class JavaMathBigInteger;

@protocol NetI2pCryptoElgamalElGamalPublicKey < NetI2pCryptoElgamalElGamalKey, JavaxCryptoInterfacesDHPublicKey, JavaObject >

- (JavaMathBigInteger *)getY;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoElgamalElGamalPublicKey)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoElgamalElGamalPublicKey)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoElgamalElGamalPublicKey")
