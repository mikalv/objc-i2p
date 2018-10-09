//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/I2PClientMessageHandlerMap.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/client/impl/BWLimitsMessageHandler.h"
#include "net/i2p/client/impl/DestReplyMessageHandler.h"
#include "net/i2p/client/impl/DisconnectMessageHandler.h"
#include "net/i2p/client/impl/HostReplyMessageHandler.h"
#include "net/i2p/client/impl/I2CPMessageHandler.h"
#include "net/i2p/client/impl/I2PClientMessageHandlerMap.h"
#include "net/i2p/client/impl/MessagePayloadMessageHandler.h"
#include "net/i2p/client/impl/MessageStatusMessageHandler.h"
#include "net/i2p/client/impl/RequestLeaseSetMessageHandler.h"
#include "net/i2p/client/impl/RequestVariableLeaseSetMessageHandler.h"
#include "net/i2p/client/impl/SessionStatusMessageHandler.h"
#include "net/i2p/client/impl/SetDateMessageHandler.h"
#include "net/i2p/data/i2cp/BandwidthLimitsMessage.h"
#include "net/i2p/data/i2cp/DestReplyMessage.h"
#include "net/i2p/data/i2cp/DisconnectMessage.h"
#include "net/i2p/data/i2cp/HostReplyMessage.h"
#include "net/i2p/data/i2cp/MessagePayloadMessage.h"
#include "net/i2p/data/i2cp/MessageStatusMessage.h"
#include "net/i2p/data/i2cp/RequestLeaseSetMessage.h"
#include "net/i2p/data/i2cp/RequestVariableLeaseSetMessage.h"
#include "net/i2p/data/i2cp/SessionStatusMessage.h"
#include "net/i2p/data/i2cp/SetDateMessage.h"

@implementation NetI2pClientImplI2PClientMessageHandlerMap

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pClientImplI2PClientMessageHandlerMap_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pClientImplI2PClientMessageHandlerMap_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (id<NetI2pClientImplI2CPMessageHandler>)getHandlerWithInt:(jint)messageTypeId {
  if ((messageTypeId < 0) || (messageTypeId >= ((IOSObjectArray *) nil_chk(_handlers_))->size_)) return nil;
  return IOSObjectArray_Get(nil_chk(_handlers_), messageTypeId);
}

- (void)dealloc {
  RELEASE_(_handlers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pClientImplI2CPMessageHandler;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[2].selector = @selector(getHandlerWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_handlers_", "[LNetI2pClientImplI2CPMessageHandler;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "getHandler", "I" };
  static const J2ObjcClassInfo _NetI2pClientImplI2PClientMessageHandlerMap = { "I2PClientMessageHandlerMap", "net.i2p.client.impl", ptrTable, methods, fields, 7, 0x0, 3, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pClientImplI2PClientMessageHandlerMap;
}

@end

void NetI2pClientImplI2PClientMessageHandlerMap_init(NetI2pClientImplI2PClientMessageHandlerMap *self) {
  NSObject_init(self);
}

NetI2pClientImplI2PClientMessageHandlerMap *new_NetI2pClientImplI2PClientMessageHandlerMap_init() {
  J2OBJC_NEW_IMPL(NetI2pClientImplI2PClientMessageHandlerMap, init)
}

NetI2pClientImplI2PClientMessageHandlerMap *create_NetI2pClientImplI2PClientMessageHandlerMap_init() {
  J2OBJC_CREATE_IMPL(NetI2pClientImplI2PClientMessageHandlerMap, init)
}

void NetI2pClientImplI2PClientMessageHandlerMap_initWithNetI2pI2PAppContext_(NetI2pClientImplI2PClientMessageHandlerMap *self, NetI2pI2PAppContext *context) {
  NSObject_init(self);
  jint highest = NetI2pDataI2cpDisconnectMessage_MESSAGE_TYPE;
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpSessionStatusMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpRequestLeaseSetMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpMessagePayloadMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpSetDateMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpDestReplyMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpBandwidthLimitsMessage_MESSAGE_TYPE);
  highest = JavaLangMath_maxWithInt_withInt_(highest, NetI2pDataI2cpRequestVariableLeaseSetMessage_MESSAGE_TYPE);
  JreStrongAssignAndConsume(&self->_handlers_, [IOSObjectArray newArrayWithLength:highest + 1 type:NetI2pClientImplI2CPMessageHandler_class_()]);
  IOSObjectArray_SetAndConsume(self->_handlers_, NetI2pDataI2cpDisconnectMessage_MESSAGE_TYPE, new_NetI2pClientImplDisconnectMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpSessionStatusMessage_MESSAGE_TYPE, new_NetI2pClientImplSessionStatusMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpRequestLeaseSetMessage_MESSAGE_TYPE, new_NetI2pClientImplRequestLeaseSetMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpMessagePayloadMessage_MESSAGE_TYPE, new_NetI2pClientImplMessagePayloadMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE, new_NetI2pClientImplMessageStatusMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpSetDateMessage_MESSAGE_TYPE, new_NetI2pClientImplSetDateMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpDestReplyMessage_MESSAGE_TYPE, new_NetI2pClientImplDestReplyMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpBandwidthLimitsMessage_MESSAGE_TYPE, new_NetI2pClientImplBWLimitsMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpRequestVariableLeaseSetMessage_MESSAGE_TYPE, new_NetI2pClientImplRequestVariableLeaseSetMessageHandler_initWithNetI2pI2PAppContext_(context));
  IOSObjectArray_SetAndConsume(nil_chk(self->_handlers_), NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE, new_NetI2pClientImplHostReplyMessageHandler_initWithNetI2pI2PAppContext_(context));
}

NetI2pClientImplI2PClientMessageHandlerMap *new_NetI2pClientImplI2PClientMessageHandlerMap_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pClientImplI2PClientMessageHandlerMap, initWithNetI2pI2PAppContext_, context)
}

NetI2pClientImplI2PClientMessageHandlerMap *create_NetI2pClientImplI2PClientMessageHandlerMap_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pClientImplI2PClientMessageHandlerMap, initWithNetI2pI2PAppContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientImplI2PClientMessageHandlerMap)