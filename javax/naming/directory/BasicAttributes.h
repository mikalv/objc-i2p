//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/BasicAttributes.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes")
#ifdef RESTRICT_JavaxNamingDirectoryBasicAttributes
#define INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes 0
#else
#define INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes 1
#endif
#undef RESTRICT_JavaxNamingDirectoryBasicAttributes

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingDirectoryBasicAttributes_) && (INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes || defined(INCLUDE_JavaxNamingDirectoryBasicAttributes))
#define JavaxNamingDirectoryBasicAttributes_

#define RESTRICT_JavaxNamingDirectoryAttributes 1
#define INCLUDE_JavaxNamingDirectoryAttributes 1
#include "javax/naming/directory/Attributes.h"

@class JavaUtilHashtable;
@protocol JavaxNamingDirectoryAttribute;
@protocol JavaxNamingNamingEnumeration;

@interface JavaxNamingDirectoryBasicAttributes : NSObject < JavaxNamingDirectoryAttributes > {
 @public
  JavaUtilHashtable *attrs_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithBoolean:(jboolean)ignoreCase;

- (instancetype __nonnull)initWithNSString:(NSString *)attrID
                                    withId:(id)val;

- (instancetype __nonnull)initWithNSString:(NSString *)attrID
                                    withId:(id)val
                               withBoolean:(jboolean)ignoreCase;

- (id)java_clone;

- (jboolean)isEqual:(id)obj;

- (id<JavaxNamingDirectoryAttribute>)getWithNSString:(NSString *)attrID;

- (id<JavaxNamingNamingEnumeration>)getAll;

- (id<JavaxNamingNamingEnumeration>)getIDs;

- (NSUInteger)hash;

- (jboolean)isCaseIgnored;

- (id<JavaxNamingDirectoryAttribute>)putWithJavaxNamingDirectoryAttribute:(id<JavaxNamingDirectoryAttribute>)attr;

- (id<JavaxNamingDirectoryAttribute>)putWithNSString:(NSString *)attrID
                                              withId:(id)val;

- (id<JavaxNamingDirectoryAttribute>)removeWithNSString:(NSString *)attrID;

- (jint)size;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryBasicAttributes)

J2OBJC_FIELD_SETTER(JavaxNamingDirectoryBasicAttributes, attrs_, JavaUtilHashtable *)

FOUNDATION_EXPORT void JavaxNamingDirectoryBasicAttributes_init(JavaxNamingDirectoryBasicAttributes *self);

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_init(void);

FOUNDATION_EXPORT void JavaxNamingDirectoryBasicAttributes_initWithBoolean_(JavaxNamingDirectoryBasicAttributes *self, jboolean ignoreCase);

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_initWithBoolean_(jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_initWithBoolean_(jboolean ignoreCase);

FOUNDATION_EXPORT void JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(JavaxNamingDirectoryBasicAttributes *self, NSString *attrID, id val);

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(NSString *attrID, id val) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_(NSString *attrID, id val);

FOUNDATION_EXPORT void JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(JavaxNamingDirectoryBasicAttributes *self, NSString *attrID, id val, jboolean ignoreCase);

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *new_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(NSString *attrID, id val, jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes *create_JavaxNamingDirectoryBasicAttributes_initWithNSString_withId_withBoolean_(NSString *attrID, id val, jboolean ignoreCase);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryBasicAttributes)

#endif

#if !defined (JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_) && (INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes || defined(INCLUDE_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl))
#define JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_

#define RESTRICT_JavaxNamingNamingEnumeration 1
#define INCLUDE_JavaxNamingNamingEnumeration 1
#include "javax/naming/NamingEnumeration.h"

@class JavaxNamingDirectoryBasicAttributes;
@protocol JavaUtilEnumeration;
@protocol JavaxNamingDirectoryAttribute;

@interface JavaxNamingDirectoryBasicAttributes_AttrEnumImpl : NSObject < JavaxNamingNamingEnumeration > {
 @public
  id<JavaUtilEnumeration> elements_;
}

#pragma mark Public

- (instancetype __nonnull)initWithJavaxNamingDirectoryBasicAttributes:(JavaxNamingDirectoryBasicAttributes *)outer$;

- (void)close;

- (jboolean)hasMore;

- (jboolean)hasMoreElements;

- (id<JavaxNamingDirectoryAttribute>)next;

- (id<JavaxNamingDirectoryAttribute>)nextElement;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl)

J2OBJC_FIELD_SETTER(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl, elements_, id<JavaUtilEnumeration>)

FOUNDATION_EXPORT void JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl *self, JavaxNamingDirectoryBasicAttributes *outer$);

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes_AttrEnumImpl *new_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes_AttrEnumImpl *create_JavaxNamingDirectoryBasicAttributes_AttrEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryBasicAttributes_AttrEnumImpl)

#endif

#if !defined (JavaxNamingDirectoryBasicAttributes_IDEnumImpl_) && (INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes || defined(INCLUDE_JavaxNamingDirectoryBasicAttributes_IDEnumImpl))
#define JavaxNamingDirectoryBasicAttributes_IDEnumImpl_

#define RESTRICT_JavaxNamingNamingEnumeration 1
#define INCLUDE_JavaxNamingNamingEnumeration 1
#include "javax/naming/NamingEnumeration.h"

@class JavaxNamingDirectoryBasicAttributes;
@protocol JavaUtilEnumeration;

@interface JavaxNamingDirectoryBasicAttributes_IDEnumImpl : NSObject < JavaxNamingNamingEnumeration > {
 @public
  id<JavaUtilEnumeration> elements_;
}

#pragma mark Public

- (instancetype __nonnull)initWithJavaxNamingDirectoryBasicAttributes:(JavaxNamingDirectoryBasicAttributes *)outer$;

- (void)close;

- (jboolean)hasMore;

- (jboolean)hasMoreElements;

- (NSString *)next;

- (NSString *)nextElement;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingDirectoryBasicAttributes_IDEnumImpl)

J2OBJC_FIELD_SETTER(JavaxNamingDirectoryBasicAttributes_IDEnumImpl, elements_, id<JavaUtilEnumeration>)

FOUNDATION_EXPORT void JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes_IDEnumImpl *self, JavaxNamingDirectoryBasicAttributes *outer$);

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes_IDEnumImpl *new_JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingDirectoryBasicAttributes_IDEnumImpl *create_JavaxNamingDirectoryBasicAttributes_IDEnumImpl_initWithJavaxNamingDirectoryBasicAttributes_(JavaxNamingDirectoryBasicAttributes *outer$);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingDirectoryBasicAttributes_IDEnumImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingDirectoryBasicAttributes")
