//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InvalidAttributeValueException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeValueException")
#ifdef RESTRICT_JavaxNamingDirectoryInvalidAttributeValueException
#define INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeValueException 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeValueException 1
#endif
#undef RESTRICT_JavaxNamingDirectoryInvalidAttributeValueException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryInvalidAttributeValueException_) && (INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeValueException || defined(INCLUDE_JavaxNamingDirectoryInvalidAttributeValueException))
#define JavaxNamingDirectoryInvalidAttributeValueException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@interface JavaxNamingDirectoryInvalidAttributeValueException : JavaxNamingNamingException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryInvalidAttributeValueException)

FOUNDATION_EXPORT void JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(JavaxNamingDirectoryInvalidAttributeValueException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeValueException *new_JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeValueException *create_JavaxNamingDirectoryInvalidAttributeValueException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingDirectoryInvalidAttributeValueException_init(JavaxNamingDirectoryInvalidAttributeValueException *self);

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeValueException *new_JavaxNamingDirectoryInvalidAttributeValueException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryInvalidAttributeValueException *create_JavaxNamingDirectoryInvalidAttributeValueException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryInvalidAttributeValueException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryInvalidAttributeValueException")
