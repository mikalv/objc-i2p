//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tasks/OOMListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTasksOOMListener")
#ifdef RESTRICT_NetI2pRouterTasksOOMListener
#define INCLUDE_ALL_NetI2pRouterTasksOOMListener 0
#else
#define INCLUDE_ALL_NetI2pRouterTasksOOMListener 1
#endif
#undef RESTRICT_NetI2pRouterTasksOOMListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTasksOOMListener_) && (INCLUDE_ALL_NetI2pRouterTasksOOMListener || defined(INCLUDE_NetI2pRouterTasksOOMListener))
#define NetI2pRouterTasksOOMListener_

#define RESTRICT_NetI2pUtilI2PThread 1
#define INCLUDE_NetI2pUtilI2PThread_OOMEventListener 1
#include "net/i2p/util/I2PThread.h"

@class JavaLangOutOfMemoryError;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterTasksOOMListener : NSObject < NetI2pUtilI2PThread_OOMEventListener >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

+ (NSString *)getWrapperConfigPathWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (void)outOfMemoryWithJavaLangOutOfMemoryError:(JavaLangOutOfMemoryError *)oom;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTasksOOMListener)

FOUNDATION_EXPORT void NetI2pRouterTasksOOMListener_initWithNetI2pRouterRouterContext_(NetI2pRouterTasksOOMListener *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTasksOOMListener *new_NetI2pRouterTasksOOMListener_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTasksOOMListener *create_NetI2pRouterTasksOOMListener_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NSString *NetI2pRouterTasksOOMListener_getWrapperConfigPathWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTasksOOMListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTasksOOMListener")
