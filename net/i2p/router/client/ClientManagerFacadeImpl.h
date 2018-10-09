//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/ClientManagerFacadeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterClientClientManagerFacadeImpl")
#ifdef RESTRICT_NetI2pRouterClientClientManagerFacadeImpl
#define INCLUDE_ALL_NetI2pRouterClientClientManagerFacadeImpl 0
#else
#define INCLUDE_ALL_NetI2pRouterClientClientManagerFacadeImpl 1
#endif
#undef RESTRICT_NetI2pRouterClientClientManagerFacadeImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterClientClientManagerFacadeImpl_) && (INCLUDE_ALL_NetI2pRouterClientClientManagerFacadeImpl || defined(INCLUDE_NetI2pRouterClientClientManagerFacadeImpl))
#define NetI2pRouterClientClientManagerFacadeImpl_

#define RESTRICT_NetI2pRouterClientManagerFacade 1
#define INCLUDE_NetI2pRouterClientManagerFacade 1
#include "net/i2p/router/ClientManagerFacade.h"

#define RESTRICT_NetI2pInternalInternalClientManager 1
#define INCLUDE_NetI2pInternalInternalClientManager 1
#include "net/i2p/internal/InternalClientManager.h"

@class JavaIoWriter;
@class NetI2pCryptoSessionKeyManager;
@class NetI2pDataDestination;
@class NetI2pDataHash;
@class NetI2pDataI2cpMessageId;
@class NetI2pDataI2cpSessionConfig;
@class NetI2pDataLeaseSet;
@class NetI2pInternalI2CPMessageQueue;
@class NetI2pRouterClientMessage;
@class NetI2pRouterRouterContext;
@protocol JavaUtilSet;
@protocol NetI2pRouterJob;

@interface NetI2pRouterClientClientManagerFacadeImpl : NetI2pRouterClientManagerFacade < NetI2pInternalInternalClientManager >
@property (readonly, copy, class) NSString *PROP_CLIENT_PORT NS_SWIFT_NAME(PROP_CLIENT_PORT);
@property (readonly, class) jint DEFAULT_PORT NS_SWIFT_NAME(DEFAULT_PORT);
@property (readonly, copy, class) NSString *PROP_CLIENT_HOST NS_SWIFT_NAME(PROP_CLIENT_HOST);
@property (readonly, copy, class) NSString *DEFAULT_HOST NS_SWIFT_NAME(DEFAULT_HOST);

+ (NSString *)PROP_CLIENT_PORT;

+ (jint)DEFAULT_PORT;

+ (NSString *)PROP_CLIENT_HOST;

+ (NSString *)DEFAULT_HOST;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (NetI2pInternalI2CPMessageQueue *)connect;

- (NetI2pDataI2cpSessionConfig *)getClientSessionConfigWithNetI2pDataDestination:(NetI2pDataDestination *)dest;

- (NetI2pCryptoSessionKeyManager *)getClientSessionKeyManagerWithNetI2pDataHash:(NetI2pDataHash *)dest;

- (jboolean)isAlive;

- (jboolean)isLocalWithNetI2pDataDestination:(NetI2pDataDestination *)dest;

- (jboolean)isLocalWithNetI2pDataHash:(NetI2pDataHash *)destHash;

- (id<JavaUtilSet>)listClients;

- (void)messageDeliveryStatusUpdateWithNetI2pDataDestination:(NetI2pDataDestination *)fromDest
                                 withNetI2pDataI2cpMessageId:(NetI2pDataI2cpMessageId *)id_
                                                    withLong:(jlong)messageNonce
                                                     withInt:(jint)status;

- (void)messageReceivedWithNetI2pRouterClientMessage:(NetI2pRouterClientMessage *)msg;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)reportAbuseWithNetI2pDataDestination:(NetI2pDataDestination *)dest
                                withNSString:(NSString *)reason
                                     withInt:(jint)severity;

- (void)requestLeaseSetWithNetI2pDataDestination:(NetI2pDataDestination *)dest
                          withNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)set
                                        withLong:(jlong)timeout
                             withNetI2pRouterJob:(id<NetI2pRouterJob>)onCreateJob
                             withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedJob;

- (void)requestLeaseSetWithNetI2pDataHash:(NetI2pDataHash *)dest
                   withNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)set;

- (void)restart;

- (jboolean)shouldPublishLeaseSetWithNetI2pDataHash:(NetI2pDataHash *)destinationHash;

- (void)shutdown;

- (void)shutdownWithNSString:(NSString *)msg;

- (void)startup;

- (jboolean)verifyClientLiveliness;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterClientClientManagerFacadeImpl)

inline NSString *NetI2pRouterClientClientManagerFacadeImpl_get_PROP_CLIENT_PORT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterClientClientManagerFacadeImpl_PROP_CLIENT_PORT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterClientClientManagerFacadeImpl, PROP_CLIENT_PORT, NSString *)

inline jint NetI2pRouterClientClientManagerFacadeImpl_get_DEFAULT_PORT(void);
#define NetI2pRouterClientClientManagerFacadeImpl_DEFAULT_PORT 7654
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterClientClientManagerFacadeImpl, DEFAULT_PORT, jint)

inline NSString *NetI2pRouterClientClientManagerFacadeImpl_get_PROP_CLIENT_HOST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterClientClientManagerFacadeImpl_PROP_CLIENT_HOST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterClientClientManagerFacadeImpl, PROP_CLIENT_HOST, NSString *)

inline NSString *NetI2pRouterClientClientManagerFacadeImpl_get_DEFAULT_HOST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterClientClientManagerFacadeImpl_DEFAULT_HOST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterClientClientManagerFacadeImpl, DEFAULT_HOST, NSString *)

FOUNDATION_EXPORT void NetI2pRouterClientClientManagerFacadeImpl_initWithNetI2pRouterRouterContext_(NetI2pRouterClientClientManagerFacadeImpl *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterClientClientManagerFacadeImpl *new_NetI2pRouterClientClientManagerFacadeImpl_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterClientClientManagerFacadeImpl *create_NetI2pRouterClientClientManagerFacadeImpl_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterClientClientManagerFacadeImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterClientClientManagerFacadeImpl")
