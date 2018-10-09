//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/DateAndFlags.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataDateAndFlags")
#ifdef RESTRICT_NetI2pDataDateAndFlags
#define INCLUDE_ALL_NetI2pDataDateAndFlags 0
#else
#define INCLUDE_ALL_NetI2pDataDateAndFlags 1
#endif
#undef RESTRICT_NetI2pDataDateAndFlags

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataDateAndFlags_) && (INCLUDE_ALL_NetI2pDataDateAndFlags || defined(INCLUDE_NetI2pDataDateAndFlags))
#define NetI2pDataDateAndFlags_

#define RESTRICT_NetI2pDataDataStructureImpl 1
#define INCLUDE_NetI2pDataDataStructureImpl 1
#include "net/i2p/data/DataStructureImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaUtilDate;

@interface NetI2pDataDateAndFlags : NetI2pDataDataStructureImpl {
 @public
  jint _flags_;
}

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaUtilDate:(JavaUtilDate *)date
                                       withInt:(jint)flags;

- (instancetype __nonnull)initWithLong:(jlong)date
                               withInt:(jint)flags;

- (jboolean)isEqual:(id)object;

- (void)fromByteArrayWithByteArray:(IOSByteArray *)data;

- (JavaUtilDate *)getDate;

- (jint)getFlags;

- (jlong)getTime;

- (NSUInteger)hash;

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)setDateWithJavaUtilDate:(JavaUtilDate *)date;

- (void)setDateWithLong:(jlong)date;

- (void)setFlagsWithInt:(jint)flags;

- (IOSByteArray *)toByteArray;

- (NSString *)description;

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataDateAndFlags)

FOUNDATION_EXPORT void NetI2pDataDateAndFlags_init(NetI2pDataDateAndFlags *self);

FOUNDATION_EXPORT NetI2pDataDateAndFlags *new_NetI2pDataDateAndFlags_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataDateAndFlags *create_NetI2pDataDateAndFlags_init(void);

FOUNDATION_EXPORT void NetI2pDataDateAndFlags_initWithLong_withInt_(NetI2pDataDateAndFlags *self, jlong date, jint flags);

FOUNDATION_EXPORT NetI2pDataDateAndFlags *new_NetI2pDataDateAndFlags_initWithLong_withInt_(jlong date, jint flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataDateAndFlags *create_NetI2pDataDateAndFlags_initWithLong_withInt_(jlong date, jint flags);

FOUNDATION_EXPORT void NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(NetI2pDataDateAndFlags *self, JavaUtilDate *date, jint flags);

FOUNDATION_EXPORT NetI2pDataDateAndFlags *new_NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(JavaUtilDate *date, jint flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataDateAndFlags *create_NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(JavaUtilDate *date, jint flags);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataDateAndFlags)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataDateAndFlags")
