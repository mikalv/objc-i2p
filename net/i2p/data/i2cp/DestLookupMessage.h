//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/DestLookupMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2cpDestLookupMessage")
#ifdef RESTRICT_NetI2pDataI2cpDestLookupMessage
#define INCLUDE_ALL_NetI2pDataI2cpDestLookupMessage 0
#else
#define INCLUDE_ALL_NetI2pDataI2cpDestLookupMessage 1
#endif
#undef RESTRICT_NetI2pDataI2cpDestLookupMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2cpDestLookupMessage_) && (INCLUDE_ALL_NetI2pDataI2cpDestLookupMessage || defined(INCLUDE_NetI2pDataI2cpDestLookupMessage))
#define NetI2pDataI2cpDestLookupMessage_

#define RESTRICT_NetI2pDataI2cpI2CPMessageImpl 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageImpl 1
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class NetI2pDataHash;

@interface NetI2pDataI2cpDestLookupMessage : NetI2pDataI2cpI2CPMessageImpl
@property (readonly, class) jint MESSAGE_TYPE NS_SWIFT_NAME(MESSAGE_TYPE);

+ (jint)MESSAGE_TYPE;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithNetI2pDataHash:(NetI2pDataHash *)h;

- (NetI2pDataHash *)getHash;

- (jint)getType;

- (NSString *)description;

#pragma mark Protected

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size;

- (IOSByteArray *)doWriteMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2cpDestLookupMessage)

inline jint NetI2pDataI2cpDestLookupMessage_get_MESSAGE_TYPE(void);
#define NetI2pDataI2cpDestLookupMessage_MESSAGE_TYPE 34
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpDestLookupMessage, MESSAGE_TYPE, jint)

FOUNDATION_EXPORT void NetI2pDataI2cpDestLookupMessage_init(NetI2pDataI2cpDestLookupMessage *self);

FOUNDATION_EXPORT NetI2pDataI2cpDestLookupMessage *new_NetI2pDataI2cpDestLookupMessage_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpDestLookupMessage *create_NetI2pDataI2cpDestLookupMessage_init(void);

FOUNDATION_EXPORT void NetI2pDataI2cpDestLookupMessage_initWithNetI2pDataHash_(NetI2pDataI2cpDestLookupMessage *self, NetI2pDataHash *h);

FOUNDATION_EXPORT NetI2pDataI2cpDestLookupMessage *new_NetI2pDataI2cpDestLookupMessage_initWithNetI2pDataHash_(NetI2pDataHash *h) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2cpDestLookupMessage *create_NetI2pDataI2cpDestLookupMessage_initWithNetI2pDataHash_(NetI2pDataHash *h);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2cpDestLookupMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2cpDestLookupMessage")