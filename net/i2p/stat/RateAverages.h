//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/stat/RateAverages.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pStatRateAverages")
#ifdef RESTRICT_NetI2pStatRateAverages
#define INCLUDE_ALL_NetI2pStatRateAverages 0
#else
#define INCLUDE_ALL_NetI2pStatRateAverages 1
#endif
#undef RESTRICT_NetI2pStatRateAverages

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pStatRateAverages_) && (INCLUDE_ALL_NetI2pStatRateAverages || defined(INCLUDE_NetI2pStatRateAverages))
#define NetI2pStatRateAverages_

@interface NetI2pStatRateAverages : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (jdouble)getAverage;

- (jdouble)getCurrent;

- (jdouble)getLast;

+ (NetI2pStatRateAverages *)getTemp;

- (jlong)getTotalEventCount;

- (jdouble)getTotalValues;

#pragma mark Package-Private

- (void)reset;

- (void)setAverageWithDouble:(jdouble)average;

- (void)setCurrentWithDouble:(jdouble)current;

- (void)setLastWithDouble:(jdouble)last;

- (void)setTotalEventCountWithLong:(jlong)totalEventCount;

- (void)setTotalValuesWithDouble:(jdouble)totalValues;

@end

J2OBJC_STATIC_INIT(NetI2pStatRateAverages)

FOUNDATION_EXPORT void NetI2pStatRateAverages_init(NetI2pStatRateAverages *self);

FOUNDATION_EXPORT NetI2pStatRateAverages *new_NetI2pStatRateAverages_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pStatRateAverages *create_NetI2pStatRateAverages_init(void);

FOUNDATION_EXPORT NetI2pStatRateAverages *NetI2pStatRateAverages_getTemp(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pStatRateAverages)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pStatRateAverages")
