//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/BandwidthLimitsMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpBandwidthLimitsMessage")
#ifdef RESTRICT_NetI2pDataI2cpBandwidthLimitsMessage
#define INCLUDE_ALL_NetI2pDataI2cpBandwidthLimitsMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpBandwidthLimitsMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpBandwidthLimitsMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpBandwidthLimitsMessage_) && (INCLUDE_ALL_NetI2pDataI2cpBandwidthLimitsMessage || defined(INCLUDE_NetI2pDataI2cpBandwidthLimitsMessage))
#define NetI2pDataI2cpBandwidthLimitsMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class IOSIntArray;
@class JavaIoInputStream;

@interface NetI2pDataI2cpBandwidthLimitsMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithInt:(jint)inArg
                              withInt:(jint)outArg;

- (IOSIntArray *)getLimits;

- (jint)getType;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpBandwidthLimitsMessage)

inline jint NetI2pDataI2cpBandwidthLimitsMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpBandwidthLimitsMessage_MESSAGE_TYPE 23
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpBandwidthLimitsMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpBandwidthLimitsMessage_init(NetI2pDataI2cpBandwidthLimitsMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpBandwidthLimitsMessage *new_NetI2pDataI2cpBandwidthLimitsMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpBandwidthLimitsMessage *create_NetI2pDataI2cpBandwidthLimitsMessage_init(void);

FOUNDATION_EXPORT void NetI2pDataI2cpBandwidthLimitsMessage_initWithInt_withInt_(NetI2pDataI2cpBandwidthLimitsMessage *self, jint inArg, jint outArg);

FOUNDATION_EXPORT NetI2pDataI2cpBandwidthLimitsMessage *new_NetI2pDataI2cpBandwidthLimitsMessage_initWithInt_withInt_(jint inArg, jint outArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpBandwidthLimitsMessage *create_NetI2pDataI2cpBandwidthLimitsMessage_initWithInt_withInt_(jint inArg, jint outArg);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpBandwidthLimitsMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpBandwidthLimitsMessage")