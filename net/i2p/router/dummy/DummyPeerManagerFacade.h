//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/dummy/DummyPeerManagerFacade.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterDummyDummyPeerManagerFacade")
#ifdef RESTRICT_NetI2pRouterDummyDummyPeerManagerFacade
#define INCLUDE_ALL_NetI2pRouterDummyDummyPeerManagerFacade 0
#else
#define INCLUDE_ALL_NetI2pRouterDummyDummyPeerManagerFacade 1
#endif
#undef RESTRICT_NetI2pRouterDummyDummyPeerManagerFacade

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterDummyDummyPeerManagerFacade_) && (INCLUDE_ALL_NetI2pRouterDummyDummyPeerManagerFacade || defined(INCLUDE_NetI2pRouterDummyDummyPeerManagerFacade))
#define NetI2pRouterDummyDummyPeerManagerFacade_

#define RESTRICT_NetI2pRouterPeerManagerFacade 1
#define INCLUDE_NetI2pRouterPeerManagerFacade 1
#include "net/i2p/router/PeerManagerFacade.h"

@class JavaIoWriter;
@class NetI2pDataHash;
@class NetI2pRouterPeerSelectionCriteria;
@protocol JavaUtilList;
@protocol JavaUtilSet;

@interface NetI2pRouterDummyDummyPeerManagerFacade : NSObject < NetI2pRouterPeerManagerFacade >

#pragma mark Public

- (instancetype __nonnull)init;

- (id<JavaUtilSet>)getPeersByCapabilityWithChar:(jchar)capability;

- (void)removeCapabilitiesWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)restart;

- (id<JavaUtilList>)selectPeersWithNetI2pRouterPeerSelectionCriteria:(NetI2pRouterPeerSelectionCriteria *)criteria;

- (NetI2pDataHash *)selectRandomByCapabilityWithChar:(jchar)capability;

- (void)setCapabilitiesWithNetI2pDataHash:(NetI2pDataHash *)peer
                             withNSString:(NSString *)caps;

- (void)shutdown;

- (void)startup;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterDummyDummyPeerManagerFacade)

FOUNDATION_EXPORT void NetI2pRouterDummyDummyPeerManagerFacade_init(NetI2pRouterDummyDummyPeerManagerFacade *self);

FOUNDATION_EXPORT NetI2pRouterDummyDummyPeerManagerFacade *new_NetI2pRouterDummyDummyPeerManagerFacade_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterDummyDummyPeerManagerFacade *create_NetI2pRouterDummyDummyPeerManagerFacade_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterDummyDummyPeerManagerFacade)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterDummyDummyPeerManagerFacade")
