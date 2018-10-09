//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/JobStats.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterJobStats")
#ifdef RESTRICT_NetI2pRouterJobStats
#define INCLUDE_ALL_NetI2pRouterJobStats 0
#else
#define INCLUDE_ALL_NetI2pRouterJobStats 1
#endif
#undef RESTRICT_NetI2pRouterJobStats

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterJobStats_) && (INCLUDE_ALL_NetI2pRouterJobStats || defined(INCLUDE_NetI2pRouterJobStats))
#define NetI2pRouterJobStats_

@interface NetI2pRouterJobStats : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)name;

- (jdouble)getAvgPendingTime;

- (jdouble)getAvgTime;

- (jlong)getDropped;

- (jlong)getMaxPendingTime;

- (jlong)getMaxTime;

- (jlong)getMinPendingTime;

- (jlong)getMinTime;

- (NSString *)getName;

- (jlong)getRuns;

- (jlong)getTotalPendingTime;

- (jlong)getTotalTime;

- (void)jobDropped;

- (void)jobRanWithLong:(jlong)runTime
              withLong:(jlong)lag;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterJobStats)

FOUNDATION_EXPORT void NetI2pRouterJobStats_initWithNSString_(NetI2pRouterJobStats *self, NSString *name);

FOUNDATION_EXPORT NetI2pRouterJobStats *new_NetI2pRouterJobStats_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterJobStats *create_NetI2pRouterJobStats_initWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterJobStats)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterJobStats")