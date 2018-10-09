//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InvalidAttributesException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributesException")
#ifdef RESTRICT_JavaxNamingDirectoryInvalidAttributesException
#define INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributesException 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributesException 1
#endif
#undef RESTRICT_JavaxNamingDirectoryInvalidAttributesException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryInvalidAttributesException_) && (INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributesException || defined(INCLUDE_JavaxNamingDirectoryInvalidAttributesException))
#define JavaxNamingDirectoryInvalidAttributesException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@interface JavaxNamingDirectoryInvalidAttributesException : JavaxNamingNamingException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryInvalidAttributesException)

FOUNDATION_EXPORT void JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(JavaxNamingDirectoryInvalidAttributesException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributesException *new_JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributesException *create_JavaxNamingDirectoryInvalidAttributesException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingDirectoryInvalidAttributesException_init(JavaxNamingDirectoryInvalidAttributesException *self);

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributesException *new_JavaxNamingDirectoryInvalidAttributesException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributesException *create_JavaxNamingDirectoryInvalidAttributesException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryInvalidAttributesException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributesException")