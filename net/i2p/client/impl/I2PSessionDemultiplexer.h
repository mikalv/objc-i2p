//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/I2PSessionDemultiplexer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientImplI2PSessionDemultiplexer")
#ifdef RESTRICT_NetI2pClientImplI2PSessionDemultiplexer
#define INCLUDE_ALL_NetI2pClientImplI2PSessionDemultiplexer 0
#else
#define INCLUDE_ALL_NetI2pClientImplI2PSessionDemultiplexer 1
#endif
#undef RESTRICT_NetI2pClientImplI2PSessionDemultiplexer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientImplI2PSessionDemultiplexer_) && (INCLUDE_ALL_NetI2pClientImplI2PSessionDemultiplexer || defined(INCLUDE_NetI2pClientImplI2PSessionDemultiplexer))
#define NetI2pClientImplI2PSessionDemultiplexer_

#define RESTRICT_NetI2pClientI2PSessionMuxedListener 1
#define INCLUDE_NetI2pClientI2PSessionMuxedListener 1
#include "net/i2p/client/I2PSessionMuxedListener.h"

@class JavaLangThrowable;
@class NetI2pI2PAppContext;
@protocol NetI2pClientI2PSession;
@protocol NetI2pClientI2PSessionListener;

@interface NetI2pClientImplI2PSessionDemultiplexer : NSObject < NetI2pClientI2PSessionMuxedListener >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx;

- (void)addListenerWithNetI2pClientI2PSessionListener:(id<NetI2pClientI2PSessionListener>)l
                                              withInt:(jint)proto
                                              withInt:(jint)port;

- (void)addMuxedListenerWithNetI2pClientI2PSessionMuxedListener:(id<NetI2pClientI2PSessionMuxedListener>)l
                                                        withInt:(jint)proto
                                                        withInt:(jint)port;

- (void)disconnectedWithNetI2pClientI2PSession:(id<NetI2pClientI2PSession>)session;

- (void)errorOccurredWithNetI2pClientI2PSession:(id<NetI2pClientI2PSession>)session
                                   withNSString:(NSString *)message
                          withJavaLangThrowable:(JavaLangThrowable *)error;

- (void)messageAvailableWithNetI2pClientI2PSession:(id<NetI2pClientI2PSession>)session
                                           withInt:(jint)msgId
                                          withLong:(jlong)size;

- (void)messageAvailableWithNetI2pClientI2PSession:(id<NetI2pClientI2PSession>)session
                                           withInt:(jint)msgId
                                          withLong:(jlong)size
                                           withInt:(jint)proto
                                           withInt:(jint)fromport
                                           withInt:(jint)toport;

- (void)removeListenerWithInt:(jint)proto
                      withInt:(jint)port;

- (void)reportAbuseWithNetI2pClientI2PSession:(id<NetI2pClientI2PSession>)session
                                      withInt:(jint)severity;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientImplI2PSessionDemultiplexer)

FOUNDATION_EXPORT void NetI2pClientImplI2PSessionDemultiplexer_initWithNetI2pI2PAppContext_(NetI2pClientImplI2PSessionDemultiplexer *self, NetI2pI2PAppContext *ctx);

FOUNDATION_EXPORT NetI2pClientImplI2PSessionDemultiplexer *new_NetI2pClientImplI2PSessionDemultiplexer_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientImplI2PSessionDemultiplexer *create_NetI2pClientImplI2PSessionDemultiplexer_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplI2PSessionDemultiplexer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientImplI2PSessionDemultiplexer")