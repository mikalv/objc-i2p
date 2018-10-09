//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/stat/Rate.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pStatRate")
#ifdef RESTRICT_NetI2pStatRate
#define INCLUDE_ALL_NetI2pStatRate 0
#else
#define INCLUDE_ALL_NetI2pStatRate 1
#endif
#undef RESTRICT_NetI2pStatRate

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pStatRate_) && (INCLUDE_ALL_NetI2pStatRate || defined(INCLUDE_NetI2pStatRate))
#define NetI2pStatRate_

@class JavaLangStringBuilder;
@class JavaUtilProperties;
@class NetI2pStatRateAverages;
@class NetI2pStatRateStat;
@protocol NetI2pStatRateSummaryListener;

@interface NetI2pStatRate : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithLong:(jlong)period;

- (instancetype __nonnull)initWithJavaUtilProperties:(JavaUtilProperties *)props
                                        withNSString:(NSString *)prefix
                                         withBoolean:(jboolean)treatAsCurrent;

- (void)addDataWithLong:(jlong)value;

- (void)addDataWithLong:(jlong)value
               withLong:(jlong)eventDuration;

- (void)coalesce;

- (NetI2pStatRateAverages *)computeAverages;

- (NetI2pStatRateAverages *)computeAveragesWithNetI2pStatRateAverages:(NetI2pStatRateAverages *)outArg
                                                          withBoolean:(jboolean)useLifetime;

- (jboolean)isEqual:(id)obj;

- (jdouble)getAverageValue;

- (jdouble)getAvgOrLifetimeAvg;

- (jlong)getCreationDate;

- (jlong)getCurrentEventCount;

- (jlong)getCurrentTotalEventTime;

- (jdouble)getCurrentTotalValue;

- (jdouble)getExtremeAverageValue;

- (jlong)getExtremeEventCount;

- (jdouble)getExtremeEventSaturation;

- (jdouble)getExtremeSaturationLimit;

- (jlong)getExtremeTotalEventTime;

- (jdouble)getExtremeTotalValue;

- (jlong)getLastCoalesceDate;

- (jlong)getLastEventCount;

- (jdouble)getLastEventSaturation;

- (jdouble)getLastSaturationLimit;

- (jlong)getLastTotalEventTime;

- (jdouble)getLastTotalValue;

- (jdouble)getLifetimeAverageValue;

- (jlong)getLifetimeEventCount;

- (jdouble)getLifetimeEventSaturation;

- (jlong)getLifetimePeriods;

- (jlong)getLifetimeTotalEventTime;

- (jdouble)getLifetimeTotalValue;

- (jdouble)getPercentageOfExtremeValue;

- (jdouble)getPercentageOfLifetimeValue;

- (jlong)getPeriod;

- (NetI2pStatRateStat *)getRateStat;

- (id<NetI2pStatRateSummaryListener>)getSummaryListener;

- (NSUInteger)hash;

- (void)load__WithJavaUtilProperties:(JavaUtilProperties *)props
                        withNSString:(NSString *)prefix
                         withBoolean:(jboolean)treatAsCurrent;

- (void)setRateStatWithNetI2pStatRateStat:(NetI2pStatRateStat *)rs;

- (void)setSummaryListenerWithNetI2pStatRateSummaryListener:(id<NetI2pStatRateSummaryListener>)listener;

- (void)storeWithNSString:(NSString *)prefix
withJavaLangStringBuilder:(JavaLangStringBuilder *)buf;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pStatRate)

FOUNDATION_EXPORT void NetI2pStatRate_initWithLong_(NetI2pStatRate *self, jlong period);

FOUNDATION_EXPORT NetI2pStatRate *new_NetI2pStatRate_initWithLong_(jlong period) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pStatRate *create_NetI2pStatRate_initWithLong_(jlong period);

FOUNDATION_EXPORT void NetI2pStatRate_initWithJavaUtilProperties_withNSString_withBoolean_(NetI2pStatRate *self, JavaUtilProperties *props, NSString *prefix, jboolean treatAsCurrent);

FOUNDATION_EXPORT NetI2pStatRate *new_NetI2pStatRate_initWithJavaUtilProperties_withNSString_withBoolean_(JavaUtilProperties *props, NSString *prefix, jboolean treatAsCurrent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pStatRate *create_NetI2pStatRate_initWithJavaUtilProperties_withNSString_withBoolean_(JavaUtilProperties *props, NSString *prefix, jboolean treatAsCurrent);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pStatRate)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pStatRate")
