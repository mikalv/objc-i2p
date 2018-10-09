//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/parser/ContainerFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonParserContainerFactory")
#ifdef RESTRICT_NetMinidevJsonParserContainerFactory
#define INCLUDE_ALL_NetMinidevJsonParserContainerFactory 0
#else
#define INCLUDE_ALL_NetMinidevJsonParserContainerFactory 1
#endif
#undef RESTRICT_NetMinidevJsonParserContainerFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonParserContainerFactory_) && (INCLUDE_ALL_NetMinidevJsonParserContainerFactory || defined(INCLUDE_NetMinidevJsonParserContainerFactory))
#define NetMinidevJsonParserContainerFactory_

@protocol JavaUtilList;
@protocol JavaUtilMap;

@protocol NetMinidevJsonParserContainerFactory < JavaObject >

- (id<JavaUtilMap>)createObjectContainer;

- (id<JavaUtilList>)createArrayContainer;

@end

@interface NetMinidevJsonParserContainerFactory : NSObject
@property (readonly, class, strong) id<NetMinidevJsonParserContainerFactory> FACTORY_SIMPLE NS_SWIFT_NAME(FACTORY_SIMPLE);
@property (readonly, class, strong) id<NetMinidevJsonParserContainerFactory> FACTORY_ORDERED NS_SWIFT_NAME(FACTORY_ORDERED);

+ (id<NetMinidevJsonParserContainerFactory>)FACTORY_SIMPLE;

+ (id<NetMinidevJsonParserContainerFactory>)FACTORY_ORDERED;

@end

J2OBJC_STATIC_INIT(NetMinidevJsonParserContainerFactory)

inline id<NetMinidevJsonParserContainerFactory> NetMinidevJsonParserContainerFactory_get_FACTORY_SIMPLE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<NetMinidevJsonParserContainerFactory> NetMinidevJsonParserContainerFactory_FACTORY_SIMPLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetMinidevJsonParserContainerFactory, FACTORY_SIMPLE, id<NetMinidevJsonParserContainerFactory>)

inline id<NetMinidevJsonParserContainerFactory> NetMinidevJsonParserContainerFactory_get_FACTORY_ORDERED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<NetMinidevJsonParserContainerFactory> NetMinidevJsonParserContainerFactory_FACTORY_ORDERED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetMinidevJsonParserContainerFactory, FACTORY_ORDERED, id<NetMinidevJsonParserContainerFactory>)

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonParserContainerFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonParserContainerFactory")
