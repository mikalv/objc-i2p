//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/SessionKey.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataSessionKey")
#ifdef RESTRICT_NetI2pDataSessionKey
#define INCLUDE_ALL_NetI2pDataSessionKey 0
#else
#define INCLUDE_ALL_NetI2pDataSessionKey 1
#endif
#undef RESTRICT_NetI2pDataSessionKey

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataSessionKey_) && (INCLUDE_ALL_NetI2pDataSessionKey || defined(INCLUDE_NetI2pDataSessionKey))
#define NetI2pDataSessionKey_

#define RESTRICT_NetI2pDataSimpleDataStructure 1
#define INCLUDE_NetI2pDataSimpleDataStructure 1
#include "net/i2p/data/SimpleDataStructure.h"

@class IOSByteArray;

@interface NetI2pDataSessionKey : NetI2pDataSimpleDataStructure
@property (readonly, class) jint KEYSIZE_BYTES NS_SWIFT_NAME(KEYSIZE_BYTES);
@property (readonly, class, strong) NetI2pDataSessionKey *INVALID_KEY NS_SWIFT_NAME(INVALID_KEY);

+ (jint)KEYSIZE_BYTES;

+ (NetI2pDataSessionKey *)INVALID_KEY;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)data;

- (id)getPreparedKey;

- (jint)length;

- (void)setDataWithByteArray:(IOSByteArray *)data;

- (void)setPreparedKeyWithId:(id)obj;

@end

J2OBJC_STATIC_INIT(NetI2pDataSessionKey)

inline jint NetI2pDataSessionKey_get_KEYSIZE_BYTES(void);
#define NetI2pDataSessionKey_KEYSIZE_BYTES 32
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataSessionKey, KEYSIZE_BYTES, jint)

inline NetI2pDataSessionKey *NetI2pDataSessionKey_get_INVALID_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pDataSessionKey *NetI2pDataSessionKey_INVALID_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataSessionKey, INVALID_KEY, NetI2pDataSessionKey *)

FOUNDATION_EXPORT void NetI2pDataSessionKey_init(NetI2pDataSessionKey *self);

FOUNDATION_EXPORT NetI2pDataSessionKey *new_NetI2pDataSessionKey_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataSessionKey *create_NetI2pDataSessionKey_init(void);

FOUNDATION_EXPORT void NetI2pDataSessionKey_initWithByteArray_(NetI2pDataSessionKey *self, IOSByteArray *data);

FOUNDATION_EXPORT NetI2pDataSessionKey *new_NetI2pDataSessionKey_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataSessionKey *create_NetI2pDataSessionKey_initWithByteArray_(IOSByteArray *data);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataSessionKey)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataSessionKey")