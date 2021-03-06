//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/event/EventListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpEventEventListener")
#ifdef RESTRICT_OrgCybergarageUpnpEventEventListener
#define INCLUDE_ALL_OrgCybergarageUpnpEventEventListener 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpEventEventListener 1
#endif
#undef RESTRICT_OrgCybergarageUpnpEventEventListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpEventEventListener_) && (INCLUDE_ALL_OrgCybergarageUpnpEventEventListener || defined(INCLUDE_OrgCybergarageUpnpEventEventListener))
#define OrgCybergarageUpnpEventEventListener_

@protocol OrgCybergarageUpnpEventEventListener < JavaObject >

- (void)eventNotifyReceivedWithNSString:(NSString *)uuid
                               withLong:(jlong)seq
                           withNSString:(NSString *)varName
                           withNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpEventEventListener)

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpEventEventListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpEventEventListener")
