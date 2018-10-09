//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TunnelCreatorConfig.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "java/util/Properties.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/router/ProfileManager.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tunnel/HopConfig.h"
#include "net/i2p/router/tunnel/TunnelCreatorConfig.h"

@interface NetI2pRouterTunnelTunnelCreatorConfig () {
 @public
  NetI2pDataHash *_destination_;
  IOSObjectArray *_config_;
  IOSObjectArray *_peers_;
  volatile_jlong _expiration_;
  id<JavaUtilList> _order_;
  jlong _replyMessageId_;
  jboolean _isInbound_;
  jint _messagesProcessed_;
  jlong _verifiedBytesTransferred_;
  jboolean _failed_;
  jint _failures_;
  jboolean _reused_;
  jint _priority_;
  jlong _peakThroughputCurrentTotal_;
  jlong _peakThroughputLastCoallesce_;
}

- (NSString *)getExpirationString;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelCreatorConfig, _destination_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelCreatorConfig, _config_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelCreatorConfig, _peers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelTunnelCreatorConfig, _order_, id<JavaUtilList>)

inline jint NetI2pRouterTunnelTunnelCreatorConfig_get_MAX_CONSECUTIVE_TEST_FAILURES(void);
#define NetI2pRouterTunnelTunnelCreatorConfig_MAX_CONSECUTIVE_TEST_FAILURES 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTunnelCreatorConfig, MAX_CONSECUTIVE_TEST_FAILURES, jint)

inline JavaTextSimpleDateFormat *NetI2pRouterTunnelTunnelCreatorConfig_get__fmt(void);
static JavaTextSimpleDateFormat *NetI2pRouterTunnelTunnelCreatorConfig__fmt;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTunnelTunnelCreatorConfig, _fmt, JavaTextSimpleDateFormat *)

__attribute__((unused)) static NSString *NetI2pRouterTunnelTunnelCreatorConfig_getExpirationString(NetI2pRouterTunnelTunnelCreatorConfig *self);

J2OBJC_INITIALIZED_DEFN(NetI2pRouterTunnelTunnelCreatorConfig)

@implementation NetI2pRouterTunnelTunnelCreatorConfig

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                          withInt:(jint)length
                                      withBoolean:(jboolean)isInbound {
  NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(self, ctx, length, isInbound);
  return self;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                          withInt:(jint)length
                                      withBoolean:(jboolean)isInbound
                               withNetI2pDataHash:(NetI2pDataHash *)destination {
  NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(self, ctx, length, isInbound, destination);
  return self;
}

- (jint)getLength {
  return ((IOSObjectArray *) nil_chk(_config_))->size_;
}

- (JavaUtilProperties *)getOptions {
  return nil;
}

- (NetI2pRouterTunnelHopConfig *)getConfigWithInt:(jint)hop {
  return IOSObjectArray_Get(nil_chk(_config_), hop);
}

- (NetI2pDataTunnelId *)getReceiveTunnelIdWithInt:(jint)hop {
  return [((NetI2pRouterTunnelHopConfig *) nil_chk(IOSObjectArray_Get(nil_chk(_config_), hop))) getReceiveTunnel];
}

- (NetI2pDataTunnelId *)getSendTunnelIdWithInt:(jint)hop {
  return [((NetI2pRouterTunnelHopConfig *) nil_chk(IOSObjectArray_Get(nil_chk(_config_), hop))) getSendTunnel];
}

- (NetI2pDataHash *)getPeerWithInt:(jint)hop {
  return IOSObjectArray_Get(nil_chk(_peers_), hop);
}

- (void)setPeerWithInt:(jint)hop
    withNetI2pDataHash:(NetI2pDataHash *)peer {
  IOSObjectArray_Set(nil_chk(_peers_), hop, peer);
}

- (NetI2pDataHash *)getGateway {
  return IOSObjectArray_Get(nil_chk(_peers_), 0);
}

- (NetI2pDataHash *)getEndpoint {
  return IOSObjectArray_Get(_peers_, ((IOSObjectArray *) nil_chk(_peers_))->size_ - 1);
}

- (NetI2pDataHash *)getFarEnd {
  return IOSObjectArray_Get(nil_chk(_peers_), _isInbound_ ? 0 : ((IOSObjectArray *) nil_chk(_peers_))->size_ - 1);
}

- (jboolean)isInbound {
  return _isInbound_;
}

- (NetI2pDataHash *)getDestination {
  return _destination_;
}

- (jlong)getExpiration {
  return JreLoadVolatileLong(&_expiration_);
}

- (void)setExpirationWithLong:(jlong)when {
  JreAssignVolatileLong(&_expiration_, when);
}

- (id<JavaUtilList>)getReplyOrder {
  return _order_;
}

- (void)setReplyOrderWithJavaUtilList:(id<JavaUtilList>)order {
  JreStrongAssign(&_order_, order);
}

- (jlong)getReplyMessageId {
  return _replyMessageId_;
}

- (void)setReplyMessageIdWithLong:(jlong)id_ {
  _replyMessageId_ = id_;
}

- (void)incrementProcessedMessages {
  @synchronized(self) {
    _messagesProcessed_++;
  }
}

- (jint)getProcessedMessagesCount {
  @synchronized(self) {
    return _messagesProcessed_;
  }
}

- (void)incrementVerifiedBytesTransferredWithInt:(jint)bytes {
  @synchronized(self) {
    _verifiedBytesTransferred_ += bytes;
    _peakThroughputCurrentTotal_ += bytes;
    jlong now = JavaLangSystem_currentTimeMillis();
    jlong timeSince = now - _peakThroughputLastCoallesce_;
    if (timeSince >= 60 * 1000) {
      jlong tot = _peakThroughputCurrentTotal_;
      jdouble normalized = tot * 60.0 * 1000.0 / timeSince;
      _peakThroughputLastCoallesce_ = now;
      _peakThroughputCurrentTotal_ = 0;
      if (_context_ != nil) {
        jint start = _isInbound_ ? 0 : 1;
        jint end = _isInbound_ ? ((IOSObjectArray *) nil_chk(_peers_))->size_ - 1 : ((IOSObjectArray *) nil_chk(_peers_))->size_;
        for (jint i = start; i < end; i++) {
          [((id<NetI2pRouterProfileManager>) nil_chk([_context_ profileManager])) tunnelDataPushed1mWithNetI2pDataHash:IOSObjectArray_Get(_peers_, i) withInt:JreFpToInt(normalized)];
        }
      }
    }
  }
}

- (jlong)getVerifiedBytesTransferred {
  @synchronized(self) {
    return _verifiedBytesTransferred_;
  }
}

- (jboolean)tunnelFailed {
  _failures_++;
  if (_failures_ > NetI2pRouterTunnelTunnelCreatorConfig_MAX_CONSECUTIVE_TEST_FAILURES) {
    _failed_ = true;
    return false;
  }
  else {
    return true;
  }
}

- (jboolean)getTunnelFailed {
  return _failed_;
}

- (jint)getTunnelFailures {
  return _failures_;
}

- (void)testSuccessfulWithInt:(jint)ms {
  if (!_failed_) _failures_ = 0;
}

- (jboolean)wasReused {
  return _reused_;
}

- (void)setReused {
  _reused_ = true;
}

- (jint)getPriority {
  return _priority_;
}

- (void)setPriorityWithInt:(jint)priority {
  _priority_ = priority;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(128);
  if (_isInbound_) [buf appendWithNSString:@"IB"];
  else [buf appendWithNSString:@"OB"];
  if (_destination_ == nil) [buf appendWithNSString:@" expl"];
  else [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" client "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_([_destination_ getData], 0, 3)];
  [buf appendWithNSString:@": GW "];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(_peers_))->size_; i++) {
    [buf appendWithNSString:[((NSString *) nil_chk([((NetI2pDataHash *) nil_chk(IOSObjectArray_Get(_peers_, i))) toBase64])) java_substring:0 endIndex:4]];
    [buf appendWithChar:':'];
    if ([((NetI2pRouterTunnelHopConfig *) nil_chk(IOSObjectArray_Get(nil_chk(_config_), i))) getReceiveTunnel] != nil) [buf appendWithId:[((NetI2pRouterTunnelHopConfig *) nil_chk(IOSObjectArray_Get(_config_, i))) getReceiveTunnel]];
    else [buf appendWithNSString:@"me"];
    if ([((NetI2pRouterTunnelHopConfig *) nil_chk(IOSObjectArray_Get(_config_, i))) getSendTunnel] != nil) {
      [buf appendWithChar:'.'];
      [buf appendWithId:[((NetI2pRouterTunnelHopConfig *) nil_chk(IOSObjectArray_Get(_config_, i))) getSendTunnel]];
    }
    else if (_isInbound_ || i == 0) {
      [buf appendWithNSString:@".me"];
    }
    if (i + 1 < _peers_->size_) [buf appendWithNSString:@"-->"];
  }
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" exp. "])) appendWithNSString:NetI2pRouterTunnelTunnelCreatorConfig_getExpirationString(self)];
  if (_replyMessageId_ > 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" replyMsgID "])) appendWithLong:_replyMessageId_];
  if (_messagesProcessed_ > 0) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" with "])) appendWithInt:_messagesProcessed_])) appendWithNSString:@"/"])) appendWithLong:_verifiedBytesTransferred_])) appendWithNSString:@" msgs/bytes"];
  if (_failures_ > 0) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" with "])) appendWithInt:_failures_])) appendWithNSString:@" failures"];
  return [buf description];
}

- (NSString *)getExpirationString {
  return NetI2pRouterTunnelTunnelCreatorConfig_getExpirationString(self);
}

+ (NSString *)formatWithLong:(jlong)date {
  return NetI2pRouterTunnelTunnelCreatorConfig_formatWithLong_(date);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_destination_);
  RELEASE_(_config_);
  RELEASE_(_peers_);
  RELEASE_(_order_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilProperties;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelHopConfig;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataTunnelId;", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataTunnelId;", 0x1, 5, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 11, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, 14, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 16, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 19, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 20, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withInt:withBoolean:);
  methods[1].selector = @selector(initWithNetI2pRouterRouterContext:withInt:withBoolean:withNetI2pDataHash:);
  methods[2].selector = @selector(getLength);
  methods[3].selector = @selector(getOptions);
  methods[4].selector = @selector(getConfigWithInt:);
  methods[5].selector = @selector(getReceiveTunnelIdWithInt:);
  methods[6].selector = @selector(getSendTunnelIdWithInt:);
  methods[7].selector = @selector(getPeerWithInt:);
  methods[8].selector = @selector(setPeerWithInt:withNetI2pDataHash:);
  methods[9].selector = @selector(getGateway);
  methods[10].selector = @selector(getEndpoint);
  methods[11].selector = @selector(getFarEnd);
  methods[12].selector = @selector(isInbound);
  methods[13].selector = @selector(getDestination);
  methods[14].selector = @selector(getExpiration);
  methods[15].selector = @selector(setExpirationWithLong:);
  methods[16].selector = @selector(getReplyOrder);
  methods[17].selector = @selector(setReplyOrderWithJavaUtilList:);
  methods[18].selector = @selector(getReplyMessageId);
  methods[19].selector = @selector(setReplyMessageIdWithLong:);
  methods[20].selector = @selector(incrementProcessedMessages);
  methods[21].selector = @selector(getProcessedMessagesCount);
  methods[22].selector = @selector(incrementVerifiedBytesTransferredWithInt:);
  methods[23].selector = @selector(getVerifiedBytesTransferred);
  methods[24].selector = @selector(tunnelFailed);
  methods[25].selector = @selector(getTunnelFailed);
  methods[26].selector = @selector(getTunnelFailures);
  methods[27].selector = @selector(testSuccessfulWithInt:);
  methods[28].selector = @selector(wasReused);
  methods[29].selector = @selector(setReused);
  methods[30].selector = @selector(getPriority);
  methods[31].selector = @selector(setPriorityWithInt:);
  methods[32].selector = @selector(description);
  methods[33].selector = @selector(getExpirationString);
  methods[34].selector = @selector(formatWithLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_destination_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_config_", "[LNetI2pRouterTunnelHopConfig;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_peers_", "[LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_expiration_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_order_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 21, -1 },
    { "_replyMessageId_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_isInbound_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_messagesProcessed_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_verifiedBytesTransferred_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_failed_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_failures_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_reused_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_priority_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_peakThroughputCurrentTotal_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_peakThroughputLastCoallesce_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MAX_CONSECUTIVE_TEST_FAILURES", "I", .constantValue.asInt = NetI2pRouterTunnelTunnelCreatorConfig_MAX_CONSECUTIVE_TEST_FAILURES, 0x1a, -1, -1, -1, -1 },
    { "_fmt", "LJavaTextSimpleDateFormat;", .constantValue.asLong = 0, 0x1a, -1, 22, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;IZ", "LNetI2pRouterRouterContext;IZLNetI2pDataHash;", "getConfig", "I", "getReceiveTunnelId", "getSendTunnelId", "getPeer", "setPeer", "ILNetI2pDataHash;", "setExpiration", "J", "()Ljava/util/List<Ljava/lang/Integer;>;", "setReplyOrder", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/Integer;>;)V", "setReplyMessageId", "incrementVerifiedBytesTransferred", "testSuccessful", "setPriority", "toString", "format", "Ljava/util/List<Ljava/lang/Integer;>;", &NetI2pRouterTunnelTunnelCreatorConfig__fmt };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTunnelCreatorConfig = { "TunnelCreatorConfig", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x1, 35, 18, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTunnelCreatorConfig;
}

+ (void)initialize {
  if (self == [NetI2pRouterTunnelTunnelCreatorConfig class]) {
    JreStrongAssignAndConsume(&NetI2pRouterTunnelTunnelCreatorConfig__fmt, new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(@"HH:mm:ss", JreLoadStatic(JavaUtilLocale, UK)));
    J2OBJC_SET_INITIALIZED(NetI2pRouterTunnelTunnelCreatorConfig)
  }
}

@end

void NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(NetI2pRouterTunnelTunnelCreatorConfig *self, NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound) {
  NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(self, ctx, length, isInbound, nil);
}

NetI2pRouterTunnelTunnelCreatorConfig *new_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTunnelCreatorConfig, initWithNetI2pRouterRouterContext_withInt_withBoolean_, ctx, length, isInbound)
}

NetI2pRouterTunnelTunnelCreatorConfig *create_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTunnelCreatorConfig, initWithNetI2pRouterRouterContext_withInt_withBoolean_, ctx, length, isInbound)
}

void NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(NetI2pRouterTunnelTunnelCreatorConfig *self, NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound, NetI2pDataHash *destination) {
  NSObject_init(self);
  self->_peakThroughputLastCoallesce_ = JavaLangSystem_currentTimeMillis();
  JreStrongAssign(&self->_context_, ctx);
  if (length <= 0) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"0 length?  0 hop tunnels are 1 length!");
  JreStrongAssignAndConsume(&self->_config_, [IOSObjectArray newArrayWithLength:length type:NetI2pRouterTunnelHopConfig_class_()]);
  JreStrongAssignAndConsume(&self->_peers_, [IOSObjectArray newArrayWithLength:length type:NetI2pDataHash_class_()]);
  for (jint i = 0; i < length; i++) {
    IOSObjectArray_SetAndConsume(self->_config_, i, new_NetI2pRouterTunnelHopConfig_init());
  }
  self->_isInbound_ = isInbound;
  JreStrongAssign(&self->_destination_, destination);
}

NetI2pRouterTunnelTunnelCreatorConfig *new_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound, NetI2pDataHash *destination) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTunnelCreatorConfig, initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_, ctx, length, isInbound, destination)
}

NetI2pRouterTunnelTunnelCreatorConfig *create_NetI2pRouterTunnelTunnelCreatorConfig_initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, jint length, jboolean isInbound, NetI2pDataHash *destination) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTunnelCreatorConfig, initWithNetI2pRouterRouterContext_withInt_withBoolean_withNetI2pDataHash_, ctx, length, isInbound, destination)
}

NSString *NetI2pRouterTunnelTunnelCreatorConfig_getExpirationString(NetI2pRouterTunnelTunnelCreatorConfig *self) {
  return NetI2pRouterTunnelTunnelCreatorConfig_formatWithLong_(JreLoadVolatileLong(&self->_expiration_));
}

NSString *NetI2pRouterTunnelTunnelCreatorConfig_formatWithLong_(jlong date) {
  NetI2pRouterTunnelTunnelCreatorConfig_initialize();
  JavaUtilDate *d = create_JavaUtilDate_initWithLong_(date);
  @synchronized(NetI2pRouterTunnelTunnelCreatorConfig__fmt) {
    return JreRetainedLocalValue([((JavaTextSimpleDateFormat *) nil_chk(NetI2pRouterTunnelTunnelCreatorConfig__fmt)) formatWithJavaUtilDate:d]);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTunnelCreatorConfig)