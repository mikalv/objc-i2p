//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/DummyNamingService.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientNamingDummyNamingService")
#ifdef RESTRICT_NetI2pClientNamingDummyNamingService
#define INCLUDE_ALL_NetI2pClientNamingDummyNamingService 0
#else
#define INCLUDE_ALL_NetI2pClientNamingDummyNamingService 1
#endif
#undef RESTRICT_NetI2pClientNamingDummyNamingService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientNamingDummyNamingService_) && (INCLUDE_ALL_NetI2pClientNamingDummyNamingService || defined(INCLUDE_NetI2pClientNamingDummyNamingService))
#define NetI2pClientNamingDummyNamingService_

#define RESTRICT_NetI2pClientNamingNamingService 1
#define INCLUDE_NetI2pClientNamingNamingService 1
#include "net/i2p/client/naming/NamingService.h"

@class JavaUtilProperties;
@class NetI2pDataDestination;
@class NetI2pI2PAppContext;

@interface NetI2pClientNamingDummyNamingService : NetI2pClientNamingNamingService
@property (readonly, class) jint BASE32_HASH_LENGTH NS_SWIFT_NAME(BASE32_HASH_LENGTH);
@property (readonly, copy, class) NSString *PROP_B32 NS_SWIFT_NAME(PROP_B32);
@property (readonly, class) jint CACHE_MAX_SIZE NS_SWIFT_NAME(CACHE_MAX_SIZE);
@property (readonly, class) jint DEST_SIZE NS_SWIFT_NAME(DEST_SIZE);

+ (jint)BASE32_HASH_LENGTH;

+ (NSString *)PROP_B32;

+ (jint)CACHE_MAX_SIZE;

+ (jint)DEST_SIZE;

#pragma mark Public

- (NetI2pDataDestination *)lookupWithNSString:(NSString *)hostname
                       withJavaUtilProperties:(JavaUtilProperties *)lookupOptions
                       withJavaUtilProperties:(JavaUtilProperties *)storedOptions;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

+ (void)clearCache;

+ (NetI2pDataDestination *)getCacheWithNSString:(NSString *)s;

+ (void)putCacheWithNSString:(NSString *)s
   withNetI2pDataDestination:(NetI2pDataDestination *)d;

+ (void)removeCacheWithNSString:(NSString *)s;

@end

J2OBJC_STATIC_INIT(NetI2pClientNamingDummyNamingService)

inline jint NetI2pClientNamingDummyNamingService_get_BASE32_HASH_LENGTH(void);
#define NetI2pClientNamingDummyNamingService_BASE32_HASH_LENGTH 52
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientNamingDummyNamingService, BASE32_HASH_LENGTH, jint)

inline NSString *NetI2pClientNamingDummyNamingService_get_PROP_B32(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingDummyNamingService_PROP_B32;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingDummyNamingService, PROP_B32, NSString *)

inline jint NetI2pClientNamingDummyNamingService_get_CACHE_MAX_SIZE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint NetI2pClientNamingDummyNamingService_CACHE_MAX_SIZE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pClientNamingDummyNamingService, CACHE_MAX_SIZE, jint)

inline jint NetI2pClientNamingDummyNamingService_get_DEST_SIZE(void);
#define NetI2pClientNamingDummyNamingService_DEST_SIZE 516
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientNamingDummyNamingService, DEST_SIZE, jint)

FOUNDATION_EXPORT void NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(NetI2pClientNamingDummyNamingService *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pClientNamingDummyNamingService *new_NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingDummyNamingService *create_NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pClientNamingDummyNamingService_putCacheWithNSString_withNetI2pDataDestination_(NSString *s, NetI2pDataDestination *d);

FOUNDATION_EXPORT NetI2pDataDestination *NetI2pClientNamingDummyNamingService_getCacheWithNSString_(NSString *s);

FOUNDATION_EXPORT void NetI2pClientNamingDummyNamingService_removeCacheWithNSString_(NSString *s);

FOUNDATION_EXPORT void NetI2pClientNamingDummyNamingService_clearCache(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientNamingDummyNamingService)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientNamingDummyNamingService")