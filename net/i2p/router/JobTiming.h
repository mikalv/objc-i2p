//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/JobTiming.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterJobTiming")
#ifdef RESTRICT_NetI2pRouterJobTiming
#define INCLUDE_ALL_NetI2pRouterJobTiming 0
#else
#define INCLUDE_ALL_NetI2pRouterJobTiming 1
#endif
#undef RESTRICT_NetI2pRouterJobTiming

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterJobTiming_) && (INCLUDE_ALL_NetI2pRouterJobTiming || defined(INCLUDE_NetI2pRouterJobTiming))
#define NetI2pRouterJobTiming_

#define RESTRICT_NetI2pUtilClock 1
#define INCLUDE_NetI2pUtilClock_ClockUpdateListener 1
#include "net/i2p/util/Clock.h"

@class NetI2pRouterRouterContext;

@interface NetI2pRouterJobTiming : NSObject < NetI2pUtilClock_ClockUpdateListener >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (void)end;

- (jlong)getActualEnd;

- (jlong)getActualStart;

- (jlong)getStartAfter;

- (void)offsetChangedWithLong:(jlong)delta;

- (void)setActualEndWithLong:(jlong)actualEndTime;

- (void)setActualStartWithLong:(jlong)actualStartTime;

- (void)setStartAfterWithLong:(jlong)startTime;

- (void)start;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterJobTiming)

FOUNDATION_EXPORT void NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(NetI2pRouterJobTiming *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterJobTiming *new_NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterJobTiming *create_NetI2pRouterJobTiming_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterJobTiming)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterJobTiming")
