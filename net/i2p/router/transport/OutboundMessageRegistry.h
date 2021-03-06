//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/OutboundMessageRegistry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportOutboundMessageRegistry")
#ifdef RESTRICT_NetI2pRouterTransportOutboundMessageRegistry
#define INCLUDE_ALL_NetI2pRouterTransportOutboundMessageRegistry 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportOutboundMessageRegistry 1
#endif
#undef RESTRICT_NetI2pRouterTransportOutboundMessageRegistry

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportOutboundMessageRegistry_) && (INCLUDE_ALL_NetI2pRouterTransportOutboundMessageRegistry || defined(INCLUDE_NetI2pRouterTransportOutboundMessageRegistry))
#define NetI2pRouterTransportOutboundMessageRegistry_

@class JavaIoWriter;
@class NetI2pRouterOutNetMessage;
@class NetI2pRouterRouterContext;
@protocol JavaUtilList;
@protocol NetI2pDataI2npI2NPMessage;
@protocol NetI2pRouterJob;
@protocol NetI2pRouterMessageSelector;
@protocol NetI2pRouterReplyJob;

@interface NetI2pRouterTransportOutboundMessageRegistry : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (id<JavaUtilList>)getOriginalMessagesWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message;

- (NetI2pRouterOutNetMessage *)registerPendingWithNetI2pRouterMessageSelector:(id<NetI2pRouterMessageSelector>)replySelector
                                                     withNetI2pRouterReplyJob:(id<NetI2pRouterReplyJob>)onReply
                                                          withNetI2pRouterJob:(id<NetI2pRouterJob>)onTimeout;

- (void)registerPendingWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)restart;

- (void)shutdown;

- (void)unregisterPendingWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportOutboundMessageRegistry)

FOUNDATION_EXPORT void NetI2pRouterTransportOutboundMessageRegistry_initWithNetI2pRouterRouterContext_(NetI2pRouterTransportOutboundMessageRegistry *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterTransportOutboundMessageRegistry *new_NetI2pRouterTransportOutboundMessageRegistry_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportOutboundMessageRegistry *create_NetI2pRouterTransportOutboundMessageRegistry_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportOutboundMessageRegistry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportOutboundMessageRegistry")
