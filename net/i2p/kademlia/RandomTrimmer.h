//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/kademlia/RandomTrimmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pKademliaRandomTrimmer")
#ifdef RESTRICT_NetI2pKademliaRandomTrimmer
#define INCLUDE_ALL_NetI2pKademliaRandomTrimmer 0
#else
#define INCLUDE_ALL_NetI2pKademliaRandomTrimmer 1
#endif
#undef RESTRICT_NetI2pKademliaRandomTrimmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pKademliaRandomTrimmer_) && (INCLUDE_ALL_NetI2pKademliaRandomTrimmer || defined(INCLUDE_NetI2pKademliaRandomTrimmer))
#define NetI2pKademliaRandomTrimmer_

#define RESTRICT_NetI2pKademliaKBucketTrimmer 1
#define INCLUDE_NetI2pKademliaKBucketTrimmer 1
#include "net/i2p/kademlia/KBucketTrimmer.h"

@class NetI2pDataSimpleDataStructure;
@class NetI2pI2PAppContext;
@protocol NetI2pKademliaKBucket;

@interface NetI2pKademliaRandomTrimmer : NSObject < NetI2pKademliaKBucketTrimmer > {
 @public
  NetI2pI2PAppContext *_ctx_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                              withInt:(jint)max;

- (jboolean)trimWithNetI2pKademliaKBucket:(id<NetI2pKademliaKBucket>)kbucket
        withNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)toAdd;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pKademliaRandomTrimmer)

J2OBJC_FIELD_SETTER(NetI2pKademliaRandomTrimmer, _ctx_, NetI2pI2PAppContext *)

FOUNDATION_EXPORT void NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pKademliaRandomTrimmer *self, NetI2pI2PAppContext *ctx, jint max);

FOUNDATION_EXPORT NetI2pKademliaRandomTrimmer *new_NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *ctx, jint max) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pKademliaRandomTrimmer *create_NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *ctx, jint max);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pKademliaRandomTrimmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pKademliaRandomTrimmer")
