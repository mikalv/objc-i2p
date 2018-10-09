//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/CryptixRijndael_Algorithm.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoCryptixRijndael_Algorithm")
#ifdef RESTRICT_NetI2pCryptoCryptixRijndael_Algorithm
#define INCLUDE_ALL_NetI2pCryptoCryptixRijndael_Algorithm 0
#else
#define INCLUDE_ALL_NetI2pCryptoCryptixRijndael_Algorithm 1
#endif
#undef RESTRICT_NetI2pCryptoCryptixRijndael_Algorithm

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoCryptixRijndael_Algorithm_) && (INCLUDE_ALL_NetI2pCryptoCryptixRijndael_Algorithm || defined(INCLUDE_NetI2pCryptoCryptixRijndael_Algorithm))
#define NetI2pCryptoCryptixRijndael_Algorithm_

@class IOSByteArray;
@class NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry;

@interface NetI2pCryptoCryptixRijndael_Algorithm : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)blockDecryptWithByteArray:(IOSByteArray *)inArg
                    withByteArray:(IOSByteArray *)result
                          withInt:(jint)inOffset
                          withInt:(jint)outOffset
                           withId:(id)sessionKey;

+ (void)blockDecryptWithByteArray:(IOSByteArray *)inArg
                    withByteArray:(IOSByteArray *)result
                          withInt:(jint)inOffset
                          withInt:(jint)outOffset
                           withId:(id)sessionKey
                          withInt:(jint)blockSize;

+ (void)blockEncryptWithByteArray:(IOSByteArray *)inArg
                    withByteArray:(IOSByteArray *)result
                          withInt:(jint)inOffset
                          withInt:(jint)outOffset
                           withId:(id)sessionKey;

+ (void)blockEncryptWithByteArray:(IOSByteArray *)inArg
                    withByteArray:(IOSByteArray *)result
                          withInt:(jint)inOffset
                          withInt:(jint)outOffset
                           withId:(id)sessionKey
                          withInt:(jint)blockSize;

+ (jint)blockSize;

+ (jint)getRoundsWithInt:(jint)keySize
                 withInt:(jint)blockSize;

+ (id)makeKeyWithByteArray:(IOSByteArray *)k;

+ (id)makeKeyWithByteArray:(IOSByteArray *)k
                   withInt:(jint)blockSize;

+ (id)makeKeyWithByteArray:(IOSByteArray *)k
                   withInt:(jint)blockSize
withNetI2pCryptoCryptixAESKeyCache_KeyCacheEntry:(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *)keyData;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoCryptixRijndael_Algorithm)

FOUNDATION_EXPORT void NetI2pCryptoCryptixRijndael_Algorithm_init(NetI2pCryptoCryptixRijndael_Algorithm *self);

FOUNDATION_EXPORT NetI2pCryptoCryptixRijndael_Algorithm *new_NetI2pCryptoCryptixRijndael_Algorithm_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoCryptixRijndael_Algorithm *create_NetI2pCryptoCryptixRijndael_Algorithm_init(void);

FOUNDATION_EXPORT id NetI2pCryptoCryptixRijndael_Algorithm_makeKeyWithByteArray_(IOSByteArray *k);

FOUNDATION_EXPORT void NetI2pCryptoCryptixRijndael_Algorithm_blockEncryptWithByteArray_withByteArray_withInt_withInt_withId_(IOSByteArray *inArg, IOSByteArray *result, jint inOffset, jint outOffset, id sessionKey);

FOUNDATION_EXPORT void NetI2pCryptoCryptixRijndael_Algorithm_blockDecryptWithByteArray_withByteArray_withInt_withInt_withId_(IOSByteArray *inArg, IOSByteArray *result, jint inOffset, jint outOffset, id sessionKey);

FOUNDATION_EXPORT jint NetI2pCryptoCryptixRijndael_Algorithm_blockSize(void);

FOUNDATION_EXPORT id NetI2pCryptoCryptixRijndael_Algorithm_makeKeyWithByteArray_withInt_(IOSByteArray *k, jint blockSize);

FOUNDATION_EXPORT id NetI2pCryptoCryptixRijndael_Algorithm_makeKeyWithByteArray_withInt_withNetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_(IOSByteArray *k, jint blockSize, NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *keyData);

FOUNDATION_EXPORT void NetI2pCryptoCryptixRijndael_Algorithm_blockEncryptWithByteArray_withByteArray_withInt_withInt_withId_withInt_(IOSByteArray *inArg, IOSByteArray *result, jint inOffset, jint outOffset, id sessionKey, jint blockSize);

FOUNDATION_EXPORT void NetI2pCryptoCryptixRijndael_Algorithm_blockDecryptWithByteArray_withByteArray_withInt_withInt_withId_withInt_(IOSByteArray *inArg, IOSByteArray *result, jint inOffset, jint outOffset, id sessionKey, jint blockSize);

FOUNDATION_EXPORT jint NetI2pCryptoCryptixRijndael_Algorithm_getRoundsWithInt_withInt_(jint keySize, jint blockSize);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoCryptixRijndael_Algorithm)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoCryptixRijndael_Algorithm")
