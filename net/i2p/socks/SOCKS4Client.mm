//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/socks/SOCKS4Client.java
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
#include "net/i2p/socks/SOCKS4Client.h"
#include "net/i2p/socks/SOCKS4Constants.h"
#include "net/i2p/socks/SOCKSException.h"
#include "net/i2p/util/Addresses.h"

@interface NetI2pSocksSOCKS4Client ()

- (instancetype)init;

@end

__attribute__((unused)) static void NetI2pSocksSOCKS4Client_init(NetI2pSocksSOCKS4Client *self);

__attribute__((unused)) static NetI2pSocksSOCKS4Client *new_NetI2pSocksSOCKS4Client_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pSocksSOCKS4Client *create_NetI2pSocksSOCKS4Client_init(void);

@implementation NetI2pSocksSOCKS4Client

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS4Client_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)connectWithJavaNetSocket:(JavaNetSocket *)sock
                    withNSString:(NSString *)connHostName
                         withInt:(jint)connPort {
  NetI2pSocksSOCKS4Client_connectWithJavaNetSocket_withNSString_withInt_(sock, connHostName, connPort);
}

+ (void)connectWithJavaIoInputStream:(JavaIoInputStream *)pin
              withJavaIoOutputStream:(JavaIoOutputStream *)pout
                        withNSString:(NSString *)connHostName
                             withInt:(jint)connPort {
  NetI2pSocksSOCKS4Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_(pin, pout, connHostName, connPort);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 3, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(connectWithJavaNetSocket:withNSString:withInt:);
  methods[2].selector = @selector(connectWithJavaIoInputStream:withJavaIoOutputStream:withNSString:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "connect", "LJavaNetSocket;LNSString;I", "LJavaIoIOException;", "LJavaIoInputStream;LJavaIoOutputStream;LNSString;I" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS4Client = { "SOCKS4Client", "net.i2p.socks", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pSocksSOCKS4Client;
}

@end

void NetI2pSocksSOCKS4Client_init(NetI2pSocksSOCKS4Client *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS4Client *new_NetI2pSocksSOCKS4Client_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS4Client, init)
}

NetI2pSocksSOCKS4Client *create_NetI2pSocksSOCKS4Client_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS4Client, init)
}

void NetI2pSocksSOCKS4Client_connectWithJavaNetSocket_withNSString_withInt_(JavaNetSocket *sock, NSString *connHostName, jint connPort) {
  NetI2pSocksSOCKS4Client_initialize();
  JavaIoInputStream *in = nil;
  JavaIoOutputStream *out = nil;
  @try {
    in = [((JavaNetSocket *) nil_chk(sock)) getInputStream];
    out = [sock getOutputStream];
    NetI2pSocksSOCKS4Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_(in, out, connHostName, connPort);
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

void NetI2pSocksSOCKS4Client_connectWithJavaIoInputStream_withJavaIoOutputStream_withNSString_withInt_(JavaIoInputStream *pin, JavaIoOutputStream *pout, NSString *connHostName, jint connPort) {
  NetI2pSocksSOCKS4Client_initialize();
  JavaIoDataOutputStream *out = nil;
  JavaIoDataInputStream *in = nil;
  @try {
    out = create_JavaIoDataOutputStream_initWithJavaIoOutputStream_(pout);
    [out writeByteWithInt:NetI2pSocksSOCKS4Constants_SOCKS_VERSION_4];
    [out writeByteWithInt:NetI2pSocksSOCKS4Constants_Command_CONNECT];
    [out writeShortWithInt:connPort];
    jboolean isIPv4;
    if (NetI2pUtilAddresses_isIPv4AddressWithNSString_(connHostName)) {
      isIPv4 = true;
      [out writeWithByteArray:[((JavaNetInetAddress *) nil_chk(JavaNetInetAddress_getByNameWithNSString_(connHostName))) getAddress]];
    }
    else if (NetI2pUtilAddresses_isIPv6AddressWithNSString_(connHostName)) {
      @throw create_NetI2pSocksSOCKSException_initWithNSString_(@"IPv6 not supported in SOCKS 4");
    }
    else {
      isIPv4 = false;
      [out writeIntWithInt:1];
    }
    [out writeByteWithInt:0];
    if (!isIPv4) {
      IOSByteArray *d = [((NSString *) nil_chk(connHostName)) java_getBytesWithCharsetName:@"ISO-8859-1"];
      [out writeWithByteArray:d];
      [out writeByteWithInt:0];
    }
    [out flush];
    in = create_JavaIoDataInputStream_initWithJavaIoInputStream_(pin);
    [in readByte];
    jint reply = [in readByte];
    if (reply != NetI2pSocksSOCKS4Constants_Reply_SUCCEEDED) @throw create_NetI2pSocksSOCKSException_initWithNSString_(JreStrcat("$I", @"Proxy rejected request, response = ", reply));
    [in readShort];
    [in readInt];
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

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS4Client)
