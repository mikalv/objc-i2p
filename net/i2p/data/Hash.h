//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/Hash.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataHash")
#ifdef RESTRICT_NetI2pDataHash
#define INCLUDE_ALL_NetI2pDataHash 0
#else
#define INCLUDE_ALL_NetI2pDataHash 1
#endif
#undef RESTRICT_NetI2pDataHash

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataHash_) && (INCLUDE_ALL_NetI2pDataHash || defined(INCLUDE_NetI2pDataHash))
#define NetI2pDataHash_

#define RESTRICT_NetI2pDataSimpleDataStructure 1
#define INCLUDE_NetI2pDataSimpleDataStructure 1
#include "net/i2p/data/SimpleDataStructure.h"

@class IOSByteArray;
@class JavaIoInputStream;

@interface NetI2pDataHash : NetI2pDataSimpleDataStructure
@property (readonly, class) jint HASH_LENGTH NS_SWIFT_NAME(HASH_LENGTH);
@property (readonly, class, strong) NetI2pDataHash *FAKE_HASH NS_SWIFT_NAME(FAKE_HASH);

+ (jint)HASH_LENGTH;

+ (NetI2pDataHash *)FAKE_HASH;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)data;

+ (void)clearCache;

+ (NetI2pDataHash *)createWithByteArray:(IOSByteArray *)data;

+ (NetI2pDataHash *)createWithByteArray:(IOSByteArray *)data
                                withInt:(jint)off;

+ (NetI2pDataHash *)createWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (NSUInteger)hash;

- (jint)length;

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)setDataWithByteArray:(IOSByteArray *)data;

- (NSString *)toBase32;

- (NSString *)toBase64;

@end

J2OBJC_STATIC_INIT(NetI2pDataHash)

inline jint NetI2pDataHash_get_HASH_LENGTH(void);
#define NetI2pDataHash_HASH_LENGTH 32
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataHash, HASH_LENGTH, jint)

inline NetI2pDataHash *NetI2pDataHash_get_FAKE_HASH(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pDataHash *NetI2pDataHash_FAKE_HASH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataHash, FAKE_HASH, NetI2pDataHash *)

FOUNDATION_EXPORT NetI2pDataHash *NetI2pDataHash_createWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT NetI2pDataHash *NetI2pDataHash_createWithByteArray_withInt_(IOSByteArray *data, jint off);

FOUNDATION_EXPORT NetI2pDataHash *NetI2pDataHash_createWithJavaIoInputStream_(JavaIoInputStream *inArg);

FOUNDATION_EXPORT void NetI2pDataHash_init(NetI2pDataHash *self);

FOUNDATION_EXPORT NetI2pDataHash *new_NetI2pDataHash_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataHash *create_NetI2pDataHash_init(void);

FOUNDATION_EXPORT void NetI2pDataHash_initWithByteArray_(NetI2pDataHash *self, IOSByteArray *data);

FOUNDATION_EXPORT NetI2pDataHash *new_NetI2pDataHash_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataHash *create_NetI2pDataHash_initWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void NetI2pDataHash_clearCache(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataHash)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataHash")
