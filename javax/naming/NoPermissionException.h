//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/NoPermissionException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingNoPermissionException")
#ifdef RESTRICT_JavaxNamingNoPermissionException
#define INCLUDE_ALL_JavaxNamingNoPermissionException 0
#else
#define INCLUDE_ALL_JavaxNamingNoPermissionException 1
#endif
#undef RESTRICT_JavaxNamingNoPermissionException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingNoPermissionException_) && (INCLUDE_ALL_JavaxNamingNoPermissionException || defined(INCLUDE_JavaxNamingNoPermissionException))
#define JavaxNamingNoPermissionException_

#define RESTRICT_JavaxNamingNamingSecurityException 1
#define INCLUDE_JavaxNamingNamingSecurityException 1
#include "javax/naming/NamingSecurityException.h"

@interface JavaxNamingNoPermissionException : JavaxNamingNamingSecurityException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingNoPermissionException)

FOUNDATION_EXPORT void JavaxNamingNoPermissionException_initWithNSString_(JavaxNamingNoPermissionException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingNoPermissionException *new_JavaxNamingNoPermissionException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingNoPermissionException *create_JavaxNamingNoPermissionException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingNoPermissionException_init(JavaxNamingNoPermissionException *self);

FOUNDATION_EXPORT JavaxNamingNoPermissionException *new_JavaxNamingNoPermissionException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingNoPermissionException *create_JavaxNamingNoPermissionException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingNoPermissionException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingNoPermissionException")