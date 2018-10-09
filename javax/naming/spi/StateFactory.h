//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/spi/StateFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingSpiStateFactory")
#ifdef RESTRICT_JavaxNamingSpiStateFactory
#define INCLUDE_ALL_JavaxNamingSpiStateFactory 0
#else
#define INCLUDE_ALL_JavaxNamingSpiStateFactory 1
#endif
#undef RESTRICT_JavaxNamingSpiStateFactory

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingSpiStateFactory_) && (INCLUDE_ALL_JavaxNamingSpiStateFactory || defined(INCLUDE_JavaxNamingSpiStateFactory))
#define JavaxNamingSpiStateFactory_

@class JavaUtilHashtable;
@protocol JavaxNamingContext;
@protocol JavaxNamingName;

@protocol JavaxNamingSpiStateFactory < JavaObject >

- (id)getStateToBindWithId:(id)obj
       withJavaxNamingName:(id<JavaxNamingName>)name
    withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
     withJavaUtilHashtable:(JavaUtilHashtable *)environment;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingSpiStateFactory)

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingSpiStateFactory)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingSpiStateFactory")
