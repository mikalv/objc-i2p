//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/Lease.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataLease")
#ifdef RESTRICT_NetI2pDataLease
#define INCLUDE_ALL_NetI2pDataLease 0
#else
#define INCLUDE_ALL_NetI2pDataLease 1
#endif
#undef RESTRICT_NetI2pDataLease

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataLease_) && (INCLUDE_ALL_NetI2pDataLease || defined(INCLUDE_NetI2pDataLease))
#define NetI2pDataLease_

#define RESTRICT_NetI2pDataDataStructureImpl 1
#define INCLUDE_NetI2pDataDataStructureImpl 1
#include "net/i2p/data/DataStructureImpl.h"

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaUtilDate;
@class NetI2pDataHash;
@class NetI2pDataTunnelId;

@interface NetI2pDataLease : NetI2pDataDataStructureImpl

#pragma mark Public

- (instancetype __nonnull)init;

- (jboolean)isEqual:(id)object;

- (JavaUtilDate *)getEndDate;

- (NetI2pDataHash *)getGateway;

- (NetI2pDataTunnelId *)getTunnelId;

- (NSUInteger)hash;

- (jboolean)isExpired;

- (jboolean)isExpiredWithLong:(jlong)fudgeFactor;

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)setEndDateWithJavaUtilDate:(JavaUtilDate *)date;

- (void)setGatewayWithNetI2pDataHash:(NetI2pDataHash *)ident;

- (void)setTunnelIdWithNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_;

- (NSString *)description;

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataLease)

FOUNDATION_EXPORT void NetI2pDataLease_init(NetI2pDataLease *self);

FOUNDATION_EXPORT NetI2pDataLease *new_NetI2pDataLease_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataLease *create_NetI2pDataLease_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataLease)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataLease")
