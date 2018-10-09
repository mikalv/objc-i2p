//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/MessageStatusMessageHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientImplMessageStatusMessageHandler")
#ifdef RESTRICT_NetI2pClientImplMessageStatusMessageHandler
#define INCLUDE_ALL_NetI2pClientImplMessageStatusMessageHandler 0
#else
#define INCLUDE_ALL_NetI2pClientImplMessageStatusMessageHandler 1
#endif
#undef RESTRICT_NetI2pClientImplMessageStatusMessageHandler

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientImplMessageStatusMessageHandler_) && (INCLUDE_ALL_NetI2pClientImplMessageStatusMessageHandler || defined(INCLUDE_NetI2pClientImplMessageStatusMessageHandler))
#define NetI2pClientImplMessageStatusMessageHandler_

#define RESTRICT_NetI2pClientImplHandlerImpl 1
#define INCLUDE_NetI2pClientImplHandlerImpl 1
#include "net/i2p/client/impl/HandlerImpl.h"

@class NetI2pClientImplI2PSessionImpl;
@class NetI2pI2PAppContext;
@protocol NetI2pDataI2cpI2CPMessage;

@interface NetI2pClientImplMessageStatusMessageHandler : NetI2pClientImplHandlerImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (void)handleMessageWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message
                withNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                              withInt:(jint)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientImplMessageStatusMessageHandler)

FOUNDATION_EXPORT void NetI2pClientImplMessageStatusMessageHandler_initWithNetI2pI2PAppContext_(NetI2pClientImplMessageStatusMessageHandler *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pClientImplMessageStatusMessageHandler *new_NetI2pClientImplMessageStatusMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientImplMessageStatusMessageHandler *create_NetI2pClientImplMessageStatusMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplMessageStatusMessageHandler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientImplMessageStatusMessageHandler")