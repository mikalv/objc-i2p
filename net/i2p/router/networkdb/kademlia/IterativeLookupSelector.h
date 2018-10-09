//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/IterativeLookupSelector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeLookupSelector")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaIterativeLookupSelector
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeLookupSelector 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeLookupSelector 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaIterativeLookupSelector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaIterativeLookupSelector_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeLookupSelector || defined(INCLUDE_NetI2pRouterNetworkdbKademliaIterativeLookupSelector))
#define NetI2pRouterNetworkdbKademliaIterativeLookupSelector_

#define RESTRICT_NetI2pRouterMessageSelector 1
#define INCLUDE_NetI2pRouterMessageSelector 1
#include "net/i2p/router/MessageSelector.h"

@class NetI2pRouterNetworkdbKademliaIterativeSearchJob;
@class NetI2pRouterRouterContext;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pRouterNetworkdbKademliaIterativeLookupSelector : NSObject < NetI2pRouterMessageSelector >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
        withNetI2pRouterNetworkdbKademliaIterativeSearchJob:(NetI2pRouterNetworkdbKademliaIterativeSearchJob *)search;

- (jboolean)continueMatching;

- (jlong)getExpiration;

- (jboolean)isMatchWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaIterativeLookupSelector)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaIterativeLookupSelector_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaIterativeSearchJob_(NetI2pRouterNetworkdbKademliaIterativeLookupSelector *self, NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaIterativeSearchJob *search);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaIterativeLookupSelector *new_NetI2pRouterNetworkdbKademliaIterativeLookupSelector_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaIterativeSearchJob_(NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaIterativeSearchJob *search) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaIterativeLookupSelector *create_NetI2pRouterNetworkdbKademliaIterativeLookupSelector_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaIterativeSearchJob_(NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaIterativeSearchJob *search);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaIterativeLookupSelector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaIterativeLookupSelector")