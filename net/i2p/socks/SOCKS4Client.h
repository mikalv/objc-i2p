//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/socks/SOCKS4Client.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pSocksSOCKS4Client")
#ifdef RESTRICT_NetI2pSocksSOCKS4Client
#define INCLUDE_ALL_NetI2pSocksSOCKS4Client 0
#else
#define INCLUDE_ALL_NetI2pSocksSOCKS4Client 1
#endif
#undef RESTRICT_NetI2pSocksSOCKS4Client

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pSocksSOCKS4Client_) && (INCLUDE_ALL_NetI2pSocksSOCKS4Client || defined(INCLUDE_NetI2pSocksSOCKS4Client))
#define NetI2pSocksSOCKS4Client_

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaNetSocket;

@interface NetI2pSocksSOCKS4Client : NSObject

#pragma mark Public

+ (void)connectWithJavaIoInputStream:(JavaIoInputStream *)pin
              withJavaIoOutputStream:(JavaIoOutputStream *)pout
                        withNSString:(NSString *)connHostName
                             withInt:(jint)connPort;

+ (void)connectWithJavaNetSocket:(JavaNetSocket *)sock
                    withNSString:(NSString *)connHostName
                         withInt:(jint)connPort;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pSocksSOCKS4Client)

FOUNDATION_EXPORT void NetI2pSocksSOCKS4Client_connectWithJavaNetSocket_withNSString_withInt_(JavaNetSocket *sock, NSString *connHostName, jint connPort);

FOUNDATION_EXPORT void NetI2pSocksSOCKS4Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_(JavaIoInputStream *pin, JavaIoOutputStream *pout, NSString *connHostName, jint connPort);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pSocksSOCKS4Client)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pSocksSOCKS4Client")
