//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/JSONAwareEx.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonJSONAwareEx")
#ifdef RESTRICT_NetMinidevJsonJSONAwareEx
#define INCLUDE_ALL_NetMinidevJsonJSONAwareEx 0
#else
#define INCLUDE_ALL_NetMinidevJsonJSONAwareEx 1
#endif
#undef RESTRICT_NetMinidevJsonJSONAwareEx

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonJSONAwareEx_) && (INCLUDE_ALL_NetMinidevJsonJSONAwareEx || defined(INCLUDE_NetMinidevJsonJSONAwareEx))
#define NetMinidevJsonJSONAwareEx_

#define RESTRICT_NetMinidevJsonJSONAware 1
#define INCLUDE_NetMinidevJsonJSONAware 1
#include "net/minidev/json/JSONAware.h"

@class NetMinidevJsonJSONStyle;

@protocol NetMinidevJsonJSONAwareEx < NetMinidevJsonJSONAware, JavaObject >

- (NSString *)toJSONStringWithNetMinidevJsonJSONStyle:(NetMinidevJsonJSONStyle *)compression;

@end

J2OBJC_EMPTY_STATIC_INIT(NetMinidevJsonJSONAwareEx)

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonJSONAwareEx)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonJSONAwareEx")
