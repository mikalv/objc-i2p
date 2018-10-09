//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/LookupDestJob.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterClientLookupDestJob")
#ifdef RESTRICT_NetI2pRouterClientLookupDestJob
#define INCLUDE_ALL_NetI2pRouterClientLookupDestJob 0
#else
#define INCLUDE_ALL_NetI2pRouterClientLookupDestJob 1
#endif
#undef RESTRICT_NetI2pRouterClientLookupDestJob

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterClientLookupDestJob_) && (INCLUDE_ALL_NetI2pRouterClientLookupDestJob || defined(INCLUDE_NetI2pRouterClientLookupDestJob))
#define NetI2pRouterClientLookupDestJob_

#define RESTRICT_NetI2pRouterJobImpl 1
#define INCLUDE_NetI2pRouterJobImpl 1
#include "net/i2p/router/JobImpl.h"

@class NetI2pDataHash;
@class NetI2pDataI2cpSessionId;
@class NetI2pRouterClientClientConnectionRunner;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterClientLookupDestJob : NetI2pRouterJobImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
               withNetI2pRouterClientClientConnectionRunner:(NetI2pRouterClientClientConnectionRunner *)runner
                                         withNetI2pDataHash:(NetI2pDataHash *)h
                                         withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest;

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
               withNetI2pRouterClientClientConnectionRunner:(NetI2pRouterClientClientConnectionRunner *)runner
                                                   withLong:(jlong)reqID
                                                   withLong:(jlong)timeout
                                withNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)sessID
                                         withNetI2pDataHash:(NetI2pDataHash *)h
                                               withNSString:(NSString *)name
                                         withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest;

- (NSString *)getName;

- (void)runJob;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterClientLookupDestJob)

FOUNDATION_EXPORT void NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterClientLookupDestJob *self, NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataHash *h, NetI2pDataHash *fromLocalDest);

FOUNDATION_EXPORT NetI2pRouterClientLookupDestJob *new_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataHash *h, NetI2pDataHash *fromLocalDest) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterClientLookupDestJob *create_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataHash *h, NetI2pDataHash *fromLocalDest);

FOUNDATION_EXPORT void NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(NetI2pRouterClientLookupDestJob *self, NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jlong reqID, jlong timeout, NetI2pDataI2cpSessionId *sessID, NetI2pDataHash *h, NSString *name, NetI2pDataHash *fromLocalDest);

FOUNDATION_EXPORT NetI2pRouterClientLookupDestJob *new_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jlong reqID, jlong timeout, NetI2pDataI2cpSessionId *sessID, NetI2pDataHash *h, NSString *name, NetI2pDataHash *fromLocalDest) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterClientLookupDestJob *create_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jlong reqID, jlong timeout, NetI2pDataI2cpSessionId *sessID, NetI2pDataHash *h, NSString *name, NetI2pDataHash *fromLocalDest);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterClientLookupDestJob)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterClientLookupDestJob")