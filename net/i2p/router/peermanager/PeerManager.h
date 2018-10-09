//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/PeerManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterPeermanagerPeerManager")
#ifdef RESTRICT_NetI2pRouterPeermanagerPeerManager
#define INCLUDE_ALL_NetI2pRouterPeermanagerPeerManager 0
#else
#define INCLUDE_ALL_NetI2pRouterPeermanagerPeerManager 1
#endif
#undef RESTRICT_NetI2pRouterPeermanagerPeerManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterPeermanagerPeerManager_) && (INCLUDE_ALL_NetI2pRouterPeermanagerPeerManager || defined(INCLUDE_NetI2pRouterPeermanagerPeerManager))
#define NetI2pRouterPeermanagerPeerManager_

@class NetI2pDataHash;
@class NetI2pRouterPeerSelectionCriteria;
@class NetI2pRouterRouterContext;
@protocol JavaUtilList;
@protocol JavaUtilSet;

@interface NetI2pRouterPeermanagerPeerManager : NSObject
@property (readonly, copy, class) NSString *TRACKED_CAPS NS_SWIFT_NAME(TRACKED_CAPS);

+ (NSString *)TRACKED_CAPS;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (id<JavaUtilSet>)getPeersByCapabilityWithChar:(jchar)capability;

- (void)removeCapabilitiesWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (void)setCapabilitiesWithNetI2pDataHash:(NetI2pDataHash *)peer
                             withNSString:(NSString *)caps;

#pragma mark Package-Private

- (void)clearProfiles;

- (void)loadProfiles;

- (id<JavaUtilSet>)selectPeers;

- (id<JavaUtilList>)selectPeersWithNetI2pRouterPeerSelectionCriteria:(NetI2pRouterPeerSelectionCriteria *)criteria;

- (void)storeProfileWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (void)storeProfiles;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterPeermanagerPeerManager)

inline NSString *NetI2pRouterPeermanagerPeerManager_get_TRACKED_CAPS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterPeermanagerPeerManager_TRACKED_CAPS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterPeermanagerPeerManager, TRACKED_CAPS, NSString *)

FOUNDATION_EXPORT void NetI2pRouterPeermanagerPeerManager_initWithNetI2pRouterRouterContext_(NetI2pRouterPeermanagerPeerManager *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterPeermanagerPeerManager *new_NetI2pRouterPeermanagerPeerManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterPeermanagerPeerManager *create_NetI2pRouterPeermanagerPeerManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterPeermanagerPeerManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterPeermanagerPeerManager")
