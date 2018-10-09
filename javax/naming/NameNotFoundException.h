//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/NameNotFoundException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingNameNotFoundException")
#ifdef RESTRICT_JavaxNamingNameNotFoundException
#define INCLUDE_ALL_JavaxNamingNameNotFoundException 0
#else
#define INCLUDE_ALL_JavaxNamingNameNotFoundException 1
#endif
#undef RESTRICT_JavaxNamingNameNotFoundException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingNameNotFoundException_) && (INCLUDE_ALL_JavaxNamingNameNotFoundException || defined(INCLUDE_JavaxNamingNameNotFoundException))
#define JavaxNamingNameNotFoundException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@interface JavaxNamingNameNotFoundException : JavaxNamingNamingException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingNameNotFoundException)

FOUNDATION_EXPORT void JavaxNamingNameNotFoundException_initWithNSString_(JavaxNamingNameNotFoundException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingNameNotFoundException *new_JavaxNamingNameNotFoundException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingNameNotFoundException *create_JavaxNamingNameNotFoundException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingNameNotFoundException_init(JavaxNamingNameNotFoundException *self);

FOUNDATION_EXPORT JavaxNamingNameNotFoundException *new_JavaxNamingNameNotFoundException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingNameNotFoundException *create_JavaxNamingNameNotFoundException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingNameNotFoundException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingNameNotFoundException")
