//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/CryptixAESKeyCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoCryptixAESKeyCache")
#ifdef RESTRICT_NetI2pCryptoCryptixAESKeyCache
#define INCLUDE_ALL_NetI2pCryptoCryptixAESKeyCache 0
#else
#define INCLUDE_ALL_NetI2pCryptoCryptixAESKeyCache 1
#endif
#undef RESTRICT_NetI2pCryptoCryptixAESKeyCache

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoCryptixAESKeyCache_) && (INCLUDE_ALL_NetI2pCryptoCryptixAESKeyCache || defined(INCLUDE_NetI2pCryptoCryptixAESKeyCache))
#define NetI2pCryptoCryptixAESKeyCache_

@class NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry;

@interface NetI2pCryptoCryptixAESKeyCache : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *)acquireKey;

+ (NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *)createNew;

- (void)releaseKeyWithNetI2pCryptoCryptixAESKeyCache_KeyCacheEntry:(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *)key;

@end

J2OBJC_STATIC_INIT(NetI2pCryptoCryptixAESKeyCache)

FOUNDATION_EXPORT void NetI2pCryptoCryptixAESKeyCache_init(NetI2pCryptoCryptixAESKeyCache *self);

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache *new_NetI2pCryptoCryptixAESKeyCache_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache *create_NetI2pCryptoCryptixAESKeyCache_init(void);

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *NetI2pCryptoCryptixAESKeyCache_createNew(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoCryptixAESKeyCache)

#endif

#if !defined (NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_) && (INCLUDE_ALL_NetI2pCryptoCryptixAESKeyCache || defined(INCLUDE_NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry))
#define NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSObjectArray;

@interface NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry : NSObject < JavaIoSerializable > {
 @public
  IOSObjectArray *Ke_;
  IOSObjectArray *Kd_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithInt:(jint)rounds
                              withInt:(jint)bc;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry)

J2OBJC_FIELD_SETTER(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry, Ke_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry, Kd_, IOSObjectArray *)

FOUNDATION_EXPORT void NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_init(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *self);

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *new_NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *create_NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_init(void);

FOUNDATION_EXPORT void NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_initWithInt_withInt_(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *self, jint rounds, jint bc);

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *new_NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_initWithInt_withInt_(jint rounds, jint bc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry *create_NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry_initWithInt_withInt_(jint rounds, jint bc);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoCryptixAESKeyCache_KeyCacheEntry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoCryptixAESKeyCache")
