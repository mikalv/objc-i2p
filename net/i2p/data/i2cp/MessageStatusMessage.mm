//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/MessageStatusMessage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/MessageStatusMessage.h"
#include "net/i2p/data/i2cp/SessionId.h"

@interface NetI2pDataI2cpMessageStatusMessage () {
 @public
  jint _sessionId_;
  jlong _messageId_;
  jlong _nonce_;
  jlong _size_;
  jint _status_;
}

@end

@implementation NetI2pDataI2cpMessageStatusMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE;
}

+ (jint)STATUS_AVAILABLE {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_AVAILABLE;
}

+ (jint)STATUS_SEND_ACCEPTED {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_ACCEPTED;
}

+ (jint)STATUS_SEND_BEST_EFFORT_SUCCESS {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_SUCCESS;
}

+ (jint)STATUS_SEND_BEST_EFFORT_FAILURE {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_FAILURE;
}

+ (jint)STATUS_SEND_GUARANTEED_SUCCESS {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_GUARANTEED_SUCCESS;
}

+ (jint)STATUS_SEND_GUARANTEED_FAILURE {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_GUARANTEED_FAILURE;
}

+ (jint)STATUS_SEND_SUCCESS_LOCAL {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_SUCCESS_LOCAL;
}

+ (jint)STATUS_SEND_FAILURE_LOCAL {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_LOCAL;
}

+ (jint)STATUS_SEND_FAILURE_ROUTER {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_ROUTER;
}

+ (jint)STATUS_SEND_FAILURE_NETWORK {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NETWORK;
}

+ (jint)STATUS_SEND_FAILURE_BAD_SESSION {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_SESSION;
}

+ (jint)STATUS_SEND_FAILURE_BAD_MESSAGE {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_MESSAGE;
}

+ (jint)STATUS_SEND_FAILURE_BAD_OPTIONS {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_OPTIONS;
}

+ (jint)STATUS_SEND_FAILURE_OVERFLOW {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_OVERFLOW;
}

+ (jint)STATUS_SEND_FAILURE_EXPIRED {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_EXPIRED;
}

+ (jint)STATUS_SEND_FAILURE_LOCAL_LEASESET {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_LOCAL_LEASESET;
}

+ (jint)STATUS_SEND_FAILURE_NO_TUNNELS {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NO_TUNNELS;
}

+ (jint)STATUS_SEND_FAILURE_UNSUPPORTED_ENCRYPTION {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_UNSUPPORTED_ENCRYPTION;
}

+ (jint)STATUS_SEND_FAILURE_DESTINATION {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_DESTINATION;
}

+ (jint)STATUS_SEND_FAILURE_BAD_LEASESET {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_LEASESET;
}

+ (jint)STATUS_SEND_FAILURE_EXPIRED_LEASESET {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_EXPIRED_LEASESET;
}

+ (jint)STATUS_SEND_FAILURE_NO_LEASESET {
  return NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NO_LEASESET;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpMessageStatusMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getSessionId {
  return _sessionId_;
}

- (NetI2pDataI2cpSessionId *)sessionId {
  return _sessionId_ >= 0 ? create_NetI2pDataI2cpSessionId_initWithInt_(_sessionId_) : nil;
}

- (void)setSessionIdWithLong:(jlong)id_ {
  _sessionId_ = (jint) id_;
}

- (jint)getStatus {
  return _status_;
}

- (void)setStatusWithInt:(jint)status {
  _status_ = status;
}

- (jboolean)isSuccessful {
  return NetI2pDataI2cpMessageStatusMessage_isSuccessfulWithInt_(_status_);
}

+ (jboolean)isSuccessfulWithInt:(jint)status {
  return NetI2pDataI2cpMessageStatusMessage_isSuccessfulWithInt_(status);
}

- (jlong)getMessageId {
  return _messageId_;
}

- (void)setMessageIdWithLong:(jlong)id_ {
  _messageId_ = id_;
}

- (jlong)getSize {
  return _size_;
}

- (void)setSizeWithLong:(jlong)size {
  _size_ = size;
}

- (jlong)getNonce {
  return _nonce_;
}

- (void)setNonceWithLong:(jlong)nonce {
  _nonce_ = nonce;
}

+ (NSString *)getStatusStringWithInt:(jint)status {
  return NetI2pDataI2cpMessageStatusMessage_getStatusStringWithInt_(status);
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  @try {
    _sessionId_ = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 2);
    _messageId_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
    _status_ = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 1);
    _size_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
    _nonce_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to load the message data", dfe);
  }
}

- (void)writeMessageWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  jint len = 2 + 4 + 1 + 4 + 4;
  @try {
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, len);
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:(jbyte) NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE];
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 2, _sessionId_);
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, _messageId_);
    [outArg writeWithInt:(jbyte) _status_];
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, _size_);
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, _nonce_);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to write the message length or type", dfe);
  }
}

- (IOSByteArray *)doWriteMessage {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"This shouldn't be called... use writeMessage(out)");
}

- (jint)getType {
  return NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[MessageStatusMessage: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSessionId: "])) appendWithInt:_sessionId_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tNonce: "])) appendWithLong:_nonce_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tMessageId: "])) appendWithLong:_messageId_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tStatus: "])) appendWithNSString:NetI2pDataI2cpMessageStatusMessage_getStatusStringWithInt_(_status_)];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSize: "])) appendWithLong:_size_];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 4, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 8, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 9, 10, 11, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 11, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 11, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSessionId);
  methods[2].selector = @selector(sessionId);
  methods[3].selector = @selector(setSessionIdWithLong:);
  methods[4].selector = @selector(getStatus);
  methods[5].selector = @selector(setStatusWithInt:);
  methods[6].selector = @selector(isSuccessful);
  methods[7].selector = @selector(isSuccessfulWithInt:);
  methods[8].selector = @selector(getMessageId);
  methods[9].selector = @selector(setMessageIdWithLong:);
  methods[10].selector = @selector(getSize);
  methods[11].selector = @selector(setSizeWithLong:);
  methods[12].selector = @selector(getNonce);
  methods[13].selector = @selector(setNonceWithLong:);
  methods[14].selector = @selector(getStatusStringWithInt:);
  methods[15].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[16].selector = @selector(writeMessageWithJavaIoOutputStream:);
  methods[17].selector = @selector(doWriteMessage);
  methods[18].selector = @selector(getType);
  methods[19].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_sessionId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_messageId_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_nonce_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_size_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_status_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "STATUS_AVAILABLE", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_AVAILABLE, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_ACCEPTED", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_ACCEPTED, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_BEST_EFFORT_SUCCESS", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_SUCCESS, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_BEST_EFFORT_FAILURE", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_FAILURE, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_GUARANTEED_SUCCESS", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_GUARANTEED_SUCCESS, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_GUARANTEED_FAILURE", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_GUARANTEED_FAILURE, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_SUCCESS_LOCAL", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_SUCCESS_LOCAL, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_LOCAL", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_LOCAL, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_ROUTER", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_ROUTER, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_NETWORK", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NETWORK, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_BAD_SESSION", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_SESSION, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_BAD_MESSAGE", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_MESSAGE, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_BAD_OPTIONS", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_OPTIONS, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_OVERFLOW", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_OVERFLOW, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_EXPIRED", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_EXPIRED, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_LOCAL_LEASESET", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_LOCAL_LEASESET, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_NO_TUNNELS", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NO_TUNNELS, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_UNSUPPORTED_ENCRYPTION", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_UNSUPPORTED_ENCRYPTION, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_DESTINATION", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_DESTINATION, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_BAD_LEASESET", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_BAD_LEASESET, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_EXPIRED_LEASESET", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_EXPIRED_LEASESET, 0x19, -1, -1, -1, -1 },
    { "STATUS_SEND_FAILURE_NO_LEASESET", "I", .constantValue.asInt = NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NO_LEASESET, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSessionId", "J", "setStatus", "I", "isSuccessful", "setMessageId", "setSize", "setNonce", "getStatusString", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "writeMessage", "LJavaIoOutputStream;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpMessageStatusMessage = { "MessageStatusMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 20, 28, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpMessageStatusMessage;
}

@end

void NetI2pDataI2cpMessageStatusMessage_init(NetI2pDataI2cpMessageStatusMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
  self->_sessionId_ = -1;
  self->_status_ = -1;
  self->_messageId_ = -1;
  self->_size_ = -1;
  self->_nonce_ = -1;
}

NetI2pDataI2cpMessageStatusMessage *new_NetI2pDataI2cpMessageStatusMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpMessageStatusMessage, init)
}

NetI2pDataI2cpMessageStatusMessage *create_NetI2pDataI2cpMessageStatusMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpMessageStatusMessage, init)
}

jboolean NetI2pDataI2cpMessageStatusMessage_isSuccessfulWithInt_(jint status) {
  NetI2pDataI2cpMessageStatusMessage_initialize();
  return status == NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_GUARANTEED_SUCCESS || status == NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_SUCCESS || status == NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_SUCCESS_LOCAL || status == NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_ACCEPTED || status == NetI2pDataI2cpMessageStatusMessage_STATUS_AVAILABLE;
}

NSString *NetI2pDataI2cpMessageStatusMessage_getStatusStringWithInt_(jint status) {
  NetI2pDataI2cpMessageStatusMessage_initialize();
  switch (status) {
    case NetI2pDataI2cpMessageStatusMessage_STATUS_AVAILABLE:
    return @"AVAILABLE          ";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_ACCEPTED:
    return @"SEND ACCEPTED      ";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_SUCCESS:
    return @"BEST EFFORT SUCCESS";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_GUARANTEED_SUCCESS:
    return @"GUARANTEED SUCCESS ";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_SUCCESS_LOCAL:
    return @"LOCAL SUCCESS      ";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_BEST_EFFORT_FAILURE:
    return @"PROBABLE FAILURE   ";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NO_TUNNELS:
    return @"NO LOCAL TUNNELS   ";
    case NetI2pDataI2cpMessageStatusMessage_STATUS_SEND_FAILURE_NO_LEASESET:
    return @"LEASESET NOT FOUND ";
    default:
    return JreStrcat("$I", @"SEND FAILURE CODE: ", status);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpMessageStatusMessage)