//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/router/SortHelper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataRouterSortHelper")
#ifdef RESTRICT_NetI2pDataRouterSortHelper
#define INCLUDE_ALL_NetI2pDataRouterSortHelper 0
#else
#define INCLUDE_ALL_NetI2pDataRouterSortHelper 1
#endif
#undef RESTRICT_NetI2pDataRouterSortHelper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataRouterSortHelper_) && (INCLUDE_ALL_NetI2pDataRouterSortHelper || defined(INCLUDE_NetI2pDataRouterSortHelper))
#define NetI2pDataRouterSortHelper_

@protocol JavaUtilCollection;
@protocol JavaUtilList;

@interface NetI2pDataRouterSortHelper : NSObject

#pragma mark Public

+ (id<JavaUtilList>)sortStructuresWithJavaUtilCollection:(id<JavaUtilCollection>)dataStructures;

#pragma mark Package-Private

- (instancetype __nonnull)init;

+ (void)sortStructureListWithJavaUtilList:(id<JavaUtilList>)dataStructures;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataRouterSortHelper)

FOUNDATION_EXPORT void NetI2pDataRouterSortHelper_init(NetI2pDataRouterSortHelper *self);

FOUNDATION_EXPORT NetI2pDataRouterSortHelper *new_NetI2pDataRouterSortHelper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataRouterSortHelper *create_NetI2pDataRouterSortHelper_init(void);

FOUNDATION_EXPORT id<JavaUtilList> NetI2pDataRouterSortHelper_sortStructuresWithJavaUtilCollection_(id<JavaUtilCollection> dataStructures);

FOUNDATION_EXPORT void NetI2pDataRouterSortHelper_sortStructureListWithJavaUtilList_(id<JavaUtilList> dataStructures);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataRouterSortHelper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataRouterSortHelper")
