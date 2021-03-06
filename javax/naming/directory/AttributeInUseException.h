//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/AttributeInUseException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryAttributeInUseException")
#ifdef RESTRICT_JavaxNamingDirectoryAttributeInUseException
#define INCLUDE_ALL_JavaxNamingDirectoryAttributeInUseException 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryAttributeInUseException 1
#endif
#undef RESTRICT_JavaxNamingDirectoryAttributeInUseException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryAttributeInUseException_) && (INCLUDE_ALL_JavaxNamingDirectoryAttributeInUseException || defined(INCLUDE_JavaxNamingDirectoryAttributeInUseException))
#define JavaxNamingDirectoryAttributeInUseException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@interface JavaxNamingDirectoryAttributeInUseException : JavaxNamingNamingException

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryAttributeInUseException)

FOUNDATION_EXPORT void JavaxNamingDirectoryAttributeInUseException_initWithNSString_(JavaxNamingDirectoryAttributeInUseException *self, NSString *explanation);

FOUNDATION_EXPORT JavaxNamingDirectoryAttributeInUseException *new_JavaxNamingDirectoryAttributeInUseException_initWithNSString_(NSString *explanation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryAttributeInUseException *create_JavaxNamingDirectoryAttributeInUseException_initWithNSString_(NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingDirectoryAttributeInUseException_init(JavaxNamingDirectoryAttributeInUseException *self);

FOUNDATION_EXPORT JavaxNamingDirectoryAttributeInUseException *new_JavaxNamingDirectoryAttributeInUseException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryAttributeInUseException *create_JavaxNamingDirectoryAttributeInUseException_init(void);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryAttributeInUseException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryAttributeInUseException")
