//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/LoadRouterInfoJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterStartupLoadRouterInfoJob")
#ifdef RESTRICT_NetI2pRouterStartupLoadRouterInfoJob
#define INCLUDE_ALL_NetI2pRouterStartupLoadRouterInfoJob 0
#else
#define INCLUDE_ALL_NetI2pRouterStartupLoadRouterInfoJob 1
#endif
#undef RESTRICT_NetI2pRouterStartupLoadRouterInfoJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterStartupLoadRouterInfoJob_) && (INCLUDE_ALL_NetI2pRouterStartupLoadRouterInfoJob || defined(INCLUDE_NetI2pRouterStartupLoadRouterInfoJob))
#define NetI2pRouterStartupLoadRouterInfoJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class JavaIoFile;
@class NetI2pRouterRouterContext;
@class NetI2pRouterStartupLoadRouterInfoJob_KeyData;

@interface NetI2pRouterStartupLoadRouterInfoJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (NSString *)getName;

+ (NetI2pRouterStartupLoadRouterInfoJob_KeyData *)readKeyDataWithJavaIoFile:(JavaIoFile *)rkf1
                                                             withJavaIoFile:(JavaIoFile *)rkf2;

- (void)runJob;

@end

J2OBJC_STATIC_INIT(NetI2pRouterStartupLoadRouterInfoJob)

FOUNDATION_EXPORT void NetI2pRouterStartupLoadRouterInfoJob_initWithNetI2pRouterRouterContext_(NetI2pRouterStartupLoadRouterInfoJob *self, NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterStartupLoadRouterInfoJob *new_NetI2pRouterStartupLoadRouterInfoJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterStartupLoadRouterInfoJob *create_NetI2pRouterStartupLoadRouterInfoJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterStartupLoadRouterInfoJob_KeyData *NetI2pRouterStartupLoadRouterInfoJob_readKeyDataWithJavaIoFile_withJavaIoFile_(JavaIoFile *rkf1, JavaIoFile *rkf2);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterStartupLoadRouterInfoJob)

#endif

#if !defined (NetI2pRouterStartupLoadRouterInfoJob_KeyData_) && (INCLUDE_ALL_NetI2pRouterStartupLoadRouterInfoJob || defined(INCLUDE_NetI2pRouterStartupLoadRouterInfoJob_KeyData))
#define NetI2pRouterStartupLoadRouterInfoJob_KeyData_

@class NetI2pDataPrivateKey;
@class NetI2pDataRouterRouterIdentity;
@class NetI2pDataSigningPrivateKey;

@interface NetI2pRouterStartupLoadRouterInfoJob_KeyData : NSObject {
 @public
  NetI2pDataRouterRouterIdentity *routerIdentity_;
  NetI2pDataPrivateKey *privateKey_;
  NetI2pDataSigningPrivateKey *signingPrivateKey_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pDataRouterRouterIdentity:(NetI2pDataRouterRouterIdentity *)ri
                                        withNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)pk
                                 withNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)spk;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterStartupLoadRouterInfoJob_KeyData)

J2OBJC_FIELD_SETTER(NetI2pRouterStartupLoadRouterInfoJob_KeyData, routerIdentity_, NetI2pDataRouterRouterIdentity *)
J2OBJC_FIELD_SETTER(NetI2pRouterStartupLoadRouterInfoJob_KeyData, privateKey_, NetI2pDataPrivateKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterStartupLoadRouterInfoJob_KeyData, signingPrivateKey_, NetI2pDataSigningPrivateKey *)

FOUNDATION_EXPORT void NetI2pRouterStartupLoadRouterInfoJob_KeyData_initWithNetI2pDataRouterRouterIdentity_withNetI2pDataPrivateKey_withNetI2pDataSigningPrivateKey_(NetI2pRouterStartupLoadRouterInfoJob_KeyData *self, NetI2pDataRouterRouterIdentity *ri, NetI2pDataPrivateKey *pk, NetI2pDataSigningPrivateKey *spk);

FOUNDATION_EXPORT NetI2pRouterStartupLoadRouterInfoJob_KeyData *new_NetI2pRouterStartupLoadRouterInfoJob_KeyData_initWithNetI2pDataRouterRouterIdentity_withNetI2pDataPrivateKey_withNetI2pDataSigningPrivateKey_(NetI2pDataRouterRouterIdentity *ri, NetI2pDataPrivateKey *pk, NetI2pDataSigningPrivateKey *spk) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterStartupLoadRouterInfoJob_KeyData *create_NetI2pRouterStartupLoadRouterInfoJob_KeyData_initWithNetI2pDataRouterRouterIdentity_withNetI2pDataPrivateKey_withNetI2pDataSigningPrivateKey_(NetI2pDataRouterRouterIdentity *ri, NetI2pDataPrivateKey *pk, NetI2pDataSigningPrivateKey *spk);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterStartupLoadRouterInfoJob_KeyData)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterStartupLoadRouterInfoJob")
