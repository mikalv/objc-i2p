//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/CDQEntry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilCDQEntry")
#ifdef RESTRICT_NetI2pRouterUtilCDQEntry
#define INCLUDE_ALL_NetI2pRouterUtilCDQEntry 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilCDQEntry 1
#endif
#undef RESTRICT_NetI2pRouterUtilCDQEntry

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilCDQEntry_) && (INCLUDE_ALL_NetI2pRouterUtilCDQEntry || defined(INCLUDE_NetI2pRouterUtilCDQEntry))
#define NetI2pRouterUtilCDQEntry_

@protocol NetI2pRouterUtilCDQEntry < JavaObject >

- (void)setEnqueueTimeWithLong:(jlong)time;

- (jlong)getEnqueueTime;

- (void)drop;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilCDQEntry)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilCDQEntry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilCDQEntry")
