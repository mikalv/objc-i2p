//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/DBHistory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterPeermanagerDBHistory")
#ifdef RESTRICT_NetI2pRouterPeermanagerDBHistory
#define INCLUDE_ALL_NetI2pRouterPeermanagerDBHistory 0
#else
#define INCLUDE_ALL_NetI2pRouterPeermanagerDBHistory 1
#endif
#undef RESTRICT_NetI2pRouterPeermanagerDBHistory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterPeermanagerDBHistory_) && (INCLUDE_ALL_NetI2pRouterPeermanagerDBHistory || defined(INCLUDE_NetI2pRouterPeermanagerDBHistory))
#define NetI2pRouterPeermanagerDBHistory_

@class JavaIoOutputStream;
@class JavaUtilProperties;
@class NetI2pRouterRouterContext;
@class NetI2pStatRateStat;

@interface NetI2pRouterPeermanagerDBHistory : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
                                               withNSString:(NSString *)statGroup;

- (void)coalesceStats;

- (NetI2pStatRateStat *)getFailedLookupRate;

- (NetI2pStatRateStat *)getInvalidReplyRate;

- (jlong)getLastLookupFailed;

- (jlong)getLastLookupSuccessful;

- (jlong)getLastStoreFailed;

- (jlong)getLastStoreSuccessful;

- (jlong)getUnpromptedDbStoreNew;

- (jlong)getUnpromptedDbStoreOld;

- (void)load__WithJavaUtilProperties:(JavaUtilProperties *)props;

- (void)lookupFailed;

- (void)lookupReplyWithInt:(jint)newPeers
                   withInt:(jint)oldPeers
                   withInt:(jint)invalid
                   withInt:(jint)duplicate;

- (void)lookupSuccessful;

- (void)setUnpromptedDbStoreNewWithLong:(jlong)num;

- (void)setUnpromptedDbStoreOldWithLong:(jlong)num;

- (void)storeWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (void)storeFailed;

- (void)storeSuccessful;

- (void)unpromptedStoreReceivedWithBoolean:(jboolean)wasNew;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterPeermanagerDBHistory)

FOUNDATION_EXPORT void NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(NetI2pRouterPeermanagerDBHistory *self, NetI2pRouterRouterContext *context, NSString *statGroup);

FOUNDATION_EXPORT NetI2pRouterPeermanagerDBHistory *new_NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(NetI2pRouterRouterContext *context, NSString *statGroup) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterPeermanagerDBHistory *create_NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(NetI2pRouterRouterContext *context, NSString *statGroup);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterPeermanagerDBHistory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterPeermanagerDBHistory")
