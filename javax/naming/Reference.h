//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/Reference.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingReference")
#ifdef RESTRICT_JavaxNamingReference
#define INCLUDE_ALL_JavaxNamingReference 0
#else
#define INCLUDE_ALL_JavaxNamingReference 1
#endif
#undef RESTRICT_JavaxNamingReference

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingReference_) && (INCLUDE_ALL_JavaxNamingReference || defined(INCLUDE_JavaxNamingReference))
#define JavaxNamingReference_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class JavaUtilVector;
@class JavaxNamingRefAddr;
@protocol JavaUtilEnumeration;

@interface JavaxNamingReference : NSObject < NSCopying, JavaIoSerializable > {
 @public
  NSString *className__;
  JavaUtilVector *addrs_;
  NSString *classFactory_;
  NSString *classFactoryLocation_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)className_;

- (instancetype __nonnull)initWithNSString:(NSString *)className_
                    withJavaxNamingRefAddr:(JavaxNamingRefAddr *)addr;

- (instancetype __nonnull)initWithNSString:(NSString *)className_
                    withJavaxNamingRefAddr:(JavaxNamingRefAddr *)addr
                              withNSString:(NSString *)factory
                              withNSString:(NSString *)factoryLocation;

- (instancetype __nonnull)initWithNSString:(NSString *)className_
                              withNSString:(NSString *)factory
                              withNSString:(NSString *)factoryLocation;

- (void)addWithInt:(jint)posn
withJavaxNamingRefAddr:(JavaxNamingRefAddr *)addr;

- (void)addWithJavaxNamingRefAddr:(JavaxNamingRefAddr *)addr;

- (void)clear;

- (id)java_clone;

- (jboolean)isEqual:(id)obj;

- (JavaxNamingRefAddr *)getWithInt:(jint)posn;

- (JavaxNamingRefAddr *)getWithNSString:(NSString *)addrType;

- (id<JavaUtilEnumeration>)getAll;

- (NSString *)getClassName;

- (NSString *)getFactoryClassLocation;

- (NSString *)getFactoryClassName;

- (NSUInteger)hash;

- (id)removeWithInt:(jint)posn;

- (jint)size;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingReference)

J2OBJC_FIELD_SETTER(JavaxNamingReference, className__, NSString *)
J2OBJC_FIELD_SETTER(JavaxNamingReference, addrs_, JavaUtilVector *)
J2OBJC_FIELD_SETTER(JavaxNamingReference, classFactory_, NSString *)
J2OBJC_FIELD_SETTER(JavaxNamingReference, classFactoryLocation_, NSString *)

FOUNDATION_EXPORT void JavaxNamingReference_initWithNSString_(JavaxNamingReference *self, NSString *className_);

FOUNDATION_EXPORT JavaxNamingReference *new_JavaxNamingReference_initWithNSString_(NSString *className_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingReference *create_JavaxNamingReference_initWithNSString_(NSString *className_);

FOUNDATION_EXPORT void JavaxNamingReference_initWithNSString_withJavaxNamingRefAddr_(JavaxNamingReference *self, NSString *className_, JavaxNamingRefAddr *addr);

FOUNDATION_EXPORT JavaxNamingReference *new_JavaxNamingReference_initWithNSString_withJavaxNamingRefAddr_(NSString *className_, JavaxNamingRefAddr *addr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingReference *create_JavaxNamingReference_initWithNSString_withJavaxNamingRefAddr_(NSString *className_, JavaxNamingRefAddr *addr);

FOUNDATION_EXPORT void JavaxNamingReference_initWithNSString_withNSString_withNSString_(JavaxNamingReference *self, NSString *className_, NSString *factory, NSString *factoryLocation);

FOUNDATION_EXPORT JavaxNamingReference *new_JavaxNamingReference_initWithNSString_withNSString_withNSString_(NSString *className_, NSString *factory, NSString *factoryLocation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingReference *create_JavaxNamingReference_initWithNSString_withNSString_withNSString_(NSString *className_, NSString *factory, NSString *factoryLocation);

FOUNDATION_EXPORT void JavaxNamingReference_initWithNSString_withJavaxNamingRefAddr_withNSString_withNSString_(JavaxNamingReference *self, NSString *className_, JavaxNamingRefAddr *addr, NSString *factory, NSString *factoryLocation);

FOUNDATION_EXPORT JavaxNamingReference *new_JavaxNamingReference_initWithNSString_withJavaxNamingRefAddr_withNSString_withNSString_(NSString *className_, JavaxNamingRefAddr *addr, NSString *factory, NSString *factoryLocation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingReference *create_JavaxNamingReference_initWithNSString_withJavaxNamingRefAddr_withNSString_withNSString_(NSString *className_, JavaxNamingRefAddr *addr, NSString *factory, NSString *factoryLocation);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingReference)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingReference")
