//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/VariableTunnelBuildMessage.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/i2np/EncryptedBuildRecord.h"
#include "net/i2p/data/i2np/I2NPMessageException.h"
#include "net/i2p/data/i2np/TunnelBuildMessage.h"
#include "net/i2p/data/i2np/TunnelBuildMessageBase.h"
#include "net/i2p/data/i2np/VariableTunnelBuildMessage.h"

@implementation NetI2pDataI2npVariableTunnelBuildMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2npVariableTunnelBuildMessage_MESSAGE_TYPE;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                    withInt:(jint)records {
  NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(self, context, records);
  return self;
}

- (jint)calculateWrittenLength {
  return 1 + [super calculateWrittenLength];
}

- (jint)getType {
  return NetI2pDataI2npVariableTunnelBuildMessage_MESSAGE_TYPE;
}

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type {
  jint r = IOSByteArray_Get(nil_chk(data), offset) & (jint) 0xff;
  if (r <= 0 || r > NetI2pDataI2npTunnelBuildMessageBase_MAX_RECORD_COUNT) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$I", @"Bad record count ", r));
  RECORD_COUNT_ = r;
  if (dataSize != [self calculateWrittenLength]) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$I$IC", @"Wrong length (expects ", [self calculateWrittenLength], @", recv ", dataSize, ')'));
  JreStrongAssignAndConsume(&_records_, [IOSObjectArray newArrayWithLength:RECORD_COUNT_ type:NetI2pDataI2npEncryptedBuildRecord_class_()]);
  [super readMessageWithByteArray:data withInt:offset + 1 withInt:dataSize withInt:type];
}

- (jint)writeMessageBodyWithByteArray:(IOSByteArray *)outArg
                              withInt:(jint)curIndex {
  jint remaining = ((IOSByteArray *) nil_chk(outArg))->size_ - (curIndex + [self calculateWrittenLength]);
  if (remaining < 0) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$IC", @"Not large enough (too short by ", remaining, ')'));
  if (RECORD_COUNT_ <= 0 || RECORD_COUNT_ > NetI2pDataI2npTunnelBuildMessageBase_MAX_RECORD_COUNT) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$I", @"Bad record count ", RECORD_COUNT_));
  *IOSByteArray_GetRef(outArg, curIndex++) = (jbyte) RECORD_COUNT_;
  for (jint i = 0; i < RECORD_COUNT_; i++) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((NetI2pDataI2npEncryptedBuildRecord *) nil_chk(IOSObjectArray_Get(nil_chk(_records_), i))) getData], 0, outArg, curIndex, NetI2pDataI2npTunnelBuildMessageBase_RECORD_SIZE);
    curIndex += NetI2pDataI2npTunnelBuildMessageBase_RECORD_SIZE;
  }
  return curIndex;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(64);
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"[VariableTunnelBuildMessage: \n\tRecords: "])) appendWithInt:[self getRecordCount]])) appendWithChar:']'];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "I", 0x4, 5, 6, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:withInt:);
  methods[2].selector = @selector(calculateWrittenLength);
  methods[3].selector = @selector(getType);
  methods[4].selector = @selector(readMessageWithByteArray:withInt:withInt:withInt:);
  methods[5].selector = @selector(writeMessageBodyWithByteArray:withInt:);
  methods[6].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2npVariableTunnelBuildMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "LNetI2pI2PAppContext;I", "readMessage", "[BIII", "LNetI2pDataI2npI2NPMessageException;", "writeMessageBody", "[BI", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2npVariableTunnelBuildMessage = { "VariableTunnelBuildMessage", "net.i2p.data.i2np", ptrTable, methods, fields, 7, 0x1, 7, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2npVariableTunnelBuildMessage;
}

@end

void NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_(NetI2pDataI2npVariableTunnelBuildMessage *self, NetI2pI2PAppContext *context) {
  NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(self, context, 0);
}

NetI2pDataI2npVariableTunnelBuildMessage *new_NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npVariableTunnelBuildMessage, initWithNetI2pI2PAppContext_, context)
}

NetI2pDataI2npVariableTunnelBuildMessage *create_NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npVariableTunnelBuildMessage, initWithNetI2pI2PAppContext_, context)
}

void NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pDataI2npVariableTunnelBuildMessage *self, NetI2pI2PAppContext *context, jint records) {
  NetI2pDataI2npTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(self, context, records);
}

NetI2pDataI2npVariableTunnelBuildMessage *new_NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npVariableTunnelBuildMessage, initWithNetI2pI2PAppContext_withInt_, context, records)
}

NetI2pDataI2npVariableTunnelBuildMessage *create_NetI2pDataI2npVariableTunnelBuildMessage_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *context, jint records) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npVariableTunnelBuildMessage, initWithNetI2pI2PAppContext_withInt_, context, records)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2npVariableTunnelBuildMessage)