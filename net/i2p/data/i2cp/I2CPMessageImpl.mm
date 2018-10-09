//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/I2CPMessageImpl.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageImpl.h"
#include "net/i2p/data/i2cp/SessionId.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation NetI2pDataI2cpI2CPMessageImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpI2CPMessageImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)readMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  jint length = 0;
  @try {
    length = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error reading the length bytes", dfe);
  }
  if (length < 0) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"Invalid message length specified");
  jint type = -1;
  @try {
    type = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 1);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error reading the type byte", dfe);
  }
  [self readMessageWithJavaIoInputStream:inArg withInt:length withInt:type];
}

- (void)readMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                 withInt:(jint)length
                                 withInt:(jint)type {
  if (type != [self getType]) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(JreStrcat("$I$I$$C", @"Invalid message type (found: ", type, @" supported: ", [self getType], @" class: ", [[self java_getClass] getName], ')'));
  if (length < 0) @throw create_JavaIoIOException_initWithNSString_(@"Negative payload size");
  [self doReadMessageWithJavaIoInputStream:inArg withInt:length];
}

- (void)doReadMessageWithJavaIoInputStream:(JavaIoInputStream *)buf
                                   withInt:(jint)size {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (IOSByteArray *)doWriteMessage {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)writeMessageWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  IOSByteArray *data = [self doWriteMessage];
  @try {
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, ((IOSByteArray *) nil_chk(data))->size_);
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:(jbyte) [self getType]];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Unable to write the message length or type", dfe);
  }
  [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:data];
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  @try {
    [self readMessageWithJavaIoInputStream:inArg];
  }
  @catch (NetI2pDataI2cpI2CPMessageException *ime) {
    @throw create_NetI2pDataDataFormatException_initWithNSString_withJavaLangThrowable_(@"Error reading the message", ime);
  }
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  @try {
    [self writeMessageWithJavaIoOutputStream:outArg];
  }
  @catch (NetI2pDataI2cpI2CPMessageException *ime) {
    @throw create_NetI2pDataDataFormatException_initWithNSString_withJavaLangThrowable_(@"Error writing the message", ime);
  }
}

- (NetI2pDataI2cpSessionId *)sessionId {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 3, 2, -1, -1, -1 },
    { NULL, "V", 0x404, 4, 5, 2, -1, -1, -1 },
    { NULL, "[B", 0x404, -1, -1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 2, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 1, 9, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 7, 9, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpSessionId;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readMessageWithJavaIoInputStream:);
  methods[2].selector = @selector(readMessageWithJavaIoInputStream:withInt:withInt:);
  methods[3].selector = @selector(doReadMessageWithJavaIoInputStream:withInt:);
  methods[4].selector = @selector(doWriteMessage);
  methods[5].selector = @selector(writeMessageWithJavaIoOutputStream:);
  methods[6].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[7].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[8].selector = @selector(sessionId);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "readMessage", "LJavaIoInputStream;", "LNetI2pDataI2cpI2CPMessageException;LJavaIoIOException;", "LJavaIoInputStream;II", "doReadMessage", "LJavaIoInputStream;I", "writeMessage", "LJavaIoOutputStream;", "readBytes", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes" };
  static const J2ObjcClassInfo _NetI2pDataI2cpI2CPMessageImpl = { "I2CPMessageImpl", "net.i2p.data.i2cp", ptrTable, methods, NULL, 7, 0x401, 9, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpI2CPMessageImpl;
}

@end

void NetI2pDataI2cpI2CPMessageImpl_init(NetI2pDataI2cpI2CPMessageImpl *self) {
  NetI2pDataDataStructureImpl_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpI2CPMessageImpl)
