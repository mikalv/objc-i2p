//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPRequestListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPRequestListener")
#ifdef RESTRICT_OrgCybergarageHttpHTTPRequestListener
#define INCLUDE_ALL_OrgCybergarageHttpHTTPRequestListener 0
#else
#define INCLUDE_ALL_OrgCybergarageHttpHTTPRequestListener 1
#endif
#undef RESTRICT_OrgCybergarageHttpHTTPRequestListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageHttpHTTPRequestListener_) && (INCLUDE_ALL_OrgCybergarageHttpHTTPRequestListener || defined(INCLUDE_OrgCybergarageHttpHTTPRequestListener))
#define OrgCybergarageHttpHTTPRequestListener_

@class OrgCybergarageHttpHTTPRequest;

@protocol OrgCybergarageHttpHTTPRequestListener < JavaObject >

- (void)httpRequestRecievedWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageHttpHTTPRequestListener)

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageHttpHTTPRequestListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageHttpHTTPRequestListener")
