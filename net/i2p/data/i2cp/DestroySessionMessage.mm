//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/DestroySessionMessage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/StringBuilder.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/i2cp/DestroySessionMessage.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/SessionId.h"

@interface NetI2pDataI2cpDestroySessionMessage () {
 @public
  NetI2pDataI2cpSessionId *_sessionId_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2cpDestroySessionMessage, _sessionId_, NetI2pDataI2cpSessionId *)

@implementation NetI2pDataI2cpDestroySessionMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpDestroySessionMessage_MESSAGE_TYPE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpDestroySessionMessage_init(self);
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

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  NetI2pDataI2cpSessionId *id_ = create_NetI2pDataI2cpSessionId_init();
  @try {
    [id_ readBytesWithJavaIoInputStream:inArg];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to load the message data", dfe);
  }
  [self setSessionIdWithNetI2pDataI2cpSessionId:id_];
}

- (IOSByteArray *)doWriteMessage {
  if (_sessionId_ == nil) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"Unable to write out the message as there is not enough data");
  JavaIoByteArrayOutputStream *os = create_JavaIoByteArrayOutputStream_initWithInt_(64);
  @try {
    [((NetI2pDataI2cpSessionId *) nil_chk(_sessionId_)) writeBytesWithJavaIoOutputStream:os];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error writing out the message data", dfe);
  }
  return [os toByteArray];
}

- (jint)getType {
  return NetI2pDataI2cpDestroySessionMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[DestroySessionMessage: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSessionId: "])) appendWithId:_sessionId_];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_sessionId_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 3, 4, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 4, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSessionId);
  methods[2].selector = @selector(sessionId);
  methods[3].selector = @selector(setSessionIdWithNetI2pDataI2cpSessionId:);
  methods[4].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[5].selector = @selector(doWriteMessage);
  methods[6].selector = @selector(getType);
  methods[7].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpDestroySessionMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_sessionId_", "LNetI2pDataI2cpSessionId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSessionId", "LNetI2pDataI2cpSessionId;", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpDestroySessionMessage = { "DestroySessionMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 8, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpDestroySessionMessage;
}

@end

void NetI2pDataI2cpDestroySessionMessage_init(NetI2pDataI2cpDestroySessionMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
}

NetI2pDataI2cpDestroySessionMessage *new_NetI2pDataI2cpDestroySessionMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpDestroySessionMessage, init)
}

NetI2pDataI2cpDestroySessionMessage *create_NetI2pDataI2cpDestroySessionMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpDestroySessionMessage, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpDestroySessionMessage)
