//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/CoDelPriorityBlockingQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilCoDelPriorityBlockingQueue")
#ifdef RESTRICT_NetI2pRouterUtilCoDelPriorityBlockingQueue
#define INCLUDE_ALL_NetI2pRouterUtilCoDelPriorityBlockingQueue 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilCoDelPriorityBlockingQueue 1
#endif
#undef RESTRICT_NetI2pRouterUtilCoDelPriorityBlockingQueue

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilCoDelPriorityBlockingQueue_) && (INCLUDE_ALL_NetI2pRouterUtilCoDelPriorityBlockingQueue || defined(INCLUDE_NetI2pRouterUtilCoDelPriorityBlockingQueue))
#define NetI2pRouterUtilCoDelPriorityBlockingQueue_

#define RESTRICT_NetI2pRouterUtilPriBlockingQueue 1
#define INCLUDE_NetI2pRouterUtilPriBlockingQueue 1
#include "net/i2p/router/util/PriBlockingQueue.h"

@class JavaUtilConcurrentAtomicAtomicLong;
@class JavaUtilConcurrentTimeUnit;
@class NetI2pI2PAppContext;
@protocol JavaUtilCollection;
@protocol NetI2pRouterUtilCDPQEntry;

@interface NetI2pRouterUtilCoDelPriorityBlockingQueue : NetI2pRouterUtilPriBlockingQueue
@property (readonly, class, strong) JavaUtilConcurrentAtomicAtomicLong *__id NS_SWIFT_NAME(__id);
@property (readonly, class) jint MIN_PRIORITY NS_SWIFT_NAME(MIN_PRIORITY);
@property (readonly, class) jint DONT_DROP_PRIORITY NS_SWIFT_NAME(DONT_DROP_PRIORITY);

+ (JavaUtilConcurrentAtomicAtomicLong *)__id;

+ (jint)MIN_PRIORITY;

+ (jint)DONT_DROP_PRIORITY;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                         withNSString:(NSString *)name
                                              withInt:(jint)initialCapacity;

- (void)clear;

- (jint)drainAllToWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (jint)drainToWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (jint)drainToWithJavaUtilCollection:(id<JavaUtilCollection>)c
                              withInt:(jint)maxElements;

- (id<NetI2pRouterUtilCDPQEntry>)element;

- (jboolean)isBacklogged;

- (id<NetI2pRouterUtilCDPQEntry>)peek;

- (id<NetI2pRouterUtilCDPQEntry>)poll;

- (id<NetI2pRouterUtilCDPQEntry>)pollWithLong:(jlong)arg0
               withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)arg1;

- (id<NetI2pRouterUtilCDPQEntry>)remove;

- (id<NetI2pRouterUtilCDPQEntry>)take;

#pragma mark Protected

- (void)timestampWithNetI2pRouterUtilPQEntry:(id<NetI2pRouterUtilCDPQEntry>)o;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(NetI2pRouterUtilCoDelPriorityBlockingQueue)

inline JavaUtilConcurrentAtomicAtomicLong *NetI2pRouterUtilCoDelPriorityBlockingQueue_get___id(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicLong *NetI2pRouterUtilCoDelPriorityBlockingQueue___id;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilCoDelPriorityBlockingQueue, __id, JavaUtilConcurrentAtomicAtomicLong *)

inline jint NetI2pRouterUtilCoDelPriorityBlockingQueue_get_MIN_PRIORITY(void);
#define NetI2pRouterUtilCoDelPriorityBlockingQueue_MIN_PRIORITY 100
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterUtilCoDelPriorityBlockingQueue, MIN_PRIORITY, jint)

inline jint NetI2pRouterUtilCoDelPriorityBlockingQueue_get_DONT_DROP_PRIORITY(void);
#define NetI2pRouterUtilCoDelPriorityBlockingQueue_DONT_DROP_PRIORITY 1000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterUtilCoDelPriorityBlockingQueue, DONT_DROP_PRIORITY, jint)

FOUNDATION_EXPORT void NetI2pRouterUtilCoDelPriorityBlockingQueue_initWithNetI2pI2PAppContext_withNSString_withInt_(NetI2pRouterUtilCoDelPriorityBlockingQueue *self, NetI2pI2PAppContext *ctx, NSString *name, jint initialCapacity);

FOUNDATION_EXPORT NetI2pRouterUtilCoDelPriorityBlockingQueue *new_NetI2pRouterUtilCoDelPriorityBlockingQueue_initWithNetI2pI2PAppContext_withNSString_withInt_(NetI2pI2PAppContext *ctx, NSString *name, jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilCoDelPriorityBlockingQueue *create_NetI2pRouterUtilCoDelPriorityBlockingQueue_initWithNetI2pI2PAppContext_withNSString_withInt_(NetI2pI2PAppContext *ctx, NSString *name, jint initialCapacity);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilCoDelPriorityBlockingQueue)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilCoDelPriorityBlockingQueue")