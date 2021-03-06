//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/I2CPMessageQueueImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterClientI2CPMessageQueueImpl")
#ifdef RESTRICT_NetI2pRouterClientI2CPMessageQueueImpl
#define INCLUDE_ALL_NetI2pRouterClientI2CPMessageQueueImpl 0
#else
#define INCLUDE_ALL_NetI2pRouterClientI2CPMessageQueueImpl 1
#endif
#undef RESTRICT_NetI2pRouterClientI2CPMessageQueueImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterClientI2CPMessageQueueImpl_) && (INCLUDE_ALL_NetI2pRouterClientI2CPMessageQueueImpl || defined(INCLUDE_NetI2pRouterClientI2CPMessageQueueImpl))
#define NetI2pRouterClientI2CPMessageQueueImpl_

#define RESTRICT_NetI2pInternalI2CPMessageQueue 1
#define INCLUDE_NetI2pInternalI2CPMessageQueue 1
#include "net/i2p/internal/I2CPMessageQueue.h"

@protocol JavaUtilConcurrentBlockingQueue;
@protocol NetI2pDataI2cpI2CPMessage;

@interface NetI2pRouterClientI2CPMessageQueueImpl : NetI2pInternalI2CPMessageQueue

#pragma mark Public

- (instancetype __nonnull)initWithJavaUtilConcurrentBlockingQueue:(id<JavaUtilConcurrentBlockingQueue>)inArg
                              withJavaUtilConcurrentBlockingQueue:(id<JavaUtilConcurrentBlockingQueue>)outArg;

- (jboolean)offerWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg;

- (jboolean)offerWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg
                                      withLong:(jlong)timeout;

- (id<NetI2pDataI2cpI2CPMessage>)poll;

- (void)putWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg;

- (id<NetI2pDataI2cpI2CPMessage>)take;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterClientI2CPMessageQueueImpl)

FOUNDATION_EXPORT void NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(NetI2pRouterClientI2CPMessageQueueImpl *self, id<JavaUtilConcurrentBlockingQueue> inArg, id<JavaUtilConcurrentBlockingQueue> outArg);

FOUNDATION_EXPORT NetI2pRouterClientI2CPMessageQueueImpl *new_NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(id<JavaUtilConcurrentBlockingQueue> inArg, id<JavaUtilConcurrentBlockingQueue> outArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterClientI2CPMessageQueueImpl *create_NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(id<JavaUtilConcurrentBlockingQueue> inArg, id<JavaUtilConcurrentBlockingQueue> outArg);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterClientI2CPMessageQueueImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterClientI2CPMessageQueueImpl")
