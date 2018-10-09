//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/NoSuchAttributeException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryNoSuchAttributeException")
#ifdef RESTRICT_JavaxNamingDirectoryNoSuchAttributeException
#define INCLUDE_ALL_JavaxNamingDirectoryNoSuchAttributeException 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryNoSuchAttributeException 1
#endif
#undef RESTRICT_JavaxNamingDirectoryNoSuchAttributeException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryNoSuchAttributeException_) && (INCLUDE_ALL_JavaxNamingDirectoryNoSuchAttributeException || defined(INCLUDE_JavaxNamingDirectoryNoSuchAttributeException))
#define JavaxNamingDirectoryNoSuchAttributeException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@interface JavaxNamingDirectoryNoSuchAttributeException : JavaxNamingNamingException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryNoSuchAttributeException)

FOUNDATION_EXPORT void JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(JavaxNamingDirectoryNoSuchAttributeException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingDirectoryNoSuchAttributeException *new_JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryNoSuchAttributeException *create_JavaxNamingDirectoryNoSuchAttributeException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingDirectoryNoSuchAttributeException_init(JavaxNamingDirectoryNoSuchAttributeException *self);

FOUNDATION_EXPORT JavaxNamingDirectoryNoSuchAttributeException *new_JavaxNamingDirectoryNoSuchAttributeException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryNoSuchAttributeException *create_JavaxNamingDirectoryNoSuchAttributeException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryNoSuchAttributeException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryNoSuchAttributeException")