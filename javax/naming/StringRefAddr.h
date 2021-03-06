//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/StringRefAddr.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingStringRefAddr")
#ifdef RESTRICT_JavaxNamingStringRefAddr
#define INCLUDE_ALL_JavaxNamingStringRefAddr 0
#else
#define INCLUDE_ALL_JavaxNamingStringRefAddr 1
#endif
#undef RESTRICT_JavaxNamingStringRefAddr

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingStringRefAddr_) && (INCLUDE_ALL_JavaxNamingStringRefAddr || defined(INCLUDE_JavaxNamingStringRefAddr))
#define JavaxNamingStringRefAddr_

#define RESTRICT_JavaxNamingRefAddr 1
#define INCLUDE_JavaxNamingRefAddr 1
#include "javax/naming/RefAddr.h"

@interface JavaxNamingStringRefAddr : JavaxNamingRefAddr

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)addrType
                              withNSString:(NSString *)addr;

- (id)getContent;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingStringRefAddr)

FOUNDATION_EXPORT void JavaxNamingStringRefAddr_initWithNSString_withNSString_(JavaxNamingStringRefAddr *self, NSString *addrType, NSString *addr);

FOUNDATION_EXPORT JavaxNamingStringRefAddr *new_JavaxNamingStringRefAddr_initWithNSString_withNSString_(NSString *addrType, NSString *addr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingStringRefAddr *create_JavaxNamingStringRefAddr_initWithNSString_withNSString_(NSString *addrType, NSString *addr);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingStringRefAddr)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingStringRefAddr")
