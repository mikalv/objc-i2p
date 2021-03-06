//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/EventDispatcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilEventDispatcher")
#ifdef RESTRICT_NetI2pUtilEventDispatcher
#define INCLUDE_ALL_NetI2pUtilEventDispatcher 0
#else
#define INCLUDE_ALL_NetI2pUtilEventDispatcher 1
#endif
#undef RESTRICT_NetI2pUtilEventDispatcher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilEventDispatcher_) && (INCLUDE_ALL_NetI2pUtilEventDispatcher || defined(INCLUDE_NetI2pUtilEventDispatcher))
#define NetI2pUtilEventDispatcher_

@protocol JavaUtilSet;

@protocol NetI2pUtilEventDispatcher < JavaObject >

- (id<NetI2pUtilEventDispatcher>)getEventDispatcher;

- (void)attachEventDispatcherWithNetI2pUtilEventDispatcher:(id<NetI2pUtilEventDispatcher>)iev;

- (void)detachEventDispatcherWithNetI2pUtilEventDispatcher:(id<NetI2pUtilEventDispatcher>)iev;

- (void)notifyEventWithNSString:(NSString *)event
                         withId:(id)args;

- (id)getEventValueWithNSString:(NSString *)name;

- (id<JavaUtilSet>)getEvents;

- (void)ignoreEvents;

- (void)unIgnoreEvents;

- (id)waitEventValueWithNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilEventDispatcher)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilEventDispatcher)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilEventDispatcher")
