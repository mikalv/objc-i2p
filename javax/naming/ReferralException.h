//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ReferralException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingReferralException")
#ifdef RESTRICT_JavaxNamingReferralException
#define INCLUDE_ALL_JavaxNamingReferralException 0
#else
#define INCLUDE_ALL_JavaxNamingReferralException 1
#endif
#undef RESTRICT_JavaxNamingReferralException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingReferralException_) && (INCLUDE_ALL_JavaxNamingReferralException || defined(INCLUDE_JavaxNamingReferralException))
#define JavaxNamingReferralException_

#define RESTRICT_JavaxNamingNamingException 1
#define INCLUDE_JavaxNamingNamingException 1
#include "javax/naming/NamingException.h"

@class JavaUtilHashtable;
@protocol JavaxNamingContext;

@interface JavaxNamingReferralException : JavaxNamingNamingException

#pragma mark Public

- (id<JavaxNamingContext>)getReferralContext;

- (id<JavaxNamingContext>)getReferralContextWithJavaUtilHashtable:(JavaUtilHashtable *)env;

- (id)getReferralInfo;

- (void)retryReferral;

- (jboolean)skipReferral;

#pragma mark Protected

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNSString:(NSString *)explanation;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingReferralException)

FOUNDATION_EXPORT void JavaxNamingReferralException_initWithNSString_(JavaxNamingReferralException *self, NSString *explanation);

FOUNDATION_EXPORT void JavaxNamingReferralException_init(JavaxNamingReferralException *self);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingReferralException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingReferralException")