//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/org/apache/http/conn/util/PublicSuffixListParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheHttpConnUtilPublicSuffixListParser")
#ifdef RESTRICT_OrgApacheHttpConnUtilPublicSuffixListParser
#define INCLUDE_ALL_OrgApacheHttpConnUtilPublicSuffixListParser 0
#else
#define INCLUDE_ALL_OrgApacheHttpConnUtilPublicSuffixListParser 1
#endif
#undef RESTRICT_OrgApacheHttpConnUtilPublicSuffixListParser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheHttpConnUtilPublicSuffixListParser_) && (INCLUDE_ALL_OrgApacheHttpConnUtilPublicSuffixListParser || defined(INCLUDE_OrgApacheHttpConnUtilPublicSuffixListParser))
#define OrgApacheHttpConnUtilPublicSuffixListParser_

@class JavaIoReader;
@class OrgApacheHttpConnUtilPublicSuffixList;

@interface OrgApacheHttpConnUtilPublicSuffixListParser : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgApacheHttpConnUtilPublicSuffixList *)parseWithJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheHttpConnUtilPublicSuffixListParser)

FOUNDATION_EXPORT void OrgApacheHttpConnUtilPublicSuffixListParser_init(OrgApacheHttpConnUtilPublicSuffixListParser *self);

FOUNDATION_EXPORT OrgApacheHttpConnUtilPublicSuffixListParser *new_OrgApacheHttpConnUtilPublicSuffixListParser_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheHttpConnUtilPublicSuffixListParser *create_OrgApacheHttpConnUtilPublicSuffixListParser_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheHttpConnUtilPublicSuffixListParser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheHttpConnUtilPublicSuffixListParser")