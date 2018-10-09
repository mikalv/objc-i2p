//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPServerThread.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPServerThread")
#ifdef RESTRICT_OrgCybergarageHttpHTTPServerThread
#define INCLUDE_ALL_OrgCybergarageHttpHTTPServerThread 0
#else
#define INCLUDE_ALL_OrgCybergarageHttpHTTPServerThread 1
#endif
#undef RESTRICT_OrgCybergarageHttpHTTPServerThread

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageHttpHTTPServerThread_) && (INCLUDE_ALL_OrgCybergarageHttpHTTPServerThread || defined(INCLUDE_OrgCybergarageHttpHTTPServerThread))
#define OrgCybergarageHttpHTTPServerThread_

#define RESTRICT_JavaLangThread 1
#define INCLUDE_JavaLangThread 1
#include "java/lang/Thread.h"

@class JavaLangThreadGroup;
@class JavaNetSocket;
@class OrgCybergarageHttpHTTPServer;
@protocol JavaLangRunnable;

@interface OrgCybergarageHttpHTTPServerThread : JavaLangThread

#pragma mark Public

- (instancetype __nonnull)initWithOrgCybergarageHttpHTTPServer:(OrgCybergarageHttpHTTPServer *)httpServer
                                             withJavaNetSocket:(JavaNetSocket *)sock;

- (void)run;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangRunnable:(id<JavaLangRunnable>)arg0
                                      withNSString:(NSString *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1
                                         withNSString:(NSString *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                 withJavaLangRunnable:(id<JavaLangRunnable>)arg1
                                         withNSString:(NSString *)arg2
                                             withLong:(jlong)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)arg0
                                         withNSString:(NSString *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageHttpHTTPServerThread)

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPServerThread_initWithOrgCybergarageHttpHTTPServer_withJavaNetSocket_(OrgCybergarageHttpHTTPServerThread *self, OrgCybergarageHttpHTTPServer *httpServer, JavaNetSocket *sock);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPServerThread *new_OrgCybergarageHttpHTTPServerThread_initWithOrgCybergarageHttpHTTPServer_withJavaNetSocket_(OrgCybergarageHttpHTTPServer *httpServer, JavaNetSocket *sock) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPServerThread *create_OrgCybergarageHttpHTTPServerThread_initWithOrgCybergarageHttpHTTPServer_withJavaNetSocket_(OrgCybergarageHttpHTTPServer *httpServer, JavaNetSocket *sock);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageHttpHTTPServerThread)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPServerThread")