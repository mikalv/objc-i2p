//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodfillMonitorJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob || defined(INCLUDE_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob))
#define NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterNetworkdbKademliaFloodfillMonitorJob : NetI2pRouterJobImpl
@property (readonly, copy, class) NSString *PROP_FLOODFILL_PARTICIPANT NS_SWIFT_NAME(PROP_FLOODFILL_PARTICIPANT);

+ (NSString *)PROP_FLOODFILL_PARTICIPANT;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)facade;

- (NSString *)getName;

- (void)runJob;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaFloodfillMonitorJob)

inline NSString *NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_get_PROP_FLOODFILL_PARTICIPANT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_PROP_FLOODFILL_PARTICIPANT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterNetworkdbKademliaFloodfillMonitorJob, PROP_FLOODFILL_PARTICIPANT, NSString *)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterNetworkdbKademliaFloodfillMonitorJob *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillMonitorJob *new_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaFloodfillMonitorJob *create_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaFloodfillMonitorJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaFloodfillMonitorJob")
