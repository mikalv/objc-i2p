//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/Signature.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Signature.h"
#include "net/i2p/data/SimpleDataStructure.h"

@interface NetI2pDataSignature () {
 @public
  NetI2pCryptoSigType *_type_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataSignature, _type_, NetI2pCryptoSigType *)

inline NetI2pCryptoSigType *NetI2pDataSignature_get_DEF_TYPE(void);
static NetI2pCryptoSigType *NetI2pDataSignature_DEF_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataSignature, DEF_TYPE, NetI2pCryptoSigType *)

__attribute__((unused)) static IOSObjectArray *NetI2pDataSignature__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(NetI2pDataSignature)

jint NetI2pDataSignature_SIGNATURE_BYTES;
IOSByteArray *NetI2pDataSignature_FAKE_SIGNATURE;

@implementation NetI2pDataSignature

+ (jint)SIGNATURE_BYTES {
  return NetI2pDataSignature_SIGNATURE_BYTES;
}

+ (IOSByteArray *)FAKE_SIGNATURE {
  return NetI2pDataSignature_FAKE_SIGNATURE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataSignature_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type {
  NetI2pDataSignature_initWithNetI2pCryptoSigType_(self, type);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  NetI2pDataSignature_initWithByteArray_(self, data);
  return self;
}

- (instancetype)initWithNetI2pCryptoSigType:(NetI2pCryptoSigType *)type
                              withByteArray:(IOSByteArray *)data {
  NetI2pDataSignature_initWithNetI2pCryptoSigType_withByteArray_(self, type, data);
  return self;
}

- (jint)length {
  return [((NetI2pCryptoSigType *) nil_chk(_type_)) getSigLen];
}

- (NetI2pCryptoSigType *)getType {
  return _type_;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(64);
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithChar:'['])) appendWithNSString:[[self java_getClass] getSimpleName]])) appendWithChar:' '])) appendWithId:_type_])) appendWithNSString:@": "];
  jint length = [self length];
  if (_data_ == nil) {
    [buf appendWithNSString:@"null"];
  }
  else if (length <= 32) {
    [buf appendWithNSString:[self toBase64]];
  }
  else {
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"size: "])) appendWithNSString:JavaLangInteger_toStringWithInt_(length)];
  }
  [buf appendWithChar:']'];
  return [buf description];
}

- (NSUInteger)hash {
  return NetI2pDataDataHelper_hashCodeWithId_(_type_) ^ ((jint) [super hash]);
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) return true;
  if (obj == nil || !([obj isKindOfClass:[NetI2pDataSignature class]])) return false;
  NetI2pDataSignature *s = (NetI2pDataSignature *) cast_chk(obj, [NetI2pDataSignature class]);
  return _type_ == s->_type_ && JavaUtilArrays_equalsWithByteArray_withByteArray_(_data_, s->_data_);
}

- (void)dealloc {
  RELEASE_(_type_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNetI2pCryptoSigType:);
  methods[2].selector = @selector(initWithByteArray:);
  methods[3].selector = @selector(initWithNetI2pCryptoSigType:withByteArray:);
  methods[4].selector = @selector(length);
  methods[5].selector = @selector(getType);
  methods[6].selector = @selector(description);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEF_TYPE", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "SIGNATURE_BYTES", "I", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "FAKE_SIGNATURE", "[B", .constantValue.asLong = 0, 0x19, -1, 9, -1, 10 },
    { "_type_", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pCryptoSigType;", "[B", "LNetI2pCryptoSigType;[B", "toString", "hashCode", "equals", "LNSObject;", &NetI2pDataSignature_DEF_TYPE, &NetI2pDataSignature_SIGNATURE_BYTES, &NetI2pDataSignature_FAKE_SIGNATURE, (void *)&NetI2pDataSignature__Annotations$0 };
  static const J2ObjcClassInfo _NetI2pDataSignature = { "Signature", "net.i2p.data", ptrTable, methods, fields, 7, 0x1, 9, 4, -1, -1, -1, -1, -1 };
  return &_NetI2pDataSignature;
}

+ (void)initialize {
  if (self == [NetI2pDataSignature class]) {
    JreStrongAssign(&NetI2pDataSignature_DEF_TYPE, JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1));
    NetI2pDataSignature_SIGNATURE_BYTES = [((NetI2pCryptoSigType *) nil_chk(NetI2pDataSignature_DEF_TYPE)) getSigLen];
    JreStrongAssignAndConsume(&NetI2pDataSignature_FAKE_SIGNATURE, [IOSByteArray newArrayWithLength:NetI2pDataSignature_SIGNATURE_BYTES]);
    J2OBJC_SET_INITIALIZED(NetI2pDataSignature)
  }
}

@end

void NetI2pDataSignature_init(NetI2pDataSignature *self) {
  NetI2pDataSignature_initWithNetI2pCryptoSigType_(self, NetI2pDataSignature_DEF_TYPE);
}

NetI2pDataSignature *new_NetI2pDataSignature_init() {
  J2OBJC_NEW_IMPL(NetI2pDataSignature, init)
}

NetI2pDataSignature *create_NetI2pDataSignature_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataSignature, init)
}

void NetI2pDataSignature_initWithNetI2pCryptoSigType_(NetI2pDataSignature *self, NetI2pCryptoSigType *type) {
  NetI2pDataSimpleDataStructure_init(self);
  if (type == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"unknown type");
  JreStrongAssign(&self->_type_, type);
}

NetI2pDataSignature *new_NetI2pDataSignature_initWithNetI2pCryptoSigType_(NetI2pCryptoSigType *type) {
  J2OBJC_NEW_IMPL(NetI2pDataSignature, initWithNetI2pCryptoSigType_, type)
}

NetI2pDataSignature *create_NetI2pDataSignature_initWithNetI2pCryptoSigType_(NetI2pCryptoSigType *type) {
  J2OBJC_CREATE_IMPL(NetI2pDataSignature, initWithNetI2pCryptoSigType_, type)
}

void NetI2pDataSignature_initWithByteArray_(NetI2pDataSignature *self, IOSByteArray *data) {
  NetI2pDataSignature_initWithNetI2pCryptoSigType_withByteArray_(self, NetI2pDataSignature_DEF_TYPE, data);
}

NetI2pDataSignature *new_NetI2pDataSignature_initWithByteArray_(IOSByteArray *data) {
  J2OBJC_NEW_IMPL(NetI2pDataSignature, initWithByteArray_, data)
}

NetI2pDataSignature *create_NetI2pDataSignature_initWithByteArray_(IOSByteArray *data) {
  J2OBJC_CREATE_IMPL(NetI2pDataSignature, initWithByteArray_, data)
}

void NetI2pDataSignature_initWithNetI2pCryptoSigType_withByteArray_(NetI2pDataSignature *self, NetI2pCryptoSigType *type, IOSByteArray *data) {
  NetI2pDataSimpleDataStructure_init(self);
  if (type == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"unknown type");
  JreStrongAssign(&self->_type_, type);
  [self setDataWithByteArray:data];
}

NetI2pDataSignature *new_NetI2pDataSignature_initWithNetI2pCryptoSigType_withByteArray_(NetI2pCryptoSigType *type, IOSByteArray *data) {
  J2OBJC_NEW_IMPL(NetI2pDataSignature, initWithNetI2pCryptoSigType_withByteArray_, type, data)
}

NetI2pDataSignature *create_NetI2pDataSignature_initWithNetI2pCryptoSigType_withByteArray_(NetI2pCryptoSigType *type, IOSByteArray *data) {
  J2OBJC_CREATE_IMPL(NetI2pDataSignature, initWithNetI2pCryptoSigType_withByteArray_, type, data)
}

IOSObjectArray *NetI2pDataSignature__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataSignature)