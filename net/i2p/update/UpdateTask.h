//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/update/UpdateTask.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUpdateUpdateTask")
#ifdef RESTRICT_NetI2pUpdateUpdateTask
#define INCLUDE_ALL_NetI2pUpdateUpdateTask 0
#else
#define INCLUDE_ALL_NetI2pUpdateUpdateTask 1
#endif
#undef RESTRICT_NetI2pUpdateUpdateTask

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUpdateUpdateTask_) && (INCLUDE_ALL_NetI2pUpdateUpdateTask || defined(INCLUDE_NetI2pUpdateUpdateTask))
#define NetI2pUpdateUpdateTask_

@class JavaNetURI;
@class NetI2pUpdateUpdateMethod;
@class NetI2pUpdateUpdateType;

@protocol NetI2pUpdateUpdateTask < JavaObject >

- (void)start;

- (void)shutdown;

- (jboolean)isRunning;

- (NetI2pUpdateUpdateType *)getType;

- (NetI2pUpdateUpdateMethod *)getMethod;

- (JavaNetURI *)getURI;

- (NSString *)getID;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUpdateUpdateTask)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUpdateUpdateTask)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUpdateUpdateTask")
