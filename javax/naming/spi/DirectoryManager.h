//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/spi/DirectoryManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingSpiDirectoryManager")
#ifdef RESTRICT_JavaxNamingSpiDirectoryManager
#define INCLUDE_ALL_JavaxNamingSpiDirectoryManager 0
#else
#define INCLUDE_ALL_JavaxNamingSpiDirectoryManager 1
#endif
#undef RESTRICT_JavaxNamingSpiDirectoryManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingSpiDirectoryManager_) && (INCLUDE_ALL_JavaxNamingSpiDirectoryManager || defined(INCLUDE_JavaxNamingSpiDirectoryManager))
#define JavaxNamingSpiDirectoryManager_

#define RESTRICT_JavaxNamingSpiNamingManager 1
#define INCLUDE_JavaxNamingSpiNamingManager 1
#include "javax/naming/spi/NamingManager.h"

@class JavaUtilHashtable;
@class JavaxNamingCannotProceedException;
@class JavaxNamingSpiDirStateFactory_Result;
@protocol JavaxNamingContext;
@protocol JavaxNamingDirectoryAttributes;
@protocol JavaxNamingDirectoryDirContext;
@protocol JavaxNamingName;

@interface JavaxNamingSpiDirectoryManager : JavaxNamingSpiNamingManager

#pragma mark Public

+ (id<JavaxNamingDirectoryDirContext>)getContinuationDirContextWithJavaxNamingCannotProceedException:(JavaxNamingCannotProceedException *)cpe;

+ (id)getObjectInstanceWithId:(id)refInfo
          withJavaxNamingName:(id<JavaxNamingName>)name
       withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
        withJavaUtilHashtable:(JavaUtilHashtable *)environment
withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs;

+ (JavaxNamingSpiDirStateFactory_Result *)getStateToBindWithId:(id)obj
                                           withJavaxNamingName:(id<JavaxNamingName>)name
                                        withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
                                         withJavaUtilHashtable:(JavaUtilHashtable *)environment
                            withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingSpiDirectoryManager)

FOUNDATION_EXPORT void JavaxNamingSpiDirectoryManager_init(JavaxNamingSpiDirectoryManager *self);

FOUNDATION_EXPORT JavaxNamingSpiDirectoryManager *new_JavaxNamingSpiDirectoryManager_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingSpiDirectoryManager *create_JavaxNamingSpiDirectoryManager_init(void);

FOUNDATION_EXPORT id<JavaxNamingDirectoryDirContext> JavaxNamingSpiDirectoryManager_getContinuationDirContextWithJavaxNamingCannotProceedException_(JavaxNamingCannotProceedException *cpe);

FOUNDATION_EXPORT id JavaxNamingSpiDirectoryManager_getObjectInstanceWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_withJavaxNamingDirectoryAttributes_(id refInfo, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment, id<JavaxNamingDirectoryAttributes> attrs);

FOUNDATION_EXPORT JavaxNamingSpiDirStateFactory_Result *JavaxNamingSpiDirectoryManager_getStateToBindWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_withJavaxNamingDirectoryAttributes_(id obj, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment, id<JavaxNamingDirectoryAttributes> attrs);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingSpiDirectoryManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingSpiDirectoryManager")
