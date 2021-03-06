//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/SendMessageMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/Payload.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/SendMessageMessage.h"
#include "net/i2p/data/i2cp/SessionId.h"

@implementation NetI2pDataI2cpSendMessageMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpSendMessageMessage_MESSAGE_TYPE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpSendMessageMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NetI2pDataI2cpSessionId *)getSessionId {
  return _sessionId_;
}

- (NetI2pDataI2cpSessionId *)sessionId {
  return _sessionId_;
}

- (void)setSessionIdWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_ {
  JreStrongAssign(&_sessionId_, id_);
}

- (NetI2pDataDestination *)getDestination {
  return _destination_;
}

- (void)setDestinationWithNetI2pDataDestination:(NetI2pDataDestination *)destination {
  JreStrongAssign(&_destination_, destination);
}

- (NetI2pDataPayload *)getPayload {
  return _payload_;
}

- (void)setPayloadWithNetI2pDataPayload:(NetI2pDataPayload *)payload {
  JreStrongAssign(&_payload_, payload);
}

- (jlong)getNonce {
  return _nonce_;
}

- (void)setNonceWithLong:(jlong)nonce {
  _nonce_ = nonce;
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)readMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                 withInt:(jint)length
                                 withInt:(jint)type {
  if (type != [self getType]) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(JreStrcat("$I$I$$C", @"Invalid message type (found: ", type, @" supported: ", [self getType], @" class: ", [[self java_getClass] getName], ')'));
  if (length < 0) @throw create_JavaIoIOException_initWithNSString_(@"Negative payload size");
  @try {
    JreStrongAssignAndConsume(&_sessionId_, new_NetI2pDataI2cpSessionId_init());
    [_sessionId_ readBytesWithJavaIoInputStream:inArg];
    JreStrongAssign(&_destination_, NetI2pDataDestination_createWithJavaIoInputStream_(inArg));
    JreStrongAssignAndConsume(&_payload_, new_NetI2pDataPayload_init());
    [_payload_ readBytesWithJavaIoInputStream:inArg];
    _nonce_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to load the message data", dfe);
  }
}

- (IOSByteArray *)doWriteMessage {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)writeMessageWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if (_sessionId_ == nil) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"No session ID");
  if (_destination_ == nil) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"No dest");
  if (_payload_ == nil) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"No payload");
  if (_nonce_ < 0) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"No nonce");
  jint len = 2 + [_destination_ size] + [((NetI2pDataPayload *) nil_chk(_payload_)) getSize] + 4 + 4;
  @try {
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, len);
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:(jbyte) [self getType]];
    [((NetI2pDataI2cpSessionId *) nil_chk(_sessionId_)) writeBytesWithJavaIoOutputStream:outArg];
    [((NetI2pDataDestination *) nil_chk(_destination_)) writeBytesWithJavaIoOutputStream:outArg];
    [((NetI2pDataPayload *) nil_chk(_payload_)) writeBytesWithJavaIoOutputStream:outArg];
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, _nonce_);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error writing the msg", dfe);
  }
}

- (jint)getType {
  return NetI2pDataI2cpSendMessageMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[SendMessageMessage: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSessionId: "])) appendWithId:[self getSessionId]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tNonce: "])) appendWithLong:[self getNonce]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tDestination: "])) appendWithId:[self getDestination]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tPayload: "])) appendWithId:[self getPayload]];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_sessionId_);
  RELEASE_(_destination_);
  RELEASE_(_payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPayload;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 8, 9, 10, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 10, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 10, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 10, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSessionId);
  methods[2].selector = @selector(sessionId);
  methods[3].selector = @selector(setSessionIdWithNetI2pDataI2cpSessionId:);
  methods[4].selector = @selector(getDestination);
  methods[5].selector = @selector(setDestinationWithNetI2pDataDestination:);
  methods[6].selector = @selector(getPayload);
  methods[7].selector = @selector(setPayloadWithNetI2pDataPayload:);
  methods[8].selector = @selector(getNonce);
  methods[9].selector = @selector(setNonceWithLong:);
  methods[10].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[11].selector = @selector(readMessageWithJavaIoInputStream:withInt:withInt:);
  methods[12].selector = @selector(doWriteMessage);
  methods[13].selector = @selector(writeMessageWithJavaIoOutputStream:);
  methods[14].selector = @selector(getType);
  methods[15].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpSendMessageMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_sessionId_", "LNetI2pDataI2cpSessionId;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_destination_", "LNetI2pDataDestination;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_payload_", "LNetI2pDataPayload;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_nonce_", "J", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSessionId", "LNetI2pDataI2cpSessionId;", "setDestination", "LNetI2pDataDestination;", "setPayload", "LNetI2pDataPayload;", "setNonce", "J", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "readMessage", "LJavaIoInputStream;II", "writeMessage", "LJavaIoOutputStream;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpSendMessageMessage = { "SendMessageMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 16, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpSendMessageMessage;
}

@end

void NetI2pDataI2cpSendMessageMessage_init(NetI2pDataI2cpSendMessageMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
}

NetI2pDataI2cpSendMessageMessage *new_NetI2pDataI2cpSendMessageMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpSendMessageMessage, init)
}

NetI2pDataI2cpSendMessageMessage *create_NetI2pDataI2cpSendMessageMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpSendMessageMessage, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpSendMessageMessage)
