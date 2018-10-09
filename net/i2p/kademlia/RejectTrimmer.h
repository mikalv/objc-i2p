//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/kademlia/RejectTrimmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pKademliaRejectTrimmer")
#ifdef RESTRICT_NetI2pKademliaRejectTrimmer
#define INCLUDE_ALL_NetI2pKademliaRejectTrimmer 0
#else
#define INCLUDE_ALL_NetI2pKademliaRejectTrimmer 1
#endif
#undef RESTRICT_NetI2pKademliaRejectTrimmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pKademliaRejectTrimmer_) && (INCLUDE_ALL_NetI2pKademliaRejectTrimmer || defined(INCLUDE_NetI2pKademliaRejectTrimmer))
#define NetI2pKademliaRejectTrimmer_

#define RESTRICT_NetI2pKademliaKBucketTrimmer 1
#define INCLUDE_NetI2pKademliaKBucketTrimmer 1
#include "net/i2p/kademlia/KBucketTrimmer.h"

@class NetI2pDataSimpleDataStructure;
@protocol NetI2pKademliaKBucket;

@interface NetI2pKademliaRejectTrimmer : NSObject < NetI2pKademliaKBucketTrimmer >

#pragma mark Public

- (instancetype __nonnull)init;

- (jboolean)trimWithNetI2pKademliaKBucket:(id<NetI2pKademliaKBucket>)kbucket
        withNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)toAdd;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pKademliaRejectTrimmer)

FOUNDATION_EXPORT void NetI2pKademliaRejectTrimmer_init(NetI2pKademliaRejectTrimmer *self);

FOUNDATION_EXPORT NetI2pKademliaRejectTrimmer *new_NetI2pKademliaRejectTrimmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pKademliaRejectTrimmer *create_NetI2pKademliaRejectTrimmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pKademliaRejectTrimmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pKademliaRejectTrimmer")
