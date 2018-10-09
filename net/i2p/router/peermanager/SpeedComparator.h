//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/SpeedComparator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterPeermanagerSpeedComparator")
#ifdef RESTRICT_NetI2pRouterPeermanagerSpeedComparator
#define INCLUDE_ALL_NetI2pRouterPeermanagerSpeedComparator 0
#else
#define INCLUDE_ALL_NetI2pRouterPeermanagerSpeedComparator 1
#endif
#undef RESTRICT_NetI2pRouterPeermanagerSpeedComparator

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterPeermanagerSpeedComparator_) && (INCLUDE_ALL_NetI2pRouterPeermanagerSpeedComparator || defined(INCLUDE_NetI2pRouterPeermanagerSpeedComparator))
#define NetI2pRouterPeermanagerSpeedComparator_

#define RESTRICT_JavaUtilComparator 1
#define INCLUDE_JavaUtilComparator 1
#include "java/util/Comparator.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class NetI2pRouterPeermanagerPeerProfile;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilFunctionToDoubleFunction;
@protocol JavaUtilFunctionToIntFunction;
@protocol JavaUtilFunctionToLongFunction;

@interface NetI2pRouterPeermanagerSpeedComparator : NSObject < JavaUtilComparator, JavaIoSerializable >

#pragma mark Public

- (jint)compareWithId:(NetI2pRouterPeermanagerPeerProfile *)left
               withId:(NetI2pRouterPeermanagerPeerProfile *)right;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterPeermanagerSpeedComparator)

FOUNDATION_EXPORT void NetI2pRouterPeermanagerSpeedComparator_init(NetI2pRouterPeermanagerSpeedComparator *self);

FOUNDATION_EXPORT NetI2pRouterPeermanagerSpeedComparator *new_NetI2pRouterPeermanagerSpeedComparator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterPeermanagerSpeedComparator *create_NetI2pRouterPeermanagerSpeedComparator_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterPeermanagerSpeedComparator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterPeermanagerSpeedComparator")