//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/InitialContext.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingInitialContext")
#ifdef RESTRICT_JavaxNamingInitialContext
#define INCLUDE_ALL_JavaxNamingInitialContext 0
#else
#define INCLUDE_ALL_JavaxNamingInitialContext 1
#endif
#undef RESTRICT_JavaxNamingInitialContext

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingInitialContext_) && (INCLUDE_ALL_JavaxNamingInitialContext || defined(INCLUDE_JavaxNamingInitialContext))
#define JavaxNamingInitialContext_

#define RESTRICT_JavaxNamingContext 1
#define INCLUDE_JavaxNamingContext 1
#include "javax/naming/Context.h"

@class JavaUtilHashtable;
@protocol JavaxNamingName;
@protocol JavaxNamingNameParser;
@protocol JavaxNamingNamingEnumeration;

@interface JavaxNamingInitialContext : NSObject < JavaxNamingContext > {
 @public
  JavaUtilHashtable *myProps_;
  id<JavaxNamingContext> defaultInitCtx_;
  jboolean gotDefault_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaUtilHashtable:(JavaUtilHashtable *)environment;

- (id)addToEnvironmentWithNSString:(NSString *)propName
                            withId:(id)propVal;

- (void)bindWithJavaxNamingName:(id<JavaxNamingName>)name
                         withId:(id)obj;

- (void)bindWithNSString:(NSString *)name
                  withId:(id)obj;

- (void)close;

- (id<JavaxNamingName>)composeNameWithJavaxNamingName:(id<JavaxNamingName>)name
                                  withJavaxNamingName:(id<JavaxNamingName>)prefix;

- (NSString *)composeNameWithNSString:(NSString *)name
                         withNSString:(NSString *)prefix;

- (id<JavaxNamingContext>)createSubcontextWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id<JavaxNamingContext>)createSubcontextWithNSString:(NSString *)name;

- (void)destroySubcontextWithJavaxNamingName:(id<JavaxNamingName>)name;

- (void)destroySubcontextWithNSString:(NSString *)name;

+ (id)doLookupWithJavaxNamingName:(id<JavaxNamingName>)name;

+ (id)doLookupWithNSString:(NSString *)name;

- (JavaUtilHashtable *)getEnvironment;

- (NSString *)getNameInNamespace;

- (id<JavaxNamingNameParser>)getNameParserWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id<JavaxNamingNameParser>)getNameParserWithNSString:(NSString *)name;

- (id<JavaxNamingNamingEnumeration>)listWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id<JavaxNamingNamingEnumeration>)listWithNSString:(NSString *)name;

- (id<JavaxNamingNamingEnumeration>)listBindingsWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id<JavaxNamingNamingEnumeration>)listBindingsWithNSString:(NSString *)name;

- (id)lookupWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id)lookupWithNSString:(NSString *)name;

- (id)lookupLinkWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id)lookupLinkWithNSString:(NSString *)name;

- (void)rebindWithJavaxNamingName:(id<JavaxNamingName>)name
                           withId:(id)obj;

- (void)rebindWithNSString:(NSString *)name
                    withId:(id)obj;

- (id)removeFromEnvironmentWithNSString:(NSString *)propName;

- (void)renameWithJavaxNamingName:(id<JavaxNamingName>)oldName
              withJavaxNamingName:(id<JavaxNamingName>)newName;

- (void)renameWithNSString:(NSString *)oldName
              withNSString:(NSString *)newName;

- (void)unbindWithJavaxNamingName:(id<JavaxNamingName>)name;

- (void)unbindWithNSString:(NSString *)name;

#pragma mark Protected

- (instancetype __nonnull)initWithBoolean:(jboolean)lazy;

- (id<JavaxNamingContext>)getDefaultInitCtx;

- (id<JavaxNamingContext>)getURLOrDefaultInitCtxWithJavaxNamingName:(id<JavaxNamingName>)name;

- (id<JavaxNamingContext>)getURLOrDefaultInitCtxWithNSString:(NSString *)name;

- (void)init__WithJavaUtilHashtable:(JavaUtilHashtable *)environment OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingInitialContext)

J2OBJC_FIELD_SETTER(JavaxNamingInitialContext, myProps_, JavaUtilHashtable *)
J2OBJC_FIELD_SETTER(JavaxNamingInitialContext, defaultInitCtx_, id<JavaxNamingContext>)

FOUNDATION_EXPORT void JavaxNamingInitialContext_initWithBoolean_(JavaxNamingInitialContext *self, jboolean lazy);

FOUNDATION_EXPORT JavaxNamingInitialContext *new_JavaxNamingInitialContext_initWithBoolean_(jboolean lazy) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingInitialContext *create_JavaxNamingInitialContext_initWithBoolean_(jboolean lazy);

FOUNDATION_EXPORT void JavaxNamingInitialContext_init(JavaxNamingInitialContext *self);

FOUNDATION_EXPORT JavaxNamingInitialContext *new_JavaxNamingInitialContext_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingInitialContext *create_JavaxNamingInitialContext_init(void);

FOUNDATION_EXPORT void JavaxNamingInitialContext_initWithJavaUtilHashtable_(JavaxNamingInitialContext *self, JavaUtilHashtable *environment);

FOUNDATION_EXPORT JavaxNamingInitialContext *new_JavaxNamingInitialContext_initWithJavaUtilHashtable_(JavaUtilHashtable *environment) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingInitialContext *create_JavaxNamingInitialContext_initWithJavaUtilHashtable_(JavaUtilHashtable *environment);

FOUNDATION_EXPORT id JavaxNamingInitialContext_doLookupWithJavaxNamingName_(id<JavaxNamingName> name);

FOUNDATION_EXPORT id JavaxNamingInitialContext_doLookupWithNSString_(NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingInitialContext)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingInitialContext")
