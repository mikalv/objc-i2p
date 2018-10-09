//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPServerList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPServerList")
#ifdef RESTRICT_OrgCybergarageHttpHTTPServerList
#define INCLUDE_ALL_OrgCybergarageHttpHTTPServerList 0
#else
#define INCLUDE_ALL_OrgCybergarageHttpHTTPServerList 1
#endif
#undef RESTRICT_OrgCybergarageHttpHTTPServerList

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageHttpHTTPServerList_) && (INCLUDE_ALL_OrgCybergarageHttpHTTPServerList || defined(INCLUDE_OrgCybergarageHttpHTTPServerList))
#define OrgCybergarageHttpHTTPServerList_

#define RESTRICT_JavaUtilVector 1
#define INCLUDE_JavaUtilVector 1
#include "java/util/Vector.h"

@class IOSObjectArray;
@class OrgCybergarageHttpHTTPServer;
@protocol JavaUtilCollection;
@protocol OrgCybergarageHttpHTTPRequestListener;

@interface OrgCybergarageHttpHTTPServerList : JavaUtilVector

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaNetInetAddressArray:(IOSObjectArray *)list
                                                  withInt:(jint)port;

- (void)addRequestListenerWithOrgCybergarageHttpHTTPRequestListener:(id<OrgCybergarageHttpHTTPRequestListener>)listener;

- (void)close;

- (OrgCybergarageHttpHTTPServer *)elementAtWithInt:(jint)arg0;

- (OrgCybergarageHttpHTTPServer *)firstElement;

- (OrgCybergarageHttpHTTPServer *)getHTTPServerWithInt:(jint)n;

- (OrgCybergarageHttpHTTPServer *)getWithInt:(jint)arg0;

- (OrgCybergarageHttpHTTPServer *)lastElement;

- (jint)open;

- (jboolean)openWithInt:(jint)port;

- (OrgCybergarageHttpHTTPServer *)removeWithInt:(jint)arg0;

- (OrgCybergarageHttpHTTPServer *)setWithInt:(jint)arg0
                                      withId:(OrgCybergarageHttpHTTPServer *)arg1;

- (void)start;

- (void)stop;

#pragma mark Package-Private

- (OrgCybergarageHttpHTTPServer *)elementDataWithInt:(jint)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaUtilCollection:(id<JavaUtilCollection>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageHttpHTTPServerList)

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPServerList_init(OrgCybergarageHttpHTTPServerList *self);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPServerList *new_OrgCybergarageHttpHTTPServerList_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPServerList *create_OrgCybergarageHttpHTTPServerList_init(void);

FOUNDATION_EXPORT void OrgCybergarageHttpHTTPServerList_initWithJavaNetInetAddressArray_withInt_(OrgCybergarageHttpHTTPServerList *self, IOSObjectArray *list, jint port);

FOUNDATION_EXPORT OrgCybergarageHttpHTTPServerList *new_OrgCybergarageHttpHTTPServerList_initWithJavaNetInetAddressArray_withInt_(IOSObjectArray *list, jint port) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageHttpHTTPServerList *create_OrgCybergarageHttpHTTPServerList_initWithJavaNetInetAddressArray_withInt_(IOSObjectArray *list, jint port);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageHttpHTTPServerList)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPServerList")
