//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/socks/SOCKS5Client.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/net/InetAddress.h"
#include "java/net/Socket.h"
#include "net/i2p/socks/SOCKS5Client.h"
#include "net/i2p/socks/SOCKS5Constants.h"
#include "net/i2p/socks/SOCKSException.h"
#include "net/i2p/util/Addresses.h"

@interface NetI2pSocksSOCKS5Client ()

- (instancetype)init;

@end

__attribute__((unused)) static void NetI2pSocksSOCKS5Client_init(NetI2pSocksSOCKS5Client *self);

__attribute__((unused)) static NetI2pSocksSOCKS5Client *new_NetI2pSocksSOCKS5Client_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pSocksSOCKS5Client *create_NetI2pSocksSOCKS5Client_init(void);

@implementation NetI2pSocksSOCKS5Client

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS5Client_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)connectWithJavaNetSocket:(JavaNetSocket *)sock
                    withNSString:(NSString *)connHostName
                         withInt:(jint)connPort {
  NetI2pSocksSOCKS5Client_connectWithJavaNetSocket_withNSString_withInt_(sock, connHostName, connPort);
}

+ (void)connectWithJavaNetSocket:(JavaNetSocket *)sock
                    withNSString:(NSString *)connHostName
                         withInt:(jint)connPort
                    withNSString:(NSString *)configUser
                    withNSString:(NSString *)configPW {
  NetI2pSocksSOCKS5Client_connectWithJavaNetSocket_withNSString_withInt_withNSString_withNSString_(sock, connHostName, connPort, configUser, configPW);
}

+ (void)connectWithJavaIoInputStream:(JavaIoInputStream *)pin
              withJavaIoOutputStream:(JavaIoOutputStream *)pout
                        withNSString:(NSString *)connHostName
                             withInt:(jint)connPort {
  NetI2pSocksSOCKS5Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_(pin, pout, connHostName, connPort);
}

+ (void)connectWithJavaIoInputStream:(JavaIoInputStream *)pin
              withJavaIoOutputStream:(JavaIoOutputStream *)pout
                        withNSString:(NSString *)connHostName
                             withInt:(jint)connPort
                        withNSString:(NSString *)configUser
                        withNSString:(NSString *)configPW {
  NetI2pSocksSOCKS5Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_withNSString_withNSString_(pin, pout, connHostName, connPort, configUser, configPW);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 3, 2, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 5, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(connectWithJavaNetSocket:withNSString:withInt:);
  methods[2].selector = @selector(connectWithJavaNetSocket:withNSString:withInt:withNSString:withNSString:);
  methods[3].selector = @selector(connectWithJavaIoInputStream:withJavaIoOutputStream:withNSString:withInt:);
  methods[4].selector = @selector(connectWithJavaIoInputStream:withJavaIoOutputStream:withNSString:withInt:withNSString:withNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "connect", "LJavaNetSocket;LNSString;I", "LJavaIoIOException;", "LJavaNetSocket;LNSString;ILNSString;LNSString;", "LJavaIoInputStream;LJavaIoOutputStream;LNSString;I", "LJavaIoInputStream;LJavaIoOutputStream;LNSString;ILNSString;LNSString;" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS5Client = { "SOCKS5Client", "net.i2p.socks", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pSocksSOCKS5Client;
}

@end

void NetI2pSocksSOCKS5Client_init(NetI2pSocksSOCKS5Client *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS5Client *new_NetI2pSocksSOCKS5Client_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS5Client, init)
}

NetI2pSocksSOCKS5Client *create_NetI2pSocksSOCKS5Client_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS5Client, init)
}

void NetI2pSocksSOCKS5Client_connectWithJavaNetSocket_withNSString_withInt_(JavaNetSocket *sock, NSString *connHostName, jint connPort) {
  NetI2pSocksSOCKS5Client_initialize();
  NetI2pSocksSOCKS5Client_connectWithJavaNetSocket_withNSString_withInt_withNSString_withNSString_(sock, connHostName, connPort, nil, nil);
}

void NetI2pSocksSOCKS5Client_connectWithJavaNetSocket_withNSString_withInt_withNSString_withNSString_(JavaNetSocket *sock, NSString *connHostName, jint connPort, NSString *configUser, NSString *configPW) {
  NetI2pSocksSOCKS5Client_initialize();
  JavaIoInputStream *in = nil;
  JavaIoOutputStream *out = nil;
  @try {
    in = [((JavaNetSocket *) nil_chk(sock)) getInputStream];
    out = [sock getOutputStream];
    NetI2pSocksSOCKS5Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_withNSString_withNSString_(in, out, connHostName, connPort, configUser, configPW);
  }
  @catch (JavaIoIOException *e) {
    @try {
      [sock close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    @throw e;
  }
}

void NetI2pSocksSOCKS5Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_(JavaIoInputStream *pin, JavaIoOutputStream *pout, NSString *connHostName, jint connPort) {
  NetI2pSocksSOCKS5Client_initialize();
  NetI2pSocksSOCKS5Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_withNSString_withNSString_(pin, pout, connHostName, connPort, nil, nil);
}

void NetI2pSocksSOCKS5Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_withNSString_withNSString_(JavaIoInputStream *pin, JavaIoOutputStream *pout, NSString *connHostName, jint connPort, NSString *configUser, NSString *configPW) {
  NetI2pSocksSOCKS5Client_initialize();
  JavaIoDataOutputStream *out = nil;
  JavaIoDataInputStream *in = nil;
  @try {
    out = create_JavaIoDataOutputStream_initWithJavaIoOutputStream_(pout);
    jboolean authAvail = configUser != nil && configPW != nil;
    [out writeByteWithInt:NetI2pSocksSOCKS5Constants_SOCKS_VERSION_5];
    if (authAvail) {
      [out writeByteWithInt:2];
      [out writeByteWithInt:NetI2pSocksSOCKS5Constants_Method_NO_AUTH_REQUIRED];
      [out writeByteWithInt:NetI2pSocksSOCKS5Constants_Method_USERNAME_PASSWORD];
    }
    else {
      [out writeByteWithInt:1];
      [out writeByteWithInt:NetI2pSocksSOCKS5Constants_Method_NO_AUTH_REQUIRED];
    }
    [out flush];
    in = create_JavaIoDataInputStream_initWithJavaIoInputStream_(pin);
    jint hisVersion = [in readByte];
    if (hisVersion != NetI2pSocksSOCKS5Constants_SOCKS_VERSION_5) @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"SOCKS proxy is not Version 5");
    jint method = [in readByte];
    if (method == NetI2pSocksSOCKS5Constants_Method_NO_AUTH_REQUIRED) {
    }
    else if (method == NetI2pSocksSOCKS5Constants_Method_USERNAME_PASSWORD) {
      if (authAvail) {
        [out writeByteWithInt:NetI2pSocksSOCKS5Constants_AUTH_VERSION];
        IOSByteArray *user = [((NSString *) nil_chk(configUser)) java_getBytesWithCharsetName:@"UTF-8"];
        IOSByteArray *pw = [((NSString *) nil_chk(configPW)) java_getBytesWithCharsetName:@"UTF-8"];
        [out writeByteWithInt:((IOSByteArray *) nil_chk(user))->size_];
        [out writeWithByteArray:user];
        [out writeByteWithInt:((IOSByteArray *) nil_chk(pw))->size_];
        [out writeWithByteArray:pw];
        [out flush];
        if ([in readByte] != NetI2pSocksSOCKS5Constants_AUTH_VERSION) @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"Bad auth version from proxy");
        if ([in readByte] != NetI2pSocksSOCKS5Constants_AUTH_SUCCESS) @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"Proxy authorization failure");
      }
      else {
        @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"Proxy requires authorization, please configure username/password");
      }
    }
    else {
      @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"Proxy authorization failure");
    }
    jint addressType;
    if (NetI2pUtilAddresses_isIPv4AddressWithNSString_(connHostName)) addressType = NetI2pSocksSOCKS5Constants_AddressType_IPV4;
    else if (NetI2pUtilAddresses_isIPv6AddressWithNSString_(connHostName)) addressType = NetI2pSocksSOCKS5Constants_AddressType_IPV6;
    else addressType = NetI2pSocksSOCKS5Constants_AddressType_DOMAINNAME;
    [out writeByteWithInt:NetI2pSocksSOCKS5Constants_SOCKS_VERSION_5];
    [out writeByteWithInt:NetI2pSocksSOCKS5Constants_Command_CONNECT];
    [out writeByteWithInt:0];
    [out writeByteWithInt:addressType];
    if (addressType == NetI2pSocksSOCKS5Constants_AddressType_IPV4 || addressType == NetI2pSocksSOCKS5Constants_AddressType_IPV6) {
      [out writeWithByteArray:[((JavaNetInetAddress *) nil_chk(JavaNetInetAddress_getByNameWithNSString_(connHostName))) getAddress]];
    }
    else {
      IOSByteArray *d = [((NSString *) nil_chk(connHostName)) java_getBytesWithCharsetName:@"ISO-8859-1"];
      [out writeByteWithInt:((IOSByteArray *) nil_chk(d))->size_];
      [out writeWithByteArray:d];
    }
    [out writeShortWithInt:connPort];
    [out flush];
    hisVersion = [in readByte];
    if (hisVersion != NetI2pSocksSOCKS5Constants_SOCKS_VERSION_5) @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"Proxy response is not Version 5");
    jint reply = [in readByte];
    [in readByte];
    jint type = [in readByte];
    jint count = 0;
    if (type == NetI2pSocksSOCKS5Constants_AddressType_IPV4) {
      count = 4;
    }
    else if (type == NetI2pSocksSOCKS5Constants_AddressType_DOMAINNAME) {
      count = [in readUnsignedByte];
    }
    else if (type == NetI2pSocksSOCKS5Constants_AddressType_IPV6) {
      count = 16;
    }
    else {
      @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"Unsupported address type in proxy response");
    }
    IOSByteArray *addr = [IOSByteArray arrayWithLength:count];
    [in readFullyWithByteArray:addr];
    [in readUnsignedShort];
    if (reply != NetI2pSocksSOCKS5Constants_Reply_SUCCEEDED) @throw create_NetI2pSocksSOCKSException_initWithNSString_(JreStrcat("$I", @"Proxy rejected request, response = ", reply));
  }
  @catch (JavaIoIOException *e) {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    @throw e;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS5Client)
