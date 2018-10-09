//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/OutNetMessagePool.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterOutNetMessagePool")
#ifdef RESTRICT_NetI2pRouterOutNetMessagePool
#define INCLUDE_ALL_NetI2pRouterOutNetMessagePool 0
#else
#define INCLUDE_ALL_NetI2pRouterOutNetMessagePool 1
#endif
#undef RESTRICT_NetI2pRouterOutNetMessagePool

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterOutNetMessagePool_) && (INCLUDE_ALL_NetI2pRouterOutNetMessagePool || defined(INCLUDE_NetI2pRouterOutNetMessagePool))
#define NetI2pRouterOutNetMessagePool_

@class NetI2pRouterOutNetMessage;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterOutNetMessagePool : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (void)addWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterOutNetMessagePool)

FOUNDATION_EXPORT void NetI2pRouterOutNetMessagePool_initWithNetI2pRouterRouterContext_(NetI2pRouterOutNetMessagePool *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterOutNetMessagePool *new_NetI2pRouterOutNetMessagePool_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterOutNetMessagePool *create_NetI2pRouterOutNetMessagePool_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterOutNetMessagePool)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterOutNetMessagePool")
