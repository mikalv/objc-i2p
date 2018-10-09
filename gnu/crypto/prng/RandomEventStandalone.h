//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/gnu/crypto/prng/RandomEventStandalone.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GnuCryptoPrngRandomEventStandalone")
#ifdef RESTRICT_GnuCryptoPrngRandomEventStandalone
#define INCLUDE_ALL_GnuCryptoPrngRandomEventStandalone 0
#else
#define INCLUDE_ALL_GnuCryptoPrngRandomEventStandalone 1
#endif
#undef RESTRICT_GnuCryptoPrngRandomEventStandalone

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GnuCryptoPrngRandomEventStandalone_) && (INCLUDE_ALL_GnuCryptoPrngRandomEventStandalone || defined(INCLUDE_GnuCryptoPrngRandomEventStandalone))
#define GnuCryptoPrngRandomEventStandalone_

#define RESTRICT_JavaUtilEventObject 1
#define INCLUDE_JavaUtilEventObject 1
#include "java/util/EventObject.h"

@class IOSByteArray;

@interface GnuCryptoPrngRandomEventStandalone : JavaUtilEventObject

#pragma mark Public

- (instancetype __nonnull)initWithId:(id)source
                            withByte:(jbyte)sourceNumber
                            withByte:(jbyte)poolNumber
                       withByteArray:(IOSByteArray *)data;

- (IOSByteArray *)getData;

- (jbyte)getPoolNumber;

- (jbyte)getSourceNumber;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithId:(id)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuCryptoPrngRandomEventStandalone)

FOUNDATION_EXPORT void GnuCryptoPrngRandomEventStandalone_initWithId_withByte_withByte_withByteArray_(GnuCryptoPrngRandomEventStandalone *self, id source, jbyte sourceNumber, jbyte poolNumber, IOSByteArray *data);

FOUNDATION_EXPORT GnuCryptoPrngRandomEventStandalone *new_GnuCryptoPrngRandomEventStandalone_initWithId_withByte_withByte_withByteArray_(id source, jbyte sourceNumber, jbyte poolNumber, IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GnuCryptoPrngRandomEventStandalone *create_GnuCryptoPrngRandomEventStandalone_initWithId_withByte_withByte_withByteArray_(id source, jbyte sourceNumber, jbyte poolNumber, IOSByteArray *data);

J2OBJC_TYPE_LITERAL_HEADER(GnuCryptoPrngRandomEventStandalone)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_GnuCryptoPrngRandomEventStandalone")
