//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/MessageWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper")
#ifdef RESTRICT_NetI2pRouterNetworkdbKademliaMessageWrapper
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbKademliaMessageWrapper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbKademliaMessageWrapper_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper || defined(INCLUDE_NetI2pRouterNetworkdbKademliaMessageWrapper))
#define NetI2pRouterNetworkdbKademliaMessageWrapper_

@class NetI2pCryptoSessionKeyManager;
@class NetI2pDataHash;
@class NetI2pDataI2npGarlicMessage;
@class NetI2pDataRouterRouterInfo;
@class NetI2pDataSessionKey;
@class NetI2pDataSessionTag;
@class NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession;
@class NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage;
@class NetI2pRouterRouterContext;
@protocol NetI2pDataI2npI2NPMessage;

@interface NetI2pRouterNetworkdbKademliaMessageWrapper : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *)generateSessionWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

+ (NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *)generateSessionWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                                                          withNetI2pDataHash:(NetI2pDataHash *)localDest;

+ (NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *)generateSessionWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                                           withNetI2pCryptoSessionKeyManager:(NetI2pCryptoSessionKeyManager *)skm;

+ (NetI2pDataI2npGarlicMessage *)wrapWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                     withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)m
    withNetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession:(NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *)session;

+ (NetI2pDataI2npGarlicMessage *)wrapWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                     withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)m
                                          withNetI2pDataSessionKey:(NetI2pDataSessionKey *)encryptKey
                                          withNetI2pDataSessionTag:(NetI2pDataSessionTag *)encryptTag;

#pragma mark Package-Private

+ (NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage *)wrapWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                                    withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)m
                                                                               withNetI2pDataHash:(NetI2pDataHash *)from
                                                                   withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)to;

+ (NetI2pDataI2npGarlicMessage *)wrapWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                     withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)m
                                    withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)to;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaMessageWrapper)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaMessageWrapper_init(NetI2pRouterNetworkdbKademliaMessageWrapper *self);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper *new_NetI2pRouterNetworkdbKademliaMessageWrapper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper *create_NetI2pRouterNetworkdbKademliaMessageWrapper_init(void);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage *NetI2pRouterNetworkdbKademliaMessageWrapper_wrapWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataHash_withNetI2pDataRouterRouterInfo_(NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> m, NetI2pDataHash *from, NetI2pDataRouterRouterInfo *to);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterNetworkdbKademliaMessageWrapper_wrapWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataRouterRouterInfo_(NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> m, NetI2pDataRouterRouterInfo *to);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *NetI2pRouterNetworkdbKademliaMessageWrapper_generateSessionWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *NetI2pRouterNetworkdbKademliaMessageWrapper_generateSessionWithNetI2pRouterRouterContext_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *localDest);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *NetI2pRouterNetworkdbKademliaMessageWrapper_generateSessionWithNetI2pRouterRouterContext_withNetI2pCryptoSessionKeyManager_(NetI2pRouterRouterContext *ctx, NetI2pCryptoSessionKeyManager *skm);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterNetworkdbKademliaMessageWrapper_wrapWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession_(NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> m, NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *session);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterNetworkdbKademliaMessageWrapper_wrapWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withNetI2pDataSessionKey_withNetI2pDataSessionTag_(NetI2pRouterRouterContext *ctx, id<NetI2pDataI2npI2NPMessage> m, NetI2pDataSessionKey *encryptKey, NetI2pDataSessionTag *encryptTag);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaMessageWrapper)

#endif

#if !defined (NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper || defined(INCLUDE_NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage))
#define NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage_

@class NetI2pCryptoSessionKeyManager;
@class NetI2pDataI2npGarlicMessage;
@class NetI2pDataPublicKey;
@class NetI2pDataSessionKey;
@protocol NetI2pCryptoTagSetHandle;

@interface NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage : NSObject

#pragma mark Package-Private

- (instancetype __nonnull)initWithNetI2pDataI2npGarlicMessage:(NetI2pDataI2npGarlicMessage *)msg
                            withNetI2pCryptoSessionKeyManager:(NetI2pCryptoSessionKeyManager *)skm
                                      withNetI2pDataPublicKey:(NetI2pDataPublicKey *)sentTo
                                     withNetI2pDataSessionKey:(NetI2pDataSessionKey *)sentKey
                                 withNetI2pCryptoTagSetHandle:(id<NetI2pCryptoTagSetHandle>)tsh;

- (void)acked;

- (void)fail;

- (NetI2pDataI2npGarlicMessage *)getMessage;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage_initWithNetI2pDataI2npGarlicMessage_withNetI2pCryptoSessionKeyManager_withNetI2pDataPublicKey_withNetI2pDataSessionKey_withNetI2pCryptoTagSetHandle_(NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage *self, NetI2pDataI2npGarlicMessage *msg, NetI2pCryptoSessionKeyManager *skm, NetI2pDataPublicKey *sentTo, NetI2pDataSessionKey *sentKey, id<NetI2pCryptoTagSetHandle> tsh);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage *new_NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage_initWithNetI2pDataI2npGarlicMessage_withNetI2pCryptoSessionKeyManager_withNetI2pDataPublicKey_withNetI2pDataSessionKey_withNetI2pCryptoTagSetHandle_(NetI2pDataI2npGarlicMessage *msg, NetI2pCryptoSessionKeyManager *skm, NetI2pDataPublicKey *sentTo, NetI2pDataSessionKey *sentKey, id<NetI2pCryptoTagSetHandle> tsh) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage *create_NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage_initWithNetI2pDataI2npGarlicMessage_withNetI2pCryptoSessionKeyManager_withNetI2pDataPublicKey_withNetI2pDataSessionKey_withNetI2pCryptoTagSetHandle_(NetI2pDataI2npGarlicMessage *msg, NetI2pCryptoSessionKeyManager *skm, NetI2pDataPublicKey *sentTo, NetI2pDataSessionKey *sentKey, id<NetI2pCryptoTagSetHandle> tsh);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaMessageWrapper_WrappedMessage)

#endif

#if !defined (NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession_) && (INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper || defined(INCLUDE_NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession))
#define NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession_

@class NetI2pDataSessionKey;
@class NetI2pDataSessionTag;

@interface NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession : NSObject {
 @public
  NetI2pDataSessionKey *key_;
  NetI2pDataSessionTag *tag_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key
                              withNetI2pDataSessionTag:(NetI2pDataSessionTag *)tag;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession)

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession, key_, NetI2pDataSessionKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession, tag_, NetI2pDataSessionTag *)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession_initWithNetI2pDataSessionKey_withNetI2pDataSessionTag_(NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *self, NetI2pDataSessionKey *key, NetI2pDataSessionTag *tag);

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *new_NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession_initWithNetI2pDataSessionKey_withNetI2pDataSessionTag_(NetI2pDataSessionKey *key, NetI2pDataSessionTag *tag) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession *create_NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession_initWithNetI2pDataSessionKey_withNetI2pDataSessionTag_(NetI2pDataSessionKey *key, NetI2pDataSessionTag *tag);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbKademliaMessageWrapper_OneTimeSession)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbKademliaMessageWrapper")