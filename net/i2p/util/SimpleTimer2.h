//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/SimpleTimer2.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilSimpleTimer2")
#ifdef RESTRICT_NetI2pUtilSimpleTimer2
#define INCLUDE_ALL_NetI2pUtilSimpleTimer2 0
#else
#define INCLUDE_ALL_NetI2pUtilSimpleTimer2 1
#endif
#undef RESTRICT_NetI2pUtilSimpleTimer2

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilSimpleTimer2_) && (INCLUDE_ALL_NetI2pUtilSimpleTimer2 || defined(INCLUDE_NetI2pUtilSimpleTimer2))
#define NetI2pUtilSimpleTimer2_

@class NetI2pI2PAppContext;
@protocol NetI2pUtilSimpleTimer_TimedEvent;

@interface NetI2pUtilSimpleTimer2 : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (void)addEventWithNetI2pUtilSimpleTimer_TimedEvent:(id<NetI2pUtilSimpleTimer_TimedEvent>)event
                                            withLong:(jlong)timeoutMs;

- (void)addPeriodicEventWithNetI2pUtilSimpleTimer_TimedEvent:(id<NetI2pUtilSimpleTimer_TimedEvent>)event
                                                    withLong:(jlong)timeoutMs;

- (void)addPeriodicEventWithNetI2pUtilSimpleTimer_TimedEvent:(id<NetI2pUtilSimpleTimer_TimedEvent>)event
                                                    withLong:(jlong)delay
                                                    withLong:(jlong)timeoutMs;

+ (NetI2pUtilSimpleTimer2 *)getInstance;

- (void)stop;

- (NSString *)description;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                         withNSString:(NSString *)name;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                         withNSString:(NSString *)name
                                          withBoolean:(jboolean)prestartAllThreads;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilSimpleTimer2)

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *NetI2pUtilSimpleTimer2_getInstance(void);

FOUNDATION_EXPORT void NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_(NetI2pUtilSimpleTimer2 *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *new_NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *create_NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_withNSString_(NetI2pUtilSimpleTimer2 *self, NetI2pI2PAppContext *context, NSString *name);

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *new_NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_withNSString_(NetI2pI2PAppContext *context, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *create_NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_withNSString_(NetI2pI2PAppContext *context, NSString *name);

FOUNDATION_EXPORT void NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_withNSString_withBoolean_(NetI2pUtilSimpleTimer2 *self, NetI2pI2PAppContext *context, NSString *name, jboolean prestartAllThreads);

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *new_NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_withNSString_withBoolean_(NetI2pI2PAppContext *context, NSString *name, jboolean prestartAllThreads) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2 *create_NetI2pUtilSimpleTimer2_initWithNetI2pI2PAppContext_withNSString_withBoolean_(NetI2pI2PAppContext *context, NSString *name, jboolean prestartAllThreads);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilSimpleTimer2)

#endif

#if !defined (NetI2pUtilSimpleTimer2_TimedEvent_) && (INCLUDE_ALL_NetI2pUtilSimpleTimer2 || defined(INCLUDE_NetI2pUtilSimpleTimer2_TimedEvent))
#define NetI2pUtilSimpleTimer2_TimedEvent_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class NetI2pUtilSimpleTimer2;
@class NetI2pUtilSimpleTimer2_TimedEventState;

@interface NetI2pUtilSimpleTimer2_TimedEvent : NSObject < JavaLangRunnable > {
 @public
  NetI2pUtilSimpleTimer2_TimedEventState *_state_;
}
@property (readonly, class) jint DEFAULT_FUZZ NS_SWIFT_NAME(DEFAULT_FUZZ);

+ (jint)DEFAULT_FUZZ;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pUtilSimpleTimer2:(NetI2pUtilSimpleTimer2 *)pool;

- (instancetype __nonnull)initWithNetI2pUtilSimpleTimer2:(NetI2pUtilSimpleTimer2 *)pool
                                                withLong:(jlong)timeoutMs;

- (jboolean)cancel;

- (void)forceRescheduleWithLong:(jlong)timeoutMs;

- (void)rescheduleWithLong:(jlong)timeoutMs;

- (void)rescheduleWithLong:(jlong)timeoutMs
               withBoolean:(jboolean)useEarliestTime;

- (void)run;

- (void)scheduleWithLong:(jlong)timeoutMs;

- (void)setFuzzWithInt:(jint)fuzz;

- (void)timeReached;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilSimpleTimer2_TimedEvent)

J2OBJC_FIELD_SETTER(NetI2pUtilSimpleTimer2_TimedEvent, _state_, NetI2pUtilSimpleTimer2_TimedEventState *)

inline jint NetI2pUtilSimpleTimer2_TimedEvent_get_DEFAULT_FUZZ(void);
#define NetI2pUtilSimpleTimer2_TimedEvent_DEFAULT_FUZZ 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilSimpleTimer2_TimedEvent, DEFAULT_FUZZ, jint)

FOUNDATION_EXPORT void NetI2pUtilSimpleTimer2_TimedEvent_initWithNetI2pUtilSimpleTimer2_(NetI2pUtilSimpleTimer2_TimedEvent *self, NetI2pUtilSimpleTimer2 *pool);

FOUNDATION_EXPORT void NetI2pUtilSimpleTimer2_TimedEvent_initWithNetI2pUtilSimpleTimer2_withLong_(NetI2pUtilSimpleTimer2_TimedEvent *self, NetI2pUtilSimpleTimer2 *pool, jlong timeoutMs);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilSimpleTimer2_TimedEvent)

#endif

#if !defined (NetI2pUtilSimpleTimer2_TimedEventState_) && (INCLUDE_ALL_NetI2pUtilSimpleTimer2 || defined(INCLUDE_NetI2pUtilSimpleTimer2_TimedEventState))
#define NetI2pUtilSimpleTimer2_TimedEventState_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, NetI2pUtilSimpleTimer2_TimedEventState_Enum) {
  NetI2pUtilSimpleTimer2_TimedEventState_Enum_IDLE = 0,
  NetI2pUtilSimpleTimer2_TimedEventState_Enum_SCHEDULED = 1,
  NetI2pUtilSimpleTimer2_TimedEventState_Enum_RUNNING = 2,
  NetI2pUtilSimpleTimer2_TimedEventState_Enum_CANCELLED = 3,
};

@interface NetI2pUtilSimpleTimer2_TimedEventState : JavaLangEnum

@property (readonly, class, nonnull) NetI2pUtilSimpleTimer2_TimedEventState *IDLE NS_SWIFT_NAME(IDLE);
@property (readonly, class, nonnull) NetI2pUtilSimpleTimer2_TimedEventState *SCHEDULED NS_SWIFT_NAME(SCHEDULED);
@property (readonly, class, nonnull) NetI2pUtilSimpleTimer2_TimedEventState *RUNNING NS_SWIFT_NAME(RUNNING);
@property (readonly, class, nonnull) NetI2pUtilSimpleTimer2_TimedEventState *CANCELLED NS_SWIFT_NAME(CANCELLED);
+ (NetI2pUtilSimpleTimer2_TimedEventState * __nonnull)IDLE;

+ (NetI2pUtilSimpleTimer2_TimedEventState * __nonnull)SCHEDULED;

+ (NetI2pUtilSimpleTimer2_TimedEventState * __nonnull)RUNNING;

+ (NetI2pUtilSimpleTimer2_TimedEventState * __nonnull)CANCELLED;

#pragma mark Public

+ (NetI2pUtilSimpleTimer2_TimedEventState *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (NetI2pUtilSimpleTimer2_TimedEventState_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pUtilSimpleTimer2_TimedEventState)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_values_[];

inline NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_get_IDLE(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilSimpleTimer2_TimedEventState, IDLE)

inline NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_get_SCHEDULED(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilSimpleTimer2_TimedEventState, SCHEDULED)

inline NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_get_RUNNING(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilSimpleTimer2_TimedEventState, RUNNING)

inline NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_get_CANCELLED(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilSimpleTimer2_TimedEventState, CANCELLED)

FOUNDATION_EXPORT IOSObjectArray *NetI2pUtilSimpleTimer2_TimedEventState_values(void);

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pUtilSimpleTimer2_TimedEventState *NetI2pUtilSimpleTimer2_TimedEventState_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilSimpleTimer2_TimedEventState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilSimpleTimer2")