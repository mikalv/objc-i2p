//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/kademlia/RandomIfOldTrimmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pKademliaRandomIfOldTrimmer")
#ifdef RESTRICT_NetI2pKademliaRandomIfOldTrimmer
#define INCLUDE_ALL_NetI2pKademliaRandomIfOldTrimmer 0
#else
#define INCLUDE_ALL_NetI2pKademliaRandomIfOldTrimmer 1
#endif
#undef RESTRICT_NetI2pKademliaRandomIfOldTrimmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pKademliaRandomIfOldTrimmer_) && (INCLUDE_ALL_NetI2pKademliaRandomIfOldTrimmer || defined(INCLUDE_NetI2pKademliaRandomIfOldTrimmer))
#define NetI2pKademliaRandomIfOldTrimmer_

#define RESTRICT_NetI2pKademliaRandomTrimmer 1
#define INCLUDE_NetI2pKademliaRandomTrimmer 1
#include "net/i2p/kademlia/RandomTrimmer.h"

@class NetI2pDataSimpleDataStructure;
@class NetI2pI2PAppContext;
@protocol NetI2pKademliaKBucket;

@interface NetI2pKademliaRandomIfOldTrimmer : NetI2pKademliaRandomTrimmer

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                              withInt:(jint)max;

- (jboolean)trimWithNetI2pKademliaKBucket:(id<NetI2pKademliaKBucket>)kbucket
        withNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)toAdd;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pKademliaRandomIfOldTrimmer)

FOUNDATION_EXPORT void NetI2pKademliaRandomIfOldTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pKademliaRandomIfOldTrimmer *self, NetI2pI2PAppContext *ctx, jint max);

FOUNDATION_EXPORT NetI2pKademliaRandomIfOldTrimmer *new_NetI2pKademliaRandomIfOldTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *ctx, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pKademliaRandomIfOldTrimmer *create_NetI2pKademliaRandomIfOldTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *ctx, jint max);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pKademliaRandomIfOldTrimmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pKademliaRandomIfOldTrimmer")
