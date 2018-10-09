//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/EepGetAndAddNamingService.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientNamingEepGetAndAddNamingService")
#ifdef RESTRICT_NetI2pClientNamingEepGetAndAddNamingService
#define INCLUDE_ALL_NetI2pClientNamingEepGetAndAddNamingService 0
#else
#define INCLUDE_ALL_NetI2pClientNamingEepGetAndAddNamingService 1
#endif
#undef RESTRICT_NetI2pClientNamingEepGetAndAddNamingService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientNamingEepGetAndAddNamingService_) && (INCLUDE_ALL_NetI2pClientNamingEepGetAndAddNamingService || defined(INCLUDE_NetI2pClientNamingEepGetAndAddNamingService))
#define NetI2pClientNamingEepGetAndAddNamingService_

#define RESTRICT_NetI2pClientNamingEepGetNamingService 1
#define INCLUDE_NetI2pClientNamingEepGetNamingService 1
#include "net/i2p/client/naming/EepGetNamingService.h"

@class NetI2pDataDestination;
@class NetI2pI2PAppContext;

@interface NetI2pClientNamingEepGetAndAddNamingService : NetI2pClientNamingEepGetNamingService

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (NetI2pDataDestination *)lookupWithNSString:(NSString *)hostname;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientNamingEepGetAndAddNamingService)

FOUNDATION_EXPORT void NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(NetI2pClientNamingEepGetAndAddNamingService *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pClientNamingEepGetAndAddNamingService *new_NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingEepGetAndAddNamingService *create_NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientNamingEepGetAndAddNamingService)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientNamingEepGetAndAddNamingService")
