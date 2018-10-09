//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/ClientManagerFacade.java
//

#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/util/Collections.h"
#include "java/util/Set.h"
#include "net/i2p/crypto/SessionKeyManager.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/LeaseSet.h"
#include "net/i2p/data/i2cp/MessageId.h"
#include "net/i2p/data/i2cp/SessionConfig.h"
#include "net/i2p/router/ClientManagerFacade.h"
#include "net/i2p/router/ClientMessage.h"
#include "net/i2p/router/Job.h"

#pragma clang diagnostic ignored "-Wprotocol"

NSString *NetI2pRouterClientManagerFacade_PROP_CLIENT_ONLY = @"i2cp.dontPublishLeaseSet";

@implementation NetI2pRouterClientManagerFacade

+ (NSString *)PROP_CLIENT_ONLY {
  return NetI2pRouterClientManagerFacade_PROP_CLIENT_ONLY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterClientManagerFacade_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)requestLeaseSetWithNetI2pDataDestination:(NetI2pDataDestination *)dest
                          withNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)set
                                        withLong:(jlong)timeout
                             withNetI2pRouterJob:(id<NetI2pRouterJob>)onCreateJob
                             withNetI2pRouterJob:(id<NetI2pRouterJob>)onFailedJob {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)requestLeaseSetWithNetI2pDataHash:(NetI2pDataHash *)dest
                   withNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)set {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)reportAbuseWithNetI2pDataDestination:(NetI2pDataDestination *)dest
                                withNSString:(NSString *)reason
                                     withInt:(jint)severity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)isLocalWithNetI2pDataDestination:(NetI2pDataDestination *)dest {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isLocalWithNetI2pDataHash:(NetI2pDataHash *)destHash {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)messageDeliveryStatusUpdateWithNetI2pDataDestination:(NetI2pDataDestination *)fromDest
                                 withNetI2pDataI2cpMessageId:(NetI2pDataI2cpMessageId *)id_
                                                    withLong:(jlong)messageNonce
                                                     withInt:(jint)status {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)messageReceivedWithNetI2pRouterClientMessage:(NetI2pRouterClientMessage *)msg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)verifyClientLiveliness {
  return true;
}

- (jboolean)isAlive {
  return true;
}

- (jboolean)shouldPublishLeaseSetWithNetI2pDataHash:(NetI2pDataHash *)destinationHash {
  return true;
}

- (id<JavaUtilSet>)listClients {
  return JavaUtilCollections_emptySet();
}

- (NetI2pDataI2cpSessionConfig *)getClientSessionConfigWithNetI2pDataDestination:(NetI2pDataDestination *)dest {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NetI2pCryptoSessionKeyManager *)getClientSessionKeyManagerWithNetI2pDataHash:(NetI2pDataHash *)dest {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg {
}

- (void)shutdownWithNSString:(NSString *)msg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 5, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 7, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 13, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionConfig;", 0x401, 14, 6, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSessionKeyManager;", 0x401, 15, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, 18, -1, -1, -1 },
    { NULL, "V", 0x401, 19, 20, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(requestLeaseSetWithNetI2pDataDestination:withNetI2pDataLeaseSet:withLong:withNetI2pRouterJob:withNetI2pRouterJob:);
  methods[2].selector = @selector(requestLeaseSetWithNetI2pDataHash:withNetI2pDataLeaseSet:);
  methods[3].selector = @selector(reportAbuseWithNetI2pDataDestination:withNSString:withInt:);
  methods[4].selector = @selector(isLocalWithNetI2pDataDestination:);
  methods[5].selector = @selector(isLocalWithNetI2pDataHash:);
  methods[6].selector = @selector(messageDeliveryStatusUpdateWithNetI2pDataDestination:withNetI2pDataI2cpMessageId:withLong:withInt:);
  methods[7].selector = @selector(messageReceivedWithNetI2pRouterClientMessage:);
  methods[8].selector = @selector(verifyClientLiveliness);
  methods[9].selector = @selector(isAlive);
  methods[10].selector = @selector(shouldPublishLeaseSetWithNetI2pDataHash:);
  methods[11].selector = @selector(listClients);
  methods[12].selector = @selector(getClientSessionConfigWithNetI2pDataDestination:);
  methods[13].selector = @selector(getClientSessionKeyManagerWithNetI2pDataHash:);
  methods[14].selector = @selector(renderStatusHTMLWithJavaIoWriter:);
  methods[15].selector = @selector(shutdownWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROP_CLIENT_ONLY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
  };
  static const void *ptrTable[] = { "requestLeaseSet", "LNetI2pDataDestination;LNetI2pDataLeaseSet;JLNetI2pRouterJob;LNetI2pRouterJob;", "LNetI2pDataHash;LNetI2pDataLeaseSet;", "reportAbuse", "LNetI2pDataDestination;LNSString;I", "isLocal", "LNetI2pDataDestination;", "LNetI2pDataHash;", "messageDeliveryStatusUpdate", "LNetI2pDataDestination;LNetI2pDataI2cpMessageId;JI", "messageReceived", "LNetI2pRouterClientMessage;", "shouldPublishLeaseSet", "()Ljava/util/Set<Lnet/i2p/data/Destination;>;", "getClientSessionConfig", "getClientSessionKeyManager", "renderStatusHTML", "LJavaIoWriter;", "LJavaIoIOException;", "shutdown", "LNSString;", &NetI2pRouterClientManagerFacade_PROP_CLIENT_ONLY };
  static const J2ObjcClassInfo _NetI2pRouterClientManagerFacade = { "ClientManagerFacade", "net.i2p.router", ptrTable, methods, fields, 7, 0x401, 16, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterClientManagerFacade;
}

@end

void NetI2pRouterClientManagerFacade_init(NetI2pRouterClientManagerFacade *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterClientManagerFacade)
