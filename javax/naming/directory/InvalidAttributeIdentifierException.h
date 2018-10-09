//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InvalidAttributeIdentifierException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeIdentifierException")
#ifdef RESTRICT_JavaxNamingDirectoryInvalidAttributeIdentifierException
#define INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeIdentifierException 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeIdentifierException 1
#endif
#undef RESTRICT_JavaxNamingDirectoryInvalidAttributeIdentifierException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryInvalidAttributeIdentifierException_) && (INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeIdentifierException || defined(INCLUDE_JavaxNamingDirectoryInvalidAttributeIdentifierException))
#define JavaxNamingDirectoryInvalidAttributeIdentifierException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@interface JavaxNamingDirectoryInvalidAttributeIdentifierException : JavaxNamingNamingException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryInvalidAttributeIdentifierException)

FOUNDATION_EXPORT void JavaxNamingDirectoryInvalidAttributeIdentifierException_initWithNSString_(JavaxNamingDirectoryInvalidAttributeIdentifierException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeIdentifierException *new_JavaxNamingDirectoryInvalidAttributeIdentifierException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeIdentifierException *create_JavaxNamingDirectoryInvalidAttributeIdentifierException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingDirectoryInvalidAttributeIdentifierException_init(JavaxNamingDirectoryInvalidAttributeIdentifierException *self);

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeIdentifierException *new_JavaxNamingDirectoryInvalidAttributeIdentifierException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeIdentifierException *create_JavaxNamingDirectoryInvalidAttributeIdentifierException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryInvalidAttributeIdentifierException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeIdentifierException")
