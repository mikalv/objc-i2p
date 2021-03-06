//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/RouterContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterRouterContext")
#ifdef RESTRICT_NetI2pRouterRouterContext
#define INCLUDE_ALL_NetI2pRouterRouterContext 0
#else
#define INCLUDE_ALL_NetI2pRouterRouterContext 1
#endif
#undef RESTRICT_NetI2pRouterRouterContext

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterRouterContext_) && (INCLUDE_ALL_NetI2pRouterRouterContext || defined(INCLUDE_NetI2pRouterRouterContext))
#define NetI2pRouterRouterContext_

#define RESTRICT_NetI2pI2PAppContext 1
#define INCLUDE_NetI2pI2PAppContext 1
#include "net/i2p/I2PAppContext.h"

@class JavaUtilProperties;
@class NetI2pDataHash;
@class NetI2pDataRouterRouterKeyGenerator;
@class NetI2pDataRoutingKeyGenerator;
@class NetI2pRouterBanlist;
@class NetI2pRouterBlocklist;
@class NetI2pRouterClientManagerFacade;
@class NetI2pRouterClientMessagePool;
@class NetI2pRouterCommSystemFacade;
@class NetI2pRouterInNetMessagePool;
@class NetI2pRouterJobQueue;
@class NetI2pRouterKeyManager;
@class NetI2pRouterMessageGarlicMessageParser;
@class NetI2pRouterMessageHistory;
@class NetI2pRouterMessageValidator;
@class NetI2pRouterNetworkDatabaseFacade;
@class NetI2pRouterOutNetMessagePool;
@class NetI2pRouterPeermanagerProfileOrganizer;
@class NetI2pRouterRouter;
@class NetI2pRouterStartupRouterAppManager;
@class NetI2pRouterStatisticsManager;
@class NetI2pRouterTransportFIFOBandwidthLimiter;
@class NetI2pRouterTransportOutboundMessageRegistry;
@class NetI2pRouterTunnelTunnelDispatcher;
@class NetI2pUtilKeyRing;
@protocol JavaLangRunnable;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol NetI2pAppClientAppManager;
@protocol NetI2pInternalInternalClientManager;
@protocol NetI2pRouterPeerManagerFacade;
@protocol NetI2pRouterProfileManager;
@protocol NetI2pRouterRouterThrottle;
@protocol NetI2pRouterTunnelManagerFacade;
@protocol NetI2pUtilI2PProperties_I2PPropertyCallback;

@interface NetI2pRouterRouterContext : NetI2pI2PAppContext

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouter:(NetI2pRouterRouter *)router;

- (instancetype __nonnull)initWithNetI2pRouterRouter:(NetI2pRouterRouter *)router
                              withJavaUtilProperties:(JavaUtilProperties *)envProps;

- (void)addFinalShutdownTaskWithJavaLangRunnable:(id<JavaLangRunnable>)task;

- (void)addPropertyCallbackWithNetI2pUtilI2PProperties_I2PPropertyCallback:(id<NetI2pUtilI2PProperties_I2PPropertyCallback>)callback;

- (NetI2pRouterTransportFIFOBandwidthLimiter *)bandwidthLimiter;

- (NetI2pRouterBanlist *)banlist;

- (NetI2pRouterBlocklist *)blocklist;

- (id<NetI2pAppClientAppManager>)clientAppManager;

- (NetI2pRouterClientManagerFacade *)clientManager;

- (NetI2pRouterClientMessagePool *)clientMessagePool;

- (NetI2pRouterCommSystemFacade *)commSystem;

- (NetI2pRouterMessageGarlicMessageParser *)garlicMessageParser;

- (JavaUtilProperties *)getProperties;

- (NSString *)getPropertyWithNSString:(NSString *)propName;

- (jint)getPropertyWithNSString:(NSString *)propName
                        withInt:(jint)defaultVal;

- (jlong)getPropertyWithNSString:(NSString *)propName
                        withLong:(jlong)defaultVal;

- (NSString *)getPropertyWithNSString:(NSString *)propName
                         withNSString:(NSString *)defaultVal;

- (void)initAll OBJC_METHOD_FAMILY_NONE;

- (NetI2pRouterInNetMessagePool *)inNetMessagePool;

- (id<NetI2pInternalInternalClientManager>)internalClientManager;

- (jboolean)isRouterContext;

- (NetI2pRouterJobQueue *)jobQueue;

- (NetI2pRouterKeyManager *)keyManager;

- (NetI2pUtilKeyRing *)keyRing;

+ (id<JavaUtilList>)listContexts;

- (NetI2pRouterMessageHistory *)messageHistory;

- (NetI2pRouterTransportOutboundMessageRegistry *)messageRegistry;

- (NetI2pRouterMessageValidator *)messageValidator;

- (NetI2pRouterNetworkDatabaseFacade *)netDb;

- (NetI2pRouterOutNetMessagePool *)outNetMessagePool;

- (id<NetI2pRouterPeerManagerFacade>)peerManager;

- (id<NetI2pRouterProfileManager>)profileManager;

- (NetI2pRouterPeermanagerProfileOrganizer *)profileOrganizer;

- (NetI2pRouterRouter *)router;

- (NetI2pRouterStartupRouterAppManager *)routerAppManager;

- (NetI2pDataHash *)routerHash;

- (NetI2pDataRouterRouterKeyGenerator *)routerKeyGenerator;

- (NetI2pDataRoutingKeyGenerator *)routingKeyGenerator;

- (void)setPropertyWithNSString:(NSString *)propName
                   withNSString:(NSString *)value;

- (NetI2pRouterStatisticsManager *)statPublisher;

- (id<NetI2pRouterRouterThrottle>)throttle;

- (NSString *)description;

- (NetI2pRouterTunnelTunnelDispatcher *)tunnelDispatcher;

- (id<NetI2pRouterTunnelManagerFacade>)tunnelManager;

#pragma mark Protected

- (void)initializeClock OBJC_METHOD_FAMILY_NONE;

- (void)initializeKeyRing OBJC_METHOD_FAMILY_NONE;

- (void)initializeSessionKeyManager OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNetI2pRouterRouter:(NetI2pRouterRouter *)router
                              withJavaUtilProperties:(JavaUtilProperties *)envProps
                                         withBoolean:(jboolean)doInit;

+ (id<JavaUtilList>)getContexts;

- (id<JavaUtilSet>)getFinalShutdownTasks;

+ (void)killGlobalContext;

- (void)removePropertyWithNSString:(NSString *)propName;

- (void)removeShutdownTasks;

+ (jboolean)setGlobalContextWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithBoolean:(jboolean)arg0
                   withJavaUtilProperties:(JavaUtilProperties *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaUtilProperties:(JavaUtilProperties *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterRouterContext)

FOUNDATION_EXPORT void NetI2pRouterRouterContext_initWithNetI2pRouterRouter_(NetI2pRouterRouterContext *self, NetI2pRouterRouter *router);

FOUNDATION_EXPORT NetI2pRouterRouterContext *new_NetI2pRouterRouterContext_initWithNetI2pRouterRouter_(NetI2pRouterRouter *router) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouterContext *create_NetI2pRouterRouterContext_initWithNetI2pRouterRouter_(NetI2pRouterRouter *router);

FOUNDATION_EXPORT void NetI2pRouterRouterContext_initWithNetI2pRouterRouter_withJavaUtilProperties_(NetI2pRouterRouterContext *self, NetI2pRouterRouter *router, JavaUtilProperties *envProps);

FOUNDATION_EXPORT NetI2pRouterRouterContext *new_NetI2pRouterRouterContext_initWithNetI2pRouterRouter_withJavaUtilProperties_(NetI2pRouterRouter *router, JavaUtilProperties *envProps) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouterContext *create_NetI2pRouterRouterContext_initWithNetI2pRouterRouter_withJavaUtilProperties_(NetI2pRouterRouter *router, JavaUtilProperties *envProps);

FOUNDATION_EXPORT void NetI2pRouterRouterContext_initWithNetI2pRouterRouter_withJavaUtilProperties_withBoolean_(NetI2pRouterRouterContext *self, NetI2pRouterRouter *router, JavaUtilProperties *envProps, jboolean doInit);

FOUNDATION_EXPORT NetI2pRouterRouterContext *new_NetI2pRouterRouterContext_initWithNetI2pRouterRouter_withJavaUtilProperties_withBoolean_(NetI2pRouterRouter *router, JavaUtilProperties *envProps, jboolean doInit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouterContext *create_NetI2pRouterRouterContext_initWithNetI2pRouterRouter_withJavaUtilProperties_withBoolean_(NetI2pRouterRouter *router, JavaUtilProperties *envProps, jboolean doInit);

FOUNDATION_EXPORT jboolean NetI2pRouterRouterContext_setGlobalContextWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT id<JavaUtilList> NetI2pRouterRouterContext_listContexts(void);

FOUNDATION_EXPORT id<JavaUtilList> NetI2pRouterRouterContext_getContexts(void);

FOUNDATION_EXPORT void NetI2pRouterRouterContext_killGlobalContext(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterRouterContext)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterRouterContext")
