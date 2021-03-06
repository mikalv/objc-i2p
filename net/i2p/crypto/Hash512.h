//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/Hash512.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoHash512")
#ifdef RESTRICT_NetI2pCryptoHash512
#define INCLUDE_ALL_NetI2pCryptoHash512 0
#else
#define INCLUDE_ALL_NetI2pCryptoHash512 1
#endif
#undef RESTRICT_NetI2pCryptoHash512

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoHash512_) && (INCLUDE_ALL_NetI2pCryptoHash512 || defined(INCLUDE_NetI2pCryptoHash512))
#define NetI2pCryptoHash512_

#define RESTRICT_NetI2pDataSimpleDataStructure 1
#define INCLUDE_NetI2pDataSimpleDataStructure 1
#include "net/i2p/data/SimpleDataStructure.h"

@class IOSByteArray;

@interface NetI2pCryptoHash512 : NetI2pDataSimpleDataStructure
@property (readonly, class) jint HASH_LENGTH NS_SWIFT_NAME(HASH_LENGTH);

+ (jint)HASH_LENGTH;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)data;

- (jint)length;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoHash512)

inline jint NetI2pCryptoHash512_get_HASH_LENGTH(void);
#define NetI2pCryptoHash512_HASH_LENGTH 64
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pCryptoHash512, HASH_LENGTH, jint)

FOUNDATION_EXPORT void NetI2pCryptoHash512_init(NetI2pCryptoHash512 *self);

FOUNDATION_EXPORT NetI2pCryptoHash512 *new_NetI2pCryptoHash512_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoHash512 *create_NetI2pCryptoHash512_init(void);

FOUNDATION_EXPORT void NetI2pCryptoHash512_initWithByteArray_(NetI2pCryptoHash512 *self, IOSByteArray *data);

FOUNDATION_EXPORT NetI2pCryptoHash512 *new_NetI2pCryptoHash512_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoHash512 *create_NetI2pCryptoHash512_initWithByteArray_(IOSByteArray *data);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoHash512)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoHash512")
