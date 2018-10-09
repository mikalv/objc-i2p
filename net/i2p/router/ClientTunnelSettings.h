//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/ClientTunnelSettings.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterClientTunnelSettings")
#ifdef RESTRICT_NetI2pRouterClientTunnelSettings
#define INCLUDE_ALL_NetI2pRouterClientTunnelSettings 0
#else
#define INCLUDE_ALL_NetI2pRouterClientTunnelSettings 1
#endif
#undef RESTRICT_NetI2pRouterClientTunnelSettings

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterClientTunnelSettings_) && (INCLUDE_ALL_NetI2pRouterClientTunnelSettings || defined(INCLUDE_NetI2pRouterClientTunnelSettings))
#define NetI2pRouterClientTunnelSettings_

@class JavaUtilProperties;
@class NetI2pDataHash;
@class NetI2pRouterTunnelPoolSettings;

@interface NetI2pRouterClientTunnelSettings : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pDataHash:(NetI2pDataHash *)dest;

- (NetI2pRouterTunnelPoolSettings *)getInboundSettings;

- (NetI2pRouterTunnelPoolSettings *)getOutboundSettings;

- (void)readFromPropertiesWithJavaUtilProperties:(JavaUtilProperties *)props;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterClientTunnelSettings)

FOUNDATION_EXPORT void NetI2pRouterClientTunnelSettings_initWithNetI2pDataHash_(NetI2pRouterClientTunnelSettings *self, NetI2pDataHash *dest);

FOUNDATION_EXPORT NetI2pRouterClientTunnelSettings *new_NetI2pRouterClientTunnelSettings_initWithNetI2pDataHash_(NetI2pDataHash *dest) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterClientTunnelSettings *create_NetI2pRouterClientTunnelSettings_initWithNetI2pDataHash_(NetI2pDataHash *dest);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterClientTunnelSettings)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterClientTunnelSettings")