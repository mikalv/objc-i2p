//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/MessageReceivedJob.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/Payload.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/MessageId.h"
#include "net/i2p/data/i2cp/MessagePayloadMessage.h"
#include "net/i2p/data/i2cp/MessageStatusMessage.h"
#include "net/i2p/data/i2cp/SessionId.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/client/ClientConnectionRunner.h"
#include "net/i2p/router/client/MessageReceivedJob.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterClientMessageReceivedJob () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterClientClientConnectionRunner *_runner_;
  NetI2pDataDestination *_toDest_;
  NetI2pDataPayload *_payload_;
  jboolean _sendDirect_;
}

- (void)messageAvailableWithNetI2pDataI2cpMessageId:(NetI2pDataI2cpMessageId *)id_
                                           withLong:(jlong)size;

- (void)sendMessageWithLong:(jlong)id_;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterClientMessageReceivedJob, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientMessageReceivedJob, _runner_, NetI2pRouterClientClientConnectionRunner *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientMessageReceivedJob, _toDest_, NetI2pDataDestination *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientMessageReceivedJob, _payload_, NetI2pDataPayload *)

__attribute__((unused)) static void NetI2pRouterClientMessageReceivedJob_messageAvailableWithNetI2pDataI2cpMessageId_withLong_(NetI2pRouterClientMessageReceivedJob *self, NetI2pDataI2cpMessageId *id_, jlong size);

__attribute__((unused)) static void NetI2pRouterClientMessageReceivedJob_sendMessageWithLong_(NetI2pRouterClientMessageReceivedJob *self, jlong id_);

@implementation NetI2pRouterClientMessageReceivedJob

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
     withNetI2pRouterClientClientConnectionRunner:(NetI2pRouterClientClientConnectionRunner *)runner
                        withNetI2pDataDestination:(NetI2pDataDestination *)toDest
                        withNetI2pDataDestination:(NetI2pDataDestination *)fromDest
                            withNetI2pDataPayload:(NetI2pDataPayload *)payload
                                      withBoolean:(jboolean)sendDirect {
  NetI2pRouterClientMessageReceivedJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataDestination_withNetI2pDataDestination_withNetI2pDataPayload_withBoolean_(self, ctx, runner, toDest, fromDest, payload, sendDirect);
  return self;
}

- (NSString *)getName {
  return @"Deliver New Message";
}

- (void)runJob {
  [self receiveMessage];
}

- (jboolean)receiveMessage {
  if ([((NetI2pRouterClientClientConnectionRunner *) nil_chk(_runner_)) isDead]) return false;
  NetI2pDataI2cpMessageId *id_ = nil;
  @try {
    jlong nextID = [_runner_ getNextMessageId];
    if (_sendDirect_) {
      NetI2pRouterClientMessageReceivedJob_sendMessageWithLong_(self, nextID);
    }
    else {
      id_ = create_NetI2pDataI2cpMessageId_initWithLong_(nextID);
      [_runner_ setPayloadWithNetI2pDataI2cpMessageId:id_ withNetI2pDataPayload:_payload_];
      NetI2pRouterClientMessageReceivedJob_messageAvailableWithNetI2pDataI2cpMessageId_withLong_(self, id_, [((NetI2pDataPayload *) nil_chk(_payload_)) getSize]);
    }
    return true;
  }
  @catch (NetI2pDataI2cpI2CPMessageException *ime) {
    NSString *msg = JreStrcat("$@", @"Error sending data to client ", [_runner_ getDestHash]);
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldWarn]) [_log_ warnWithNSString:msg withJavaLangThrowable:ime];
    else [_log_ logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:msg];
    if (id_ != nil && !_sendDirect_) [_runner_ removePayloadWithNetI2pDataI2cpMessageId:id_];
    return false;
  }
}

- (void)messageAvailableWithNetI2pDataI2cpMessageId:(NetI2pDataI2cpMessageId *)id_
                                           withLong:(jlong)size {
  NetI2pRouterClientMessageReceivedJob_messageAvailableWithNetI2pDataI2cpMessageId_withLong_(self, id_, size);
}

- (void)sendMessageWithLong:(jlong)id_ {
  NetI2pRouterClientMessageReceivedJob_sendMessageWithLong_(self, id_);
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_runner_);
  RELEASE_(_toDest_);
  RELEASE_(_payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterClientClientConnectionRunner:withNetI2pDataDestination:withNetI2pDataDestination:withNetI2pDataPayload:withBoolean:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(runJob);
  methods[3].selector = @selector(receiveMessage);
  methods[4].selector = @selector(messageAvailableWithNetI2pDataI2cpMessageId:withLong:);
  methods[5].selector = @selector(sendMessageWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_runner_", "LNetI2pRouterClientClientConnectionRunner;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_toDest_", "LNetI2pDataDestination;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_payload_", "LNetI2pDataPayload;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_sendDirect_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterClientClientConnectionRunner;LNetI2pDataDestination;LNetI2pDataDestination;LNetI2pDataPayload;Z", "messageAvailable", "LNetI2pDataI2cpMessageId;J", "LNetI2pDataI2cpI2CPMessageException;", "sendMessage", "J" };
  static const J2ObjcClassInfo _NetI2pRouterClientMessageReceivedJob = { "MessageReceivedJob", "net.i2p.router.client", ptrTable, methods, fields, 7, 0x0, 6, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterClientMessageReceivedJob;
}

@end

void NetI2pRouterClientMessageReceivedJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataDestination_withNetI2pDataDestination_withNetI2pDataPayload_withBoolean_(NetI2pRouterClientMessageReceivedJob *self, NetI2pRouterRouterContext *ctx, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataDestination *toDest, NetI2pDataDestination *fromDest, NetI2pDataPayload *payload, jboolean sendDirect) {
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterClientMessageReceivedJob_class_()]);
  JreStrongAssign(&self->_runner_, runner);
  JreStrongAssign(&self->_toDest_, toDest);
  JreStrongAssign(&self->_payload_, payload);
  self->_sendDirect_ = sendDirect;
}

NetI2pRouterClientMessageReceivedJob *new_NetI2pRouterClientMessageReceivedJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataDestination_withNetI2pDataDestination_withNetI2pDataPayload_withBoolean_(NetI2pRouterRouterContext *ctx, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataDestination *toDest, NetI2pDataDestination *fromDest, NetI2pDataPayload *payload, jboolean sendDirect) {
  J2OBJC_NEW_IMPL(NetI2pRouterClientMessageReceivedJob, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataDestination_withNetI2pDataDestination_withNetI2pDataPayload_withBoolean_, ctx, runner, toDest, fromDest, payload, sendDirect)
}

NetI2pRouterClientMessageReceivedJob *create_NetI2pRouterClientMessageReceivedJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataDestination_withNetI2pDataDestination_withNetI2pDataPayload_withBoolean_(NetI2pRouterRouterContext *ctx, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataDestination *toDest, NetI2pDataDestination *fromDest, NetI2pDataPayload *payload, jboolean sendDirect) {
  J2OBJC_CREATE_IMPL(NetI2pRouterClientMessageReceivedJob, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataDestination_withNetI2pDataDestination_withNetI2pDataPayload_withBoolean_, ctx, runner, toDest, fromDest, payload, sendDirect)
}

void NetI2pRouterClientMessageReceivedJob_messageAvailableWithNetI2pDataI2cpMessageId_withLong_(NetI2pRouterClientMessageReceivedJob *self, NetI2pDataI2cpMessageId *id_, jlong size) {
  NetI2pDataI2cpMessageStatusMessage *msg = create_NetI2pDataI2cpMessageStatusMessage_init();
  [msg setMessageIdWithLong:[((NetI2pDataI2cpMessageId *) nil_chk(id_)) getMessageId]];
  NetI2pDataI2cpSessionId *sid = [((NetI2pRouterClientClientConnectionRunner *) nil_chk(self->_runner_)) getSessionIdWithNetI2pDataHash:[((NetI2pDataDestination *) nil_chk(self->_toDest_)) calculateHash]];
  if (sid == nil) {
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [self->_log_ warnWithNSString:JreStrcat("$@", @"No session for ", [self->_toDest_ calculateHash])];
    return;
  }
  [msg setSessionIdWithLong:[sid getSessionId]];
  [msg setSizeWithLong:size];
  [msg setNonceWithLong:1];
  [msg setStatusWithInt:NetI2pDataI2cpMessageStatusMessage_STATUS_AVAILABLE];
  [self->_runner_ doSendWithNetI2pDataI2cpI2CPMessage:msg];
}

void NetI2pRouterClientMessageReceivedJob_sendMessageWithLong_(NetI2pRouterClientMessageReceivedJob *self, jlong id_) {
  NetI2pDataI2cpMessagePayloadMessage *msg = create_NetI2pDataI2cpMessagePayloadMessage_init();
  [msg setMessageIdWithLong:id_];
  NetI2pDataI2cpSessionId *sid = [((NetI2pRouterClientClientConnectionRunner *) nil_chk(self->_runner_)) getSessionIdWithNetI2pDataHash:[((NetI2pDataDestination *) nil_chk(self->_toDest_)) calculateHash]];
  if (sid == nil) {
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [self->_log_ warnWithNSString:JreStrcat("$@", @"No session for ", [self->_toDest_ calculateHash])];
    return;
  }
  [msg setSessionIdWithLong:[sid getSessionId]];
  [msg setPayloadWithNetI2pDataPayload:self->_payload_];
  [self->_runner_ doSendWithNetI2pDataI2cpI2CPMessage:msg];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterClientMessageReceivedJob)
