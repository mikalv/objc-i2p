//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/TransportBid.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportTransportBid")
#ifdef RESTRICT_NetI2pRouterTransportTransportBid
#define INCLUDE_ALL_NetI2pRouterTransportTransportBid 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportTransportBid 1
#endif
#undef RESTRICT_NetI2pRouterTransportTransportBid

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportTransportBid_) && (INCLUDE_ALL_NetI2pRouterTransportTransportBid || defined(INCLUDE_NetI2pRouterTransportTransportBid))
#define NetI2pRouterTransportTransportBid_

@protocol NetI2pRouterTransportTransport;

@interface NetI2pRouterTransportTransportBid : NSObject
@property (readonly, class) jint TRANSIENT_FAIL NS_SWIFT_NAME(TRANSIENT_FAIL);

+ (jint)TRANSIENT_FAIL;

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)getLatencyMs;

- (id<NetI2pRouterTransportTransport>)getTransport;

- (void)setLatencyMsWithInt:(jint)milliseconds;

- (void)setTransportWithNetI2pRouterTransportTransport:(id<NetI2pRouterTransportTransport>)transport;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportTransportBid)

inline jint NetI2pRouterTransportTransportBid_get_TRANSIENT_FAIL(void);
#define NetI2pRouterTransportTransportBid_TRANSIENT_FAIL 999999
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportTransportBid, TRANSIENT_FAIL, jint)

FOUNDATION_EXPORT void NetI2pRouterTransportTransportBid_init(NetI2pRouterTransportTransportBid *self);

FOUNDATION_EXPORT NetI2pRouterTransportTransportBid *new_NetI2pRouterTransportTransportBid_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportTransportBid *create_NetI2pRouterTransportTransportBid_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportTransportBid)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportTransportBid")
