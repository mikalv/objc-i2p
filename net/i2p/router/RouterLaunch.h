//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/RouterLaunch.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterRouterLaunch")
#ifdef RESTRICT_NetI2pRouterRouterLaunch
#define INCLUDE_ALL_NetI2pRouterRouterLaunch 0
#else
#define INCLUDE_ALL_NetI2pRouterRouterLaunch 1
#endif
#undef RESTRICT_NetI2pRouterRouterLaunch

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterRouterLaunch_) && (INCLUDE_ALL_NetI2pRouterRouterLaunch || defined(INCLUDE_NetI2pRouterRouterLaunch))
#define NetI2pRouterRouterLaunch_

@class IOSObjectArray;

@interface NetI2pRouterRouterLaunch : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterRouterLaunch)

FOUNDATION_EXPORT void NetI2pRouterRouterLaunch_init(NetI2pRouterRouterLaunch *self);

FOUNDATION_EXPORT NetI2pRouterRouterLaunch *new_NetI2pRouterRouterLaunch_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouterLaunch *create_NetI2pRouterRouterLaunch_init(void);

FOUNDATION_EXPORT void NetI2pRouterRouterLaunch_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterRouterLaunch)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterRouterLaunch")
