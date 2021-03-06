//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tasks/ShutdownHook.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTasksShutdownHook")
#ifdef RESTRICT_NetI2pRouterTasksShutdownHook
#define INCLUDE_ALL_NetI2pRouterTasksShutdownHook 0
#else
#define INCLUDE_ALL_NetI2pRouterTasksShutdownHook 1
#endif
#undef RESTRICT_NetI2pRouterTasksShutdownHook

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTasksShutdownHook_) && (INCLUDE_ALL_NetI2pRouterTasksShutdownHook || defined(INCLUDE_NetI2pRouterTasksShutdownHook))
#define NetI2pRouterTasksShutdownHook_

#define RESTRICT_JavaLangThread 1
#define INCLUDE_JavaLangThread 1
#include "java/lang/Thread.h"

@class JavaLangThreadGroup;
@class NetI2pRouterRouterContext;
@protocol JavaLangRunnable;

@interface NetI2pRouterTasksShutdownHook : JavaLangThread

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (void)run;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)arg0
                                      withNSString:(NSString *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1
                                         withNSString:(NSString *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1
                                         withNSString:(NSString *)arg2
                                             withLong:(jlong)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                         withNSString:(NSString *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTasksShutdownHook)

FOUNDATION_EXPORT void NetI2pRouterTasksShutdownHook_initWithNetI2pRouterRouterContext_(NetI2pRouterTasksShutdownHook *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTasksShutdownHook *new_NetI2pRouterTasksShutdownHook_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTasksShutdownHook *create_NetI2pRouterTasksShutdownHook_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTasksShutdownHook)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTasksShutdownHook")
