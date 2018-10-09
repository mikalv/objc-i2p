//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/gnu/crypto/prng/BasePRNGStandalone.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GnuCryptoPrngBasePRNGStandalone")
#ifdef RESTRICT_GnuCryptoPrngBasePRNGStandalone
#define INCLUDE_ALL_GnuCryptoPrngBasePRNGStandalone 0
#else
#define INCLUDE_ALL_GnuCryptoPrngBasePRNGStandalone 1
#endif
#undef RESTRICT_GnuCryptoPrngBasePRNGStandalone

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (GnuCryptoPrngBasePRNGStandalone_) && (INCLUDE_ALL_GnuCryptoPrngBasePRNGStandalone || defined(INCLUDE_GnuCryptoPrngBasePRNGStandalone))
#define GnuCryptoPrngBasePRNGStandalone_

#define RESTRICT_GnuCryptoPrngIRandomStandalone 1
#define INCLUDE_GnuCryptoPrngIRandomStandalone 1
#include "gnu/crypto/prng/IRandomStandalone.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@protocol JavaUtilMap;

@interface GnuCryptoPrngBasePRNGStandalone : NSObject < GnuCryptoPrngIRandomStandalone, JavaIoSerializable > {
 @public
  NSString *name_;
  volatile_jboolean initialised_;
  volatile_id buffer_;
  jint ndx_;
}

#pragma mark Public

- (void)addRandomByteWithByte:(jbyte)b;

- (void)addRandomBytesWithByteArray:(IOSByteArray *)buffer;

- (void)addRandomBytesWithByteArray:(IOSByteArray *)buffer
                            withInt:(jint)offset
                            withInt:(jint)length;

- (id)java_clone;

- (void)fillBlock;

- (void)init__WithJavaUtilMap:(id<JavaUtilMap>)attributes OBJC_METHOD_FAMILY_NONE;

- (jboolean)isInitialised;

- (NSString *)name;

- (jbyte)nextByte;

- (void)nextBytesWithByteArray:(IOSByteArray *)outArg;

- (void)nextBytesWithByteArray:(IOSByteArray *)outArg
                       withInt:(jint)offset
                       withInt:(jint)length;

- (void)setupWithJavaUtilMap:(id<JavaUtilMap>)attributes;

#pragma mark Protected

- (instancetype __nonnull)initWithNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuCryptoPrngBasePRNGStandalone)

J2OBJC_FIELD_SETTER(GnuCryptoPrngBasePRNGStandalone, name_, NSString *)
J2OBJC_VOLATILE_FIELD_SETTER(GnuCryptoPrngBasePRNGStandalone, buffer_, IOSByteArray *)

FOUNDATION_EXPORT void GnuCryptoPrngBasePRNGStandalone_initWithNSString_(GnuCryptoPrngBasePRNGStandalone *self, NSString *name);

J2OBJC_TYPE_LITERAL_HEADER(GnuCryptoPrngBasePRNGStandalone)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_GnuCryptoPrngBasePRNGStandalone")
