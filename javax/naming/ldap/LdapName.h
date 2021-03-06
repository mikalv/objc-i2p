//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/LdapName.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingLdapLdapName")
#ifdef RESTRICT_JavaxNamingLdapLdapName
#define INCLUDE_ALL_JavaxNamingLdapLdapName 0
#else
#define INCLUDE_ALL_JavaxNamingLdapLdapName 1
#endif
#undef RESTRICT_JavaxNamingLdapLdapName

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingLdapLdapName_) && (INCLUDE_ALL_JavaxNamingLdapLdapName || defined(INCLUDE_JavaxNamingLdapLdapName))
#define JavaxNamingLdapLdapName_

#define RESTRICT_JavaxNamingName 1
#define INCLUDE_JavaxNamingName 1
#include "javax/naming/Name.h"

@class JavaxNamingLdapRdn;
@protocol JavaUtilEnumeration;
@protocol JavaUtilList;

@interface JavaxNamingLdapLdapName : NSObject < JavaxNamingName >

#pragma mark Public

- (instancetype __nonnull)initWithJavaUtilList:(id<JavaUtilList>)rdns;

- (instancetype __nonnull)initWithNSString:(NSString *)name;

- (id<JavaxNamingName>)addWithInt:(jint)posn
           withJavaxNamingLdapRdn:(JavaxNamingLdapRdn *)comp;

- (id<JavaxNamingName>)addWithInt:(jint)posn
                     withNSString:(NSString *)comp;

- (id<JavaxNamingName>)addWithJavaxNamingLdapRdn:(JavaxNamingLdapRdn *)comp;

- (id<JavaxNamingName>)addWithNSString:(NSString *)comp;

- (id<JavaxNamingName>)addAllWithInt:(jint)posn
                    withJavaUtilList:(id<JavaUtilList>)suffixRdns;

- (id<JavaxNamingName>)addAllWithInt:(jint)posn
                 withJavaxNamingName:(id<JavaxNamingName>)suffix;

- (id<JavaxNamingName>)addAllWithJavaUtilList:(id<JavaUtilList>)suffixRdns;

- (id<JavaxNamingName>)addAllWithJavaxNamingName:(id<JavaxNamingName>)suffix;

- (id)java_clone;

- (jint)compareToWithId:(id)obj;

- (jboolean)endsWithWithJavaUtilList:(id<JavaUtilList>)rdns;

- (jboolean)endsWithWithJavaxNamingName:(id<JavaxNamingName>)n;

- (jboolean)isEqual:(id)obj;

- (NSString *)getWithInt:(jint)posn;

- (id<JavaUtilEnumeration>)getAll;

- (id<JavaxNamingName>)getPrefixWithInt:(jint)posn;

- (JavaxNamingLdapRdn *)getRdnWithInt:(jint)posn;

- (id<JavaUtilList>)getRdns;

- (id<JavaxNamingName>)getSuffixWithInt:(jint)posn;

- (NSUInteger)hash;

- (jboolean)isEmpty;

- (id)removeWithInt:(jint)posn;

- (jint)size;

- (jboolean)startsWithWithJavaUtilList:(id<JavaUtilList>)rdns;

- (jboolean)startsWithWithJavaxNamingName:(id<JavaxNamingName>)n;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingLdapLdapName)

FOUNDATION_EXPORT void JavaxNamingLdapLdapName_initWithNSString_(JavaxNamingLdapLdapName *self, NSString *name);

FOUNDATION_EXPORT JavaxNamingLdapLdapName *new_JavaxNamingLdapLdapName_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingLdapLdapName *create_JavaxNamingLdapLdapName_initWithNSString_(NSString *name);

FOUNDATION_EXPORT void JavaxNamingLdapLdapName_initWithJavaUtilList_(JavaxNamingLdapLdapName *self, id<JavaUtilList> rdns);

FOUNDATION_EXPORT JavaxNamingLdapLdapName *new_JavaxNamingLdapLdapName_initWithJavaUtilList_(id<JavaUtilList> rdns) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingLdapLdapName *create_JavaxNamingLdapLdapName_initWithJavaUtilList_(id<JavaUtilList> rdns);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingLdapLdapName)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingLdapLdapName")
