//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/I2PSimpleClient.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientI2PSimpleClient")
#ifdef RESTRICT_NetI2pClientI2PSimpleClient
#define INCLUDE_ALL_NetI2pClientI2PSimpleClient 0
#else
#define INCLUDE_ALL_NetI2pClientI2PSimpleClient 1
#endif
#undef RESTRICT_NetI2pClientI2PSimpleClient

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientI2PSimpleClient_) && (INCLUDE_ALL_NetI2pClientI2PSimpleClient || defined(INCLUDE_NetI2pClientI2PSimpleClient))
#define NetI2pClientI2PSimpleClient_

#define RESTRICT_NetI2pClientI2PClient 1
#define INCLUDE_NetI2pClientI2PClient 1
#include "net/i2p/client/I2PClient.h"

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaUtilProperties;
@class NetI2pCryptoSigType;
@class NetI2pDataCertificate;
@class NetI2pDataDestination;
@class NetI2pI2PAppContext;
@protocol NetI2pClientI2PSession;

@interface NetI2pClientI2PSimpleClient : NSObject < NetI2pClientI2PClient >

#pragma mark Public

- (instancetype __nonnull)init;

- (NetI2pDataDestination *)createDestinationWithJavaIoOutputStream:(JavaIoOutputStream *)destKeyStream;

- (NetI2pDataDestination *)createDestinationWithJavaIoOutputStream:(JavaIoOutputStream *)destKeyStream
                                         withNetI2pDataCertificate:(NetI2pDataCertificate *)cert;

- (NetI2pDataDestination *)createDestinationWithJavaIoOutputStream:(JavaIoOutputStream *)destKeyStream
                                           withNetI2pCryptoSigType:(NetI2pCryptoSigType *)type;

- (id<NetI2pClientI2PSession>)createSessionWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                            withJavaUtilProperties:(JavaUtilProperties *)options;

- (id<NetI2pClientI2PSession>)createSessionWithJavaIoInputStream:(JavaIoInputStream *)destKeyStream
                                          withJavaUtilProperties:(JavaUtilProperties *)options;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientI2PSimpleClient)

FOUNDATION_EXPORT void NetI2pClientI2PSimpleClient_init(NetI2pClientI2PSimpleClient *self);

FOUNDATION_EXPORT NetI2pClientI2PSimpleClient *new_NetI2pClientI2PSimpleClient_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientI2PSimpleClient *create_NetI2pClientI2PSimpleClient_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientI2PSimpleClient)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientI2PSimpleClient")
