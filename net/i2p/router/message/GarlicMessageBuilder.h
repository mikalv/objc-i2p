//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/GarlicMessageBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterMessageGarlicMessageBuilder")
#ifdef RESTRICT_NetI2pRouterMessageGarlicMessageBuilder
#define INCLUDE_ALL_NetI2pRouterMessageGarlicMessageBuilder 0
#else
#define INCLUDE_ALL_NetI2pRouterMessageGarlicMessageBuilder 1
#endif
#undef RESTRICT_NetI2pRouterMessageGarlicMessageBuilder

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterMessageGarlicMessageBuilder_) && (INCLUDE_ALL_NetI2pRouterMessageGarlicMessageBuilder || defined(INCLUDE_NetI2pRouterMessageGarlicMessageBuilder))
#define NetI2pRouterMessageGarlicMessageBuilder_

@class NetI2pCryptoSessionKeyManager;
@class NetI2pDataHash;
@class NetI2pDataI2npGarlicMessage;
@class NetI2pDataPublicKey;
@class NetI2pDataSessionKey;
@class NetI2pDataSessionTag;
@class NetI2pRouterMessageGarlicConfig;
@class NetI2pRouterRouterContext;
@protocol JavaUtilSet;

@interface NetI2pRouterMessageGarlicMessageBuilder : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (NetI2pDataI2npGarlicMessage *)buildMessageWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                       withNetI2pRouterMessageGarlicConfig:(NetI2pRouterMessageGarlicConfig *)config
                                                  withNetI2pDataSessionKey:(NetI2pDataSessionKey *)wrappedKey
                                                           withJavaUtilSet:(id<JavaUtilSet>)wrappedTags
                                                                   withInt:(jint)numTagsToDeliver
                                                                   withInt:(jint)lowTagsThreshold
                                         withNetI2pCryptoSessionKeyManager:(NetI2pCryptoSessionKeyManager *)skm;

+ (NetI2pDataI2npGarlicMessage *)buildMessageWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                       withNetI2pRouterMessageGarlicConfig:(NetI2pRouterMessageGarlicConfig *)config
                                                  withNetI2pDataSessionKey:(NetI2pDataSessionKey *)wrappedKey
                                                           withJavaUtilSet:(id<JavaUtilSet>)wrappedTags
                                                                   withInt:(jint)numTagsToDeliver
                                         withNetI2pCryptoSessionKeyManager:(NetI2pCryptoSessionKeyManager *)skm;

+ (NetI2pDataI2npGarlicMessage *)buildMessageWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                       withNetI2pRouterMessageGarlicConfig:(NetI2pRouterMessageGarlicConfig *)config
                                                  withNetI2pDataSessionKey:(NetI2pDataSessionKey *)wrappedKey
                                                           withJavaUtilSet:(id<JavaUtilSet>)wrappedTags
                                                   withNetI2pDataPublicKey:(NetI2pDataPublicKey *)target
                                                  withNetI2pDataSessionKey:(NetI2pDataSessionKey *)encryptKey
                                                  withNetI2pDataSessionTag:(NetI2pDataSessionTag *)encryptTag;

+ (NetI2pDataI2npGarlicMessage *)buildMessageWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                       withNetI2pRouterMessageGarlicConfig:(NetI2pRouterMessageGarlicConfig *)config
                                                  withNetI2pDataSessionKey:(NetI2pDataSessionKey *)wrappedKey
                                                           withJavaUtilSet:(id<JavaUtilSet>)wrappedTags
                                         withNetI2pCryptoSessionKeyManager:(NetI2pCryptoSessionKeyManager *)skm;

#pragma mark Package-Private

+ (jboolean)needsTagsWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                           withNetI2pDataPublicKey:(NetI2pDataPublicKey *)key
                                withNetI2pDataHash:(NetI2pDataHash *)local
                                           withInt:(jint)minTagOverride;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageGarlicMessageBuilder)

FOUNDATION_EXPORT void NetI2pRouterMessageGarlicMessageBuilder_init(NetI2pRouterMessageGarlicMessageBuilder *self);

FOUNDATION_EXPORT NetI2pRouterMessageGarlicMessageBuilder *new_NetI2pRouterMessageGarlicMessageBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterMessageGarlicMessageBuilder *create_NetI2pRouterMessageGarlicMessageBuilder_init(void);

FOUNDATION_EXPORT jboolean NetI2pRouterMessageGarlicMessageBuilder_needsTagsWithNetI2pRouterRouterContext_withNetI2pDataPublicKey_withNetI2pDataHash_withInt_(NetI2pRouterRouterContext *ctx, NetI2pDataPublicKey *key, NetI2pDataHash *local, jint minTagOverride);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterMessageGarlicMessageBuilder_buildMessageWithNetI2pRouterRouterContext_withNetI2pRouterMessageGarlicConfig_withNetI2pDataSessionKey_withJavaUtilSet_withNetI2pCryptoSessionKeyManager_(NetI2pRouterRouterContext *ctx, NetI2pRouterMessageGarlicConfig *config, NetI2pDataSessionKey *wrappedKey, id<JavaUtilSet> wrappedTags, NetI2pCryptoSessionKeyManager *skm);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterMessageGarlicMessageBuilder_buildMessageWithNetI2pRouterRouterContext_withNetI2pRouterMessageGarlicConfig_withNetI2pDataSessionKey_withJavaUtilSet_withInt_withNetI2pCryptoSessionKeyManager_(NetI2pRouterRouterContext *ctx, NetI2pRouterMessageGarlicConfig *config, NetI2pDataSessionKey *wrappedKey, id<JavaUtilSet> wrappedTags, jint numTagsToDeliver, NetI2pCryptoSessionKeyManager *skm);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterMessageGarlicMessageBuilder_buildMessageWithNetI2pRouterRouterContext_withNetI2pRouterMessageGarlicConfig_withNetI2pDataSessionKey_withJavaUtilSet_withInt_withInt_withNetI2pCryptoSessionKeyManager_(NetI2pRouterRouterContext *ctx, NetI2pRouterMessageGarlicConfig *config, NetI2pDataSessionKey *wrappedKey, id<JavaUtilSet> wrappedTags, jint numTagsToDeliver, jint lowTagsThreshold, NetI2pCryptoSessionKeyManager *skm);

FOUNDATION_EXPORT NetI2pDataI2npGarlicMessage *NetI2pRouterMessageGarlicMessageBuilder_buildMessageWithNetI2pRouterRouterContext_withNetI2pRouterMessageGarlicConfig_withNetI2pDataSessionKey_withJavaUtilSet_withNetI2pDataPublicKey_withNetI2pDataSessionKey_withNetI2pDataSessionTag_(NetI2pRouterRouterContext *ctx, NetI2pRouterMessageGarlicConfig *config, NetI2pDataSessionKey *wrappedKey, id<JavaUtilSet> wrappedTags, NetI2pDataPublicKey *target, NetI2pDataSessionKey *encryptKey, NetI2pDataSessionTag *encryptTag);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageGarlicMessageBuilder)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterMessageGarlicMessageBuilder")
