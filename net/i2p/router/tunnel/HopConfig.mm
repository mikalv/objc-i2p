//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/HopConfig.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/router/tunnel/HopConfig.h"
#include "net/i2p/router/tunnel/TunnelCreatorConfig.h"

@interface NetI2pRouterTunnelHopConfig () {
 @public
  IOSByteArray *_receiveTunnelId_;
  NetI2pDataTunnelId *_receiveTunnel_;
  NetI2pDataHash *_receiveFrom_;
  IOSByteArray *_sendTunnelId_;
  NetI2pDataTunnelId *_sendTunnel_;
  NetI2pDataHash *_sendTo_;
  NetI2pDataSessionKey *_layerKey_;
  NetI2pDataSessionKey *_ivKey_;
  NetI2pDataSessionKey *_replyKey_;
  IOSByteArray *_replyIV_;
  jlong _creation_;
  jlong _expiration_;
  jint _messagesProcessed_;
  jint _oldMessagesProcessed_;
}

+ (NetI2pDataTunnelId *)getTunnelWithByteArray:(IOSByteArray *)id_;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _receiveTunnelId_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _receiveTunnel_, NetI2pDataTunnelId *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _receiveFrom_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _sendTunnelId_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _sendTunnel_, NetI2pDataTunnelId *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _sendTo_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _layerKey_, NetI2pDataSessionKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _ivKey_, NetI2pDataSessionKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _replyKey_, NetI2pDataSessionKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHopConfig, _replyIV_, IOSByteArray *)

__attribute__((unused)) static NetI2pDataTunnelId *NetI2pRouterTunnelHopConfig_getTunnelWithByteArray_(IOSByteArray *id_);

@implementation NetI2pRouterTunnelHopConfig

+ (jint)REPLY_IV_LENGTH {
  return NetI2pRouterTunnelHopConfig_REPLY_IV_LENGTH;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTunnelHopConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (IOSByteArray *)getReceiveTunnelId {
  return _receiveTunnelId_;
}

- (NetI2pDataTunnelId *)getReceiveTunnel {
  if (_receiveTunnel_ == nil) JreStrongAssign(&_receiveTunnel_, NetI2pRouterTunnelHopConfig_getTunnelWithByteArray_(_receiveTunnelId_));
  return _receiveTunnel_;
}

- (void)setReceiveTunnelIdWithByteArray:(IOSByteArray *)id_ {
  JreStrongAssign(&_receiveTunnelId_, id_);
}

- (void)setReceiveTunnelIdWithNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_ {
  JreStrongAssign(&_receiveTunnelId_, NetI2pDataDataHelper_toLongWithInt_withLong_(4, [((NetI2pDataTunnelId *) nil_chk(id_)) getTunnelId]));
}

- (NetI2pDataHash *)getReceiveFrom {
  return _receiveFrom_;
}

- (void)setReceiveFromWithNetI2pDataHash:(NetI2pDataHash *)from {
  JreStrongAssign(&_receiveFrom_, from);
}

- (IOSByteArray *)getSendTunnelId {
  return _sendTunnelId_;
}

- (NetI2pDataTunnelId *)getSendTunnel {
  if (_sendTunnel_ == nil) JreStrongAssign(&_sendTunnel_, NetI2pRouterTunnelHopConfig_getTunnelWithByteArray_(_sendTunnelId_));
  return _sendTunnel_;
}

- (void)setSendTunnelIdWithByteArray:(IOSByteArray *)id_ {
  JreStrongAssign(&_sendTunnelId_, id_);
}

+ (NetI2pDataTunnelId *)getTunnelWithByteArray:(IOSByteArray *)id_ {
  return NetI2pRouterTunnelHopConfig_getTunnelWithByteArray_(id_);
}

- (NetI2pDataHash *)getSendTo {
  return _sendTo_;
}

- (void)setSendToWithNetI2pDataHash:(NetI2pDataHash *)to {
  JreStrongAssign(&_sendTo_, to);
}

- (NetI2pDataSessionKey *)getLayerKey {
  return _layerKey_;
}

- (void)setLayerKeyWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key {
  JreStrongAssign(&_layerKey_, key);
}

- (NetI2pDataSessionKey *)getIVKey {
  return _ivKey_;
}

- (void)setIVKeyWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key {
  JreStrongAssign(&_ivKey_, key);
}

- (NetI2pDataSessionKey *)getReplyKey {
  return _replyKey_;
}

- (void)setReplyKeyWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key {
  JreStrongAssign(&_replyKey_, key);
}

- (IOSByteArray *)getReplyIV {
  return _replyIV_;
}

- (void)setReplyIVWithByteArray:(IOSByteArray *)iv {
  if (((IOSByteArray *) nil_chk(iv))->size_ != NetI2pRouterTunnelHopConfig_REPLY_IV_LENGTH) @throw create_JavaLangIllegalArgumentException_init();
  JreStrongAssign(&_replyIV_, iv);
}

- (jlong)getExpiration {
  return _expiration_;
}

- (void)setExpirationWithLong:(jlong)when {
  _expiration_ = when;
}

- (jlong)getCreation {
  return _creation_;
}

- (void)setCreationWithLong:(jlong)when {
  _creation_ = when;
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

- (jint)getRecentMessagesCount {
  @synchronized(self) {
    return _messagesProcessed_ - _oldMessagesProcessed_;
  }
}

- (jint)getAndResetRecentMessagesCount {
  @synchronized(self) {
    jint rv = _messagesProcessed_ - _oldMessagesProcessed_;
    _oldMessagesProcessed_ = _messagesProcessed_;
    return rv;
  }
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(64);
  if (_receiveTunnelId_ != nil) {
    [buf appendWithNSString:@"recv on "];
    [buf appendWithLong:NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(_receiveTunnelId_, 0, 4)];
    [buf appendWithChar:' '];
  }
  if (_sendTo_ != nil) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"send to "])) appendWithNSString:[((NSString *) nil_chk([((NetI2pDataHash *) nil_chk(_sendTo_)) toBase64])) java_substring:0 endIndex:4]])) appendWithNSString:@":"];
    if (_sendTunnelId_ != nil) [buf appendWithLong:NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(_sendTunnelId_, 0, 4)];
  }
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" exp. "])) appendWithNSString:NetI2pRouterTunnelTunnelCreatorConfig_formatWithLong_(_expiration_)];
  jint messagesProcessed = [self getProcessedMessagesCount];
  if (messagesProcessed > 0) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" used "])) appendWithInt:messagesProcessed])) appendWithNSString:@"KB"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_receiveTunnelId_);
  RELEASE_(_receiveTunnel_);
  RELEASE_(_receiveFrom_);
  RELEASE_(_sendTunnelId_);
  RELEASE_(_sendTunnel_);
  RELEASE_(_sendTo_);
  RELEASE_(_layerKey_);
  RELEASE_(_ivKey_);
  RELEASE_(_replyKey_);
  RELEASE_(_replyIV_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataTunnelId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataTunnelId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataTunnelId;", 0xa, 6, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 9, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getReceiveTunnelId);
  methods[2].selector = @selector(getReceiveTunnel);
  methods[3].selector = @selector(setReceiveTunnelIdWithByteArray:);
  methods[4].selector = @selector(setReceiveTunnelIdWithNetI2pDataTunnelId:);
  methods[5].selector = @selector(getReceiveFrom);
  methods[6].selector = @selector(setReceiveFromWithNetI2pDataHash:);
  methods[7].selector = @selector(getSendTunnelId);
  methods[8].selector = @selector(getSendTunnel);
  methods[9].selector = @selector(setSendTunnelIdWithByteArray:);
  methods[10].selector = @selector(getTunnelWithByteArray:);
  methods[11].selector = @selector(getSendTo);
  methods[12].selector = @selector(setSendToWithNetI2pDataHash:);
  methods[13].selector = @selector(getLayerKey);
  methods[14].selector = @selector(setLayerKeyWithNetI2pDataSessionKey:);
  methods[15].selector = @selector(getIVKey);
  methods[16].selector = @selector(setIVKeyWithNetI2pDataSessionKey:);
  methods[17].selector = @selector(getReplyKey);
  methods[18].selector = @selector(setReplyKeyWithNetI2pDataSessionKey:);
  methods[19].selector = @selector(getReplyIV);
  methods[20].selector = @selector(setReplyIVWithByteArray:);
  methods[21].selector = @selector(getExpiration);
  methods[22].selector = @selector(setExpirationWithLong:);
  methods[23].selector = @selector(getCreation);
  methods[24].selector = @selector(setCreationWithLong:);
  methods[25].selector = @selector(incrementProcessedMessages);
  methods[26].selector = @selector(getProcessedMessagesCount);
  methods[27].selector = @selector(getRecentMessagesCount);
  methods[28].selector = @selector(getAndResetRecentMessagesCount);
  methods[29].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_receiveTunnelId_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_receiveTunnel_", "LNetI2pDataTunnelId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_receiveFrom_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_sendTunnelId_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_sendTunnel_", "LNetI2pDataTunnelId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_sendTo_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_layerKey_", "LNetI2pDataSessionKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_ivKey_", "LNetI2pDataSessionKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_replyKey_", "LNetI2pDataSessionKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_replyIV_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_creation_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_expiration_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_messagesProcessed_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_oldMessagesProcessed_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "REPLY_IV_LENGTH", "I", .constantValue.asInt = NetI2pRouterTunnelHopConfig_REPLY_IV_LENGTH, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setReceiveTunnelId", "[B", "LNetI2pDataTunnelId;", "setReceiveFrom", "LNetI2pDataHash;", "setSendTunnelId", "getTunnel", "setSendTo", "setLayerKey", "LNetI2pDataSessionKey;", "setIVKey", "setReplyKey", "setReplyIV", "setExpiration", "J", "setCreation", "toString" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelHopConfig = { "HopConfig", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x1, 30, 15, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelHopConfig;
}

@end

void NetI2pRouterTunnelHopConfig_init(NetI2pRouterTunnelHopConfig *self) {
  NSObject_init(self);
  self->_creation_ = -1;
  self->_expiration_ = -1;
}

NetI2pRouterTunnelHopConfig *new_NetI2pRouterTunnelHopConfig_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelHopConfig, init)
}

NetI2pRouterTunnelHopConfig *create_NetI2pRouterTunnelHopConfig_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelHopConfig, init)
}

NetI2pDataTunnelId *NetI2pRouterTunnelHopConfig_getTunnelWithByteArray_(IOSByteArray *id_) {
  NetI2pRouterTunnelHopConfig_initialize();
  if (id_ == nil) return nil;
  else return create_NetI2pDataTunnelId_initWithLong_(NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(id_, 0, id_->size_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelHopConfig)
