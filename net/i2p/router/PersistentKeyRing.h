//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/PersistentKeyRing.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterPersistentKeyRing")
#ifdef RESTRICT_NetI2pRouterPersistentKeyRing
#define INCLUDE_ALL_NetI2pRouterPersistentKeyRing 0
#else
#define INCLUDE_ALL_NetI2pRouterPersistentKeyRing 1
#endif
#undef RESTRICT_NetI2pRouterPersistentKeyRing

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterPersistentKeyRing_) && (INCLUDE_ALL_NetI2pRouterPersistentKeyRing || defined(INCLUDE_NetI2pRouterPersistentKeyRing))
#define NetI2pRouterPersistentKeyRing_

#define RESTRICT_NetI2pUtilKeyRing 1
#define INCLUDE_NetI2pUtilKeyRing 1
#include "net/i2p/util/KeyRing.h"

@class NetI2pDataHash;
@class NetI2pDataSessionKey;
@class NetI2pRouterRouterContext;
@protocol JavaUtilFunctionBiFunction;
@protocol JavaUtilFunctionFunction;

@interface NetI2pRouterPersistentKeyRing : NetI2pUtilKeyRing

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (NetI2pDataSessionKey *)computeIfAbsentWithId:(NetI2pDataHash *)arg0
                   withJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg1;

- (NetI2pDataSessionKey *)computeIfPresentWithId:(NetI2pDataHash *)arg0
                  withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NetI2pDataSessionKey *)computeWithId:(NetI2pDataHash *)arg0
         withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NetI2pDataSessionKey *)getOrDefaultWithId:(id)arg0
                                      withId:(NetI2pDataSessionKey *)arg1;

- (NetI2pDataSessionKey *)getWithId:(id)arg0;

- (NetI2pDataSessionKey *)mergeWithId:(NetI2pDataHash *)arg0
                               withId:(NetI2pDataSessionKey *)arg1
       withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg2;

- (NetI2pDataSessionKey *)putWithId:(NetI2pDataHash *)h
                             withId:(NetI2pDataSessionKey *)sk;

- (NetI2pDataSessionKey *)putIfAbsentWithId:(NetI2pDataHash *)arg0
                                     withId:(NetI2pDataSessionKey *)arg1;

- (NetI2pDataHash *)reduceKeysWithLong:(jlong)arg0
        withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NetI2pDataSessionKey *)reduceValuesWithLong:(jlong)arg0
                withJavaUtilFunctionBiFunction:(id<JavaUtilFunctionBiFunction>)arg1;

- (NetI2pDataSessionKey *)removeWithId:(id)o;

- (NetI2pDataSessionKey *)replaceWithId:(NetI2pDataHash *)arg0
                                 withId:(NetI2pDataSessionKey *)arg1;

#pragma mark Package-Private

- (NetI2pDataSessionKey *)putValWithId:(NetI2pDataHash *)arg0
                                withId:(NetI2pDataSessionKey *)arg1
                           withBoolean:(jboolean)arg2;

- (NetI2pDataSessionKey *)replaceNodeWithId:(id)arg0
                                     withId:(NetI2pDataSessionKey *)arg1
                                     withId:(id)arg2;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterPersistentKeyRing)

FOUNDATION_EXPORT void NetI2pRouterPersistentKeyRing_initWithNetI2pRouterRouterContext_(NetI2pRouterPersistentKeyRing *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterPersistentKeyRing *new_NetI2pRouterPersistentKeyRing_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterPersistentKeyRing *create_NetI2pRouterPersistentKeyRing_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterPersistentKeyRing)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterPersistentKeyRing")