//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelGateway.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/i2np/TunnelGatewayMessage.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tunnel/TunnelGateway.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/SimpleTimer2.h"

@interface NetI2pRouterTunnelTunnelGateway_Sender : NSObject

@end

@interface NetI2pRouterTunnelTunnelGateway_QueuePreprocessor : NSObject

@end

@interface NetI2pRouterTunnelTunnelGateway_Receiver : NSObject

@end

@interface NetI2pRouterTunnelTunnelGateway_DelayedFlush () {
 @public
  NetI2pRouterTunnelTunnelGateway *this$0_;
}

@end

@implementation NetI2pRouterTunnelTunnelGateway

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterTunnelTunnelGateway_QueuePreprocessor:(id<NetI2pRouterTunnelTunnelGateway_QueuePreprocessor>)preprocessor
       withNetI2pRouterTunnelTunnelGateway_Sender:(id<NetI2pRouterTunnelTunnelGateway_Sender>)sender
     withNetI2pRouterTunnelTunnelGateway_Receiver:(id<NetI2pRouterTunnelTunnelGateway_Receiver>)receiver {
  NetI2pRouterTunnelTunnelGateway_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelGateway_QueuePreprocessor_withNetI2pRouterTunnelTunnelGateway_Sender_withNetI2pRouterTunnelTunnelGateway_Receiver_(self, context, preprocessor, sender, receiver);
  return self;
}

- (void)addWithNetI2pDataI2npTunnelGatewayMessage:(NetI2pDataI2npTunnelGatewayMessage *)msg {
  [self addWithNetI2pDataI2npI2NPMessage:[((NetI2pDataI2npTunnelGatewayMessage *) nil_chk(msg)) getMessage] withNetI2pDataHash:nil withNetI2pDataTunnelId:nil];
}

- (void)addWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                      withNetI2pDataHash:(NetI2pDataHash *)toRouter
                  withNetI2pDataTunnelId:(NetI2pDataTunnelId *)toTunnel {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"unused, right?");
}

- (jint)getMessagesSent {
  return _messagesSent_;
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_queue_);
  RELEASE_(_preprocessor_);
  RELEASE_(_sender_);
  RELEASE_(_receiver_);
  RELEASE_(_delayedFlush_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterTunnelTunnelGateway_QueuePreprocessor:withNetI2pRouterTunnelTunnelGateway_Sender:withNetI2pRouterTunnelTunnelGateway_Receiver:);
  methods[1].selector = @selector(addWithNetI2pDataI2npTunnelGatewayMessage:);
  methods[2].selector = @selector(addWithNetI2pDataI2npI2NPMessage:withNetI2pDataHash:withNetI2pDataTunnelId:);
  methods[3].selector = @selector(getMessagesSent);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_queue_", "LJavaUtilList;", .constantValue.asLong = 0, 0x14, -1, -1, 4, -1 },
    { "_preprocessor_", "LNetI2pRouterTunnelTunnelGateway_QueuePreprocessor;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_sender_", "LNetI2pRouterTunnelTunnelGateway_Sender;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_receiver_", "LNetI2pRouterTunnelTunnelGateway_Receiver;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_lastFlush_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_delayedFlush_", "LNetI2pRouterTunnelTunnelGateway_DelayedFlush;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_messagesSent_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterTunnelTunnelGateway_QueuePreprocessor;LNetI2pRouterTunnelTunnelGateway_Sender;LNetI2pRouterTunnelTunnelGateway_Receiver;", "add", "LNetI2pDataI2npTunnelGatewayMessage;", "LNetI2pDataI2npI2NPMessage;LNetI2pDataHash;LNetI2pDataTunnelId;", "Ljava/util/List<Lnet/i2p/router/tunnel/PendingGatewayMessage;>;", "LNetI2pRouterTunnelTunnelGateway_Sender;LNetI2pRouterTunnelTunnelGateway_QueuePreprocessor;LNetI2pRouterTunnelTunnelGateway_Receiver;LNetI2pRouterTunnelTunnelGateway_DelayedFlush;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGateway = { "TunnelGateway", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x400, 4, 9, -1, 5, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGateway;
}

@end

void NetI2pRouterTunnelTunnelGateway_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelGateway_QueuePreprocessor_withNetI2pRouterTunnelTunnelGateway_Sender_withNetI2pRouterTunnelTunnelGateway_Receiver_(NetI2pRouterTunnelTunnelGateway *self, NetI2pRouterRouterContext *context, id<NetI2pRouterTunnelTunnelGateway_QueuePreprocessor> preprocessor, id<NetI2pRouterTunnelTunnelGateway_Sender> sender, id<NetI2pRouterTunnelTunnelGateway_Receiver> receiver) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) logManager])) getLogWithIOSClass:[self java_getClass]]);
  JreStrongAssignAndConsume(&self->_queue_, new_JavaUtilArrayList_initWithInt_(4));
  JreStrongAssign(&self->_preprocessor_, preprocessor);
  JreStrongAssign(&self->_sender_, sender);
  JreStrongAssign(&self->_receiver_, receiver);
  JreStrongAssignAndConsume(&self->_delayedFlush_, new_NetI2pRouterTunnelTunnelGateway_DelayedFlush_initWithNetI2pRouterTunnelTunnelGateway_(self));
  self->_lastFlush_ = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGateway)

@implementation NetI2pRouterTunnelTunnelGateway_Sender

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(sendPreprocessedWithByteArray:withNetI2pRouterTunnelTunnelGateway_Receiver:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "sendPreprocessed", "[BLNetI2pRouterTunnelTunnelGateway_Receiver;", "LNetI2pRouterTunnelTunnelGateway;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGateway_Sender = { "Sender", "net.i2p.router.tunnel", ptrTable, methods, NULL, 7, 0x609, 1, 0, 2, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGateway_Sender;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGateway_Sender)

@implementation NetI2pRouterTunnelTunnelGateway_QueuePreprocessor

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, 0, 1, -1, 2, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(preprocessQueueWithJavaUtilList:withNetI2pRouterTunnelTunnelGateway_Sender:withNetI2pRouterTunnelTunnelGateway_Receiver:);
  methods[1].selector = @selector(getDelayAmount);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "preprocessQueue", "LJavaUtilList;LNetI2pRouterTunnelTunnelGateway_Sender;LNetI2pRouterTunnelTunnelGateway_Receiver;", "(Ljava/util/List<Lnet/i2p/router/tunnel/PendingGatewayMessage;>;Lnet/i2p/router/tunnel/TunnelGateway$Sender;Lnet/i2p/router/tunnel/TunnelGateway$Receiver;)Z", "LNetI2pRouterTunnelTunnelGateway;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGateway_QueuePreprocessor = { "QueuePreprocessor", "net.i2p.router.tunnel", ptrTable, methods, NULL, 7, 0x609, 2, 0, 3, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGateway_QueuePreprocessor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGateway_QueuePreprocessor)

@implementation NetI2pRouterTunnelTunnelGateway_Receiver

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "J", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(receiveEncryptedWithByteArray:);
  methods[1].selector = @selector(getSendTo);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "receiveEncrypted", "[B", "LNetI2pRouterTunnelTunnelGateway;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGateway_Receiver = { "Receiver", "net.i2p.router.tunnel", ptrTable, methods, NULL, 7, 0x609, 2, 0, 2, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGateway_Receiver;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGateway_Receiver)

@implementation NetI2pRouterTunnelTunnelGateway_DelayedFlush

- (instancetype)initWithNetI2pRouterTunnelTunnelGateway:(NetI2pRouterTunnelTunnelGateway *)outer$ {
  NetI2pRouterTunnelTunnelGateway_DelayedFlush_initWithNetI2pRouterTunnelTunnelGateway_(self, outer$);
  return self;
}

- (void)timeReached {
  jboolean wantRequeue = false;
  jlong delayAmount = -1;
  @synchronized(this$0_->_queue_) {
    if (![((id<JavaUtilList>) nil_chk(this$0_->_queue_)) isEmpty]) {
      wantRequeue = [((id<NetI2pRouterTunnelTunnelGateway_QueuePreprocessor>) nil_chk(this$0_->_preprocessor_)) preprocessQueueWithJavaUtilList:this$0_->_queue_ withNetI2pRouterTunnelTunnelGateway_Sender:this$0_->_sender_ withNetI2pRouterTunnelTunnelGateway_Receiver:this$0_->_receiver_];
      if (wantRequeue) {
        delayAmount = [this$0_->_preprocessor_ getDelayAmount];
        if ([((NetI2pUtilLog *) nil_chk(this$0_->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [this$0_->_log_ debugWithNSString:JreStrcat("$@", @"Remaining after delayed flush preprocessing: ", this$0_->_queue_)];
      }
    }
  }
  if (wantRequeue) [self scheduleWithLong:delayAmount];
  else this$0_->_lastFlush_ = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(this$0_->_context_)) clock])) now];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterTunnelTunnelGateway:);
  methods[1].selector = @selector(timeReached);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterTunnelTunnelGateway;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterTunnelTunnelGateway;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelGateway_DelayedFlush = { "DelayedFlush", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x4, 2, 1, 0, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelGateway_DelayedFlush;
}

@end

void NetI2pRouterTunnelTunnelGateway_DelayedFlush_initWithNetI2pRouterTunnelTunnelGateway_(NetI2pRouterTunnelTunnelGateway_DelayedFlush *self, NetI2pRouterTunnelTunnelGateway *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NetI2pUtilSimpleTimer2_TimedEvent_initWithNetI2pUtilSimpleTimer2_(self, [((NetI2pRouterRouterContext *) nil_chk(outer$->_context_)) simpleTimer2]);
}

NetI2pRouterTunnelTunnelGateway_DelayedFlush *new_NetI2pRouterTunnelTunnelGateway_DelayedFlush_initWithNetI2pRouterTunnelTunnelGateway_(NetI2pRouterTunnelTunnelGateway *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTunnelGateway_DelayedFlush, initWithNetI2pRouterTunnelTunnelGateway_, outer$)
}

NetI2pRouterTunnelTunnelGateway_DelayedFlush *create_NetI2pRouterTunnelTunnelGateway_DelayedFlush_initWithNetI2pRouterTunnelTunnelGateway_(NetI2pRouterTunnelTunnelGateway *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTunnelGateway_DelayedFlush, initWithNetI2pRouterTunnelTunnelGateway_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelGateway_DelayedFlush)
