//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/JSONObject.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonJSONObject")
#ifdef RESTRICT_NetMinidevJsonJSONObject
#define INCLUDE_ALL_NetMinidevJsonJSONObject 0
#else
#define INCLUDE_ALL_NetMinidevJsonJSONObject 1
#endif
#undef RESTRICT_NetMinidevJsonJSONObject

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonJSONObject_) && (INCLUDE_ALL_NetMinidevJsonJSONObject || defined(INCLUDE_NetMinidevJsonJSONObject))
#define NetMinidevJsonJSONObject_

#define RESTRICT_JavaUtilHashMap 1
#define INCLUDE_JavaUtilHashMap 1
#include "java/util/HashMap.h"

#define RESTRICT_NetMinidevJsonJSONAware 1
#define INCLUDE_NetMinidevJsonJSONAware 1
#include "net/minidev/json/JSONAware.h"

#define RESTRICT_NetMinidevJsonJSONAwareEx 1
#define INCLUDE_NetMinidevJsonJSONAwareEx 1
#include "net/minidev/json/JSONAwareEx.h"

#define RESTRICT_NetMinidevJsonJSONStreamAwareEx 1
#define INCLUDE_NetMinidevJsonJSONStreamAwareEx 1
#include "net/minidev/json/JSONStreamAwareEx.h"

@class NetMinidevJsonJSONArray;
@class NetMinidevJsonJSONStyle;
@protocol JavaLangAppendable;
@protocol JavaUtilMap;

@interface NetMinidevJsonJSONObject : JavaUtilHashMap < NetMinidevJsonJSONAware, NetMinidevJsonJSONAwareEx, NetMinidevJsonJSONStreamAwareEx >

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (NSString *)escapeWithNSString:(NSString *)s;

- (void)mergeWithId:(id)o2;

- (NSString *)toJSONString;

- (NSString *)toJSONStringWithNetMinidevJsonJSONStyle:(NetMinidevJsonJSONStyle *)compression;

+ (NSString *)toJSONStringWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (NSString *)toJSONStringWithJavaUtilMap:(id<JavaUtilMap>)map
              withNetMinidevJsonJSONStyle:(NetMinidevJsonJSONStyle *)compression;

- (NSString *)description;

- (NSString *)toStringWithNetMinidevJsonJSONStyle:(NetMinidevJsonJSONStyle *)compression;

+ (void)writeJSONWithJavaUtilMap:(id<JavaUtilMap>)map
          withJavaLangAppendable:(id<JavaLangAppendable>)outArg;

+ (void)writeJSONWithJavaUtilMap:(id<JavaUtilMap>)map
          withJavaLangAppendable:(id<JavaLangAppendable>)outArg
     withNetMinidevJsonJSONStyle:(NetMinidevJsonJSONStyle *)compression;

- (void)writeJSONStringWithJavaLangAppendable:(id<JavaLangAppendable>)outArg;

- (void)writeJSONStringWithJavaLangAppendable:(id<JavaLangAppendable>)outArg
                  withNetMinidevJsonJSONStyle:(NetMinidevJsonJSONStyle *)compression;

#pragma mark Protected

+ (NetMinidevJsonJSONArray *)mergeWithNetMinidevJsonJSONArray:(NetMinidevJsonJSONArray *)o1
                                                       withId:(id)o2;

+ (NetMinidevJsonJSONObject *)mergeWithNetMinidevJsonJSONObject:(NetMinidevJsonJSONObject *)o1
                                                         withId:(id)o2;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                            withFloat:(jfloat)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetMinidevJsonJSONObject)

FOUNDATION_EXPORT void NetMinidevJsonJSONObject_init(NetMinidevJsonJSONObject *self);

FOUNDATION_EXPORT NetMinidevJsonJSONObject *new_NetMinidevJsonJSONObject_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonJSONObject *create_NetMinidevJsonJSONObject_init(void);

FOUNDATION_EXPORT NSString *NetMinidevJsonJSONObject_escapeWithNSString_(NSString *s);

FOUNDATION_EXPORT NSString *NetMinidevJsonJSONObject_toJSONStringWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT NSString *NetMinidevJsonJSONObject_toJSONStringWithJavaUtilMap_withNetMinidevJsonJSONStyle_(id<JavaUtilMap> map, NetMinidevJsonJSONStyle *compression);

FOUNDATION_EXPORT void NetMinidevJsonJSONObject_initWithJavaUtilMap_(NetMinidevJsonJSONObject *self, id<JavaUtilMap> map);

FOUNDATION_EXPORT NetMinidevJsonJSONObject *new_NetMinidevJsonJSONObject_initWithJavaUtilMap_(id<JavaUtilMap> map) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonJSONObject *create_NetMinidevJsonJSONObject_initWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT void NetMinidevJsonJSONObject_writeJSONWithJavaUtilMap_withJavaLangAppendable_(id<JavaUtilMap> map, id<JavaLangAppendable> outArg);

FOUNDATION_EXPORT void NetMinidevJsonJSONObject_writeJSONWithJavaUtilMap_withJavaLangAppendable_withNetMinidevJsonJSONStyle_(id<JavaUtilMap> map, id<JavaLangAppendable> outArg, NetMinidevJsonJSONStyle *compression);

FOUNDATION_EXPORT NetMinidevJsonJSONObject *NetMinidevJsonJSONObject_mergeWithNetMinidevJsonJSONObject_withId_(NetMinidevJsonJSONObject *o1, id o2);

FOUNDATION_EXPORT NetMinidevJsonJSONArray *NetMinidevJsonJSONObject_mergeWithNetMinidevJsonJSONArray_withId_(NetMinidevJsonJSONArray *o1, id o2);

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonJSONObject)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonJSONObject")
