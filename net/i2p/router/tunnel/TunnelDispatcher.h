//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelDispatcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelDispatcher")
#ifdef RESTRICT_NetI2pRouterTunnelTunnelDispatcher
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelDispatcher 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelTunnelDispatcher 1
#endif
#undef RESTRICT_NetI2pRouterTunnelTunnelDispatcher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelTunnelDispatcher_) && (INCLUDE_ALL_NetI2pRouterTunnelTunnelDispatcher || defined(INCLUDE_NetI2pRouterTunnelTunnelDispatcher))
#define NetI2pRouterTunnelTunnelDispatcher_

#define RESTRICT_NetI2pRouterService 1
#define INCLUDE_NetI2pRouterService 1
#include "net/i2p/router/Service.h"

@class JavaIoWriter;
@class NetI2pDataHash;
@class NetI2pDataI2npTunnelDataMessage;
@class NetI2pDataI2npTunnelGatewayMessage;
@class NetI2pDataTunnelId;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTunnelHopConfig;
@class NetI2pRouterTunnelTunnelCreatorConfig;
@class NetI2pRouterTunnelTunnelDispatcher_Location;
@protocol JavaUtilList;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pRouterTunnelTunnelDispatcher : NSObject < NetI2pRouterService >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (void)dispatchWithNetI2pDataI2npTunnelDataMessage:(NetI2pDataI2npTunnelDataMessage *)msg
                                 withNetI2pDataHash:(NetI2pDataHash *)recvFrom;

- (void)dispatchWithNetI2pDataI2npTunnelGatewayMessage:(NetI2pDataI2npTunnelGatewayMessage *)msg;

- (void)dispatchOutboundWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                               withNetI2pDataTunnelId:(NetI2pDataTunnelId *)outboundTunnel
                                   withNetI2pDataHash:(NetI2pDataHash *)targetPeer;

- (void)dispatchOutboundWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                               withNetI2pDataTunnelId:(NetI2pDataTunnelId *)outboundTunnel
                               withNetI2pDataTunnelId:(NetI2pDataTunnelId *)targetTunnel
                                   withNetI2pDataHash:(NetI2pDataHash *)targetPeer;

- (jlong)getLastParticipatingExpiration;

- (jlong)getNewIBEPID;

- (jlong)getNewIBZeroHopID;

- (jlong)getNewOBGWID;

- (jint)getParticipatingCount;

+ (jint)getShareBandwidthWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (jboolean)joinInboundWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg;

- (jboolean)joinInboundGatewayWithNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg;

- (jboolean)joinOutboundWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg;

- (jboolean)joinOutboundEndpointWithNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg;

- (jboolean)joinParticipantWithNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg;

- (id<JavaUtilList>)listParticipatingTunnels;

- (void)removeWithNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg;

- (void)removeWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)restart;

- (jboolean)shouldDropParticipatingMessageWithNetI2pRouterTunnelTunnelDispatcher_Location:(NetI2pRouterTunnelTunnelDispatcher_Location *)loc
                                                                                  withInt:(jint)type
                                                                                  withInt:(jint)length;

- (void)shutdown;

- (void)startup;

- (void)updateParticipatingStatsWithInt:(jint)ms;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTunnelTunnelDispatcher)

FOUNDATION_EXPORT void NetI2pRouterTunnelTunnelDispatcher_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelTunnelDispatcher *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelDispatcher *new_NetI2pRouterTunnelTunnelDispatcher_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelDispatcher *create_NetI2pRouterTunnelTunnelDispatcher_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT jint NetI2pRouterTunnelTunnelDispatcher_getShareBandwidthWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelDispatcher)

#endif

#if !defined (NetI2pRouterTunnelTunnelDispatcher_Location_) && (INCLUDE_ALL_NetI2pRouterTunnelTunnelDispatcher || defined(INCLUDE_NetI2pRouterTunnelTunnelDispatcher_Location))
#define NetI2pRouterTunnelTunnelDispatcher_Location_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, NetI2pRouterTunnelTunnelDispatcher_Location_Enum) {
  NetI2pRouterTunnelTunnelDispatcher_Location_Enum_OBEP = 0,
  NetI2pRouterTunnelTunnelDispatcher_Location_Enum_PARTICIPANT = 1,
  NetI2pRouterTunnelTunnelDispatcher_Location_Enum_IBGW = 2,
};

@interface NetI2pRouterTunnelTunnelDispatcher_Location : JavaLangEnum

@property (readonly, class, nonnull) NetI2pRouterTunnelTunnelDispatcher_Location *OBEP NS_SWIFT_NAME(OBEP);
@property (readonly, class, nonnull) NetI2pRouterTunnelTunnelDispatcher_Location *PARTICIPANT NS_SWIFT_NAME(PARTICIPANT);
@property (readonly, class, nonnull) NetI2pRouterTunnelTunnelDispatcher_Location *IBGW NS_SWIFT_NAME(IBGW);
+ (NetI2pRouterTunnelTunnelDispatcher_Location * __nonnull)OBEP;

+ (NetI2pRouterTunnelTunnelDispatcher_Location * __nonnull)PARTICIPANT;

+ (NetI2pRouterTunnelTunnelDispatcher_Location * __nonnull)IBGW;

#pragma mark Public

+ (NetI2pRouterTunnelTunnelDispatcher_Location *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (NetI2pRouterTunnelTunnelDispatcher_Location_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTunnelTunnelDispatcher_Location)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pRouterTunnelTunnelDispatcher_Location *NetI2pRouterTunnelTunnelDispatcher_Location_values_[];

inline NetI2pRouterTunnelTunnelDispatcher_Location *NetI2pRouterTunnelTunnelDispatcher_Location_get_OBEP(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTunnelTunnelDispatcher_Location, OBEP)

inline NetI2pRouterTunnelTunnelDispatcher_Location *NetI2pRouterTunnelTunnelDispatcher_Location_get_PARTICIPANT(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTunnelTunnelDispatcher_Location, PARTICIPANT)

inline NetI2pRouterTunnelTunnelDispatcher_Location *NetI2pRouterTunnelTunnelDispatcher_Location_get_IBGW(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTunnelTunnelDispatcher_Location, IBGW)

FOUNDATION_EXPORT IOSObjectArray *NetI2pRouterTunnelTunnelDispatcher_Location_values(void);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelDispatcher_Location *NetI2pRouterTunnelTunnelDispatcher_Location_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pRouterTunnelTunnelDispatcher_Location *NetI2pRouterTunnelTunnelDispatcher_Location_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelTunnelDispatcher_Location)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelTunnelDispatcher")
