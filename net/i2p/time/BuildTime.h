//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/time/BuildTime.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pTimeBuildTime")
#ifdef RESTRICT_NetI2pTimeBuildTime
#define INCLUDE_ALL_NetI2pTimeBuildTime 0
#else
#define INCLUDE_ALL_NetI2pTimeBuildTime 1
#endif
#undef RESTRICT_NetI2pTimeBuildTime

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pTimeBuildTime_) && (INCLUDE_ALL_NetI2pTimeBuildTime || defined(INCLUDE_NetI2pTimeBuildTime))
#define NetI2pTimeBuildTime_

@class IOSObjectArray;

@interface NetI2pTimeBuildTime : NSObject

#pragma mark Public

+ (jlong)getBuildTime;

+ (jlong)getEarliestTime;

+ (jlong)getLatestTime;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_STATIC_INIT(NetI2pTimeBuildTime)

FOUNDATION_EXPORT jlong NetI2pTimeBuildTime_getBuildTime(void);

FOUNDATION_EXPORT jlong NetI2pTimeBuildTime_getEarliestTime(void);

FOUNDATION_EXPORT jlong NetI2pTimeBuildTime_getLatestTime(void);

FOUNDATION_EXPORT void NetI2pTimeBuildTime_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pTimeBuildTime)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pTimeBuildTime")