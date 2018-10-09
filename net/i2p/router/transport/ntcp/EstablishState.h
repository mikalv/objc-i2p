//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/EstablishState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishState")
#ifdef RESTRICT_NetI2pRouterTransportNtcpEstablishState
#define INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishState 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishState 1
#endif
#undef RESTRICT_NetI2pRouterTransportNtcpEstablishState

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportNtcpEstablishState_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishState || defined(INCLUDE_NetI2pRouterTransportNtcpEstablishState))
#define NetI2pRouterTransportNtcpEstablishState_

@class JavaLangException;
@class JavaNioByteBuffer;

@protocol NetI2pRouterTransportNtcpEstablishState < JavaObject >

- (void)receiveWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;

- (void)prepareOutbound;

- (jboolean)isCorrupt;

- (jboolean)isComplete;

- (jint)getVersion;

- (void)closeWithNSString:(NSString *)reason
    withJavaLangException:(JavaLangException *)e;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportNtcpEstablishState)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpEstablishState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishState")
