//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/SipHashInline.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoSipHashInline")
#ifdef RESTRICT_NetI2pCryptoSipHashInline
#define INCLUDE_ALL_NetI2pCryptoSipHashInline 0
#else
#define INCLUDE_ALL_NetI2pCryptoSipHashInline 1
#endif
#undef RESTRICT_NetI2pCryptoSipHashInline

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoSipHashInline_) && (INCLUDE_ALL_NetI2pCryptoSipHashInline || defined(INCLUDE_NetI2pCryptoSipHashInline))
#define NetI2pCryptoSipHashInline_

@class IOSByteArray;

@interface NetI2pCryptoSipHashInline : NSObject

#pragma mark Public

+ (jlong)hash24WithLong:(jlong)k0
               withLong:(jlong)k1
          withByteArray:(IOSByteArray *)data;

+ (jlong)hash24WithLong:(jlong)k0
               withLong:(jlong)k1
          withByteArray:(IOSByteArray *)data
                withInt:(jint)off
                withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoSipHashInline)

FOUNDATION_EXPORT jlong NetI2pCryptoSipHashInline_hash24WithLong_withLong_withByteArray_(jlong k0, jlong k1, IOSByteArray *data);

FOUNDATION_EXPORT jlong NetI2pCryptoSipHashInline_hash24WithLong_withLong_withByteArray_withInt_withInt_(jlong k0, jlong k1, IOSByteArray *data, jint off, jint len);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoSipHashInline)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoSipHashInline")
