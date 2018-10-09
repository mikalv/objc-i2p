//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/internal/I2CPMessageQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pInternalI2CPMessageQueue")
#ifdef RESTRICT_NetI2pInternalI2CPMessageQueue
#define INCLUDE_ALL_NetI2pInternalI2CPMessageQueue 0
#else
#define INCLUDE_ALL_NetI2pInternalI2CPMessageQueue 1
#endif
#undef RESTRICT_NetI2pInternalI2CPMessageQueue

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pInternalI2CPMessageQueue_) && (INCLUDE_ALL_NetI2pInternalI2CPMessageQueue || defined(INCLUDE_NetI2pInternalI2CPMessageQueue))
#define NetI2pInternalI2CPMessageQueue_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@protocol NetI2pDataI2cpI2CPMessage;

@interface NetI2pInternalI2CPMessageQueue : NSObject < JavaIoCloseable >

#pragma mark Public

- (instancetype __nonnull)init;

- (void)close;

- (jboolean)offerWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg;

- (jboolean)offerWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg
                                      withLong:(jlong)timeout;

- (id<NetI2pDataI2cpI2CPMessage>)poll;

- (void)putWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg;

- (id<NetI2pDataI2cpI2CPMessage>)take;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pInternalI2CPMessageQueue)

FOUNDATION_EXPORT void NetI2pInternalI2CPMessageQueue_init(NetI2pInternalI2CPMessageQueue *self);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pInternalI2CPMessageQueue)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pInternalI2CPMessageQueue")