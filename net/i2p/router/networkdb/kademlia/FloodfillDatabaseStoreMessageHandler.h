//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodfillDatabaseStoreMessageHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler || defined(INCLUDE_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler))
#define NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler_

#define RESTRICT_NetI2pRouterHandlerJobBuilder 1
#define INCLUDE_NetI2pRouterHandlerJobBuilder 1
#include "net/i2p/router/HandlerJobBuilder.h"

@class NetI2pDataHash;
@class NetI2pDataRouterRouterIdentity;
@class NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;
@class NetI2pRouterRouterContext;
@protocol NetI2pDataI2npI2NPMessage;
@protocol NetI2pRouterJob;

@interface NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler : NSObject < NetI2pRouterHandlerJobBuilder >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)facade;

- (id<NetI2pRouterJob>)createJobWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)receivedMessage
                           withNetI2pDataRouterRouterIdentity:(NetI2pDataRouterRouterIdentity *)from
                                           withNetI2pDataHash:(NetI2pDataHash *)fromHash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler *new_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler *create_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillDatabaseStoreMessageHandler")