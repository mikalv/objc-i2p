//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/PQEntry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilPQEntry")
#ifdef RESTRICT_NetI2pRouterUtilPQEntry
#define INCLUDE_ALL_NetI2pRouterUtilPQEntry 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilPQEntry 1
#endif
#undef RESTRICT_NetI2pRouterUtilPQEntry

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilPQEntry_) && (INCLUDE_ALL_NetI2pRouterUtilPQEntry || defined(INCLUDE_NetI2pRouterUtilPQEntry))
#define NetI2pRouterUtilPQEntry_

@protocol NetI2pRouterUtilPQEntry < JavaObject >

- (jint)getPriority;

- (void)setSeqNumWithLong:(jlong)num;

- (jlong)getSeqNum;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilPQEntry)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilPQEntry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilPQEntry")
