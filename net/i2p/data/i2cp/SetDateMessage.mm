//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/SetDateMessage.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/InputStream.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Date.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/SetDateMessage.h"
#include "net/i2p/util/Clock.h"

@interface NetI2pDataI2cpSetDateMessage () {
 @public
  JavaUtilDate *_date_;
  NSString *_version_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2cpSetDateMessage, _date_, JavaUtilDate *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpSetDateMessage, _version_, NSString *)

@implementation NetI2pDataI2cpSetDateMessage

+ (jint)MESSAGE_TYPE {
  return NetI2pDataI2cpSetDateMessage_MESSAGE_TYPE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpSetDateMessage_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)version_ {
  NetI2pDataI2cpSetDateMessage_initWithNSString_(self, version_);
  return self;
}

- (JavaUtilDate *)getDate {
  return _date_;
}

- (void)setDateWithJavaUtilDate:(JavaUtilDate *)date {
  JreStrongAssign(&_date_, date);
}

- (NSString *)getVersion {
  return _version_;
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                   withInt:(jint)size {
  @try {
    JreStrongAssign(&_date_, NetI2pDataDataHelper_readDateWithJavaIoInputStream_(inArg));
    if (size > NetI2pDataDataHelper_DATE_LENGTH) JreStrongAssign(&_version_, NetI2pDataDataHelper_readStringWithJavaIoInputStream_(inArg));
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to load the message data", dfe);
  }
}

- (IOSByteArray *)doWriteMessage {
  if (_date_ == nil) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"Unable to write out the message as there is not enough data");
  JavaIoByteArrayOutputStream *os = create_JavaIoByteArrayOutputStream_initWithInt_(32);
  @try {
    NetI2pDataDataHelper_writeDateWithJavaIoOutputStream_withJavaUtilDate_(os, _date_);
    if (_version_ != nil) NetI2pDataDataHelper_writeStringWithJavaIoOutputStream_withNSString_(os, _version_);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error writing out the message data", dfe);
  }
  return [os toByteArray];
}

- (jint)getType {
  return NetI2pDataI2cpSetDateMessage_MESSAGE_TYPE;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [buf appendWithNSString:@"[SetDateMessage"];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tDate: "])) appendWithId:_date_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tVersion: "])) appendWithNSString:_version_];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_date_);
  RELEASE_(_version_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, 5, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, 5, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(getDate);
  methods[3].selector = @selector(setDateWithJavaUtilDate:);
  methods[4].selector = @selector(getVersion);
  methods[5].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[6].selector = @selector(doWriteMessage);
  methods[7].selector = @selector(getType);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MESSAGE_TYPE", "I", .constantValue.asInt = NetI2pDataI2cpSetDateMessage_MESSAGE_TYPE, 0x19, -1, -1, -1, -1 },
    { "_date_", "LJavaUtilDate;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_version_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "setDate", "LJavaUtilDate;", "doReadMessage", "LJavaIoInputStream;I", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpSetDateMessage = { "SetDateMessage", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 9, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpSetDateMessage;
}

@end

void NetI2pDataI2cpSetDateMessage_init(NetI2pDataI2cpSetDateMessage *self) {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
  JreStrongAssignAndConsume(&self->_date_, new_JavaUtilDate_initWithLong_([((NetI2pUtilClock *) nil_chk(NetI2pUtilClock_getInstance())) now]));
}

NetI2pDataI2cpSetDateMessage *new_NetI2pDataI2cpSetDateMessage_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpSetDateMessage, init)
}

NetI2pDataI2cpSetDateMessage *create_NetI2pDataI2cpSetDateMessage_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpSetDateMessage, init)
}

void NetI2pDataI2cpSetDateMessage_initWithNSString_(NetI2pDataI2cpSetDateMessage *self, NSString *version_) {
  NetI2pDataI2cpSetDateMessage_init(self);
  JreStrongAssign(&self->_version_, version_);
}

NetI2pDataI2cpSetDateMessage *new_NetI2pDataI2cpSetDateMessage_initWithNSString_(NSString *version_) {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpSetDateMessage, initWithNSString_, version_)
}

NetI2pDataI2cpSetDateMessage *create_NetI2pDataI2cpSetDateMessage_initWithNSString_(NSString *version_) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpSetDateMessage, initWithNSString_, version_)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpSetDateMessage)
