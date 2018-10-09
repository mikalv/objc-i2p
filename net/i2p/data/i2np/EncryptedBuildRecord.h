//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/EncryptedBuildRecord.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npEncryptedBuildRecord")
#ifdef RESTRICT_NetI2pDataI2npEncryptedBuildRecord
#define INCLUDE_ALL_NetI2pDataI2npEncryptedBuildRecord 0
#else
#define INCLUDE_ALL_NetI2pDataI2npEncryptedBuildRecord 1
#endif
#undef RESTRICT_NetI2pDataI2npEncryptedBuildRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npEncryptedBuildRecord_) && (INCLUDE_ALL_NetI2pDataI2npEncryptedBuildRecord || defined(INCLUDE_NetI2pDataI2npEncryptedBuildRecord))
#define NetI2pDataI2npEncryptedBuildRecord_

#define RESTRICT_NetI2pDataSimpleDataStructure 1
#define INCLUDE_NetI2pDataSimpleDataStructure 1
#include "net/i2p/data/SimpleDataStructure.h"

@class IOSByteArray;

@interface NetI2pDataI2npEncryptedBuildRecord : NetI2pDataSimpleDataStructure
@property (readonly, class) jint LENGTH NS_SWIFT_NAME(LENGTH);

+ (jint)LENGTH;

#pragma mark Public

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)data;

- (jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npEncryptedBuildRecord)

inline jint NetI2pDataI2npEncryptedBuildRecord_get_LENGTH(void);
#define NetI2pDataI2npEncryptedBuildRecord_LENGTH 528
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npEncryptedBuildRecord, LENGTH, jint)

FOUNDATION_EXPORT void NetI2pDataI2npEncryptedBuildRecord_initWithByteArray_(NetI2pDataI2npEncryptedBuildRecord *self, IOSByteArray *data);

FOUNDATION_EXPORT NetI2pDataI2npEncryptedBuildRecord *new_NetI2pDataI2npEncryptedBuildRecord_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npEncryptedBuildRecord *create_NetI2pDataI2npEncryptedBuildRecord_initWithByteArray_(IOSByteArray *data);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npEncryptedBuildRecord)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npEncryptedBuildRecord")
