//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/gnu/crypto/prng/RandomEventListenerStandalone.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GnuCryptoPrngRandomEventListenerStandalone")
#ifdef RESTRICT_GnuCryptoPrngRandomEventListenerStandalone
#define INCLUDE_ALL_GnuCryptoPrngRandomEventListenerStandalone 0
#else
#define INCLUDE_ALL_GnuCryptoPrngRandomEventListenerStandalone 1
#endif
#undef RESTRICT_GnuCryptoPrngRandomEventListenerStandalone

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GnuCryptoPrngRandomEventListenerStandalone_) && (INCLUDE_ALL_GnuCryptoPrngRandomEventListenerStandalone || defined(INCLUDE_GnuCryptoPrngRandomEventListenerStandalone))
#define GnuCryptoPrngRandomEventListenerStandalone_

#define RESTRICT_JavaUtilEventListener 1
#define INCLUDE_JavaUtilEventListener 1
#include "java/util/EventListener.h"

@class GnuCryptoPrngRandomEventStandalone;

@protocol GnuCryptoPrngRandomEventListenerStandalone < JavaUtilEventListener, JavaObject >

- (void)addRandomEventWithGnuCryptoPrngRandomEventStandalone:(GnuCryptoPrngRandomEventStandalone *)event;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuCryptoPrngRandomEventListenerStandalone)

J2OBJC_TYPE_LITERAL_HEADER(GnuCryptoPrngRandomEventListenerStandalone)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_GnuCryptoPrngRandomEventListenerStandalone")
