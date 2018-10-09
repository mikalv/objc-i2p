//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/DateAndFlags.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Date.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/DateAndFlags.h"

@interface NetI2pDataDateAndFlags () {
 @public
  jlong _date_;
}

@end

@implementation NetI2pDataDateAndFlags

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataDateAndFlags_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithLong:(jlong)date
                     withInt:(jint)flags {
  NetI2pDataDateAndFlags_initWithLong_withInt_(self, date, flags);
  return self;
}

- (instancetype)initWithJavaUtilDate:(JavaUtilDate *)date
                             withInt:(jint)flags {
  NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(self, date, flags);
  return self;
}

- (jint)getFlags {
  return _flags_;
}

- (void)setFlagsWithInt:(jint)flags {
  if (flags < 0 || flags > 65535) @throw create_JavaLangIllegalArgumentException_init();
  _flags_ = flags;
}

- (JavaUtilDate *)getDate {
  return create_JavaUtilDate_initWithLong_(_date_);
}

- (jlong)getTime {
  return (_date_);
}

- (void)setDateWithLong:(jlong)date {
  _date_ = date;
}

- (void)setDateWithJavaUtilDate:(JavaUtilDate *)date {
  _date_ = [((JavaUtilDate *) nil_chk(date)) getTime];
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  _flags_ = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 2);
  _date_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 6);
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 2, _flags_);
  NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 6, _date_);
}

- (IOSByteArray *)toByteArray {
  IOSByteArray *rv = NetI2pDataDataHelper_toLongWithInt_withLong_(8, _date_);
  *IOSByteArray_GetRef(nil_chk(rv), 0) = (jbyte) ((JreRShift32(_flags_, 8)) & (jint) 0xff);
  *IOSByteArray_GetRef(rv, 1) = (jbyte) (_flags_ & (jint) 0xff);
  return rv;
}

- (void)fromByteArrayWithByteArray:(IOSByteArray *)data {
  if (data == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Null data passed in");
  if (data->size_ != 8) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Bad data length");
  _flags_ = (jint) NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, 0, 2);
  _date_ = NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, 2, 6);
}

- (jboolean)isEqual:(id)object {
  if (object == self) return true;
  if ((object == nil) || !([object isKindOfClass:[NetI2pDataDateAndFlags class]])) return false;
  NetI2pDataDateAndFlags *daf = (NetI2pDataDateAndFlags *) cast_chk(object, [NetI2pDataDateAndFlags class]);
  return _date_ == ((NetI2pDataDateAndFlags *) nil_chk(daf))->_date_ && _flags_ == daf->_flags_;
}

- (NSUInteger)hash {
  return _flags_ + (jint) _date_;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(64);
  [buf appendWithNSString:@"[DateAndFlags: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tDate: "])) appendWithNSString:[(create_JavaUtilDate_initWithLong_(_date_)) description]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tFlags: 0x"])) appendWithNSString:JavaLangInteger_toHexStringWithInt_(_flags_)];
  [buf appendWithNSString:@"]"];
  return [buf description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 9, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 9, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 14, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 17, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithLong:withInt:);
  methods[2].selector = @selector(initWithJavaUtilDate:withInt:);
  methods[3].selector = @selector(getFlags);
  methods[4].selector = @selector(setFlagsWithInt:);
  methods[5].selector = @selector(getDate);
  methods[6].selector = @selector(getTime);
  methods[7].selector = @selector(setDateWithLong:);
  methods[8].selector = @selector(setDateWithJavaUtilDate:);
  methods[9].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[10].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[11].selector = @selector(toByteArray);
  methods[12].selector = @selector(fromByteArrayWithByteArray:);
  methods[13].selector = @selector(isEqual:);
  methods[14].selector = @selector(hash);
  methods[15].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_flags_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_date_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JI", "LJavaUtilDate;I", "setFlags", "I", "setDate", "J", "LJavaUtilDate;", "readBytes", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes", "LJavaIoOutputStream;", "fromByteArray", "[B", "LNetI2pDataDataFormatException;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _NetI2pDataDateAndFlags = { "DateAndFlags", "net.i2p.data", ptrTable, methods, fields, 7, 0x1, 16, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pDataDateAndFlags;
}

@end

void NetI2pDataDateAndFlags_init(NetI2pDataDateAndFlags *self) {
  NetI2pDataDataStructureImpl_init(self);
}

NetI2pDataDateAndFlags *new_NetI2pDataDateAndFlags_init() {
  J2OBJC_NEW_IMPL(NetI2pDataDateAndFlags, init)
}

NetI2pDataDateAndFlags *create_NetI2pDataDateAndFlags_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataDateAndFlags, init)
}

void NetI2pDataDateAndFlags_initWithLong_withInt_(NetI2pDataDateAndFlags *self, jlong date, jint flags) {
  NetI2pDataDataStructureImpl_init(self);
  if (flags < 0 || flags > 65535) @throw create_JavaLangIllegalArgumentException_init();
  self->_flags_ = flags;
  self->_date_ = date;
}

NetI2pDataDateAndFlags *new_NetI2pDataDateAndFlags_initWithLong_withInt_(jlong date, jint flags) {
  J2OBJC_NEW_IMPL(NetI2pDataDateAndFlags, initWithLong_withInt_, date, flags)
}

NetI2pDataDateAndFlags *create_NetI2pDataDateAndFlags_initWithLong_withInt_(jlong date, jint flags) {
  J2OBJC_CREATE_IMPL(NetI2pDataDateAndFlags, initWithLong_withInt_, date, flags)
}

void NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(NetI2pDataDateAndFlags *self, JavaUtilDate *date, jint flags) {
  NetI2pDataDataStructureImpl_init(self);
  if (flags < 0 || flags > 65535) @throw create_JavaLangIllegalArgumentException_init();
  self->_flags_ = flags;
  self->_date_ = [((JavaUtilDate *) nil_chk(date)) getTime];
}

NetI2pDataDateAndFlags *new_NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(JavaUtilDate *date, jint flags) {
  J2OBJC_NEW_IMPL(NetI2pDataDateAndFlags, initWithJavaUtilDate_withInt_, date, flags)
}

NetI2pDataDateAndFlags *create_NetI2pDataDateAndFlags_initWithJavaUtilDate_withInt_(JavaUtilDate *date, jint flags) {
  J2OBJC_CREATE_IMPL(NetI2pDataDateAndFlags, initWithJavaUtilDate_withInt_, date, flags)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataDateAndFlags)