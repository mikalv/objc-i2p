//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/HostReplyMessage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/i2cp/HostReplyMessage.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/SessionId.h"

@interface NetI2pDataI2cpHostReplyMessage () {
 @public
  NetI2pDataDestination *_dest_;
  jlong _reqID_;
  jint _code_;
  NetI2pDataI2cpSessionId *_sessionId_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2cpHostReplyMessage, _dest_, NetI2pDataDestination *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpHostReplyMessage, _sessionId_, NetI2pDataI2cpSessionId *)

inline jlong NetI2pDataI2cpHostReplyMessage_get_MAX_INT(void);
#define NetI2pDataI2cpHostReplyMessage_MAX_INT 4294967295LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpHostReplyMessage, MAX_INT, jlong)

@implementation NetI2pDataI2cpHostReplyMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE;
}

+ (jint)RESULT_SUCCESS {
  return NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS;
}

+ (jint)RESULT_FAILURE {
  return NetI2pDataI2cpHostReplyMessage_RESULT_FAILURE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpHostReplyMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_
                      withNetI2pDataDestination:(NetI2pDataDestination *)d
                                       withLong:(jlong)reqID {
  NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(self, id_, d, reqID);
  return self;
}

- (instancetype)initWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_
                                        withInt:(jint)failureCode
                                       withLong:(jlong)reqID {
  NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(self, id_, failureCode, reqID);
  return self;
}

- (NetI2pDataI2cpSessionId *)getSessionId {
  return _sessionId_;
}

- (NetI2pDataI2cpSessionId *)sessionId {
  return _sessionId_;
}

- (jlong)getReqID {
  return _reqID_;
}

- (jint)getResultCode {
  return _code_;
}

- (NetI2pDataDestination *)getDestination {
  return _dest_;
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  @try {
    JreStrongAssignAndConsume(&_sessionId_, new_NetI2pDataI2cpSessionId_init());
    [_sessionId_ readBytesWithJavaIoInputStream:inArg];
    _reqID_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
    _code_ = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 1);
    if (_code_ == NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS) JreStrongAssign(&_dest_, NetI2pDataDestination_createWithJavaIoInputStream_(inArg));
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"bad data", dfe);
  }
}

- (IOSByteArray *)doWriteMessage {
  jint len = 7;
  if (_code_ == NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS) {
    if (_dest_ == nil) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"Unable to write out the message as there is not enough data");
    len += [_dest_ size];
  }
  JavaIoByteArrayOutputStream *os = create_JavaIoByteArrayOutputStream_initWithInt_(len);
  @try {
    [((NetI2pDataI2cpSessionId *) nil_chk(_sessionId_)) writeBytesWithJavaIoOutputStream:os];
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(os, 4, _reqID_);
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(os, 1, _code_);
    if (_code_ == NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS) [((NetI2pDataDestination *) nil_chk(_dest_)) writeBytesWithJavaIoOutputStream:os];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"bad data", dfe);
  }
  return [os toByteArray];
}

- (jint)getType {
  return NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[HostReplyMessage: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\t"])) appendWithId:_sessionId_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tReqID: "])) appendWithLong:_reqID_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tResult: "])) appendWithInt:_code_];
  if (_code_ == NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tDestination: "])) appendWithId:_dest_];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_dest_);
  RELEASE_(_sessionId_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, 4, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 4, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNetI2pDataI2cpSessionId:withNetI2pDataDestination:withLong:);
  methods[2].selector = @selector(initWithNetI2pDataI2cpSessionId:withInt:withLong:);
  methods[3].selector = @selector(getSessionId);
  methods[4].selector = @selector(sessionId);
  methods[5].selector = @selector(getReqID);
  methods[6].selector = @selector(getResultCode);
  methods[7].selector = @selector(getDestination);
  methods[8].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[9].selector = @selector(doWriteMessage);
  methods[10].selector = @selector(getType);
  methods[11].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_dest_", "LNetI2pDataDestination;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_reqID_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_code_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_sessionId_", "LNetI2pDataI2cpSessionId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "RESULT_SUCCESS", "I", .constantValue.asInt = NetI2pDataI2cpHostReplyMessage_RESULT_SUCCESS, 0x19, -1, -1, -1, -1 },
    { "RESULT_FAILURE", "I", .constantValue.asInt = NetI2pDataI2cpHostReplyMessage_RESULT_FAILURE, 0x19, -1, -1, -1, -1 },
    { "MAX_INT", "J", .constantValue.asLong = NetI2pDataI2cpHostReplyMessage_MAX_INT, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pDataI2cpSessionId;LNetI2pDataDestination;J", "LNetI2pDataI2cpSessionId;IJ", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpHostReplyMessage = { "HostReplyMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 12, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpHostReplyMessage;
}

@end

void NetI2pDataI2cpHostReplyMessage_init(NetI2pDataI2cpHostReplyMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
}

NetI2pDataI2cpHostReplyMessage *new_NetI2pDataI2cpHostReplyMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpHostReplyMessage, init)
}

NetI2pDataI2cpHostReplyMessage *create_NetI2pDataI2cpHostReplyMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpHostReplyMessage, init)
}

void NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(NetI2pDataI2cpHostReplyMessage *self, NetI2pDataI2cpSessionId *id_, NetI2pDataDestination *d, jlong reqID) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
  if (id_ == nil || d == nil) @throw create_JavaLangIllegalArgumentException_init();
  if (reqID < 0 || reqID > NetI2pDataI2cpHostReplyMessage_MAX_INT) @throw create_JavaLangIllegalArgumentException_init();
  JreStrongAssign(&self->_sessionId_, id_);
  JreStrongAssign(&self->_dest_, d);
  self->_reqID_ = reqID;
}

NetI2pDataI2cpHostReplyMessage *new_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(NetI2pDataI2cpSessionId *id_, NetI2pDataDestination *d, jlong reqID) {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpHostReplyMessage, initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_, id_, d, reqID)
}

NetI2pDataI2cpHostReplyMessage *create_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(NetI2pDataI2cpSessionId *id_, NetI2pDataDestination *d, jlong reqID) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpHostReplyMessage, initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_, id_, d, reqID)
}

void NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(NetI2pDataI2cpHostReplyMessage *self, NetI2pDataI2cpSessionId *id_, jint failureCode, jlong reqID) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
  if (id_ == nil) @throw create_JavaLangIllegalArgumentException_init();
  if (failureCode <= 0 || failureCode > 255) @throw create_JavaLangIllegalArgumentException_init();
  if (reqID < 0 || reqID > NetI2pDataI2cpHostReplyMessage_MAX_INT) @throw create_JavaLangIllegalArgumentException_init();
  JreStrongAssign(&self->_sessionId_, id_);
  self->_code_ = failureCode;
  self->_reqID_ = reqID;
}

NetI2pDataI2cpHostReplyMessage *new_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(NetI2pDataI2cpSessionId *id_, jint failureCode, jlong reqID) {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpHostReplyMessage, initWithNetI2pDataI2cpSessionId_withInt_withLong_, id_, failureCode, reqID)
}

NetI2pDataI2cpHostReplyMessage *create_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(NetI2pDataI2cpSessionId *id_, jint failureCode, jlong reqID) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpHostReplyMessage, initWithNetI2pDataI2cpSessionId_withInt_withLong_, id_, failureCode, reqID)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpHostReplyMessage)
