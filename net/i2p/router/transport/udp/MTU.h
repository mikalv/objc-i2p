//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/MTU.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportUdpMTU")
#ifdef RESTRICT_NetI2pRouterTransportUdpMTU
#define INCLUDE_ALL_NetI2pRouterTransportUdpMTU 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportUdpMTU 1
#endif
#undef RESTRICT_NetI2pRouterTransportUdpMTU

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportUdpMTU_) && (INCLUDE_ALL_NetI2pRouterTransportUdpMTU || defined(INCLUDE_NetI2pRouterTransportUdpMTU))
#define NetI2pRouterTransportUdpMTU_

@class IOSObjectArray;
@class JavaNetInetAddress;

@interface NetI2pRouterTransportUdpMTU : NSObject

#pragma mark Public

+ (jint)getMTUWithJavaNetInetAddress:(JavaNetInetAddress *)ia;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

+ (jint)rectifyWithBoolean:(jboolean)isIPv6
                   withInt:(jint)mtu;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportUdpMTU)

FOUNDATION_EXPORT jint NetI2pRouterTransportUdpMTU_getMTUWithJavaNetInetAddress_(JavaNetInetAddress *ia);

FOUNDATION_EXPORT jint NetI2pRouterTransportUdpMTU_rectifyWithBoolean_withInt_(jboolean isIPv6, jint mtu);

FOUNDATION_EXPORT void NetI2pRouterTransportUdpMTU_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportUdpMTU)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportUdpMTU")
