//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/I2PSession.java
//

#include "J2ObjC_source.h"
#include "net/i2p/client/I2PSession.h"

@implementation NetI2pClientI2PSession

+ (jint)PORT_ANY {
  return NetI2pClientI2PSession_PORT_ANY;
}

+ (jint)PORT_UNSPECIFIED {
  return NetI2pClientI2PSession_PORT_UNSPECIFIED;
}

+ (jint)PROTO_ANY {
  return NetI2pClientI2PSession_PROTO_ANY;
}

+ (jint)PROTO_UNSPECIFIED {
  return NetI2pClientI2PSession_PROTO_UNSPECIFIED;
}

+ (jint)PROTO_STREAMING {
  return NetI2pClientI2PSession_PROTO_STREAMING;
}

+ (jint)PROTO_DATAGRAM {
  return NetI2pClientI2PSession_PROTO_DATAGRAM;
}

+ (jint)PROTO_DATAGRAM_RAW {
  return NetI2pClientI2PSession_PROTO_DATAGRAM_RAW;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 3, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 4, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 5, 2, 6, -1, -1 },
    { NULL, "Z", 0x401, 0, 7, 2, 8, -1, -1 },
    { NULL, "Z", 0x401, 0, 9, 2, 10, -1, -1 },
    { NULL, "Z", 0x401, 0, 11, 2, 12, -1, -1 },
    { NULL, "Z", 0x401, 0, 13, 2, 14, -1, -1 },
    { NULL, "Z", 0x401, 0, 15, 2, 16, -1, -1 },
    { NULL, "Z", 0x401, 0, 17, 2, -1, -1, -1 },
    { NULL, "J", 0x401, 0, 18, 2, -1, -1, -1 },
    { NULL, "[B", 0x401, 19, 20, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 21, 22, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 23, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "LNetI2pClientI2PSession;", 0x401, 25, 26, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 27, 28, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x401, -1, -1, -1, 29, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPrivateKey;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSigningPrivateKey;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 30, 31, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 30, 32, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 30, 33, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x401, 30, 34, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 35, 36, -1, -1, -1, -1 },
    { NULL, "[I", 0x401, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 37, 38, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 39, 40, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 41, 22, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:);
  methods[1].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:);
  methods[2].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withInt:);
  methods[3].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withNetI2pDataSessionKey:withJavaUtilSet:);
  methods[4].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withNetI2pDataSessionKey:withJavaUtilSet:);
  methods[5].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withNetI2pDataSessionKey:withJavaUtilSet:withLong:);
  methods[6].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withNetI2pDataSessionKey:withJavaUtilSet:withInt:withInt:withInt:);
  methods[7].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withNetI2pDataSessionKey:withJavaUtilSet:withLong:withInt:withInt:withInt:);
  methods[8].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withNetI2pDataSessionKey:withJavaUtilSet:withLong:withInt:withInt:withInt:withInt:);
  methods[9].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withInt:withInt:withInt:withNetI2pClientSendMessageOptions:);
  methods[10].selector = @selector(sendMessageWithNetI2pDataDestination:withByteArray:withInt:withInt:withInt:withInt:withInt:withNetI2pClientSendMessageOptions:withNetI2pClientSendMessageStatusListener:);
  methods[11].selector = @selector(receiveMessageWithInt:);
  methods[12].selector = @selector(reportAbuseWithInt:withInt:);
  methods[13].selector = @selector(setSessionListenerWithNetI2pClientI2PSessionListener:);
  methods[14].selector = @selector(destroySession);
  methods[15].selector = @selector(addSubsessionWithJavaIoInputStream:withJavaUtilProperties:);
  methods[16].selector = @selector(removeSubsessionWithNetI2pClientI2PSession:);
  methods[17].selector = @selector(getSubsessions);
  methods[18].selector = @selector(connect);
  methods[19].selector = @selector(isClosed);
  methods[20].selector = @selector(getMyDestination);
  methods[21].selector = @selector(getDecryptionKey);
  methods[22].selector = @selector(getPrivateKey);
  methods[23].selector = @selector(lookupDestWithNetI2pDataHash:);
  methods[24].selector = @selector(lookupDestWithNetI2pDataHash:withLong:);
  methods[25].selector = @selector(lookupDestWithNSString:);
  methods[26].selector = @selector(lookupDestWithNSString:withLong:);
  methods[27].selector = @selector(updateOptionsWithJavaUtilProperties:);
  methods[28].selector = @selector(bandwidthLimits);
  methods[29].selector = @selector(addSessionListenerWithNetI2pClientI2PSessionListener:withInt:withInt:);
  methods[30].selector = @selector(addMuxedSessionListenerWithNetI2pClientI2PSessionMuxedListener:withInt:withInt:);
  methods[31].selector = @selector(removeListenerWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PORT_ANY", "I", .constantValue.asInt = NetI2pClientI2PSession_PORT_ANY, 0x19, -1, -1, -1, -1 },
    { "PORT_UNSPECIFIED", "I", .constantValue.asInt = NetI2pClientI2PSession_PORT_UNSPECIFIED, 0x19, -1, -1, -1, -1 },
    { "PROTO_ANY", "I", .constantValue.asInt = NetI2pClientI2PSession_PROTO_ANY, 0x19, -1, -1, -1, -1 },
    { "PROTO_UNSPECIFIED", "I", .constantValue.asInt = NetI2pClientI2PSession_PROTO_UNSPECIFIED, 0x19, -1, -1, -1, -1 },
    { "PROTO_STREAMING", "I", .constantValue.asInt = NetI2pClientI2PSession_PROTO_STREAMING, 0x19, -1, -1, -1, -1 },
    { "PROTO_DATAGRAM", "I", .constantValue.asInt = NetI2pClientI2PSession_PROTO_DATAGRAM, 0x19, -1, -1, -1, -1 },
    { "PROTO_DATAGRAM_RAW", "I", .constantValue.asInt = NetI2pClientI2PSession_PROTO_DATAGRAM_RAW, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "sendMessage", "LNetI2pDataDestination;[B", "LNetI2pClientI2PSessionException;", "LNetI2pDataDestination;[BII", "LNetI2pDataDestination;[BIII", "LNetI2pDataDestination;[BLNetI2pDataSessionKey;LJavaUtilSet;", "(Lnet/i2p/data/Destination;[BLnet/i2p/data/SessionKey;Ljava/util/Set<Lnet/i2p/data/SessionTag;>;)Z", "LNetI2pDataDestination;[BIILNetI2pDataSessionKey;LJavaUtilSet;", "(Lnet/i2p/data/Destination;[BIILnet/i2p/data/SessionKey;Ljava/util/Set<Lnet/i2p/data/SessionTag;>;)Z", "LNetI2pDataDestination;[BIILNetI2pDataSessionKey;LJavaUtilSet;J", "(Lnet/i2p/data/Destination;[BIILnet/i2p/data/SessionKey;Ljava/util/Set<Lnet/i2p/data/SessionTag;>;J)Z", "LNetI2pDataDestination;[BIILNetI2pDataSessionKey;LJavaUtilSet;III", "(Lnet/i2p/data/Destination;[BIILnet/i2p/data/SessionKey;Ljava/util/Set<Lnet/i2p/data/SessionTag;>;III)Z", "LNetI2pDataDestination;[BIILNetI2pDataSessionKey;LJavaUtilSet;JIII", "(Lnet/i2p/data/Destination;[BIILnet/i2p/data/SessionKey;Ljava/util/Set<Lnet/i2p/data/SessionTag;>;JIII)Z", "LNetI2pDataDestination;[BIILNetI2pDataSessionKey;LJavaUtilSet;JIIII", "(Lnet/i2p/data/Destination;[BIILnet/i2p/data/SessionKey;Ljava/util/Set<Lnet/i2p/data/SessionTag;>;JIIII)Z", "LNetI2pDataDestination;[BIIIIILNetI2pClientSendMessageOptions;", "LNetI2pDataDestination;[BIIIIILNetI2pClientSendMessageOptions;LNetI2pClientSendMessageStatusListener;", "receiveMessage", "I", "reportAbuse", "II", "setSessionListener", "LNetI2pClientI2PSessionListener;", "addSubsession", "LJavaIoInputStream;LJavaUtilProperties;", "removeSubsession", "LNetI2pClientI2PSession;", "()Ljava/util/List<Lnet/i2p/client/I2PSession;>;", "lookupDest", "LNetI2pDataHash;", "LNetI2pDataHash;J", "LNSString;", "LNSString;J", "updateOptions", "LJavaUtilProperties;", "addSessionListener", "LNetI2pClientI2PSessionListener;II", "addMuxedSessionListener", "LNetI2pClientI2PSessionMuxedListener;II", "removeListener" };
  static const J2ObjcClassInfo _NetI2pClientI2PSession = { "I2PSession", "net.i2p.client", ptrTable, methods, fields, 7, 0x609, 32, 7, -1, -1, -1, -1, -1 };
  return &_NetI2pClientI2PSession;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pClientI2PSession)
