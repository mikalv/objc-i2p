//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/GarlicMessageParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterMessageGarlicMessageParser")
#ifdef RESTRICT_NetI2pRouterMessageGarlicMessageParser
#define INCLUDE_ALL_NetI2pRouterMessageGarlicMessageParser 0
#else
#define INCLUDE_ALL_NetI2pRouterMessageGarlicMessageParser 1
#endif
#undef RESTRICT_NetI2pRouterMessageGarlicMessageParser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterMessageGarlicMessageParser_) && (INCLUDE_ALL_NetI2pRouterMessageGarlicMessageParser || defined(INCLUDE_NetI2pRouterMessageGarlicMessageParser))
#define NetI2pRouterMessageGarlicMessageParser_

@class NetI2pCryptoSessionKeyManager;
@class NetI2pDataI2npGarlicMessage;
@class NetI2pDataPrivateKey;
@class NetI2pI2PAppContext;
@class NetI2pRouterMessageCloveSet;

@interface NetI2pRouterMessageGarlicMessageParser : NSObject

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (NetI2pRouterMessageCloveSet *)getGarlicClovesWithNetI2pDataI2npGarlicMessage:(NetI2pDataI2npGarlicMessage *)message
                                                       withNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)encryptionKey
                                              withNetI2pCryptoSessionKeyManager:(NetI2pCryptoSessionKeyManager *)skm;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterMessageGarlicMessageParser)

FOUNDATION_EXPORT void NetI2pRouterMessageGarlicMessageParser_initWithNetI2pI2PAppContext_(NetI2pRouterMessageGarlicMessageParser *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pRouterMessageGarlicMessageParser *new_NetI2pRouterMessageGarlicMessageParser_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterMessageGarlicMessageParser *create_NetI2pRouterMessageGarlicMessageParser_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterMessageGarlicMessageParser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterMessageGarlicMessageParser")
