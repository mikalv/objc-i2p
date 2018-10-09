//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/WorkingDir.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterStartupWorkingDir")
#ifdef RESTRICT_NetI2pRouterStartupWorkingDir
#define INCLUDE_ALL_NetI2pRouterStartupWorkingDir 0
#else
#define INCLUDE_ALL_NetI2pRouterStartupWorkingDir 1
#endif
#undef RESTRICT_NetI2pRouterStartupWorkingDir

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterStartupWorkingDir_) && (INCLUDE_ALL_NetI2pRouterStartupWorkingDir || defined(INCLUDE_NetI2pRouterStartupWorkingDir))
#define NetI2pRouterStartupWorkingDir_

@class JavaIoFile;
@class JavaUtilProperties;

@interface NetI2pRouterStartupWorkingDir : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (NSString *)getWorkingDirWithJavaUtilProperties:(JavaUtilProperties *)envProps
                                      withBoolean:(jboolean)migrateOldConfig;

#pragma mark Package-Private

+ (jboolean)copyFileWithJavaIoFile:(JavaIoFile *)src
                    withJavaIoFile:(JavaIoFile *)dst OBJC_METHOD_FAMILY_NONE;

+ (jboolean)migrateJettyXmlWithJavaIoFile:(JavaIoFile *)olddir
                           withJavaIoFile:(JavaIoFile *)todir
                             withNSString:(NSString *)filename
                             withNSString:(NSString *)oldString
                             withNSString:(NSString *)newString;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterStartupWorkingDir)

FOUNDATION_EXPORT void NetI2pRouterStartupWorkingDir_init(NetI2pRouterStartupWorkingDir *self);

FOUNDATION_EXPORT NetI2pRouterStartupWorkingDir *new_NetI2pRouterStartupWorkingDir_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterStartupWorkingDir *create_NetI2pRouterStartupWorkingDir_init(void);

FOUNDATION_EXPORT NSString *NetI2pRouterStartupWorkingDir_getWorkingDirWithJavaUtilProperties_withBoolean_(JavaUtilProperties *envProps, jboolean migrateOldConfig);

FOUNDATION_EXPORT jboolean NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(JavaIoFile *olddir, JavaIoFile *todir, NSString *filename, NSString *oldString, NSString *newString);

FOUNDATION_EXPORT jboolean NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(JavaIoFile *src, JavaIoFile *dst);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterStartupWorkingDir)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterStartupWorkingDir")
