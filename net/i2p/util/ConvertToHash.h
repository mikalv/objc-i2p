//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/ConvertToHash.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilConvertToHash")
#ifdef RESTRICT_NetI2pUtilConvertToHash
#define INCLUDE_ALL_NetI2pUtilConvertToHash 0
#else
#define INCLUDE_ALL_NetI2pUtilConvertToHash 1
#endif
#undef RESTRICT_NetI2pUtilConvertToHash

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilConvertToHash_) && (INCLUDE_ALL_NetI2pUtilConvertToHash || defined(INCLUDE_NetI2pUtilConvertToHash))
#define NetI2pUtilConvertToHash_

@class IOSObjectArray;
@class NetI2pDataHash;

@interface NetI2pUtilConvertToHash : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (NetI2pDataHash *)getHashWithNSString:(NSString *)peer;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilConvertToHash)

FOUNDATION_EXPORT void NetI2pUtilConvertToHash_init(NetI2pUtilConvertToHash *self);

FOUNDATION_EXPORT NetI2pUtilConvertToHash *new_NetI2pUtilConvertToHash_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilConvertToHash *create_NetI2pUtilConvertToHash_init(void);

FOUNDATION_EXPORT NetI2pDataHash *NetI2pUtilConvertToHash_getHashWithNSString_(NSString *peer);

FOUNDATION_EXPORT void NetI2pUtilConvertToHash_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilConvertToHash)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilConvertToHash")