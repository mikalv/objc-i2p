//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/ReceiveMessageBeginMessage.java
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
#include "net/i2p/data/i2cp/ReceiveMessageBeginMessage.h"
#include "net/i2p/data/i2cp/SessionId.h"

@interface NetI2pDataI2cpReceiveMessageBeginMessage () {
 @public
  jint _sessionId_;
  jlong _messageId_;
}

@end

@implementation NetI2pDataI2cpReceiveMessageBeginMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpReceiveMessageBeginMessage_MESSAGE_TYPE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpReceiveMessageBeginMessage_init(self);
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

- (jlong)getMessageId {
  return _messageId_;
}

- (void)setMessageIdWithLong:(jlong)id_ {
  _messageId_ = id_;
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  @try {
    _sessionId_ = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 2);
    _messageId_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to load the message data", dfe);
  }
}

- (IOSByteArray *)doWriteMessage {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"This shouldn't be called... use writeMessage(out)");
}

- (void)writeMessageWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  jint len = 2 + 4;
  @try {
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, len);
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:(jbyte) NetI2pDataI2cpReceiveMessageBeginMessage_MESSAGE_TYPE];
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 2, _sessionId_);
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, _messageId_);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to write the message length or type", dfe);
  }
}

- (jint)getType {
  return NetI2pDataI2cpReceiveMessageBeginMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[ReceiveMessageBeginMessage: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSessionId: "])) appendWithInt:_sessionId_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tMessageId: "])) appendWithLong:_messageId_];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, 5, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 5, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSessionId);
  methods[2].selector = @selector(sessionId);
  methods[3].selector = @selector(setSessionIdWithLong:);
  methods[4].selector = @selector(getMessageId);
  methods[5].selector = @selector(setMessageIdWithLong:);
  methods[6].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[7].selector = @selector(doWriteMessage);
  methods[8].selector = @selector(writeMessageWithJavaIoOutputStream:);
  methods[9].selector = @selector(getType);
  methods[10].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpReceiveMessageBeginMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_sessionId_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_messageId_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSessionId", "J", "setMessageId", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "writeMessage", "LJavaIoOutputStream;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpReceiveMessageBeginMessage = { "ReceiveMessageBeginMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 11, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpReceiveMessageBeginMessage;
}

@end

void NetI2pDataI2cpReceiveMessageBeginMessage_init(NetI2pDataI2cpReceiveMessageBeginMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
  self->_sessionId_ = -1;
  self->_messageId_ = -1;
}

NetI2pDataI2cpReceiveMessageBeginMessage *new_NetI2pDataI2cpReceiveMessageBeginMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpReceiveMessageBeginMessage, init)
}

NetI2pDataI2cpReceiveMessageBeginMessage *create_NetI2pDataI2cpReceiveMessageBeginMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpReceiveMessageBeginMessage, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpReceiveMessageBeginMessage)
