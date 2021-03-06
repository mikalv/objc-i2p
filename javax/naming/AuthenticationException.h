//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/AuthenticationException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingAuthenticationException")
#ifdef RESTRICT_JavaxNamingAuthenticationException
#define INCLUDE_ALL_JavaxNamingAuthenticationException 0
#else
#define INCLUDE_ALL_JavaxNamingAuthenticationException 1
#endif
#undef RESTRICT_JavaxNamingAuthenticationException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingAuthenticationException_) && (INCLUDE_ALL_JavaxNamingAuthenticationException || defined(INCLUDE_JavaxNamingAuthenticationException))
#define JavaxNamingAuthenticationException_

#define RESTRICT_JavaxNamingNamingSecurityException 1
#define INCLUDE_JavaxNamingNamingSecurityException 1
#include "javax/naming/NamingSecurityException.h"

@interface JavaxNamingAuthenticationException : JavaxNamingNamingSecurityException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingAuthenticationException)

FOUNDATION_EXPORT void JavaxNamingAuthenticationException_initWithNSString_(JavaxNamingAuthenticationException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingAuthenticationException *new_JavaxNamingAuthenticationException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingAuthenticationException *create_JavaxNamingAuthenticationException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingAuthenticationException_init(JavaxNamingAuthenticationException *self);

FOUNDATION_EXPORT JavaxNamingAuthenticationException *new_JavaxNamingAuthenticationException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingAuthenticationException *create_JavaxNamingAuthenticationException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingAuthenticationException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingAuthenticationException")
