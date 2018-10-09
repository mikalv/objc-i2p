//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPSocket.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPSocket")
#ifdef RESTRICT_OrgCybergarageHttpHTTPSocket
#define INCLUDE_ALL_OrgCybergarageHttpHTTPSocket 0
#else
#define INCLUDE_ALL_OrgCybergarageHttpHTTPSocket 1
#endif
#undef RESTRICT_OrgCybergarageHttpHTTPSocket

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageHttpHTTPSocket_) && (INCLUDE_ALL_OrgCybergarageHttpHTTPSocket || defined(INCLUDE_OrgCybergarageHttpHTTPSocket))
#define OrgCybergarageHttpHTTPSocket_

@class JavaIoInputStream;
@class JavaNetSocket;
@class OrgCybergarageHttpHTTPResponse;

@interface OrgCybergarageHttpHTTPSocket : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithOrgCybergarageHttpHTTPSocket:(OrgCybergarageHttpHTTPSocket *)socket;

- (instancetype __nonnull)initWithJavaNetSocket:(JavaNetSocket *)socket;

- (jboolean)close;

- (void)java_finalize;

- (JavaIoInputStream *)getInputStream;

- (NSString *)getLocalAddress;

- (jint)getLocalPort;

- (JavaNetSocket *)getSocket;

- (jboolean)open;

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes
                                          withLong:(jlong)contentOffset
                                          withLong:(jlong)contentLength
                                       withBoolean:(jboolean)isOnlyHeader;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageHttpHTTPSocket)

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(OrgCybergarageHttpHTTPSocket *self, JavaNetSocket *socket);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPSocket *new_OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(JavaNetSocket *socket) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPSocket *create_OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(JavaNetSocket *socket);

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *self, OrgCybergarageHttpHTTPSocket *socket);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPSocket *new_OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *socket) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPSocket *create_OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *socket);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageHttpHTTPSocket)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPSocket")
