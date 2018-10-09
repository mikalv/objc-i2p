//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/CreateRouterInfoJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterStartupCreateRouterInfoJob")
#ifdef RESTRICT_NetI2pRouterStartupCreateRouterInfoJob
#define INCLUDE_ALL_NetI2pRouterStartupCreateRouterInfoJob 0
#else
#define INCLUDE_ALL_NetI2pRouterStartupCreateRouterInfoJob 1
#endif
#undef RESTRICT_NetI2pRouterStartupCreateRouterInfoJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterStartupCreateRouterInfoJob_) && (INCLUDE_ALL_NetI2pRouterStartupCreateRouterInfoJob || defined(INCLUDE_NetI2pRouterStartupCreateRouterInfoJob))
#define NetI2pRouterStartupCreateRouterInfoJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pCryptoSigType;
@class NetI2pDataCertificate;
@class NetI2pDataRouterRouterInfo;
@class NetI2pDataSigningPublicKey;
@class NetI2pRouterRouterContext;
@protocol NetI2pRouterJob;

@interface NetI2pRouterStartupCreateRouterInfoJob : NetI2pRouterJobImpl
@property (readonly, copy, class) NSString *INFO_FILENAME NS_SWIFT_NAME(INFO_FILENAME);
@property (readonly, copy, class) NSString *KEYS_FILENAME NS_SWIFT_NAME(KEYS_FILENAME);
@property (readonly, copy, class) NSString *KEYS2_FILENAME NS_SWIFT_NAME(KEYS2_FILENAME);
@property (readonly, copy, class) NSString *PROP_ROUTER_SIGTYPE NS_SWIFT_NAME(PROP_ROUTER_SIGTYPE);

+ (NSString *)INFO_FILENAME;

+ (NSString *)KEYS_FILENAME;

+ (NSString *)KEYS2_FILENAME;

+ (NSString *)PROP_ROUTER_SIGTYPE;

#pragma mark Public

- (NSString *)getName;

+ (NetI2pCryptoSigType *)getSigTypeConfigWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (void)runJob;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                        withNetI2pRouterJob:(id<NetI2pRouterJob>)next;

+ (NetI2pDataCertificate *)createCertificateWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                           withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)spk;

- (NetI2pDataRouterRouterInfo *)createRouterInfo;

+ (jlong)getCurrentPublishDateWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterStartupCreateRouterInfoJob)

inline NSString *NetI2pRouterStartupCreateRouterInfoJob_get_INFO_FILENAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterStartupCreateRouterInfoJob_INFO_FILENAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupCreateRouterInfoJob, INFO_FILENAME, NSString *)

inline NSString *NetI2pRouterStartupCreateRouterInfoJob_get_KEYS_FILENAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterStartupCreateRouterInfoJob_KEYS_FILENAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupCreateRouterInfoJob, KEYS_FILENAME, NSString *)

inline NSString *NetI2pRouterStartupCreateRouterInfoJob_get_KEYS2_FILENAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterStartupCreateRouterInfoJob_KEYS2_FILENAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupCreateRouterInfoJob, KEYS2_FILENAME, NSString *)

inline NSString *NetI2pRouterStartupCreateRouterInfoJob_get_PROP_ROUTER_SIGTYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterStartupCreateRouterInfoJob_PROP_ROUTER_SIGTYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupCreateRouterInfoJob, PROP_ROUTER_SIGTYPE, NSString *)

FOUNDATION_EXPORT void NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(NetI2pRouterStartupCreateRouterInfoJob *self, NetI2pRouterRouterContext *ctx, id<NetI2pRouterJob> next);

FOUNDATION_EXPORT NetI2pRouterStartupCreateRouterInfoJob *new_NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(NetI2pRouterRouterContext *ctx, id<NetI2pRouterJob> next) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterStartupCreateRouterInfoJob *create_NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(NetI2pRouterRouterContext *ctx, id<NetI2pRouterJob> next);

FOUNDATION_EXPORT NetI2pCryptoSigType *NetI2pRouterStartupCreateRouterInfoJob_getSigTypeConfigWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT jlong NetI2pRouterStartupCreateRouterInfoJob_getCurrentPublishDateWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pDataCertificate *NetI2pRouterStartupCreateRouterInfoJob_createCertificateWithNetI2pRouterRouterContext_withNetI2pDataSigningPublicKey_(NetI2pRouterRouterContext *ctx, NetI2pDataSigningPublicKey *spk);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterStartupCreateRouterInfoJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterStartupCreateRouterInfoJob")