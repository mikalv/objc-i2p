//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/kademlia/SelectionCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pKademliaSelectionCollector")
#ifdef RESTRICT_NetI2pKademliaSelectionCollector
#define INCLUDE_ALL_NetI2pKademliaSelectionCollector 0
#else
#define INCLUDE_ALL_NetI2pKademliaSelectionCollector 1
#endif
#undef RESTRICT_NetI2pKademliaSelectionCollector

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pKademliaSelectionCollector_) && (INCLUDE_ALL_NetI2pKademliaSelectionCollector || defined(INCLUDE_NetI2pKademliaSelectionCollector))
#define NetI2pKademliaSelectionCollector_

@class NetI2pDataSimpleDataStructure;

@protocol NetI2pKademliaSelectionCollector < JavaObject >

- (void)addWithNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)entry_;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pKademliaSelectionCollector)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pKademliaSelectionCollector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pKademliaSelectionCollector")