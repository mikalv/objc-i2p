//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/RequestLeaseSetMessageHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientImplRequestLeaseSetMessageHandler")
#ifdef RESTRICT_NetI2pClientImplRequestLeaseSetMessageHandler
#define INCLUDE_ALL_NetI2pClientImplRequestLeaseSetMessageHandler 0
#else
#define INCLUDE_ALL_NetI2pClientImplRequestLeaseSetMessageHandler 1
#endif
#undef RESTRICT_NetI2pClientImplRequestLeaseSetMessageHandler

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientImplRequestLeaseSetMessageHandler_) && (INCLUDE_ALL_NetI2pClientImplRequestLeaseSetMessageHandler || defined(INCLUDE_NetI2pClientImplRequestLeaseSetMessageHandler))
#define NetI2pClientImplRequestLeaseSetMessageHandler_

#define RESTRICT_NetI2pClientImplHandlerImpl 1
#define INCLUDE_NetI2pClientImplHandlerImpl 1
#include "net/i2p/client/impl/HandlerImpl.h"

@class NetI2pClientImplI2PSessionImpl;
@class NetI2pDataLeaseSet;
@class NetI2pI2PAppContext;
@protocol NetI2pDataI2cpI2CPMessage;

@interface NetI2pClientImplRequestLeaseSetMessageHandler : NetI2pClientImplHandlerImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (void)handleMessageWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message
                withNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)messageType;

- (void)signLeaseSetWithNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)leaseSet
        withNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientImplRequestLeaseSetMessageHandler)

FOUNDATION_EXPORT void NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_(NetI2pClientImplRequestLeaseSetMessageHandler *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pClientImplRequestLeaseSetMessageHandler *new_NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientImplRequestLeaseSetMessageHandler *create_NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_withInt_(NetI2pClientImplRequestLeaseSetMessageHandler *self, NetI2pI2PAppContext *context, jint messageType);

FOUNDATION_EXPORT NetI2pClientImplRequestLeaseSetMessageHandler *new_NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint messageType) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientImplRequestLeaseSetMessageHandler *create_NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint messageType);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplRequestLeaseSetMessageHandler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientImplRequestLeaseSetMessageHandler")
