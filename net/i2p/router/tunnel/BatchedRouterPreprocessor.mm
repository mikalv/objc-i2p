//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/BatchedRouterPreprocessor.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/util/List.h"
#include "java/util/Properties.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/router/MessageHistory.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tunnel/BatchedPreprocessor.h"
#include "net/i2p/router/tunnel/BatchedRouterPreprocessor.h"
#include "net/i2p/router/tunnel/HopConfig.h"
#include "net/i2p/router/tunnel/TunnelCreatorConfig.h"

@interface NetI2pRouterTunnelBatchedRouterPreprocessor () {
 @public
  NetI2pRouterTunnelTunnelCreatorConfig *_config_;
  jlong _sendDelay_;
}

+ (NSString *)getNameWithNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg;

+ (NSString *)getNameWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg;

- (jlong)initialSendDelay OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelBatchedRouterPreprocessor, _config_, NetI2pRouterTunnelTunnelCreatorConfig *)

__attribute__((unused)) static NSString *NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelHopConfig_(NetI2pRouterTunnelHopConfig *cfg);

__attribute__((unused)) static NSString *NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterTunnelTunnelCreatorConfig *cfg);

__attribute__((unused)) static jlong NetI2pRouterTunnelBatchedRouterPreprocessor_initialSendDelay(NetI2pRouterTunnelBatchedRouterPreprocessor *self);

NSString *NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_BATCH_FREQUENCY = @"batchFrequency";
NSString *NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_ROUTER_BATCH_FREQUENCY = @"router.batchFrequency";

@implementation NetI2pRouterTunnelBatchedRouterPreprocessor

+ (NSString *)PROP_BATCH_FREQUENCY {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_BATCH_FREQUENCY;
}

+ (NSString *)PROP_ROUTER_BATCH_FREQUENCY {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_ROUTER_BATCH_FREQUENCY;
}

+ (jint)OB_CLIENT_BATCH_FREQ {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_OB_CLIENT_BATCH_FREQ;
}

+ (jint)OB_EXPL_BATCH_FREQ {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_OB_EXPL_BATCH_FREQ;
}

+ (jint)DEFAULT_BATCH_FREQUENCY {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_DEFAULT_BATCH_FREQUENCY;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
        withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg {
  NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(self, ctx, cfg);
  return self;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                  withNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg {
  NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_(self, ctx, cfg);
  return self;
}

+ (NSString *)getNameWithNetI2pRouterTunnelHopConfig:(NetI2pRouterTunnelHopConfig *)cfg {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelHopConfig_(cfg);
}

+ (NSString *)getNameWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelTunnelCreatorConfig_(cfg);
}

- (jlong)getSendDelay {
  return _sendDelay_;
}

- (jlong)initialSendDelay {
  return NetI2pRouterTunnelBatchedRouterPreprocessor_initialSendDelay(self);
}

- (void)notePreprocessingWithLong:(jlong)messageId
                          withInt:(jint)numFragments
                          withInt:(jint)totalLength
                 withJavaUtilList:(id<JavaUtilList>)messageIds
                     withNSString:(NSString *)msg {
  if (_config_ != nil) [((NetI2pRouterMessageHistory *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) messageHistory])) fragmentMessageWithLong:messageId withInt:numFragments withInt:totalLength withJavaUtilList:messageIds withId:_config_ withNSString:msg];
  else [((NetI2pRouterMessageHistory *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) messageHistory])) fragmentMessageWithLong:messageId withInt:numFragments withInt:totalLength withJavaUtilList:messageIds withId:_hopConfig_ withNSString:msg];
}

- (void)dealloc {
  RELEASE_(_config_);
  RELEASE_(_hopConfig_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 2, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 5, 6, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterTunnelTunnelCreatorConfig:);
  methods[1].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterTunnelHopConfig:);
  methods[2].selector = @selector(getNameWithNetI2pRouterTunnelHopConfig:);
  methods[3].selector = @selector(getNameWithNetI2pRouterTunnelTunnelCreatorConfig:);
  methods[4].selector = @selector(getSendDelay);
  methods[5].selector = @selector(initialSendDelay);
  methods[6].selector = @selector(notePreprocessingWithLong:withInt:withInt:withJavaUtilList:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_config_", "LNetI2pRouterTunnelTunnelCreatorConfig;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_hopConfig_", "LNetI2pRouterTunnelHopConfig;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_sendDelay_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "PROP_BATCH_FREQUENCY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "PROP_ROUTER_BATCH_FREQUENCY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "OB_CLIENT_BATCH_FREQ", "I", .constantValue.asInt = NetI2pRouterTunnelBatchedRouterPreprocessor_OB_CLIENT_BATCH_FREQ, 0x19, -1, -1, -1, -1 },
    { "OB_EXPL_BATCH_FREQ", "I", .constantValue.asInt = NetI2pRouterTunnelBatchedRouterPreprocessor_OB_EXPL_BATCH_FREQ, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_BATCH_FREQUENCY", "I", .constantValue.asInt = NetI2pRouterTunnelBatchedRouterPreprocessor_DEFAULT_BATCH_FREQUENCY, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterTunnelTunnelCreatorConfig;", "LNetI2pRouterRouterContext;LNetI2pRouterTunnelHopConfig;", "getName", "LNetI2pRouterTunnelHopConfig;", "LNetI2pRouterTunnelTunnelCreatorConfig;", "notePreprocessing", "JIILJavaUtilList;LNSString;", "(JIILjava/util/List<Ljava/lang/Long;>;Ljava/lang/String;)V", &NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_BATCH_FREQUENCY, &NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_ROUTER_BATCH_FREQUENCY };
  static const J2ObjcClassInfo _NetI2pRouterTunnelBatchedRouterPreprocessor = { "BatchedRouterPreprocessor", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x0, 7, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelBatchedRouterPreprocessor;
}

@end

void NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterTunnelBatchedRouterPreprocessor *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *cfg) {
  NetI2pRouterTunnelBatchedPreprocessor_initWithNetI2pRouterRouterContext_withNSString_(self, ctx, NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelTunnelCreatorConfig_(cfg));
  JreStrongAssign(&self->_config_, cfg);
  JreStrongAssign(&self->_hopConfig_, nil);
  self->_sendDelay_ = NetI2pRouterTunnelBatchedRouterPreprocessor_initialSendDelay(self);
}

NetI2pRouterTunnelBatchedRouterPreprocessor *new_NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *cfg) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelBatchedRouterPreprocessor, initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_, ctx, cfg)
}

NetI2pRouterTunnelBatchedRouterPreprocessor *create_NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *cfg) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelBatchedRouterPreprocessor, initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelTunnelCreatorConfig_, ctx, cfg)
}

void NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_(NetI2pRouterTunnelBatchedRouterPreprocessor *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *cfg) {
  NetI2pRouterTunnelBatchedPreprocessor_initWithNetI2pRouterRouterContext_withNSString_(self, ctx, NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelHopConfig_(cfg));
  JreStrongAssign(&self->_config_, nil);
  JreStrongAssign(&self->_hopConfig_, cfg);
  self->_sendDelay_ = NetI2pRouterTunnelBatchedRouterPreprocessor_initialSendDelay(self);
}

NetI2pRouterTunnelBatchedRouterPreprocessor *new_NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *cfg) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelBatchedRouterPreprocessor, initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_, ctx, cfg)
}

NetI2pRouterTunnelBatchedRouterPreprocessor *create_NetI2pRouterTunnelBatchedRouterPreprocessor_initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_(NetI2pRouterRouterContext *ctx, NetI2pRouterTunnelHopConfig *cfg) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelBatchedRouterPreprocessor, initWithNetI2pRouterRouterContext_withNetI2pRouterTunnelHopConfig_, ctx, cfg)
}

NSString *NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelHopConfig_(NetI2pRouterTunnelHopConfig *cfg) {
  NetI2pRouterTunnelBatchedRouterPreprocessor_initialize();
  if (cfg == nil) return @"IB??";
  if ([cfg getReceiveTunnel] != nil) return JreStrcat("$J", @"IB ", [((NetI2pDataTunnelId *) nil_chk([cfg getReceiveTunnel])) getTunnelId]);
  else if ([cfg getSendTunnel] != nil) return JreStrcat("$J", @"IB ", [((NetI2pDataTunnelId *) nil_chk([cfg getSendTunnel])) getTunnelId]);
  else return @"IB??";
}

NSString *NetI2pRouterTunnelBatchedRouterPreprocessor_getNameWithNetI2pRouterTunnelTunnelCreatorConfig_(NetI2pRouterTunnelTunnelCreatorConfig *cfg) {
  NetI2pRouterTunnelBatchedRouterPreprocessor_initialize();
  if (cfg == nil) return @"OB??";
  if ([cfg getReceiveTunnelIdWithInt:0] != nil) return JreStrcat("$J", @"OB ", [((NetI2pDataTunnelId *) nil_chk([cfg getReceiveTunnelIdWithInt:0])) getTunnelId]);
  else if ([cfg getSendTunnelIdWithInt:0] != nil) return JreStrcat("$J", @"OB ", [((NetI2pDataTunnelId *) nil_chk([cfg getSendTunnelIdWithInt:0])) getTunnelId]);
  else return @"OB??";
}

jlong NetI2pRouterTunnelBatchedRouterPreprocessor_initialSendDelay(NetI2pRouterTunnelBatchedRouterPreprocessor *self) {
  if (self->_config_ != nil) {
    JavaUtilProperties *opts = [self->_config_ getOptions];
    if (opts != nil) {
      NSString *freq = [opts getPropertyWithNSString:NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_BATCH_FREQUENCY];
      if (freq != nil) {
        @try {
          return JavaLangInteger_parseIntWithNSString_(freq);
        }
        @catch (JavaLangNumberFormatException *nfe) {
        }
      }
    }
  }
  jint def;
  if (self->_config_ != nil) {
    if ([self->_config_ getDestination] != nil) def = NetI2pRouterTunnelBatchedRouterPreprocessor_OB_CLIENT_BATCH_FREQ;
    else def = NetI2pRouterTunnelBatchedRouterPreprocessor_OB_EXPL_BATCH_FREQ;
  }
  else {
    def = NetI2pRouterTunnelBatchedRouterPreprocessor_DEFAULT_BATCH_FREQUENCY;
  }
  return [((NetI2pRouterRouterContext *) nil_chk(self->_context_)) getPropertyWithNSString:NetI2pRouterTunnelBatchedRouterPreprocessor_PROP_ROUTER_BATCH_FREQUENCY withInt:def];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelBatchedRouterPreprocessor)