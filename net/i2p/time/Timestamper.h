//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/time/Timestamper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pTimeTimestamper")
#ifdef RESTRICT_NetI2pTimeTimestamper
#define INCLUDE_ALL_NetI2pTimeTimestamper 0
#else
#define INCLUDE_ALL_NetI2pTimeTimestamper 1
#endif
#undef RESTRICT_NetI2pTimeTimestamper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pTimeTimestamper_) && (INCLUDE_ALL_NetI2pTimeTimestamper || defined(INCLUDE_NetI2pTimeTimestamper))
#define NetI2pTimeTimestamper_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@interface NetI2pTimeTimestamper : NSObject < JavaLangRunnable >

#pragma mark Public

- (instancetype __nonnull)init;

- (void)run;

- (void)timestampNow;

- (void)waitForInitialization;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pTimeTimestamper)

FOUNDATION_EXPORT void NetI2pTimeTimestamper_init(NetI2pTimeTimestamper *self);

FOUNDATION_EXPORT NetI2pTimeTimestamper *new_NetI2pTimeTimestamper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pTimeTimestamper *create_NetI2pTimeTimestamper_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pTimeTimestamper)

#endif

#if !defined (NetI2pTimeTimestamper_UpdateListener_) && (INCLUDE_ALL_NetI2pTimeTimestamper || defined(INCLUDE_NetI2pTimeTimestamper_UpdateListener))
#define NetI2pTimeTimestamper_UpdateListener_

@protocol NetI2pTimeTimestamper_UpdateListener < JavaObject >

- (void)setNowWithLong:(jlong)now
               withInt:(jint)stratum;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pTimeTimestamper_UpdateListener)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pTimeTimestamper_UpdateListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pTimeTimestamper")
