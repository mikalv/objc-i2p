//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tasks/ReadConfigJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTasksReadConfigJob")
#ifdef RESTRICT_NetI2pRouterTasksReadConfigJob
#define INCLUDE_ALL_NetI2pRouterTasksReadConfigJob 0
#else
#define INCLUDE_ALL_NetI2pRouterTasksReadConfigJob 1
#endif
#undef RESTRICT_NetI2pRouterTasksReadConfigJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTasksReadConfigJob_) && (INCLUDE_ALL_NetI2pRouterTasksReadConfigJob || defined(INCLUDE_NetI2pRouterTasksReadConfigJob))
#define NetI2pRouterTasksReadConfigJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterRouterContext;

@interface NetI2pRouterTasksReadConfigJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (NSString *)getName;

- (void)runJob;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTasksReadConfigJob)

FOUNDATION_EXPORT void NetI2pRouterTasksReadConfigJob_initWithNetI2pRouterRouterContext_(NetI2pRouterTasksReadConfigJob *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTasksReadConfigJob *new_NetI2pRouterTasksReadConfigJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTasksReadConfigJob *create_NetI2pRouterTasksReadConfigJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTasksReadConfigJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTasksReadConfigJob")
