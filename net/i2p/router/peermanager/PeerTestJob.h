//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/PeerTestJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterPeermanagerPeerTestJob")
#ifdef RESTRICT_NetI2pRouterPeermanagerPeerTestJob
#define INCLUDE_ALL_NetI2pRouterPeermanagerPeerTestJob 0
#else
#define INCLUDE_ALL_NetI2pRouterPeermanagerPeerTestJob 1
#endif
#undef RESTRICT_NetI2pRouterPeermanagerPeerTestJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterPeermanagerPeerTestJob_) && (INCLUDE_ALL_NetI2pRouterPeermanagerPeerTestJob || defined(INCLUDE_NetI2pRouterPeermanagerPeerTestJob))
#define NetI2pRouterPeermanagerPeerTestJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterPeermanagerPeerManager;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterPeermanagerPeerTestJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (NSString *)getName;

- (void)runJob;

- (void)startTestingWithNetI2pRouterPeermanagerPeerManager:(NetI2pRouterPeermanagerPeerManager *)manager;

- (void)stopTesting;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterPeermanagerPeerTestJob)

FOUNDATION_EXPORT void NetI2pRouterPeermanagerPeerTestJob_initWithNetI2pRouterRouterContext_(NetI2pRouterPeermanagerPeerTestJob *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterPeermanagerPeerTestJob *new_NetI2pRouterPeermanagerPeerTestJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterPeermanagerPeerTestJob *create_NetI2pRouterPeermanagerPeerTestJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterPeermanagerPeerTestJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterPeermanagerPeerTestJob")
