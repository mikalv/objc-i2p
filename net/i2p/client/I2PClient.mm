//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/I2PClient.java
//

#include "J2ObjC_source.h"
#include "net/i2p/client/I2PClient.h"
#include "net/i2p/crypto/SigType.h"

J2OBJC_INITIALIZED_DEFN(NetI2pClientI2PClient)

NSString *NetI2pClientI2PClient_PROP_TCP_HOST = @"i2cp.tcp.host";
NSString *NetI2pClientI2PClient_PROP_TCP_PORT = @"i2cp.tcp.port";
NSString *NetI2pClientI2PClient_PROP_RELIABILITY = @"i2cp.messageReliability";
NSString *NetI2pClientI2PClient_PROP_RELIABILITY_BEST_EFFORT = @"BestEffort";
NSString *NetI2pClientI2PClient_PROP_RELIABILITY_GUARANTEED = @"Guaranteed";
NSString *NetI2pClientI2PClient_PROP_RELIABILITY_NONE = @"none";
NSString *NetI2pClientI2PClient_PROP_SIGTYPE = @"i2cp.destination.sigType";
NetI2pCryptoSigType *NetI2pClientI2PClient_DEFAULT_SIGTYPE;
NSString *NetI2pClientI2PClient_PROP_FAST_RECEIVE = @"i2cp.fastReceive";

@implementation NetI2pClientI2PClient

+ (NSString *)PROP_TCP_HOST {
  return NetI2pClientI2PClient_PROP_TCP_HOST;
}

+ (NSString *)PROP_TCP_PORT {
  return NetI2pClientI2PClient_PROP_TCP_PORT;
}

+ (NSString *)PROP_RELIABILITY {
  return NetI2pClientI2PClient_PROP_RELIABILITY;
}

+ (NSString *)PROP_RELIABILITY_BEST_EFFORT {
  return NetI2pClientI2PClient_PROP_RELIABILITY_BEST_EFFORT;
}

+ (NSString *)PROP_RELIABILITY_GUARANTEED {
  return NetI2pClientI2PClient_PROP_RELIABILITY_GUARANTEED;
}

+ (NSString *)PROP_RELIABILITY_NONE {
  return NetI2pClientI2PClient_PROP_RELIABILITY_NONE;
}

+ (NSString *)PROP_SIGTYPE {
  return NetI2pClientI2PClient_PROP_SIGTYPE;
}

+ (NetI2pCryptoSigType *)DEFAULT_SIGTYPE {
  return NetI2pClientI2PClient_DEFAULT_SIGTYPE;
}

+ (NSString *)PROP_FAST_RECEIVE {
  return NetI2pClientI2PClient_PROP_FAST_RECEIVE;
}

+ (jint)PROTOCOL_BYTE {
  return NetI2pClientI2PClient_PROTOCOL_BYTE;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNetI2pClientI2PSession;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 3, 4, 5, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 3, 6, 5, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 3, 7, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(createSessionWithJavaIoInputStream:withJavaUtilProperties:);
  methods[1].selector = @selector(createDestinationWithJavaIoOutputStream:);
  methods[2].selector = @selector(createDestinationWithJavaIoOutputStream:withNetI2pCryptoSigType:);
  methods[3].selector = @selector(createDestinationWithJavaIoOutputStream:withNetI2pDataCertificate:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROP_TCP_HOST", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "PROP_TCP_PORT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "PROP_RELIABILITY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "PROP_RELIABILITY_BEST_EFFORT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "PROP_RELIABILITY_GUARANTEED", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "PROP_RELIABILITY_NONE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "PROP_SIGTYPE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "DEFAULT_SIGTYPE", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "PROP_FAST_RECEIVE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "PROTOCOL_BYTE", "I", .constantValue.asInt = NetI2pClientI2PClient_PROTOCOL_BYTE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "createSession", "LJavaIoInputStream;LJavaUtilProperties;", "LNetI2pClientI2PSessionException;", "createDestination", "LJavaIoOutputStream;", "LNetI2pI2PException;LJavaIoIOException;", "LJavaIoOutputStream;LNetI2pCryptoSigType;", "LJavaIoOutputStream;LNetI2pDataCertificate;", &NetI2pClientI2PClient_PROP_TCP_HOST, &NetI2pClientI2PClient_PROP_TCP_PORT, &NetI2pClientI2PClient_PROP_RELIABILITY, &NetI2pClientI2PClient_PROP_RELIABILITY_BEST_EFFORT, &NetI2pClientI2PClient_PROP_RELIABILITY_GUARANTEED, &NetI2pClientI2PClient_PROP_RELIABILITY_NONE, &NetI2pClientI2PClient_PROP_SIGTYPE, &NetI2pClientI2PClient_DEFAULT_SIGTYPE, &NetI2pClientI2PClient_PROP_FAST_RECEIVE };
  static const J2ObjcClassInfo _NetI2pClientI2PClient = { "I2PClient", "net.i2p.client", ptrTable, methods, fields, 7, 0x609, 4, 10, -1, -1, -1, -1, -1 };
  return &_NetI2pClientI2PClient;
}

+ (void)initialize {
  if (self == [NetI2pClientI2PClient class]) {
    JreStrongAssign(&NetI2pClientI2PClient_DEFAULT_SIGTYPE, JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1));
    J2OBJC_SET_INITIALIZED(NetI2pClientI2PClient)
  }
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pClientI2PClient)
