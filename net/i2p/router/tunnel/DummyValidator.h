//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/DummyValidator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTunnelDummyValidator")
#ifdef RESTRICT_NetI2pRouterTunnelDummyValidator
#define INCLUDE_ALL_NetI2pRouterTunnelDummyValidator 0
#else
#define INCLUDE_ALL_NetI2pRouterTunnelDummyValidator 1
#endif
#undef RESTRICT_NetI2pRouterTunnelDummyValidator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTunnelDummyValidator_) && (INCLUDE_ALL_NetI2pRouterTunnelDummyValidator || defined(INCLUDE_NetI2pRouterTunnelDummyValidator))
#define NetI2pRouterTunnelDummyValidator_

#define RESTRICT_NetI2pRouterTunnelIVValidator 1
#define INCLUDE_NetI2pRouterTunnelIVValidator 1
#include "net/i2p/router/tunnel/IVValidator.h"

@class IOSByteArray;

@interface NetI2pRouterTunnelDummyValidator : NSObject < NetI2pRouterTunnelIVValidator >

#pragma mark Public

+ (NetI2pRouterTunnelDummyValidator *)getInstance;

- (jboolean)receiveIVWithByteArray:(IOSByteArray *)ivData
                           withInt:(jint)ivOffset
                     withByteArray:(IOSByteArray *)payload
                           withInt:(jint)payloadOffset;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTunnelDummyValidator)

FOUNDATION_EXPORT NetI2pRouterTunnelDummyValidator *NetI2pRouterTunnelDummyValidator_getInstance(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelDummyValidator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTunnelDummyValidator")
