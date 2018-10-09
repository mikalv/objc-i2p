//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/CreateLeaseSetMessage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/StringBuilder.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/LeaseSet.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/i2cp/CreateLeaseSetMessage.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/SessionId.h"

@interface NetI2pDataI2cpCreateLeaseSetMessage () {
 @public
  NetI2pDataI2cpSessionId *_sessionId_;
  NetI2pDataLeaseSet *_leaseSet_;
  NetI2pDataSigningPrivateKey *_signingPrivateKey_;
  NetI2pDataPrivateKey *_privateKey_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2cpCreateLeaseSetMessage, _sessionId_, NetI2pDataI2cpSessionId *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpCreateLeaseSetMessage, _leaseSet_, NetI2pDataLeaseSet *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpCreateLeaseSetMessage, _signingPrivateKey_, NetI2pDataSigningPrivateKey *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpCreateLeaseSetMessage, _privateKey_, NetI2pDataPrivateKey *)

@implementation NetI2pDataI2cpCreateLeaseSetMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpCreateLeaseSetMessage_MESSAGE_TYPE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpCreateLeaseSetMessage_init(self);
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

- (NetI2pDataSigningPrivateKey *)getSigningPrivateKey {
  return _signingPrivateKey_;
}

- (void)setSigningPrivateKeyWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)key {
  JreStrongAssign(&_signingPrivateKey_, key);
}

- (NetI2pDataPrivateKey *)getPrivateKey {
  return _privateKey_;
}

- (void)setPrivateKeyWithNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)privateKey {
  JreStrongAssign(&_privateKey_, privateKey);
}

- (NetI2pDataLeaseSet *)getLeaseSet {
  return _leaseSet_;
}

- (void)setLeaseSetWithNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)leaseSet {
  JreStrongAssign(&_leaseSet_, leaseSet);
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  @try {
    JreStrongAssignAndConsume(&_sessionId_, new_NetI2pDataI2cpSessionId_init());
    [_sessionId_ readBytesWithJavaIoInputStream:inArg];
    JreStrongAssignAndConsume(&_signingPrivateKey_, new_NetI2pDataSigningPrivateKey_init());
    [_signingPrivateKey_ readBytesWithJavaIoInputStream:inArg];
    JreStrongAssignAndConsume(&_privateKey_, new_NetI2pDataPrivateKey_init());
    [_privateKey_ readBytesWithJavaIoInputStream:inArg];
    JreStrongAssignAndConsume(&_leaseSet_, new_NetI2pDataLeaseSet_init());
    [_leaseSet_ readBytesWithJavaIoInputStream:inArg];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error reading the CreateLeaseSetMessage", dfe);
  }
}

- (IOSByteArray *)doWriteMessage {
  if ((_sessionId_ == nil) || (_signingPrivateKey_ == nil) || (_privateKey_ == nil) || (_leaseSet_ == nil)) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"Unable to write out the message as there is not enough data");
  jint size = 4 + [((NetI2pDataSigningPrivateKey *) nil_chk(_signingPrivateKey_)) length] + NetI2pDataPrivateKey_KEYSIZE_BYTES + [((NetI2pDataLeaseSet *) nil_chk(_leaseSet_)) size];
  JavaIoByteArrayOutputStream *os = create_JavaIoByteArrayOutputStream_initWithInt_(size);
  @try {
    [((NetI2pDataI2cpSessionId *) nil_chk(_sessionId_)) writeBytesWithJavaIoOutputStream:os];
    [((NetI2pDataSigningPrivateKey *) nil_chk(_signingPrivateKey_)) writeBytesWithJavaIoOutputStream:os];
    [((NetI2pDataPrivateKey *) nil_chk(_privateKey_)) writeBytesWithJavaIoOutputStream:os];
    [((NetI2pDataLeaseSet *) nil_chk(_leaseSet_)) writeBytesWithJavaIoOutputStream:os];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error writing out the message data", dfe);
  }
  return [os toByteArray];
}

- (jint)getType {
  return NetI2pDataI2cpCreateLeaseSetMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[CreateLeaseSetMessage: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tLeaseSet: "])) appendWithId:[self getLeaseSet]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSigningPrivateKey: "])) appendWithId:[self getSigningPrivateKey]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tPrivateKey: "])) appendWithId:[self getPrivateKey]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSessionId: "])) appendWithId:[self getSessionId]];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_sessionId_);
  RELEASE_(_leaseSet_);
  RELEASE_(_signingPrivateKey_);
  RELEASE_(_privateKey_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSigningPrivateKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPrivateKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataLeaseSet;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 8, 9, 10, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 10, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getSessionId);
  methods[2].selector = @selector(sessionId);
  methods[3].selector = @selector(setSessionIdWithNetI2pDataI2cpSessionId:);
  methods[4].selector = @selector(getSigningPrivateKey);
  methods[5].selector = @selector(setSigningPrivateKeyWithNetI2pDataSigningPrivateKey:);
  methods[6].selector = @selector(getPrivateKey);
  methods[7].selector = @selector(setPrivateKeyWithNetI2pDataPrivateKey:);
  methods[8].selector = @selector(getLeaseSet);
  methods[9].selector = @selector(setLeaseSetWithNetI2pDataLeaseSet:);
  methods[10].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[11].selector = @selector(doWriteMessage);
  methods[12].selector = @selector(getType);
  methods[13].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpCreateLeaseSetMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_sessionId_", "LNetI2pDataI2cpSessionId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_leaseSet_", "LNetI2pDataLeaseSet;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_signingPrivateKey_", "LNetI2pDataSigningPrivateKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_privateKey_", "LNetI2pDataPrivateKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSessionId", "LNetI2pDataI2cpSessionId;", "setSigningPrivateKey", "LNetI2pDataSigningPrivateKey;", "setPrivateKey", "LNetI2pDataPrivateKey;", "setLeaseSet", "LNetI2pDataLeaseSet;", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpCreateLeaseSetMessage = { "CreateLeaseSetMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 14, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpCreateLeaseSetMessage;
}

@end

void NetI2pDataI2cpCreateLeaseSetMessage_init(NetI2pDataI2cpCreateLeaseSetMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
}

NetI2pDataI2cpCreateLeaseSetMessage *new_NetI2pDataI2cpCreateLeaseSetMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpCreateLeaseSetMessage, init)
}

NetI2pDataI2cpCreateLeaseSetMessage *create_NetI2pDataI2cpCreateLeaseSetMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpCreateLeaseSetMessage, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpCreateLeaseSetMessage)