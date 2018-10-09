//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/Payload.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/Payload.h"

@interface NetI2pDataPayload () {
 @public
  IOSByteArray *_encryptedData_;
  IOSByteArray *_unencryptedData_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataPayload, _encryptedData_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pDataPayload, _unencryptedData_, IOSByteArray *)

inline jint NetI2pDataPayload_get_MAX_LENGTH(void);
#define NetI2pDataPayload_MAX_LENGTH 65536
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataPayload, MAX_LENGTH, jint)

@implementation NetI2pDataPayload

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataPayload_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (IOSByteArray *)getUnencryptedData {
  return _unencryptedData_;
}

- (void)setUnencryptedDataWithByteArray:(IOSByteArray *)data {
  if (((IOSByteArray *) nil_chk(data))->size_ > NetI2pDataPayload_MAX_LENGTH) @throw create_JavaLangIllegalArgumentException_init();
  JreStrongAssign(&_unencryptedData_, data);
}

- (IOSByteArray *)getEncryptedData {
  return _encryptedData_;
}

- (void)setEncryptedDataWithByteArray:(IOSByteArray *)data {
  if (((IOSByteArray *) nil_chk(data))->size_ > NetI2pDataPayload_MAX_LENGTH) @throw create_JavaLangIllegalArgumentException_init();
  JreStrongAssign(&_encryptedData_, data);
}

- (jint)getSize {
  if (_unencryptedData_ != nil) return _unencryptedData_->size_;
  else if (_encryptedData_ != nil) return _encryptedData_->size_;
  else return 0;
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  jint size = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
  if (size < 0 || size > NetI2pDataPayload_MAX_LENGTH) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$IC", @"payload size out of range (", size, ')'));
  JreStrongAssignAndConsume(&_encryptedData_, [IOSByteArray newArrayWithLength:size]);
  jint read = [self readWithJavaIoInputStream:inArg withByteArray:_encryptedData_];
  if (read != size) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Incorrect number of bytes read in the payload structure");
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if (_encryptedData_ == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Not yet encrypted.  Please set the encrypted data");
  NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 4, _encryptedData_->size_);
  [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:_encryptedData_];
}

- (jint)writeBytesWithByteArray:(IOSByteArray *)target
                        withInt:(jint)offset {
  if (_encryptedData_ == nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"Not yet encrypted.  Please set the encrypted data");
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, offset, 4, _encryptedData_->size_);
  offset += 4;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_encryptedData_, 0, target, offset, ((IOSByteArray *) nil_chk(_encryptedData_))->size_);
  return 4 + ((IOSByteArray *) nil_chk(_encryptedData_))->size_;
}

- (jboolean)isEqual:(id)object {
  if (object == self) return true;
  if ((object == nil) || !([object isKindOfClass:[NetI2pDataPayload class]])) return false;
  NetI2pDataPayload *p = (NetI2pDataPayload *) cast_chk(object, [NetI2pDataPayload class]);
  return JavaUtilArrays_equalsWithByteArray_withByteArray_(_unencryptedData_, [((NetI2pDataPayload *) nil_chk(p)) getUnencryptedData]) && JavaUtilArrays_equalsWithByteArray_withByteArray_(_encryptedData_, [p getEncryptedData]);
}

- (NSUInteger)hash {
  return NetI2pDataDataHelper_hashCodeWithByteArray_(_encryptedData_ != nil ? _encryptedData_ : _unencryptedData_);
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(32);
  [buf appendWithNSString:@"[Payload: "];
  if (_encryptedData_ != nil) [((JavaLangStringBuilder *) nil_chk([buf appendWithInt:_encryptedData_->size_])) appendWithNSString:@" bytes"];
  else [buf appendWithNSString:@"null"];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_encryptedData_);
  RELEASE_(_unencryptedData_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, 5, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 5, -1, -1, -1 },
    { NULL, "I", 0x1, 6, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 11, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getUnencryptedData);
  methods[2].selector = @selector(setUnencryptedDataWithByteArray:);
  methods[3].selector = @selector(getEncryptedData);
  methods[4].selector = @selector(setEncryptedDataWithByteArray:);
  methods[5].selector = @selector(getSize);
  methods[6].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[7].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[8].selector = @selector(writeBytesWithByteArray:withInt:);
  methods[9].selector = @selector(isEqual:);
  methods[10].selector = @selector(hash);
  methods[11].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_encryptedData_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_unencryptedData_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MAX_LENGTH", "I", .constantValue.asInt = NetI2pDataPayload_MAX_LENGTH, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setUnencryptedData", "[B", "setEncryptedData", "readBytes", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes", "LJavaIoOutputStream;", "[BI", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _NetI2pDataPayload = { "Payload", "net.i2p.data", ptrTable, methods, fields, 7, 0x1, 12, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pDataPayload;
}

@end

void NetI2pDataPayload_init(NetI2pDataPayload *self) {
  NetI2pDataDataStructureImpl_init(self);
}

NetI2pDataPayload *new_NetI2pDataPayload_init() {
  J2OBJC_NEW_IMPL(NetI2pDataPayload, init)
}

NetI2pDataPayload *create_NetI2pDataPayload_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataPayload, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataPayload)
