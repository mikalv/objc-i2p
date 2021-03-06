//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/UnknownI2NPMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npUnknownI2NPMessage")
#ifdef RESTRICT_NetI2pDataI2npUnknownI2NPMessage
#define INCLUDE_ALL_NetI2pDataI2npUnknownI2NPMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2npUnknownI2NPMessage 1
#endif
#undef RESTRICT_NetI2pDataI2npUnknownI2NPMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npUnknownI2NPMessage_) && (INCLUDE_ALL_NetI2pDataI2npUnknownI2NPMessage || defined(INCLUDE_NetI2pDataI2npUnknownI2NPMessage))
#define NetI2pDataI2npUnknownI2NPMessage_

#define RESTRICT_NetI2pDataI2npFastI2NPMessageImpl 1
#define INCLUDE_NetI2pDataI2npFastI2NPMessageImpl 1
#include "net/i2p/data/i2np/FastI2NPMessageImpl.h"

@class IOSByteArray;
@class NetI2pI2PAppContext;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pDataI2npUnknownI2NPMessage : NetI2pDataI2npFastI2NPMessageImpl

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)type;

- (id<NetI2pDataI2npI2NPMessage>)convert;

- (jboolean)isEqual:(id)object;

- (jint)getType;

- (NSUInteger)hash;

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type;

- (NSString *)description;

#pragma mark Protected

- (jint)calculateWrittenLength;

- (jint)writeMessageBodyWithByteArray:(IOSByteArray *)outArg
                              withInt:(jint)curIndex;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npUnknownI2NPMessage)

FOUNDATION_EXPORT void NetI2pDataI2npUnknownI2NPMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pDataI2npUnknownI2NPMessage *self, NetI2pI2PAppContext *context, jint type);

FOUNDATION_EXPORT NetI2pDataI2npUnknownI2NPMessage *new_NetI2pDataI2npUnknownI2NPMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npUnknownI2NPMessage *create_NetI2pDataI2npUnknownI2NPMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint type);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npUnknownI2NPMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npUnknownI2NPMessage")
