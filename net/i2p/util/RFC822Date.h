//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/RFC822Date.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilRFC822Date")
#ifdef RESTRICT_NetI2pUtilRFC822Date
#define INCLUDE_ALL_NetI2pUtilRFC822Date 0
#else
#define INCLUDE_ALL_NetI2pUtilRFC822Date 1
#endif
#undef RESTRICT_NetI2pUtilRFC822Date

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilRFC822Date_) && (INCLUDE_ALL_NetI2pUtilRFC822Date || defined(INCLUDE_NetI2pUtilRFC822Date))
#define NetI2pUtilRFC822Date_

@class IOSObjectArray;

@interface NetI2pUtilRFC822Date : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

+ (jlong)parse822DateWithNSString:(NSString *)s;

+ (NSString *)to822DateWithLong:(jlong)t;

@end

J2OBJC_STATIC_INIT(NetI2pUtilRFC822Date)

FOUNDATION_EXPORT void NetI2pUtilRFC822Date_init(NetI2pUtilRFC822Date *self);

FOUNDATION_EXPORT jlong NetI2pUtilRFC822Date_parse822DateWithNSString_(NSString *s);

FOUNDATION_EXPORT NSString *NetI2pUtilRFC822Date_to822DateWithLong_(jlong t);

FOUNDATION_EXPORT void NetI2pUtilRFC822Date_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilRFC822Date)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilRFC822Date")
