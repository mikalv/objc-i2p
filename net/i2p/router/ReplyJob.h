//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/ReplyJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterReplyJob")
#ifdef RESTRICT_NetI2pRouterReplyJob
#define INCLUDE_ALL_NetI2pRouterReplyJob 0
#else
#define INCLUDE_ALL_NetI2pRouterReplyJob 1
#endif
#undef RESTRICT_NetI2pRouterReplyJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterReplyJob_) && (INCLUDE_ALL_NetI2pRouterReplyJob || defined(INCLUDE_NetI2pRouterReplyJob))
#define NetI2pRouterReplyJob_

#define RESTRICT_NetI2pRouterJob 1
#define INCLUDE_NetI2pRouterJob 1
#include "net/i2p/router/Job.h"

@protocol NetI2pDataI2npI2NPMessage;

@protocol NetI2pRouterReplyJob < NetI2pRouterJob, JavaObject >

- (void)setMessageWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterReplyJob)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterReplyJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterReplyJob")