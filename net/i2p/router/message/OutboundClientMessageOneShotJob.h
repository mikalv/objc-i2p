//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/OutboundClientMessageOneShotJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageOneShotJob")
#ifdef RESTRICT_NetI2pRouterMessageOutboundClientMessageOneShotJob
#define INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageOneShotJob 0
#else
#define INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageOneShotJob 1
#endif
#undef RESTRICT_NetI2pRouterMessageOutboundClientMessageOneShotJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterMessageOutboundClientMessageOneShotJob_) && (INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageOneShotJob || defined(INCLUDE_NetI2pRouterMessageOutboundClientMessageOneShotJob))
#define NetI2pRouterMessageOutboundClientMessageOneShotJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pRouterClientMessage;
@class NetI2pRouterMessageOutboundCache;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterMessageOutboundClientMessageOneShotJob : NetI2pRouterJobImpl
@property (readonly, copy, class) NSString *OVERALL_TIMEOUT_MS_PARAM NS_SWIFT_NAME(OVERALL_TIMEOUT_MS_PARAM);
@property (readonly, copy, class) NSString *BUNDLE_REPLY_LEASESET NS_SWIFT_NAME(BUNDLE_REPLY_LEASESET);

+ (NSString *)OVERALL_TIMEOUT_MS_PARAM;

+ (NSString *)BUNDLE_REPLY_LEASESET;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                       withNetI2pRouterMessageOutboundCache:(NetI2pRouterMessageOutboundCache *)cache
                              withNetI2pRouterClientMessage:(NetI2pRouterClientMessage *)msg;

- (NSString *)getName;

+ (void)init__WithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx OBJC_METHOD_FAMILY_NONE;

- (void)runJob;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageOutboundClientMessageOneShotJob)

inline NSString *NetI2pRouterMessageOutboundClientMessageOneShotJob_get_OVERALL_TIMEOUT_MS_PARAM(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterMessageOutboundClientMessageOneShotJob_OVERALL_TIMEOUT_MS_PARAM;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterMessageOutboundClientMessageOneShotJob, OVERALL_TIMEOUT_MS_PARAM, NSString *)

inline NSString *NetI2pRouterMessageOutboundClientMessageOneShotJob_get_BUNDLE_REPLY_LEASESET(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterMessageOutboundClientMessageOneShotJob_BUNDLE_REPLY_LEASESET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterMessageOutboundClientMessageOneShotJob, BUNDLE_REPLY_LEASESET, NSString *)

FOUNDATION_EXPORT void NetI2pRouterMessageOutboundClientMessageOneShotJob_initWithNetI2pRouterRouterContext_withNetI2pRouterMessageOutboundCache_withNetI2pRouterClientMessage_(NetI2pRouterMessageOutboundClientMessageOneShotJob *self, NetI2pRouterRouterContext *ctx, NetI2pRouterMessageOutboundCache *cache, NetI2pRouterClientMessage *msg);

FOUNDATION_EXPORT NetI2pRouterMessageOutboundClientMessageOneShotJob *new_NetI2pRouterMessageOutboundClientMessageOneShotJob_initWithNetI2pRouterRouterContext_withNetI2pRouterMessageOutboundCache_withNetI2pRouterClientMessage_(NetI2pRouterRouterContext *ctx, NetI2pRouterMessageOutboundCache *cache, NetI2pRouterClientMessage *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterMessageOutboundClientMessageOneShotJob *create_NetI2pRouterMessageOutboundClientMessageOneShotJob_initWithNetI2pRouterRouterContext_withNetI2pRouterMessageOutboundCache_withNetI2pRouterClientMessage_(NetI2pRouterRouterContext *ctx, NetI2pRouterMessageOutboundCache *cache, NetI2pRouterClientMessage *msg);

FOUNDATION_EXPORT void NetI2pRouterMessageOutboundClientMessageOneShotJob_init__WithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageOutboundClientMessageOneShotJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterMessageOutboundClientMessageOneShotJob")
