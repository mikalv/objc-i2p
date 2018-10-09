//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/Certificate.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/Certificate.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/KeyCertificate.h"
#include "net/i2p/data/Signature.h"

@interface NetI2pDataCertificate_NullCert : NetI2pDataCertificate

- (instancetype)init;

- (void)setCertificateTypeWithInt:(jint)type;

- (void)setPayloadWithByteArray:(IOSByteArray *)payload;

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (jint)writeBytesWithByteArray:(IOSByteArray *)target
                        withInt:(jint)offset;

- (jint)readBytesWithByteArray:(IOSByteArray *)source
                       withInt:(jint)offset;

- (jint)size;

- (NSUInteger)hash;

@end

J2OBJC_STATIC_INIT(NetI2pDataCertificate_NullCert)

inline jint NetI2pDataCertificate_NullCert_get_NULL_LENGTH(void);
#define NetI2pDataCertificate_NullCert_NULL_LENGTH 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataCertificate_NullCert, NULL_LENGTH, jint)

inline IOSByteArray *NetI2pDataCertificate_NullCert_get_NULL_DATA(void);
static IOSByteArray *NetI2pDataCertificate_NullCert_NULL_DATA;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataCertificate_NullCert, NULL_DATA, IOSByteArray *)

__attribute__((unused)) static void NetI2pDataCertificate_NullCert_init(NetI2pDataCertificate_NullCert *self);

__attribute__((unused)) static NetI2pDataCertificate_NullCert *new_NetI2pDataCertificate_NullCert_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pDataCertificate_NullCert *create_NetI2pDataCertificate_NullCert_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataCertificate_NullCert)

J2OBJC_INITIALIZED_DEFN(NetI2pDataCertificate)

NetI2pDataCertificate *NetI2pDataCertificate_NULL_CERT;
jint NetI2pDataCertificate_CERTIFICATE_LENGTH_SIGNED_WITH_HASH;

@implementation NetI2pDataCertificate

+ (NetI2pDataCertificate *)NULL_CERT {
  return NetI2pDataCertificate_NULL_CERT;
}

+ (jint)CERTIFICATE_TYPE_NULL {
  return NetI2pDataCertificate_CERTIFICATE_TYPE_NULL;
}

+ (jint)CERTIFICATE_TYPE_HASHCASH {
  return NetI2pDataCertificate_CERTIFICATE_TYPE_HASHCASH;
}

+ (jint)CERTIFICATE_TYPE_HIDDEN {
  return NetI2pDataCertificate_CERTIFICATE_TYPE_HIDDEN;
}

+ (jint)CERTIFICATE_TYPE_SIGNED {
  return NetI2pDataCertificate_CERTIFICATE_TYPE_SIGNED;
}

+ (jint)CERTIFICATE_LENGTH_SIGNED_WITH_HASH {
  return NetI2pDataCertificate_CERTIFICATE_LENGTH_SIGNED_WITH_HASH;
}

+ (jint)CERTIFICATE_TYPE_MULTIPLE {
  return NetI2pDataCertificate_CERTIFICATE_TYPE_MULTIPLE;
}

+ (jint)CERTIFICATE_TYPE_KEY {
  return NetI2pDataCertificate_CERTIFICATE_TYPE_KEY;
}

+ (NetI2pDataCertificate *)createWithByteArray:(IOSByteArray *)data
                                       withInt:(jint)off {
  return NetI2pDataCertificate_createWithByteArray_withInt_(data, off);
}

+ (NetI2pDataCertificate *)createWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  return NetI2pDataCertificate_createWithJavaIoInputStream_(inArg);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataCertificate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)type
              withByteArray:(IOSByteArray *)payload {
  NetI2pDataCertificate_initWithInt_withByteArray_(self, type, payload);
  return self;
}

- (jint)getCertificateType {
  return _type_;
}

- (void)setCertificateTypeWithInt:(jint)type {
  if (type < 0) @throw create_JavaLangIllegalArgumentException_init();
  if (_type_ != 0 && _type_ != type) @throw create_JavaLangIllegalStateException_initWithNSString_(@"already set");
  _type_ = type;
}

- (IOSByteArray *)getPayload {
  return _payload_;
}

- (void)setPayloadWithByteArray:(IOSByteArray *)payload {
  if (_payload_ != nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"already set");
  JreStrongAssign(&_payload_, payload);
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if (_type_ != 0 || _payload_ != nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"already set");
  _type_ = [((JavaIoInputStream *) nil_chk(inArg)) read];
  jint length = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 2);
  if (length > 0) {
    JreStrongAssignAndConsume(&_payload_, [IOSByteArray newArrayWithLength:length]);
    jint read = [self readWithJavaIoInputStream:inArg withByteArray:_payload_];
    if (read != length) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$I$IC", @"Not enough bytes for the payload (read: ", read, @" length: ", length, ')'));
  }
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if (_type_ < 0) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$I", @"Invalid certificate type: ", _type_));
  [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:(jbyte) _type_];
  if (_payload_ != nil) {
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 2, _payload_->size_);
    [outArg writeWithByteArray:_payload_];
  }
  else {
    NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 2, 0LL);
  }
}

- (jint)writeBytesWithByteArray:(IOSByteArray *)target
                        withInt:(jint)offset {
  jint cur = offset;
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, cur, 1, _type_);
  cur++;
  if (_payload_ != nil) {
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, cur, 2, _payload_->size_);
    cur += 2;
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_payload_, 0, target, cur, ((IOSByteArray *) nil_chk(_payload_))->size_);
    cur += ((IOSByteArray *) nil_chk(_payload_))->size_;
  }
  else {
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, cur, 2, 0);
    cur += 2;
  }
  return cur - offset;
}

- (jint)readBytesWithByteArray:(IOSByteArray *)source
                       withInt:(jint)offset {
  if (_type_ != 0 || _payload_ != nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"already set");
  if (source == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Cert is null");
  if (source->size_ < offset + 3) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$I$IC", @"Cert is too small [", source->size_, @" off=", offset, ']'));
  jint cur = offset;
  _type_ = IOSByteArray_Get(source, cur) & (jint) 0xff;
  cur++;
  jint length = (jint) NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(source, cur, 2);
  cur += 2;
  if (length > 0) {
    if (length + cur > source->size_) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$I$I$I$I", @"Payload on the certificate is insufficient (len=", source->size_, @" off=", offset, @" cur=", cur, @" payloadLen=", length));
    JreStrongAssignAndConsume(&_payload_, [IOSByteArray newArrayWithLength:length]);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(source, cur, _payload_, 0, length);
    cur += length;
  }
  return cur - offset;
}

- (jint)size {
  return 1 + 2 + (_payload_ != nil ? _payload_->size_ : 0);
}

- (NetI2pDataKeyCertificate *)toKeyCertificate {
  if (_type_ != NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"type");
  return create_NetI2pDataKeyCertificate_initWithNetI2pDataCertificate_(self);
}

- (jboolean)isEqual:(id)object {
  if (object == self) return true;
  if ((object == nil) || !([object isKindOfClass:[NetI2pDataCertificate class]])) return false;
  NetI2pDataCertificate *cert = (NetI2pDataCertificate *) cast_chk(object, [NetI2pDataCertificate class]);
  return _type_ == [((NetI2pDataCertificate *) nil_chk(cert)) getCertificateType] && JavaUtilArrays_equalsWithByteArray_withByteArray_(_payload_, [cert getPayload]);
}

- (NSUInteger)hash {
  return _type_ + NetI2pDataDataHelper_hashCodeWithByteArray_(_payload_);
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(64);
  [buf appendWithNSString:@"[Certificate: type: "];
  if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_NULL) [buf appendWithNSString:@"Null"];
  else if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) [buf appendWithNSString:@"Key"];
  else if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_HASHCASH) [buf appendWithNSString:@"HashCash"];
  else if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_HIDDEN) [buf appendWithNSString:@"Hidden"];
  else if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_SIGNED) [buf appendWithNSString:@"Signed"];
  else [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"Unknown type ("])) appendWithInt:[self getCertificateType]])) appendWithChar:')'];
  if (_payload_ == nil) {
    [buf appendWithNSString:@" payload: null"];
  }
  else {
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" payload size: "])) appendWithInt:((IOSByteArray *) nil_chk(_payload_))->size_];
    if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_HASHCASH) {
      [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" Stamp: "])) appendWithNSString:NetI2pDataDataHelper_getUTF8WithByteArray_(_payload_)];
    }
    else if ([self getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_SIGNED && ((IOSByteArray *) nil_chk(_payload_))->size_ == NetI2pDataCertificate_CERTIFICATE_LENGTH_SIGNED_WITH_HASH) {
      [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" Signed by hash: "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(_payload_, JreLoadStatic(NetI2pDataSignature, SIGNATURE_BYTES), NetI2pDataHash_HASH_LENGTH)];
    }
    else {
      jint len = 32;
      if (len > ((IOSByteArray *) nil_chk(_payload_))->size_) len = _payload_->size_;
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" first "])) appendWithInt:len])) appendWithNSString:@" bytes: "];
      [buf appendWithNSString:NetI2pDataDataHelper_toStringWithByteArray_withInt_(_payload_, len)];
    }
  }
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNetI2pDataCertificate;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataCertificate;", 0x9, 0, 3, 4, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 4, -1, -1, -1 },
    { NULL, "I", 0x1, 11, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, 1, 2, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataKeyCertificate;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 15, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(createWithByteArray:withInt:);
  methods[1].selector = @selector(createWithJavaIoInputStream:);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(initWithInt:withByteArray:);
  methods[4].selector = @selector(getCertificateType);
  methods[5].selector = @selector(setCertificateTypeWithInt:);
  methods[6].selector = @selector(getPayload);
  methods[7].selector = @selector(setPayloadWithByteArray:);
  methods[8].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[9].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[10].selector = @selector(writeBytesWithByteArray:withInt:);
  methods[11].selector = @selector(readBytesWithByteArray:withInt:);
  methods[12].selector = @selector(size);
  methods[13].selector = @selector(toKeyCertificate);
  methods[14].selector = @selector(isEqual:);
  methods[15].selector = @selector(hash);
  methods[16].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NULL_CERT", "LNetI2pDataCertificate;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "_type_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_payload_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "CERTIFICATE_TYPE_NULL", "I", .constantValue.asInt = NetI2pDataCertificate_CERTIFICATE_TYPE_NULL, 0x19, -1, -1, -1, -1 },
    { "CERTIFICATE_TYPE_HASHCASH", "I", .constantValue.asInt = NetI2pDataCertificate_CERTIFICATE_TYPE_HASHCASH, 0x19, -1, -1, -1, -1 },
    { "CERTIFICATE_TYPE_HIDDEN", "I", .constantValue.asInt = NetI2pDataCertificate_CERTIFICATE_TYPE_HIDDEN, 0x19, -1, -1, -1, -1 },
    { "CERTIFICATE_TYPE_SIGNED", "I", .constantValue.asInt = NetI2pDataCertificate_CERTIFICATE_TYPE_SIGNED, 0x19, -1, -1, -1, -1 },
    { "CERTIFICATE_LENGTH_SIGNED_WITH_HASH", "I", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "CERTIFICATE_TYPE_MULTIPLE", "I", .constantValue.asInt = NetI2pDataCertificate_CERTIFICATE_TYPE_MULTIPLE, 0x19, -1, -1, -1, -1 },
    { "CERTIFICATE_TYPE_KEY", "I", .constantValue.asInt = NetI2pDataCertificate_CERTIFICATE_TYPE_KEY, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "create", "[BI", "LNetI2pDataDataFormatException;", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "I[B", "setCertificateType", "I", "setPayload", "[B", "readBytes", "writeBytes", "LJavaIoOutputStream;", "equals", "LNSObject;", "hashCode", "toString", &NetI2pDataCertificate_NULL_CERT, &NetI2pDataCertificate_CERTIFICATE_LENGTH_SIGNED_WITH_HASH, "LNetI2pDataCertificate_NullCert;" };
  static const J2ObjcClassInfo _NetI2pDataCertificate = { "Certificate", "net.i2p.data", ptrTable, methods, fields, 7, 0x1, 17, 10, -1, 19, -1, -1, -1 };
  return &_NetI2pDataCertificate;
}

+ (void)initialize {
  if (self == [NetI2pDataCertificate class]) {
    JreStrongAssignAndConsume(&NetI2pDataCertificate_NULL_CERT, new_NetI2pDataCertificate_NullCert_init());
    NetI2pDataCertificate_CERTIFICATE_LENGTH_SIGNED_WITH_HASH = JreLoadStatic(NetI2pDataSignature, SIGNATURE_BYTES) + NetI2pDataHash_HASH_LENGTH;
    J2OBJC_SET_INITIALIZED(NetI2pDataCertificate)
  }
}

@end

NetI2pDataCertificate *NetI2pDataCertificate_createWithByteArray_withInt_(IOSByteArray *data, jint off) {
  NetI2pDataCertificate_initialize();
  jint type;
  IOSByteArray *payload;
  jint length;
  @try {
    type = IOSByteArray_Get(nil_chk(data), off) & (jint) 0xff;
    length = (jint) NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(data, off + 1, 2);
    if (type == 0 && length == 0) return NetI2pDataCertificate_NULL_CERT;
    if (length == 0) return create_NetI2pDataCertificate_initWithInt_withByteArray_(type, nil);
    payload = [IOSByteArray arrayWithLength:length];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, off + 3, payload, 0, length);
  }
  @catch (JavaLangArrayIndexOutOfBoundsException *aioobe) {
    @throw create_NetI2pDataDataFormatException_initWithNSString_withJavaLangThrowable_(@"not enough bytes", aioobe);
  }
  if (type == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) {
    if (length == 4) {
      if (JavaUtilArrays_equalsWithByteArray_withByteArray_(payload, JreLoadStatic(NetI2pDataKeyCertificate, Ed25519_PAYLOAD))) return JreLoadStatic(NetI2pDataKeyCertificate, ELG_Ed25519_CERT);
      if (JavaUtilArrays_equalsWithByteArray_withByteArray_(payload, JreLoadStatic(NetI2pDataKeyCertificate, ECDSA256_PAYLOAD))) return JreLoadStatic(NetI2pDataKeyCertificate, ELG_ECDSA256_CERT);
    }
    @try {
      return create_NetI2pDataKeyCertificate_initWithByteArray_(payload);
    }
    @catch (NetI2pDataDataFormatException *dfe) {
      @throw create_JavaLangIllegalArgumentException_initWithJavaLangThrowable_(dfe);
    }
  }
  return create_NetI2pDataCertificate_initWithInt_withByteArray_(type, payload);
}

NetI2pDataCertificate *NetI2pDataCertificate_createWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  NetI2pDataCertificate_initialize();
  jint type = [((JavaIoInputStream *) nil_chk(inArg)) read];
  jint length = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 2);
  if (type == 0 && length == 0) return NetI2pDataCertificate_NULL_CERT;
  if (length == 0) return create_NetI2pDataCertificate_initWithInt_withByteArray_(type, nil);
  IOSByteArray *payload = [IOSByteArray arrayWithLength:length];
  jint read = NetI2pDataDataHelper_readWithJavaIoInputStream_withByteArray_(inArg, payload);
  if (read != length) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$I$IC", @"Not enough bytes for the payload (read: ", read, @" length: ", length, ')'));
  if (type == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) {
    if (length == 4) {
      if (JavaUtilArrays_equalsWithByteArray_withByteArray_(payload, JreLoadStatic(NetI2pDataKeyCertificate, Ed25519_PAYLOAD))) return JreLoadStatic(NetI2pDataKeyCertificate, ELG_Ed25519_CERT);
      if (JavaUtilArrays_equalsWithByteArray_withByteArray_(payload, JreLoadStatic(NetI2pDataKeyCertificate, ECDSA256_PAYLOAD))) return JreLoadStatic(NetI2pDataKeyCertificate, ELG_ECDSA256_CERT);
    }
    return create_NetI2pDataKeyCertificate_initWithByteArray_(payload);
  }
  return create_NetI2pDataCertificate_initWithInt_withByteArray_(type, payload);
}

void NetI2pDataCertificate_init(NetI2pDataCertificate *self) {
  NetI2pDataDataStructureImpl_init(self);
}

NetI2pDataCertificate *new_NetI2pDataCertificate_init() {
  J2OBJC_NEW_IMPL(NetI2pDataCertificate, init)
}

NetI2pDataCertificate *create_NetI2pDataCertificate_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataCertificate, init)
}

void NetI2pDataCertificate_initWithInt_withByteArray_(NetI2pDataCertificate *self, jint type, IOSByteArray *payload) {
  NetI2pDataDataStructureImpl_init(self);
  if (type < 0) @throw create_JavaLangIllegalArgumentException_init();
  self->_type_ = type;
  JreStrongAssign(&self->_payload_, payload);
}

NetI2pDataCertificate *new_NetI2pDataCertificate_initWithInt_withByteArray_(jint type, IOSByteArray *payload) {
  J2OBJC_NEW_IMPL(NetI2pDataCertificate, initWithInt_withByteArray_, type, payload)
}

NetI2pDataCertificate *create_NetI2pDataCertificate_initWithInt_withByteArray_(jint type, IOSByteArray *payload) {
  J2OBJC_CREATE_IMPL(NetI2pDataCertificate, initWithInt_withByteArray_, type, payload)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataCertificate)

J2OBJC_INITIALIZED_DEFN(NetI2pDataCertificate_NullCert)

@implementation NetI2pDataCertificate_NullCert

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataCertificate_NullCert_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setCertificateTypeWithInt:(jint)type {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"Data already set");
}

- (void)setPayloadWithByteArray:(IOSByteArray *)payload {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"Data already set");
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"Data already set");
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:NetI2pDataCertificate_NullCert_NULL_DATA];
}

- (jint)writeBytesWithByteArray:(IOSByteArray *)target
                        withInt:(jint)offset {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(NetI2pDataCertificate_NullCert_NULL_DATA, 0, target, offset, NetI2pDataCertificate_NullCert_NULL_LENGTH);
  return NetI2pDataCertificate_NullCert_NULL_LENGTH;
}

- (jint)readBytesWithByteArray:(IOSByteArray *)source
                       withInt:(jint)offset {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"Data already set");
}

- (jint)size {
  return NetI2pDataCertificate_NullCert_NULL_LENGTH;
}

- (NSUInteger)hash {
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 9, -1, -1, -1 },
    { NULL, "I", 0x1, 7, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 10, 11, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setCertificateTypeWithInt:);
  methods[2].selector = @selector(setPayloadWithByteArray:);
  methods[3].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[4].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[5].selector = @selector(writeBytesWithByteArray:withInt:);
  methods[6].selector = @selector(readBytesWithByteArray:withInt:);
  methods[7].selector = @selector(size);
  methods[8].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NULL_LENGTH", "I", .constantValue.asInt = NetI2pDataCertificate_NullCert_NULL_LENGTH, 0x1a, -1, -1, -1, -1 },
    { "NULL_DATA", "[B", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
  };
  static const void *ptrTable[] = { "setCertificateType", "I", "setPayload", "[B", "readBytes", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes", "LJavaIoOutputStream;", "LJavaIoIOException;", "[BI", "LNetI2pDataDataFormatException;", "hashCode", &NetI2pDataCertificate_NullCert_NULL_DATA, "LNetI2pDataCertificate;" };
  static const J2ObjcClassInfo _NetI2pDataCertificate_NullCert = { "NullCert", "net.i2p.data", ptrTable, methods, fields, 7, 0x1a, 9, 2, 14, -1, -1, -1, -1 };
  return &_NetI2pDataCertificate_NullCert;
}

+ (void)initialize {
  if (self == [NetI2pDataCertificate_NullCert class]) {
    JreStrongAssignAndConsume(&NetI2pDataCertificate_NullCert_NULL_DATA, [IOSByteArray newArrayWithLength:NetI2pDataCertificate_NullCert_NULL_LENGTH]);
    J2OBJC_SET_INITIALIZED(NetI2pDataCertificate_NullCert)
  }
}

@end

void NetI2pDataCertificate_NullCert_init(NetI2pDataCertificate_NullCert *self) {
  NetI2pDataCertificate_init(self);
}

NetI2pDataCertificate_NullCert *new_NetI2pDataCertificate_NullCert_init() {
  J2OBJC_NEW_IMPL(NetI2pDataCertificate_NullCert, init)
}

NetI2pDataCertificate_NullCert *create_NetI2pDataCertificate_NullCert_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataCertificate_NullCert, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataCertificate_NullCert)
