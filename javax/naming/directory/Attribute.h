//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/Attribute.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryAttribute")
#ifdef RESTRICT_JavaxNamingDirectoryAttribute
#define INCLUDE_ALL_JavaxNamingDirectoryAttribute 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryAttribute 1
#endif
#undef RESTRICT_JavaxNamingDirectoryAttribute

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryAttribute_) && (INCLUDE_ALL_JavaxNamingDirectoryAttribute || defined(INCLUDE_JavaxNamingDirectoryAttribute))
#define JavaxNamingDirectoryAttribute_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@protocol JavaxNamingDirectoryDirContext;
@protocol JavaxNamingNamingEnumeration;

@protocol JavaxNamingDirectoryAttribute < NSCopying, JavaIoSerializable, JavaObject >

- (id<JavaxNamingNamingEnumeration>)getAll;

- (id)get;

- (jint)size;

- (NSString *)getID;

- (jboolean)containsWithId:(id)attrVal;

- (jboolean)addWithId:(id)attrVal;

- (jboolean)removeWithId:(id)attrval;

- (void)clear;

- (id<JavaxNamingDirectoryDirContext>)getAttributeSyntaxDefinition;

- (id<JavaxNamingDirectoryDirContext>)getAttributeDefinition;

- (id)clone;

- (jboolean)isOrdered;

- (id)getWithInt:(jint)ix;

- (id)removeWithInt:(jint)ix;

- (void)addWithInt:(jint)ix
            withId:(id)attrVal;

- (id)setWithInt:(jint)ix
          withId:(id)attrVal;

@end

@interface JavaxNamingDirectoryAttribute : NSObject
@property (readonly, class) jlong serialVersionUID NS_SWIFT_NAME(serialVersionUID);

+ (jlong)serialVersionUID;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryAttribute)

inline jlong JavaxNamingDirectoryAttribute_get_serialVersionUID(void);
#define JavaxNamingDirectoryAttribute_serialVersionUID 8707690322213556804LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingDirectoryAttribute, serialVersionUID, jlong)

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryAttribute)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryAttribute")