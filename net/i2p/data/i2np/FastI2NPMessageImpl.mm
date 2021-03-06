//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/FastI2NPMessageImpl.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/i2np/FastI2NPMessageImpl.h"
#include "net/i2p/data/i2np/I2NPMessageException.h"
#include "net/i2p/data/i2np/I2NPMessageImpl.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

inline jboolean NetI2pDataI2npFastI2NPMessageImpl_get_VERIFY_TEST(void);
#define NetI2pDataI2npFastI2NPMessageImpl_VERIFY_TEST false
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npFastI2NPMessageImpl, VERIFY_TEST, jboolean)

@implementation NetI2pDataI2npFastI2NPMessageImpl

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pDataI2npFastI2NPMessageImpl_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (jint)readBytesWithByteArray:(IOSByteArray *)data
                       withInt:(jint)type
                       withInt:(jint)offset
                       withInt:(jint)maxLen {
  if (_hasChecksum_) @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$", [[self java_getClass] getSimpleName], @" read twice"));
  jint headerSize = NetI2pDataI2npI2NPMessageImpl_HEADER_LENGTH;
  if (type >= 0) headerSize--;
  if (maxLen < headerSize) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$I", @"Payload is too short ", maxLen));
  jint cur = offset;
  if (type < 0) {
    type = IOSByteArray_Get(nil_chk(data), cur) & (jint) 0xff;
    cur++;
  }
  _uniqueId_ = NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, cur, 4);
  cur += 4;
  _expiration_ = NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, cur, NetI2pDataDataHelper_DATE_LENGTH);
  cur += NetI2pDataDataHelper_DATE_LENGTH;
  jint size = (jint) NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, cur, 2);
  cur += 2;
  _checksum_ = IOSByteArray_Get(nil_chk(data), cur);
  cur++;
  if (cur + size > data->size_ || headerSize + size > maxLen) @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_(JreStrcat("$I$I$I$I$I$$", @"Payload is too short [data.len=", data->size_, @"maxLen=", maxLen, @" offset=", offset, @" cur=", cur, @" wanted=", size, @"]: ", [[self java_getClass] getSimpleName]));
  jint sz = JavaLangMath_minWithInt_withInt_(size, maxLen - headerSize);
  [self readMessageWithByteArray:data withInt:cur withInt:sz withInt:type];
  cur += sz;
  _hasChecksum_ = true;
  return cur - offset;
}

- (jint)toByteArrayWithByteArray:(IOSByteArray *)buffer {
  if (_hasChecksum_) return [self toByteArrayWithSavedChecksumWithByteArray:buffer];
  return [super toByteArrayWithByteArray:buffer];
}

- (jint)toByteArrayWithSavedChecksumWithByteArray:(IOSByteArray *)buffer {
  @try {
    jint writtenLen = [self writeMessageBodyWithByteArray:buffer withInt:NetI2pDataI2npI2NPMessageImpl_HEADER_LENGTH];
    jint payloadLen = writtenLen - NetI2pDataI2npI2NPMessageImpl_HEADER_LENGTH;
    jint off = 0;
    *IOSByteArray_GetRef(nil_chk(buffer), off++) = (jbyte) [self getType];
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(buffer, off, 4, _uniqueId_);
    off += 4;
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(buffer, off, NetI2pDataDataHelper_DATE_LENGTH, _expiration_);
    off += NetI2pDataDataHelper_DATE_LENGTH;
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(buffer, off, 2, payloadLen);
    off += 2;
    *IOSByteArray_GetRef(buffer, off) = _checksum_;
    return writtenLen;
  }
  @catch (NetI2pDataI2npI2NPMessageException *ime) {
    [((NetI2pUtilLog *) nil_chk([((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:[self java_getClass]])) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Error writing" withJavaLangThrowable:ime];
    @throw create_JavaLangIllegalStateException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Unable to serialize the message ", [[self java_getClass] getSimpleName]), ime);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 6, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(readBytesWithByteArray:withInt:withInt:withInt:);
  methods[2].selector = @selector(toByteArrayWithByteArray:);
  methods[3].selector = @selector(toByteArrayWithSavedChecksumWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_checksum_", "B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_hasChecksum_", "Z", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "VERIFY_TEST", "Z", .constantValue.asBOOL = NetI2pDataI2npFastI2NPMessageImpl_VERIFY_TEST, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "readBytes", "[BIII", "LNetI2pDataI2npI2NPMessageException;", "toByteArray", "[B", "toByteArrayWithSavedChecksum" };
  static const J2ObjcClassInfo _NetI2pDataI2npFastI2NPMessageImpl = { "FastI2NPMessageImpl", "net.i2p.data.i2np", ptrTable, methods, fields, 7, 0x401, 4, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2npFastI2NPMessageImpl;
}

@end

void NetI2pDataI2npFastI2NPMessageImpl_initWithNetI2pI2PAppContext_(NetI2pDataI2npFastI2NPMessageImpl *self, NetI2pI2PAppContext *context) {
  NetI2pDataI2npI2NPMessageImpl_initWithNetI2pI2PAppContext_(self, context);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2npFastI2NPMessageImpl)
