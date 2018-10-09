//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/TunnelGatewayMessage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/FastI2NPMessageImpl.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/i2np/I2NPMessageException.h"
#include "net/i2p/data/i2np/I2NPMessageHandler.h"
#include "net/i2p/data/i2np/TunnelGatewayMessage.h"
#include "net/i2p/data/i2np/UnknownI2NPMessage.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"

@interface NetI2pDataI2npTunnelGatewayMessage () {
 @public
  NetI2pDataTunnelId *_tunnelId_;
  id<NetI2pDataI2npI2NPMessage> _msg_;
  IOSByteArray *_msgData_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2npTunnelGatewayMessage, _tunnelId_, NetI2pDataTunnelId *)
J2OBJC_FIELD_SETTER(NetI2pDataI2npTunnelGatewayMessage, _msg_, id<NetI2pDataI2npI2NPMessage>)
J2OBJC_FIELD_SETTER(NetI2pDataI2npTunnelGatewayMessage, _msgData_, IOSByteArray *)

inline jint NetI2pDataI2npTunnelGatewayMessage_get_EXPIRATION_PERIOD(void);
#define NetI2pDataI2npTunnelGatewayMessage_EXPIRATION_PERIOD 10000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npTunnelGatewayMessage, EXPIRATION_PERIOD, jint)

@implementation NetI2pDataI2npTunnelGatewayMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2npTunnelGatewayMessage_MESSAGE_TYPE;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pDataI2npTunnelGatewayMessage_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (NetI2pDataTunnelId *)getTunnelId {
  return _tunnelId_;
}

- (void)setTunnelIdWithNetI2pDataTunnelId:(NetI2pDataTunnelId *)id_ {
  if (_tunnelId_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_tunnelId_, id_);
}

- (id<NetI2pDataI2npI2NPMessage>)getMessage {
  return _msg_;
}

- (void)setMessageWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg {
  if (_msg_ != nil) @throw create_JavaLangIllegalStateException_init();
  if (msg == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"dont set me to null!");
  JreStrongAssign(&_msg_, msg);
}

- (jint)calculateWrittenLength {
  @synchronized(self) {
    if (_msgData_ == nil) {
      JreStrongAssign(&_msgData_, [((id<NetI2pDataI2npI2NPMessage>) nil_chk(_msg_)) toByteArray]);
      JreStrongAssign(&_msg_, nil);
    }
  }
  return ((IOSByteArray *) nil_chk(_msgData_))->size_ + 4 + 2;
}

- (jint)writeMessageBodyWithByteArray:(IOSByteArray *)outArg
                              withInt:(jint)curIndex {
  if ((_tunnelId_ == nil) || ((_msg_ == nil) && (_msgData_ == nil))) {
    [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"failing to write out gateway message"];
    @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$@$@C", @"Not enough data to write out (id=", _tunnelId_, @" data=", _msg_, ')'));
  }
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(outArg, curIndex, 4, [((NetI2pDataTunnelId *) nil_chk(_tunnelId_)) getTunnelId]);
  curIndex += 4;
  @synchronized(self) {
    if (_msgData_ == nil) {
      JreStrongAssign(&_msgData_, [((id<NetI2pDataI2npI2NPMessage>) nil_chk(_msg_)) toByteArray]);
      JreStrongAssign(&_msg_, nil);
    }
  }
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(outArg, curIndex, 2, ((IOSByteArray *) nil_chk(_msgData_))->size_);
  curIndex += 2;
  if (curIndex + ((IOSByteArray *) nil_chk(_msgData_))->size_ > ((IOSByteArray *) nil_chk(outArg))->size_) {
    NSString *txt = JreStrcat("$I$I$I", @"output buffer too small idx: ", curIndex, @" len: ", _msgData_->size_, @" outlen: ", outArg->size_);
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:txt];
    @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(txt);
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_msgData_, 0, outArg, curIndex, _msgData_->size_);
  curIndex += ((IOSByteArray *) nil_chk(_msgData_))->size_;
  return curIndex;
}

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type {
  [self readMessageWithByteArray:data withInt:offset withInt:dataSize withInt:type withNetI2pDataI2npI2NPMessageHandler:nil];
}

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type
withNetI2pDataI2npI2NPMessageHandler:(NetI2pDataI2npI2NPMessageHandler *)handler {
  if (type != NetI2pDataI2npTunnelGatewayMessage_MESSAGE_TYPE) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(@"Message type is incorrect for this message");
  jint curIndex = offset;
  JreStrongAssignAndConsume(&_tunnelId_, new_NetI2pDataTunnelId_initWithLong_(NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, curIndex, 4)));
  curIndex += 4;
  if ([_tunnelId_ getTunnelId] <= 0) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$@", @"Invalid tunnel Id ", _tunnelId_));
  jint len = (jint) NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, curIndex, 2);
  curIndex += 2;
  if (len <= 1 || curIndex + len > ((IOSByteArray *) nil_chk(data))->size_ || len > dataSize - 6) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$I$I", @"I2NP length in TGM: ", len, @" but remaining bytes: ", JavaLangMath_minWithInt_withInt_(((IOSByteArray *) nil_chk(data))->size_ - curIndex, dataSize - 6)));
  jint utype = IOSByteArray_Get(nil_chk(data), curIndex++) & (jint) 0xff;
  NetI2pDataI2npUnknownI2NPMessage *umsg = create_NetI2pDataI2npUnknownI2NPMessage_initWithNetI2pI2PAppContext_withInt_(_context_, utype);
  [umsg readBytesWithByteArray:data withInt:utype withInt:curIndex];
  JreStrongAssign(&_msg_, umsg);
}

- (jint)getType {
  return NetI2pDataI2npTunnelGatewayMessage_MESSAGE_TYPE;
}

- (NSUInteger)hash {
  return NetI2pDataDataHelper_hashCodeWithId_([self getTunnelId]) + NetI2pDataDataHelper_hashCodeWithId_(_msg_);
}

- (jboolean)isEqual:(id)object {
  if ((object != nil) && ([object isKindOfClass:[NetI2pDataI2npTunnelGatewayMessage class]])) {
    NetI2pDataI2npTunnelGatewayMessage *msg = (NetI2pDataI2npTunnelGatewayMessage *) cast_chk(object, [NetI2pDataI2npTunnelGatewayMessage class]);
    return NetI2pDataDataHelper_eqWithId_withId_([self getTunnelId], [((NetI2pDataI2npTunnelGatewayMessage *) nil_chk(msg)) getTunnelId]) && NetI2pDataDataHelper_eqWithByteArray_withByteArray_(_msgData_, msg->_msgData_) && NetI2pDataDataHelper_eqWithId_withId_([self getMessage], [msg getMessage]);
  }
  else {
    return false;
  }
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[TunnelGatewayMessage:"];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" Tunnel ID: "])) appendWithId:[self getTunnelId]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" Message: "])) appendWithId:_msg_];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_tunnelId_);
  RELEASE_(_msg_);
  RELEASE_(_msgData_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataTunnelId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npI2NPMessage;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 5, 6, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 10, 7, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(getTunnelId);
  methods[2].selector = @selector(setTunnelIdWithNetI2pDataTunnelId:);
  methods[3].selector = @selector(getMessage);
  methods[4].selector = @selector(setMessageWithNetI2pDataI2npI2NPMessage:);
  methods[5].selector = @selector(calculateWrittenLength);
  methods[6].selector = @selector(writeMessageBodyWithByteArray:withInt:);
  methods[7].selector = @selector(readMessageWithByteArray:withInt:withInt:withInt:);
  methods[8].selector = @selector(readMessageWithByteArray:withInt:withInt:withInt:withNetI2pDataI2npI2NPMessageHandler:);
  methods[9].selector = @selector(getType);
  methods[10].selector = @selector(hash);
  methods[11].selector = @selector(isEqual:);
  methods[12].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_tunnelId_", "LNetI2pDataTunnelId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_msg_", "LNetI2pDataI2npI2NPMessage;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_msgData_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2npTunnelGatewayMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "EXPIRATION_PERIOD", "I", .constantValue.asInt = NetI2pDataI2npTunnelGatewayMessage_EXPIRATION_PERIOD, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "setTunnelId", "LNetI2pDataTunnelId;", "setMessage", "LNetI2pDataI2npI2NPMessage;", "writeMessageBody", "[BI", "LNetI2pDataI2npI2NPMessageException;", "readMessage", "[BIII", "[BIIILNetI2pDataI2npI2NPMessageHandler;", "hashCode", "equals", "LNSObject;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2npTunnelGatewayMessage = { "TunnelGatewayMessage", "net.i2p.data.i2np", ptrTable, methods, fields, 7, 0x1, 13, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2npTunnelGatewayMessage;
}

@end

void NetI2pDataI2npTunnelGatewayMessage_initWithNetI2pI2PAppContext_(NetI2pDataI2npTunnelGatewayMessage *self, NetI2pI2PAppContext *context) {
  NetI2pDataI2npFastI2NPMessageImpl_initWithNetI2pI2PAppContext_(self, context);
  [self setMessageExpirationWithLong:[((NetI2pUtilClock *) nil_chk([((NetI2pI2PAppContext *) nil_chk(context)) clock])) now] + NetI2pDataI2npTunnelGatewayMessage_EXPIRATION_PERIOD];
}

NetI2pDataI2npTunnelGatewayMessage *new_NetI2pDataI2npTunnelGatewayMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npTunnelGatewayMessage, initWithNetI2pI2PAppContext_, context)
}

NetI2pDataI2npTunnelGatewayMessage *create_NetI2pDataI2npTunnelGatewayMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npTunnelGatewayMessage, initWithNetI2pI2PAppContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2npTunnelGatewayMessage)
