//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/KeysAndCert.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/Certificate.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/KeyCertificate.h"
#include "net/i2p/data/KeysAndCert.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/SigningPublicKey.h"

@interface NetI2pDataKeysAndCert () {
 @public
  NetI2pDataHash *__calculatedHash_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataKeysAndCert, __calculatedHash_, NetI2pDataHash *)

@implementation NetI2pDataKeysAndCert

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataKeysAndCert_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NetI2pDataCertificate *)getCertificate {
  return _certificate_;
}

- (void)setCertificateWithNetI2pDataCertificate:(NetI2pDataCertificate *)cert {
  if (_certificate_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_certificate_, cert);
}

- (NetI2pCryptoSigType *)getSigType {
  if (_certificate_ == nil) return nil;
  if ([_certificate_ getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) {
    @try {
      NetI2pDataKeyCertificate *kcert = [((NetI2pDataCertificate *) nil_chk(_certificate_)) toKeyCertificate];
      return [((NetI2pDataKeyCertificate *) nil_chk(kcert)) getSigType];
    }
    @catch (NetI2pDataDataFormatException *dfe) {
    }
  }
  return JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1);
}

- (NetI2pDataPublicKey *)getPublicKey {
  return _publicKey_;
}

- (void)setPublicKeyWithNetI2pDataPublicKey:(NetI2pDataPublicKey *)key {
  if (_publicKey_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_publicKey_, key);
}

- (NetI2pDataSigningPublicKey *)getSigningPublicKey {
  return _signingKey_;
}

- (void)setSigningPublicKeyWithNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)key {
  if (_signingKey_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_signingKey_, key);
}

- (IOSByteArray *)getPadding {
  return _padding_;
}

- (void)setPaddingWithByteArray:(IOSByteArray *)padding {
  if (_padding_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_padding_, padding);
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if (_publicKey_ != nil || _signingKey_ != nil || _certificate_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_publicKey_, NetI2pDataPublicKey_createWithJavaIoInputStream_(inArg));
  NetI2pDataSigningPublicKey *spk = NetI2pDataSigningPublicKey_createWithJavaIoInputStream_(inArg);
  NetI2pDataCertificate *cert = NetI2pDataCertificate_createWithJavaIoInputStream_(inArg);
  if ([((NetI2pDataCertificate *) nil_chk(cert)) getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) {
    NetI2pDataKeyCertificate *kcert = [cert toKeyCertificate];
    JreStrongAssign(&_signingKey_, [((NetI2pDataSigningPublicKey *) nil_chk(spk)) toTypedKeyWithNetI2pDataKeyCertificate:kcert]);
    JreStrongAssign(&_padding_, [spk getPaddingWithNetI2pDataKeyCertificate:kcert]);
    JreStrongAssign(&_certificate_, kcert);
  }
  else {
    JreStrongAssign(&_signingKey_, spk);
    JreStrongAssign(&_certificate_, cert);
  }
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if ((_certificate_ == nil) || (_publicKey_ == nil) || (_signingKey_ == nil)) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Not enough data to format the router identity");
  [((NetI2pDataPublicKey *) nil_chk(_publicKey_)) writeBytesWithJavaIoOutputStream:outArg];
  if (_padding_ != nil) [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:_padding_];
  else if ([((NetI2pDataSigningPublicKey *) nil_chk(_signingKey_)) length] < JreLoadStatic(NetI2pDataSigningPublicKey, KEYSIZE_BYTES)) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"No padding set");
  [((NetI2pDataSigningPublicKey *) nil_chk(_signingKey_)) writeTruncatedBytesWithJavaIoOutputStream:outArg];
  [((NetI2pDataCertificate *) nil_chk(_certificate_)) writeBytesWithJavaIoOutputStream:outArg];
}

- (jboolean)isEqual:(id)object {
  if (object == self) return true;
  if ((object == nil) || !([object isKindOfClass:[NetI2pDataKeysAndCert class]])) return false;
  NetI2pDataKeysAndCert *ident = (NetI2pDataKeysAndCert *) cast_chk(object, [NetI2pDataKeysAndCert class]);
  return NetI2pDataDataHelper_eqWithId_withId_(_signingKey_, ((NetI2pDataKeysAndCert *) nil_chk(ident))->_signingKey_) && NetI2pDataDataHelper_eqWithId_withId_(_publicKey_, ident->_publicKey_) && JavaUtilArrays_equalsWithByteArray_withByteArray_(_padding_, ident->_padding_) && NetI2pDataDataHelper_eqWithId_withId_(_certificate_, ident->_certificate_);
}

- (NSUInteger)hash {
  if (_signingKey_ == nil) return 0;
  return ((jint) [_signingKey_ hash]);
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(256);
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithChar:'['])) appendWithNSString:[[self java_getClass] getSimpleName]])) appendWithNSString:@": "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tHash: "])) appendWithNSString:[((NetI2pDataHash *) nil_chk([self getHash])) toBase64]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tCertificate: "])) appendWithId:_certificate_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tPublicKey: "])) appendWithId:_publicKey_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSigningPublicKey: "])) appendWithId:_signingKey_];
  if (_padding_ != nil) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tPadding: "])) appendWithInt:((IOSByteArray *) nil_chk(_padding_))->size_])) appendWithNSString:@" bytes"];
  [buf appendWithChar:']'];
  return [buf description];
}

- (NetI2pDataHash *)calculateHash {
  return [self getHash];
}

- (NetI2pDataHash *)getHash {
  if (__calculatedHash_ != nil) return __calculatedHash_;
  IOSByteArray *identBytes;
  @try {
    JavaIoByteArrayOutputStream *baos = create_JavaIoByteArrayOutputStream_initWithInt_(400);
    [self writeBytesWithJavaIoOutputStream:baos];
    identBytes = [baos toByteArray];
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_JavaLangIllegalStateException_initWithNSString_withJavaLangThrowable_(@"KAC hash error", ioe);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_JavaLangIllegalStateException_initWithNSString_withJavaLangThrowable_(@"KAC hash error", dfe);
  }
  JreStrongAssign(&__calculatedHash_, [((NetI2pCryptoSHA256Generator *) nil_chk(NetI2pCryptoSHA256Generator_getInstance())) calculateHashWithByteArray:identBytes]);
  return __calculatedHash_;
}

- (void)dealloc {
  RELEASE_(_publicKey_);
  RELEASE_(_signingKey_);
  RELEASE_(_certificate_);
  RELEASE_(__calculatedHash_);
  RELEASE_(_padding_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataCertificate;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPublicKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSigningPublicKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 10, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 10, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 15, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getCertificate);
  methods[2].selector = @selector(setCertificateWithNetI2pDataCertificate:);
  methods[3].selector = @selector(getSigType);
  methods[4].selector = @selector(getPublicKey);
  methods[5].selector = @selector(setPublicKeyWithNetI2pDataPublicKey:);
  methods[6].selector = @selector(getSigningPublicKey);
  methods[7].selector = @selector(setSigningPublicKeyWithNetI2pDataSigningPublicKey:);
  methods[8].selector = @selector(getPadding);
  methods[9].selector = @selector(setPaddingWithByteArray:);
  methods[10].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[11].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[12].selector = @selector(isEqual:);
  methods[13].selector = @selector(hash);
  methods[14].selector = @selector(description);
  methods[15].selector = @selector(calculateHash);
  methods[16].selector = @selector(getHash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_publicKey_", "LNetI2pDataPublicKey;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_signingKey_", "LNetI2pDataSigningPublicKey;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_certificate_", "LNetI2pDataCertificate;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "__calculatedHash_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_padding_", "[B", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setCertificate", "LNetI2pDataCertificate;", "setPublicKey", "LNetI2pDataPublicKey;", "setSigningPublicKey", "LNetI2pDataSigningPublicKey;", "setPadding", "[B", "readBytes", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes", "LJavaIoOutputStream;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _NetI2pDataKeysAndCert = { "KeysAndCert", "net.i2p.data", ptrTable, methods, fields, 7, 0x1, 17, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pDataKeysAndCert;
}

@end

void NetI2pDataKeysAndCert_init(NetI2pDataKeysAndCert *self) {
  NetI2pDataDataStructureImpl_init(self);
}

NetI2pDataKeysAndCert *new_NetI2pDataKeysAndCert_init() {
  J2OBJC_NEW_IMPL(NetI2pDataKeysAndCert, init)
}

NetI2pDataKeysAndCert *create_NetI2pDataKeysAndCert_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataKeysAndCert, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataKeysAndCert)
