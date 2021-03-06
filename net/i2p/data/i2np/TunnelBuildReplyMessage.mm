//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/TunnelBuildReplyMessage.java
//

#include "J2ObjC_source.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/i2np/TunnelBuildMessageBase.h"
#include "net/i2p/data/i2np/TunnelBuildReplyMessage.h"

@implementation NetI2pDataI2npTunnelBuildReplyMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2npTunnelBuildReplyMessage_MESSAGE_TYPE;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                    withInt:(jint)records {
  NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(self, context, records);
  return self;
}

- (jint)getType {
  return NetI2pDataI2npTunnelBuildReplyMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  return @"[TunnelBuildReplyMessage]";
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:withInt:);
  methods[2].selector = @selector(getType);
  methods[3].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2npTunnelBuildReplyMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "LNetI2pI2PAppContext;I", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2npTunnelBuildReplyMessage = { "TunnelBuildReplyMessage", "net.i2p.data.i2np", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2npTunnelBuildReplyMessage;
}

@end

void NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(NetI2pDataI2npTunnelBuildReplyMessage *self, NetI2pI2PAppContext *context) {
  NetI2pDataI2npTunnelBuildMessageBase_initWithNetI2pI2PAppContext_withInt_(self, context, NetI2pDataI2npTunnelBuildMessageBase_MAX_RECORD_COUNT);
}

NetI2pDataI2npTunnelBuildReplyMessage *new_NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npTunnelBuildReplyMessage, initWithNetI2pI2PAppContext_, context)
}

NetI2pDataI2npTunnelBuildReplyMessage *create_NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npTunnelBuildReplyMessage, initWithNetI2pI2PAppContext_, context)
}

void NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pDataI2npTunnelBuildReplyMessage *self, NetI2pI2PAppContext *context, jint records) {
  NetI2pDataI2npTunnelBuildMessageBase_initWithNetI2pI2PAppContext_withInt_(self, context, records);
}

NetI2pDataI2npTunnelBuildReplyMessage *new_NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npTunnelBuildReplyMessage, initWithNetI2pI2PAppContext_withInt_, context, records)
}

NetI2pDataI2npTunnelBuildReplyMessage *create_NetI2pDataI2npTunnelBuildReplyMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npTunnelBuildReplyMessage, initWithNetI2pI2PAppContext_withInt_, context, records)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2npTunnelBuildReplyMessage)
