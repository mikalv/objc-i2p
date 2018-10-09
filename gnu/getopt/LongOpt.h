//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/gnu/getopt/LongOpt.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GnuGetoptLongOpt")
#ifdef RESTRICT_GnuGetoptLongOpt
#define INCLUDE_ALL_GnuGetoptLongOpt 0
#else
#define INCLUDE_ALL_GnuGetoptLongOpt 1
#endif
#undef RESTRICT_GnuGetoptLongOpt

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GnuGetoptLongOpt_) && (INCLUDE_ALL_GnuGetoptLongOpt || defined(INCLUDE_GnuGetoptLongOpt))
#define GnuGetoptLongOpt_

@class JavaLangStringBuffer;

@interface GnuGetoptLongOpt : NSObject {
 @public
  NSString *name_;
  jint has_arg_;
  JavaLangStringBuffer *flag_;
  jint val_;
}
@property (readonly, class) jint NO_ARGUMENT NS_SWIFT_NAME(NO_ARGUMENT);
@property (readonly, class) jint REQUIRED_ARGUMENT NS_SWIFT_NAME(REQUIRED_ARGUMENT);
@property (readonly, class) jint OPTIONAL_ARGUMENT NS_SWIFT_NAME(OPTIONAL_ARGUMENT);

+ (jint)NO_ARGUMENT;

+ (jint)REQUIRED_ARGUMENT;

+ (jint)OPTIONAL_ARGUMENT;

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)has_arg
                  withJavaLangStringBuffer:(JavaLangStringBuffer *)flag
                                   withInt:(jint)val;

- (JavaLangStringBuffer *)getFlag;

- (jint)getHasArg;

- (NSString *)getName;

- (jint)getVal;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuGetoptLongOpt)

J2OBJC_FIELD_SETTER(GnuGetoptLongOpt, name_, NSString *)
J2OBJC_FIELD_SETTER(GnuGetoptLongOpt, flag_, JavaLangStringBuffer *)

inline jint GnuGetoptLongOpt_get_NO_ARGUMENT(void);
#define GnuGetoptLongOpt_NO_ARGUMENT 0
J2OBJC_STATIC_FIELD_CONSTANT(GnuGetoptLongOpt, NO_ARGUMENT, jint)

inline jint GnuGetoptLongOpt_get_REQUIRED_ARGUMENT(void);
#define GnuGetoptLongOpt_REQUIRED_ARGUMENT 1
J2OBJC_STATIC_FIELD_CONSTANT(GnuGetoptLongOpt, REQUIRED_ARGUMENT, jint)

inline jint GnuGetoptLongOpt_get_OPTIONAL_ARGUMENT(void);
#define GnuGetoptLongOpt_OPTIONAL_ARGUMENT 2
J2OBJC_STATIC_FIELD_CONSTANT(GnuGetoptLongOpt, OPTIONAL_ARGUMENT, jint)

FOUNDATION_EXPORT void GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(GnuGetoptLongOpt *self, NSString *name, jint has_arg, JavaLangStringBuffer *flag, jint val);

FOUNDATION_EXPORT GnuGetoptLongOpt *new_GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(NSString *name, jint has_arg, JavaLangStringBuffer *flag, jint val) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GnuGetoptLongOpt *create_GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(NSString *name, jint has_arg, JavaLangStringBuffer *flag, jint val);

J2OBJC_TYPE_LITERAL_HEADER(GnuGetoptLongOpt)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_GnuGetoptLongOpt")
