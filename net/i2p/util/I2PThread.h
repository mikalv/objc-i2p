//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/I2PThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilI2PThread")
#ifdef RESTRICT_NetI2pUtilI2PThread
#define INCLUDE_ALL_NetI2pUtilI2PThread 0
#else
#define INCLUDE_ALL_NetI2pUtilI2PThread 1
#endif
#undef RESTRICT_NetI2pUtilI2PThread

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilI2PThread_) && (INCLUDE_ALL_NetI2pUtilI2PThread || defined(INCLUDE_NetI2pUtilI2PThread))
#define NetI2pUtilI2PThread_

#define RESTRICT_JavaLangThread 1
#define INCLUDE_JavaLangThread 1
#include "java/lang/Thread.h"

@class JavaLangOutOfMemoryError;
@class JavaLangThreadGroup;
@protocol JavaLangRunnable;
@protocol NetI2pUtilI2PThread_OOMEventListener;

@interface NetI2pUtilI2PThread : JavaLangThread

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)r;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)r
                                      withNSString:(NSString *)name;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)r
                                      withNSString:(NSString *)name
                                       withBoolean:(jboolean)isDaemon;

- (instancetype __nonnull)initWithNSString:(NSString *)name;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)g
                                 withJavaLangRunnable:(id<JavaLangRunnable>)r;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)group
                                 withJavaLangRunnable:(id<JavaLangRunnable>)r
                                         withNSString:(NSString *)name;

+ (void)addOOMEventListenerWithNetI2pUtilI2PThread_OOMEventListener:(id<NetI2pUtilI2PThread_OOMEventListener>)lsnr;

+ (void)removeOOMEventListenerWithNetI2pUtilI2PThread_OOMEventListener:(id<NetI2pUtilI2PThread_OOMEventListener>)lsnr;

- (void)run;

- (void)start;

#pragma mark Protected

- (void)fireOOMWithJavaLangOutOfMemoryError:(JavaLangOutOfMemoryError *)oom;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1
                                         withNSString:(NSString *)arg2
                                             withLong:(jlong)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                         withNSString:(NSString *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pUtilI2PThread)

FOUNDATION_EXPORT void NetI2pUtilI2PThread_init(NetI2pUtilI2PThread *self);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_init(void);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_initWithNSString_(NetI2pUtilI2PThread *self, NSString *name);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_initWithNSString_(NSString *name);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_initWithJavaLangRunnable_(NetI2pUtilI2PThread *self, id<JavaLangRunnable> r);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_initWithJavaLangRunnable_(id<JavaLangRunnable> r) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_initWithJavaLangRunnable_(id<JavaLangRunnable> r);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_(NetI2pUtilI2PThread *self, id<JavaLangRunnable> r, NSString *name);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_(id<JavaLangRunnable> r, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_(id<JavaLangRunnable> r, NSString *name);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_withBoolean_(NetI2pUtilI2PThread *self, id<JavaLangRunnable> r, NSString *name, jboolean isDaemon);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_withBoolean_(id<JavaLangRunnable> r, NSString *name, jboolean isDaemon) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_withBoolean_(id<JavaLangRunnable> r, NSString *name, jboolean isDaemon);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_initWithJavaLangThreadGroup_withJavaLangRunnable_(NetI2pUtilI2PThread *self, JavaLangThreadGroup *g, id<JavaLangRunnable> r);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_initWithJavaLangThreadGroup_withJavaLangRunnable_(JavaLangThreadGroup *g, id<JavaLangRunnable> r) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_initWithJavaLangThreadGroup_withJavaLangRunnable_(JavaLangThreadGroup *g, id<JavaLangRunnable> r);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_initWithJavaLangThreadGroup_withJavaLangRunnable_withNSString_(NetI2pUtilI2PThread *self, JavaLangThreadGroup *group, id<JavaLangRunnable> r, NSString *name);

FOUNDATION_EXPORT NetI2pUtilI2PThread *new_NetI2pUtilI2PThread_initWithJavaLangThreadGroup_withJavaLangRunnable_withNSString_(JavaLangThreadGroup *group, id<JavaLangRunnable> r, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilI2PThread *create_NetI2pUtilI2PThread_initWithJavaLangThreadGroup_withJavaLangRunnable_withNSString_(JavaLangThreadGroup *group, id<JavaLangRunnable> r, NSString *name);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_addOOMEventListenerWithNetI2pUtilI2PThread_OOMEventListener_(id<NetI2pUtilI2PThread_OOMEventListener> lsnr);

FOUNDATION_EXPORT void NetI2pUtilI2PThread_removeOOMEventListenerWithNetI2pUtilI2PThread_OOMEventListener_(id<NetI2pUtilI2PThread_OOMEventListener> lsnr);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilI2PThread)

#endif

#if !defined (NetI2pUtilI2PThread_OOMEventListener_) && (INCLUDE_ALL_NetI2pUtilI2PThread || defined(INCLUDE_NetI2pUtilI2PThread_OOMEventListener))
#define NetI2pUtilI2PThread_OOMEventListener_

@class JavaLangOutOfMemoryError;

@protocol NetI2pUtilI2PThread_OOMEventListener < JavaObject >

- (void)outOfMemoryWithJavaLangOutOfMemoryError:(JavaLangOutOfMemoryError *)err;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilI2PThread_OOMEventListener)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilI2PThread_OOMEventListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilI2PThread")