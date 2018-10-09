//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/ByteArray.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/ByteArray.h"
#include "net/i2p/data/DataHelper.h"

@interface NetI2pDataByteArray () {
 @public
  IOSByteArray *_data_;
  jint _valid_;
  jint _offset_;
}

+ (jboolean)compareWithByteArray:(IOSByteArray *)lhs
                         withInt:(jint)loff
                         withInt:(jint)llen
                   withByteArray:(IOSByteArray *)rhs
                         withInt:(jint)roff
                         withInt:(jint)rlen;

@end

J2OBJC_FIELD_SETTER(NetI2pDataByteArray, _data_, IOSByteArray *)

__attribute__((unused)) static jboolean NetI2pDataByteArray_compareWithByteArray_withInt_withInt_withByteArray_withInt_withInt_(IOSByteArray *lhs, jint loff, jint llen, IOSByteArray *rhs, jint roff, jint rlen);

@implementation NetI2pDataByteArray

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataByteArray_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  NetI2pDataByteArray_initWithByteArray_(self, data);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)data
                          withInt:(jint)offset
                          withInt:(jint)length {
  NetI2pDataByteArray_initWithByteArray_withInt_withInt_(self, data, offset, length);
  return self;
}

- (IOSByteArray *)getData {
  return _data_;
}

- (void)setDataWithByteArray:(IOSByteArray *)data {
  JreStrongAssign(&_data_, data);
}

- (jint)getValid {
  return _valid_;
}

- (void)setValidWithInt:(jint)valid {
  _valid_ = valid;
}

- (jint)getOffset {
  return _offset_;
}

- (void)setOffsetWithInt:(jint)offset {
  _offset_ = offset;
}

- (jboolean)isEqual:(id)o {
  if (o == self) return true;
  if (o == nil) return false;
  if ([o isKindOfClass:[NetI2pDataByteArray class]]) {
    NetI2pDataByteArray *ba = (NetI2pDataByteArray *) cast_chk(o, [NetI2pDataByteArray class]);
    return NetI2pDataByteArray_compareWithByteArray_withInt_withInt_withByteArray_withInt_withInt_([self getData], _offset_, _valid_, [ba getData], [ba getOffset], [ba getValid]);
  }
  @try {
    IOSByteArray *val = (IOSByteArray *) cast_chk(o, [IOSByteArray class]);
    return NetI2pDataByteArray_compareWithByteArray_withInt_withInt_withByteArray_withInt_withInt_([self getData], _offset_, _valid_, val, 0, val->size_);
  }
  @catch (JavaLangThrowable *t) {
    return false;
  }
}

+ (jboolean)compareWithByteArray:(IOSByteArray *)lhs
                         withInt:(jint)loff
                         withInt:(jint)llen
                   withByteArray:(IOSByteArray *)rhs
                         withInt:(jint)roff
                         withInt:(jint)rlen {
  return NetI2pDataByteArray_compareWithByteArray_withInt_withInt_withByteArray_withInt_withInt_(lhs, loff, llen, rhs, roff, rlen);
}

- (jint)compareToWithId:(NetI2pDataByteArray *)ba {
  cast_chk(ba, [NetI2pDataByteArray class]);
  return NetI2pDataDataHelper_compareToWithByteArray_withByteArray_(_data_, [((NetI2pDataByteArray *) nil_chk(ba)) getData]);
}

- (NSUInteger)hash {
  return NetI2pDataDataHelper_hashCodeWithByteArray_([self getData]);
}

- (NSString *)description {
  return JreStrcat("$C$CI", [super description], '/', NetI2pDataDataHelper_toStringWithByteArray_withInt_([self getData], 32), '.', _valid_);
}

- (NSString *)toBase64 {
  return NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(_data_, _offset_, _valid_);
}

- (void)dealloc {
  RELEASE_(_data_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1a, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 12, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithByteArray:);
  methods[2].selector = @selector(initWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(getData);
  methods[4].selector = @selector(setDataWithByteArray:);
  methods[5].selector = @selector(getValid);
  methods[6].selector = @selector(setValidWithInt:);
  methods[7].selector = @selector(getOffset);
  methods[8].selector = @selector(setOffsetWithInt:);
  methods[9].selector = @selector(isEqual:);
  methods[10].selector = @selector(compareWithByteArray:withInt:withInt:withByteArray:withInt:withInt:);
  methods[11].selector = @selector(compareToWithId:);
  methods[12].selector = @selector(hash);
  methods[13].selector = @selector(description);
  methods[14].selector = @selector(toBase64);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_data_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_valid_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_offset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[B", "[BII", "setData", "setValid", "I", "setOffset", "equals", "LNSObject;", "compare", "[BII[BII", "compareTo", "LNetI2pDataByteArray;", "hashCode", "toString", "Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Comparable<Lnet/i2p/data/ByteArray;>;" };
  static const J2ObjcClassInfo _NetI2pDataByteArray = { "ByteArray", "net.i2p.data", ptrTable, methods, fields, 7, 0x1, 15, 3, -1, -1, -1, 14, -1 };
  return &_NetI2pDataByteArray;
}

@end

void NetI2pDataByteArray_init(NetI2pDataByteArray *self) {
  NSObject_init(self);
}

NetI2pDataByteArray *new_NetI2pDataByteArray_init() {
  J2OBJC_NEW_IMPL(NetI2pDataByteArray, init)
}

NetI2pDataByteArray *create_NetI2pDataByteArray_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataByteArray, init)
}

void NetI2pDataByteArray_initWithByteArray_(NetI2pDataByteArray *self, IOSByteArray *data) {
  NSObject_init(self);
  JreStrongAssign(&self->_data_, data);
  self->_valid_ = (data != nil ? data->size_ : 0);
}

NetI2pDataByteArray *new_NetI2pDataByteArray_initWithByteArray_(IOSByteArray *data) {
  J2OBJC_NEW_IMPL(NetI2pDataByteArray, initWithByteArray_, data)
}

NetI2pDataByteArray *create_NetI2pDataByteArray_initWithByteArray_(IOSByteArray *data) {
  J2OBJC_CREATE_IMPL(NetI2pDataByteArray, initWithByteArray_, data)
}

void NetI2pDataByteArray_initWithByteArray_withInt_withInt_(NetI2pDataByteArray *self, IOSByteArray *data, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssign(&self->_data_, data);
  self->_offset_ = offset;
  self->_valid_ = length;
}

NetI2pDataByteArray *new_NetI2pDataByteArray_initWithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint length) {
  J2OBJC_NEW_IMPL(NetI2pDataByteArray, initWithByteArray_withInt_withInt_, data, offset, length)
}

NetI2pDataByteArray *create_NetI2pDataByteArray_initWithByteArray_withInt_withInt_(IOSByteArray *data, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(NetI2pDataByteArray, initWithByteArray_withInt_withInt_, data, offset, length)
}

jboolean NetI2pDataByteArray_compareWithByteArray_withInt_withInt_withByteArray_withInt_withInt_(IOSByteArray *lhs, jint loff, jint llen, IOSByteArray *rhs, jint roff, jint rlen) {
  NetI2pDataByteArray_initialize();
  return (llen == rlen) && NetI2pDataDataHelper_eqWithByteArray_withInt_withByteArray_withInt_withInt_(lhs, loff, rhs, roff, llen);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataByteArray)
