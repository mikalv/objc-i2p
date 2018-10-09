//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/ArraySet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilArraySet")
#ifdef RESTRICT_NetI2pRouterUtilArraySet
#define INCLUDE_ALL_NetI2pRouterUtilArraySet 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilArraySet 1
#endif
#undef RESTRICT_NetI2pRouterUtilArraySet

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilArraySet_) && (INCLUDE_ALL_NetI2pRouterUtilArraySet || defined(INCLUDE_NetI2pRouterUtilArraySet))
#define NetI2pRouterUtilArraySet_

#define RESTRICT_JavaUtilAbstractSet 1
#define INCLUDE_JavaUtilAbstractSet 1
#include "java/util/AbstractSet.h"

#define RESTRICT_JavaUtilSet 1
#define INCLUDE_JavaUtilSet 1
#include "java/util/Set.h"

@protocol JavaUtilCollection;
@protocol JavaUtilIterator;

@interface NetI2pRouterUtilArraySet : JavaUtilAbstractSet < JavaUtilSet >
@property (readonly, class) jint MAX_CAPACITY NS_SWIFT_NAME(MAX_CAPACITY);

+ (jint)MAX_CAPACITY;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaUtilCollection:(id<JavaUtilCollection>)c;

- (instancetype __nonnull)initWithInt:(jint)capacity;

- (instancetype __nonnull)initWithInt:(jint)capacity
                          withBoolean:(jboolean)throwOnFull;

- (jboolean)addWithId:(id)o;

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (jboolean)isEmpty;

- (id<JavaUtilIterator>)iterator;

- (jboolean)removeWithId:(id)o;

- (jint)size;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilArraySet)

inline jint NetI2pRouterUtilArraySet_get_MAX_CAPACITY(void);
#define NetI2pRouterUtilArraySet_MAX_CAPACITY 32
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterUtilArraySet, MAX_CAPACITY, jint)

FOUNDATION_EXPORT void NetI2pRouterUtilArraySet_init(NetI2pRouterUtilArraySet *self);

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *new_NetI2pRouterUtilArraySet_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *create_NetI2pRouterUtilArraySet_init(void);

FOUNDATION_EXPORT void NetI2pRouterUtilArraySet_initWithJavaUtilCollection_(NetI2pRouterUtilArraySet *self, id<JavaUtilCollection> c);

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *new_NetI2pRouterUtilArraySet_initWithJavaUtilCollection_(id<JavaUtilCollection> c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *create_NetI2pRouterUtilArraySet_initWithJavaUtilCollection_(id<JavaUtilCollection> c);

FOUNDATION_EXPORT void NetI2pRouterUtilArraySet_initWithInt_(NetI2pRouterUtilArraySet *self, jint capacity);

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *new_NetI2pRouterUtilArraySet_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *create_NetI2pRouterUtilArraySet_initWithInt_(jint capacity);

FOUNDATION_EXPORT void NetI2pRouterUtilArraySet_initWithInt_withBoolean_(NetI2pRouterUtilArraySet *self, jint capacity, jboolean throwOnFull);

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *new_NetI2pRouterUtilArraySet_initWithInt_withBoolean_(jint capacity, jboolean throwOnFull) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilArraySet *create_NetI2pRouterUtilArraySet_initWithInt_withBoolean_(jint capacity, jboolean throwOnFull);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilArraySet)

#endif

#if !defined (NetI2pRouterUtilArraySet_SetFullException_) && (INCLUDE_ALL_NetI2pRouterUtilArraySet || defined(INCLUDE_NetI2pRouterUtilArraySet_SetFullException))
#define NetI2pRouterUtilArraySet_SetFullException_

#define RESTRICT_JavaLangIllegalStateException 1
#define INCLUDE_JavaLangIllegalStateException 1
#include "java/lang/IllegalStateException.h"

@class JavaLangThrowable;

@interface NetI2pRouterUtilArraySet_SetFullException : JavaLangIllegalStateException

#pragma mark Public

- (instancetype __nonnull)init;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilArraySet_SetFullException)

FOUNDATION_EXPORT void NetI2pRouterUtilArraySet_SetFullException_init(NetI2pRouterUtilArraySet_SetFullException *self);

FOUNDATION_EXPORT NetI2pRouterUtilArraySet_SetFullException *new_NetI2pRouterUtilArraySet_SetFullException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilArraySet_SetFullException *create_NetI2pRouterUtilArraySet_SetFullException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilArraySet_SetFullException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilArraySet")