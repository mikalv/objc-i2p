//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/PriBlockingQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilPriBlockingQueue")
#ifdef RESTRICT_NetI2pRouterUtilPriBlockingQueue
#define INCLUDE_ALL_NetI2pRouterUtilPriBlockingQueue 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilPriBlockingQueue 1
#endif
#undef RESTRICT_NetI2pRouterUtilPriBlockingQueue

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilPriBlockingQueue_) && (INCLUDE_ALL_NetI2pRouterUtilPriBlockingQueue || defined(INCLUDE_NetI2pRouterUtilPriBlockingQueue))
#define NetI2pRouterUtilPriBlockingQueue_

#define RESTRICT_JavaUtilConcurrentPriorityBlockingQueue 1
#define INCLUDE_JavaUtilConcurrentPriorityBlockingQueue 1
#include "java/util/concurrent/PriorityBlockingQueue.h"

@class IOSLongArray;
@class JavaUtilConcurrentTimeUnit;
@class NetI2pI2PAppContext;
@class NetI2pUtilLog;
@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol NetI2pRouterUtilPQEntry;

@interface NetI2pRouterUtilPriBlockingQueue : JavaUtilConcurrentPriorityBlockingQueue {
 @public
  NetI2pI2PAppContext *_context_;
  NetI2pUtilLog *_log_;
  NSString *_name_;
}
@property (readonly, class, strong) IOSLongArray *RATES NS_SWIFT_NAME(RATES);
@property (readonly, class) jint BACKLOG_SIZE NS_SWIFT_NAME(BACKLOG_SIZE);
@property (readonly, class) jint MAX_SIZE NS_SWIFT_NAME(MAX_SIZE);

+ (IOSLongArray *)RATES;

+ (jint)BACKLOG_SIZE;

+ (jint)MAX_SIZE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                         withNSString:(NSString *)name
                                              withInt:(jint)initialCapacity;

- (jboolean)addWithId:(id<NetI2pRouterUtilPQEntry>)o;

- (id<NetI2pRouterUtilPQEntry>)element;

- (jboolean)isBacklogged;

- (jboolean)offerWithId:(id<NetI2pRouterUtilPQEntry>)o;

- (jboolean)offerWithId:(id<NetI2pRouterUtilPQEntry>)o
               withLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit;

- (id<NetI2pRouterUtilPQEntry>)peek;

- (id<NetI2pRouterUtilPQEntry>)poll;

- (id<NetI2pRouterUtilPQEntry>)pollWithLong:(jlong)arg0
             withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)arg1;

- (void)putWithId:(id<NetI2pRouterUtilPQEntry>)o;

- (id<NetI2pRouterUtilPQEntry>)remove;

- (id<NetI2pRouterUtilPQEntry>)take;

#pragma mark Protected

- (void)timestampWithNetI2pRouterUtilPQEntry:(id<NetI2pRouterUtilPQEntry>)o;

#pragma mark Package-Private

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
               withJavaUtilComparator:(id<JavaUtilComparator>)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaUtilCollection:(id<JavaUtilCollection>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterUtilPriBlockingQueue)

J2OBJC_FIELD_SETTER(NetI2pRouterUtilPriBlockingQueue, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilPriBlockingQueue, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilPriBlockingQueue, _name_, NSString *)

inline IOSLongArray *NetI2pRouterUtilPriBlockingQueue_get_RATES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *NetI2pRouterUtilPriBlockingQueue_RATES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilPriBlockingQueue, RATES, IOSLongArray *)

inline jint NetI2pRouterUtilPriBlockingQueue_get_BACKLOG_SIZE(void);
#define NetI2pRouterUtilPriBlockingQueue_BACKLOG_SIZE 256
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterUtilPriBlockingQueue, BACKLOG_SIZE, jint)

inline jint NetI2pRouterUtilPriBlockingQueue_get_MAX_SIZE(void);
#define NetI2pRouterUtilPriBlockingQueue_MAX_SIZE 512
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterUtilPriBlockingQueue, MAX_SIZE, jint)

FOUNDATION_EXPORT void NetI2pRouterUtilPriBlockingQueue_initWithNetI2pI2PAppContext_withNSString_withInt_(NetI2pRouterUtilPriBlockingQueue *self, NetI2pI2PAppContext *ctx, NSString *name, jint initialCapacity);

FOUNDATION_EXPORT NetI2pRouterUtilPriBlockingQueue *new_NetI2pRouterUtilPriBlockingQueue_initWithNetI2pI2PAppContext_withNSString_withInt_(NetI2pI2PAppContext *ctx, NSString *name, jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilPriBlockingQueue *create_NetI2pRouterUtilPriBlockingQueue_initWithNetI2pI2PAppContext_withNSString_withInt_(NetI2pI2PAppContext *ctx, NSString *name, jint initialCapacity);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilPriBlockingQueue)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilPriBlockingQueue")