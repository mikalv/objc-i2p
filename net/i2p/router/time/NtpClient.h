//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/time/NtpClient.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTimeNtpClient")
#ifdef RESTRICT_NetI2pRouterTimeNtpClient
#define INCLUDE_ALL_NetI2pRouterTimeNtpClient 0
#else
#define INCLUDE_ALL_NetI2pRouterTimeNtpClient 1
#endif
#undef RESTRICT_NetI2pRouterTimeNtpClient

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTimeNtpClient_) && (INCLUDE_ALL_NetI2pRouterTimeNtpClient || defined(INCLUDE_NetI2pRouterTimeNtpClient))
#define NetI2pRouterTimeNtpClient_

@class IOSLongArray;
@class IOSObjectArray;
@class NetI2pUtilLog;

@interface NetI2pRouterTimeNtpClient : NSObject
@property (readonly, class) jdouble SECONDS_1900_TO_EPOCH NS_SWIFT_NAME(SECONDS_1900_TO_EPOCH);

+ (jdouble)SECONDS_1900_TO_EPOCH;

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

#pragma mark Package-Private

+ (IOSLongArray *)currentTimeAndStratumWithNSStringArray:(IOSObjectArray *)serverNames
                                                 withInt:(jint)perServerTimeout
                                             withBoolean:(jboolean)preferIPv6
                                       withNetI2pUtilLog:(NetI2pUtilLog *)log;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTimeNtpClient)

inline jdouble NetI2pRouterTimeNtpClient_get_SECONDS_1900_TO_EPOCH(void);
#define NetI2pRouterTimeNtpClient_SECONDS_1900_TO_EPOCH 2.2089888E9
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTimeNtpClient, SECONDS_1900_TO_EPOCH, jdouble)

FOUNDATION_EXPORT void NetI2pRouterTimeNtpClient_init(NetI2pRouterTimeNtpClient *self);

FOUNDATION_EXPORT NetI2pRouterTimeNtpClient *new_NetI2pRouterTimeNtpClient_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTimeNtpClient *create_NetI2pRouterTimeNtpClient_init(void);

FOUNDATION_EXPORT IOSLongArray *NetI2pRouterTimeNtpClient_currentTimeAndStratumWithNSStringArray_withInt_withBoolean_withNetI2pUtilLog_(IOSObjectArray *serverNames, jint perServerTimeout, jboolean preferIPv6, NetI2pUtilLog *log);

FOUNDATION_EXPORT void NetI2pRouterTimeNtpClient_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTimeNtpClient)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTimeNtpClient")
