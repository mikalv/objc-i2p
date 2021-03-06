//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/stat/BufferedStatLog.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pStatBufferedStatLog")
#ifdef RESTRICT_NetI2pStatBufferedStatLog
#define INCLUDE_ALL_NetI2pStatBufferedStatLog 0
#else
#define INCLUDE_ALL_NetI2pStatBufferedStatLog 1
#endif
#undef RESTRICT_NetI2pStatBufferedStatLog

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pStatBufferedStatLog_) && (INCLUDE_ALL_NetI2pStatBufferedStatLog || defined(INCLUDE_NetI2pStatBufferedStatLog))
#define NetI2pStatBufferedStatLog_

#define RESTRICT_NetI2pStatStatLog 1
#define INCLUDE_NetI2pStatStatLog 1
#include "net/i2p/stat/StatLog.h"

@class NetI2pI2PAppContext;

@interface NetI2pStatBufferedStatLog : NSObject < NetI2pStatStatLog >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx;

- (void)addDataWithNSString:(NSString *)scope
               withNSString:(NSString *)stat
                   withLong:(jlong)value
                   withLong:(jlong)duration;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pStatBufferedStatLog)

FOUNDATION_EXPORT void NetI2pStatBufferedStatLog_initWithNetI2pI2PAppContext_(NetI2pStatBufferedStatLog *self, NetI2pI2PAppContext *ctx);

FOUNDATION_EXPORT NetI2pStatBufferedStatLog *new_NetI2pStatBufferedStatLog_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pStatBufferedStatLog *create_NetI2pStatBufferedStatLog_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pStatBufferedStatLog)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pStatBufferedStatLog")
