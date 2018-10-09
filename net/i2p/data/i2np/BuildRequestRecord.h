//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/BuildRequestRecord.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npBuildRequestRecord")
#ifdef RESTRICT_NetI2pDataI2npBuildRequestRecord
#define INCLUDE_ALL_NetI2pDataI2npBuildRequestRecord 0
#else
#define INCLUDE_ALL_NetI2pDataI2npBuildRequestRecord 1
#endif
#undef RESTRICT_NetI2pDataI2npBuildRequestRecord

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npBuildRequestRecord_) && (INCLUDE_ALL_NetI2pDataI2npBuildRequestRecord || defined(INCLUDE_NetI2pDataI2npBuildRequestRecord))
#define NetI2pDataI2npBuildRequestRecord_

@class IOSByteArray;
@class NetI2pDataHash;
@class NetI2pDataI2npEncryptedBuildRecord;
@class NetI2pDataPrivateKey;
@class NetI2pDataPublicKey;
@class NetI2pDataSessionKey;
@class NetI2pI2PAppContext;

@interface NetI2pDataI2npBuildRequestRecord : NSObject
@property (readonly, class) jint IV_SIZE NS_SWIFT_NAME(IV_SIZE);
@property (readonly, class) jint PEER_SIZE NS_SWIFT_NAME(PEER_SIZE);
@property (readonly, class) jint OFF_REPLY_KEY NS_SWIFT_NAME(OFF_REPLY_KEY);

+ (jint)IV_SIZE;

+ (jint)PEER_SIZE;

+ (jint)OFF_REPLY_KEY;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                             withLong:(jlong)receiveTunnelId
                                   withNetI2pDataHash:(NetI2pDataHash *)peer
                                             withLong:(jlong)nextTunnelId
                                   withNetI2pDataHash:(NetI2pDataHash *)nextHop
                                             withLong:(jlong)nextMsgId
                             withNetI2pDataSessionKey:(NetI2pDataSessionKey *)layerKey
                             withNetI2pDataSessionKey:(NetI2pDataSessionKey *)ivKey
                             withNetI2pDataSessionKey:(NetI2pDataSessionKey *)replyKey
                                        withByteArray:(IOSByteArray *)iv
                                          withBoolean:(jboolean)isInGateway
                                          withBoolean:(jboolean)isOutEndpoint;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                             withNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)ourKey
               withNetI2pDataI2npEncryptedBuildRecord:(NetI2pDataI2npEncryptedBuildRecord *)encryptedRecord;

- (NetI2pDataI2npEncryptedBuildRecord *)encryptRecordWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                                     withNetI2pDataPublicKey:(NetI2pDataPublicKey *)toKey
                                                          withNetI2pDataHash:(NetI2pDataHash *)toPeer;

- (IOSByteArray *)getData;

- (jboolean)readIsInboundGateway;

- (jboolean)readIsOutboundEndpoint;

- (NetI2pDataSessionKey *)readIVKey;

- (NetI2pDataSessionKey *)readLayerKey;

- (NetI2pDataHash *)readNextIdentity;

- (jlong)readNextTunnelId;

- (jlong)readReceiveTunnelId;

- (IOSByteArray *)readReplyIV;

- (NetI2pDataSessionKey *)readReplyKey;

- (jlong)readReplyMessageId;

- (jlong)readRequestTime;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npBuildRequestRecord)

inline jint NetI2pDataI2npBuildRequestRecord_get_IV_SIZE(void);
#define NetI2pDataI2npBuildRequestRecord_IV_SIZE 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npBuildRequestRecord, IV_SIZE, jint)

inline jint NetI2pDataI2npBuildRequestRecord_get_PEER_SIZE(void);
#define NetI2pDataI2npBuildRequestRecord_PEER_SIZE 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npBuildRequestRecord, PEER_SIZE, jint)

inline jint NetI2pDataI2npBuildRequestRecord_get_OFF_REPLY_KEY(void);
#define NetI2pDataI2npBuildRequestRecord_OFF_REPLY_KEY 136
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npBuildRequestRecord, OFF_REPLY_KEY, jint)

FOUNDATION_EXPORT void NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withNetI2pDataPrivateKey_withNetI2pDataI2npEncryptedBuildRecord_(NetI2pDataI2npBuildRequestRecord *self, NetI2pI2PAppContext *ctx, NetI2pDataPrivateKey *ourKey, NetI2pDataI2npEncryptedBuildRecord *encryptedRecord);

FOUNDATION_EXPORT NetI2pDataI2npBuildRequestRecord *new_NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withNetI2pDataPrivateKey_withNetI2pDataI2npEncryptedBuildRecord_(NetI2pI2PAppContext *ctx, NetI2pDataPrivateKey *ourKey, NetI2pDataI2npEncryptedBuildRecord *encryptedRecord) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npBuildRequestRecord *create_NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withNetI2pDataPrivateKey_withNetI2pDataI2npEncryptedBuildRecord_(NetI2pI2PAppContext *ctx, NetI2pDataPrivateKey *ourKey, NetI2pDataI2npEncryptedBuildRecord *encryptedRecord);

FOUNDATION_EXPORT void NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withLong_withNetI2pDataHash_withLong_withNetI2pDataHash_withLong_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withByteArray_withBoolean_withBoolean_(NetI2pDataI2npBuildRequestRecord *self, NetI2pI2PAppContext *ctx, jlong receiveTunnelId, NetI2pDataHash *peer, jlong nextTunnelId, NetI2pDataHash *nextHop, jlong nextMsgId, NetI2pDataSessionKey *layerKey, NetI2pDataSessionKey *ivKey, NetI2pDataSessionKey *replyKey, IOSByteArray *iv, jboolean isInGateway, jboolean isOutEndpoint);

FOUNDATION_EXPORT NetI2pDataI2npBuildRequestRecord *new_NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withLong_withNetI2pDataHash_withLong_withNetI2pDataHash_withLong_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withByteArray_withBoolean_withBoolean_(NetI2pI2PAppContext *ctx, jlong receiveTunnelId, NetI2pDataHash *peer, jlong nextTunnelId, NetI2pDataHash *nextHop, jlong nextMsgId, NetI2pDataSessionKey *layerKey, NetI2pDataSessionKey *ivKey, NetI2pDataSessionKey *replyKey, IOSByteArray *iv, jboolean isInGateway, jboolean isOutEndpoint) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npBuildRequestRecord *create_NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withLong_withNetI2pDataHash_withLong_withNetI2pDataHash_withLong_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withByteArray_withBoolean_withBoolean_(NetI2pI2PAppContext *ctx, jlong receiveTunnelId, NetI2pDataHash *peer, jlong nextTunnelId, NetI2pDataHash *nextHop, jlong nextMsgId, NetI2pDataSessionKey *layerKey, NetI2pDataSessionKey *ivKey, NetI2pDataSessionKey *replyKey, IOSByteArray *iv, jboolean isInGateway, jboolean isOutEndpoint);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npBuildRequestRecord)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npBuildRequestRecord")