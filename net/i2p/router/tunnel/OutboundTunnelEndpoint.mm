//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/OutboundTunnelEndpoint.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/i2np/TunnelDataMessage.h"
#include "net/i2p/router/OutNetMessage.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/transport/FIFOBandwidthLimiter.h"
#include "net/i2p/router/tunnel/FragmentHandler.h"
#include "net/i2p/router/tunnel/HopConfig.h"
#include "net/i2p/router/tunnel/HopProcessor.h"
#include "net/i2p/router/tunnel/OutboundMessageDistributor.h"
#include "net/i2p/router/tunnel/OutboundTunnelEndpoint.h"
#include "net/i2p/router/tunnel/RouterFragmentHandler.h"
#include "net/i2p/router/tunnel/TunnelDispatcher.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterTunnelOutboundTunnelEndpoint () {
 @public
  NetI2pRouterRouterContext *_context_;
  NetI2pUtilLog *_log_;
  NetI2pRouterTunnelHopConfig *_config_;
  NetI2pRouterTunnelHopProcessor *_processor_;
  NetI2pRouterTunnelFragmentHandler *_handler_;
  NetI2pRouterTunnelOutboundMessageDistributor *_outDistributor_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundTunnelEndpoint, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundTunnelEndpoint, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundTunnelEndpoint, _config_, NetI2pRouterTunnelHopConfig *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundTunnelEndpoint, _processor_, NetI2pRouterTunnelHopProcessor *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundTunnelEndpoint, _handler_, NetI2pRouterTunnelFragmentHandler *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelOutboundTunnelEndpoint, _outDistributor_, NetI2pRouterTunnelOutboundMessageDistributor *)

@interface NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler : NSObject < NetI2pRouterTunnelFragmentHandler_DefragmentedReceiver > {
 @public
  NetI2pRouterTunnelOutboundTunnelEndpoint *this$0_;
}

- (instancetype)initWithNetI2pRouterTunnelOutboundTunnelEndpoint:(NetI2pRouterTunnelOutboundTunnelEndpoint *)outer$;

- (void)receiveCompleteWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                                  withNetI2pDataHash:(NetI2pDataHash *)toRouter
                              withNetI2pDataTunnelId:(NetI2pDataTunnelId *)toTunnel;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler)

__attribute__((unused)) static void NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler *self, NetI2pRouterTunnelOutboundTunnelEndpoint *outer$);

__attribute__((unused)) static NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler *new_NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(NetI2pRouterTunnelOutboundTunnelEndpoint *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler *create_NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(NetI2pRouterTunnelOutboundTunnelEndpoint *outer$);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler)

@implementation NetI2pRouterTunnelOutboundTunnelEndpoint

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                  withNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)config
               withNetI2pRouterTunnelHopProcessor:(NetI2pRouterTunnelHopProcessor *)processor {
  NetI2pRouterTunnelOutboundTunnelEndpoint_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(self, ctx, config, processor);
  return self;
}

- (void)dispatchWithNetI2pDataI2npTunnelDataMessage:(NetI2pDataI2npTunnelDataMessage *)msg
                                 withNetI2pDataHash:(NetI2pDataHash *)recvFrom {
  [((NetI2pRouterTunnelHopConfig *) nil_chk(_config_)) incrementProcessedMessages];
  jboolean ok = [((NetI2pRouterTunnelHopProcessor *) nil_chk(_processor_)) processWithByteArray:[((NetI2pDataI2npTunnelDataMessage *) nil_chk(msg)) getData] withInt:0 withInt:((IOSByteArray *) nil_chk([msg getData]))->size_ withNetI2pDataHash:recvFrom];
  if (!ok) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$@", @"Invalid IV, dropping at OBEP ", _config_)];
    [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"tunnel.corruptMessage" withLong:1 withLong:1];
    return;
  }
  [((NetI2pRouterTunnelFragmentHandler *) nil_chk(_handler_)) receiveTunnelMessageWithByteArray:[msg getData] withInt:0 withInt:((IOSByteArray *) nil_chk([msg getData]))->size_];
}

- (NSString *)description {
  return JreStrcat("$@", @"OBEP ", [((NetI2pRouterTunnelHopConfig *) nil_chk(_config_)) getReceiveTunnel]);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_config_);
  RELEASE_(_processor_);
  RELEASE_(_handler_);
  RELEASE_(_outDistributor_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterTunnelHopConfig:withNetI2pRouterTunnelHopProcessor:);
  methods[1].selector = @selector(dispatchWithNetI2pDataI2npTunnelDataMessage:withNetI2pDataHash:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_config_", "LNetI2pRouterTunnelHopConfig;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_processor_", "LNetI2pRouterTunnelHopProcessor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_handler_", "LNetI2pRouterTunnelFragmentHandler;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_outDistributor_", "LNetI2pRouterTunnelOutboundMessageDistributor;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterTunnelHopConfig;LNetI2pRouterTunnelHopProcessor;", "dispatch", "LNetI2pDataI2npTunnelDataMessage;LNetI2pDataHash;", "toString", "LNetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelOutboundTunnelEndpoint = { "OutboundTunnelEndpoint", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x0, 3, 6, -1, 4, -1, -1, -1 };
  return &_NetI2pRouterTunnelOutboundTunnelEndpoint;
}

@end

void NetI2pRouterTunnelOutboundTunnelEndpoint_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(NetI2pRouterTunnelOutboundTunnelEndpoint *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *config, NetI2pRouterTunnelHopProcessor *processor) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterTunnelOutboundTunnelEndpoint_class_()]);
  JreStrongAssign(&self->_config_, config);
  JreStrongAssign(&self->_processor_, processor);
  JreStrongAssignAndConsume(&self->_handler_, new_NetI2pRouterTunnelRouterFragmentHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelFragmentHandler_DefragmentedReceiver_(ctx, create_NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(self)));
  JreStrongAssignAndConsume(&self->_outDistributor_, new_NetI2pRouterTunnelOutboundMessageDistributor_initWithNetI2pRouterRouterContext_withInt_(ctx, NetI2pRouterOutNetMessage_PRIORITY_PARTICIPATING));
}

NetI2pRouterTunnelOutboundTunnelEndpoint *new_NetI2pRouterTunnelOutboundTunnelEndpoint_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *config, NetI2pRouterTunnelHopProcessor *processor) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelOutboundTunnelEndpoint, initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_, ctx, config, processor)
}

NetI2pRouterTunnelOutboundTunnelEndpoint *create_NetI2pRouterTunnelOutboundTunnelEndpoint_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *config, NetI2pRouterTunnelHopProcessor *processor) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelOutboundTunnelEndpoint, initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_withNetI2pRouterTunnelHopProcessor_, ctx, config, processor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelOutboundTunnelEndpoint)

@implementation NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler

- (instancetype)initWithNetI2pRouterTunnelOutboundTunnelEndpoint:(NetI2pRouterTunnelOutboundTunnelEndpoint *)outer$ {
  NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(self, outer$);
  return self;
}

- (void)receiveCompleteWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                                  withNetI2pDataHash:(NetI2pDataHash *)toRouter
                              withNetI2pDataTunnelId:(NetI2pDataTunnelId *)toTunnel {
  if (toRouter == nil) {
    if ([((NetI2pUtilLog *) nil_chk(this$0_->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [this$0_->_log_ warnWithNSString:@"Dropping msg at OBEP with unsupported delivery instruction type LOCAL"];
    return;
  }
  if ([((NetI2pUtilLog *) nil_chk(this$0_->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [this$0_->_log_ debugWithNSString:JreStrcat("$@$@$$$", @"outbound tunnel ", this$0_->_config_, @" received a full message: ", msg, @" to be forwarded on to ", [((NSString *) nil_chk([toRouter toBase64])) java_substring:0 endIndex:4], (toTunnel != nil ? JreStrcat("CJ", ':', [toTunnel getTunnelId]) : @""))];
  jint size = [((id<NetI2pDataI2npI2NPMessage>) nil_chk(msg)) getMessageSize];
  jboolean toUs = [((NetI2pDataHash *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(this$0_->_context_)) routerHash])) isEqual:toRouter];
  if ((!toUs) && [((NetI2pRouterTunnelTunnelDispatcher *) nil_chk([this$0_->_context_ tunnelDispatcher])) shouldDropParticipatingMessageWithNetI2pRouterTunnelTunnelDispatcher_Location:JreLoadEnum(NetI2pRouterTunnelTunnelDispatcher_Location, OBEP) withInt:[msg getType] withInt:size]) return;
  if (!toUs) [((NetI2pRouterTransportFIFOBandwidthLimiter *) nil_chk([this$0_->_context_ bandwidthLimiter])) sentParticipatingMessageWithInt:size];
  [((NetI2pRouterTunnelOutboundMessageDistributor *) nil_chk(this$0_->_outDistributor_)) distributeWithNetI2pDataI2npI2NPMessage:msg withNetI2pDataHash:toRouter withNetI2pDataTunnelId:toTunnel];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterTunnelOutboundTunnelEndpoint:);
  methods[1].selector = @selector(receiveCompleteWithNetI2pDataI2npI2NPMessage:withNetI2pDataHash:withNetI2pDataTunnelId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterTunnelOutboundTunnelEndpoint;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "receiveComplete", "LNetI2pDataI2npI2NPMessage;LNetI2pDataHash;LNetI2pDataTunnelId;", "LNetI2pRouterTunnelOutboundTunnelEndpoint;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler = { "DefragmentedHandler", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x2, 2, 1, 2, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler;
}

@end

void NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler *self, NetI2pRouterTunnelOutboundTunnelEndpoint *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler *new_NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(NetI2pRouterTunnelOutboundTunnelEndpoint *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler, initWithNetI2pRouterTunnelOutboundTunnelEndpoint_, outer$)
}

NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler *create_NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler_initWithNetI2pRouterTunnelOutboundTunnelEndpoint_(NetI2pRouterTunnelOutboundTunnelEndpoint *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler, initWithNetI2pRouterTunnelOutboundTunnelEndpoint_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelOutboundTunnelEndpoint_DefragmentedHandler)
