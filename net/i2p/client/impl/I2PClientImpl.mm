//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/I2PClientImpl.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/System.h"
#include "java/security/GeneralSecurityException.h"
#include "java/util/Properties.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/I2PException.h"
#include "net/i2p/client/I2PClient.h"
#include "net/i2p/client/I2PSession.h"
#include "net/i2p/client/impl/I2PClientImpl.h"
#include "net/i2p/client/impl/I2PSessionMuxedImpl.h"
#include "net/i2p/crypto/KeyGenerator.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/Certificate.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/KeyCertificate.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/SigningPublicKey.h"
#include "net/i2p/data/SimpleDataStructure.h"
#include "net/i2p/util/RandomSource.h"

@implementation NetI2pClientImplI2PClientImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pClientImplI2PClientImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NetI2pDataDestination *)createDestinationWithJavaIoOutputStream:(JavaIoOutputStream *)destKeyStream {
  return [self createDestinationWithJavaIoOutputStream:destKeyStream withNetI2pCryptoSigType:JreLoadStatic(NetI2pClientI2PClient, DEFAULT_SIGTYPE)];
}

- (NetI2pDataDestination *)createDestinationWithJavaIoOutputStream:(JavaIoOutputStream *)destKeyStream
                                           withNetI2pCryptoSigType:(NetI2pCryptoSigType *)type {
  NetI2pDataCertificate *cert;
  if (type == JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1)) {
    cert = JreLoadStatic(NetI2pDataCertificate, NULL_CERT);
  }
  else {
    cert = create_NetI2pDataKeyCertificate_initWithNetI2pCryptoSigType_(type);
  }
  return [self createDestinationWithJavaIoOutputStream:destKeyStream withNetI2pDataCertificate:cert];
}

- (NetI2pDataDestination *)createDestinationWithJavaIoOutputStream:(JavaIoOutputStream *)destKeyStream
                                         withNetI2pDataCertificate:(NetI2pDataCertificate *)cert {
  NetI2pDataDestination *d = create_NetI2pDataDestination_init();
  IOSObjectArray *keypair = [((NetI2pCryptoKeyGenerator *) nil_chk(NetI2pCryptoKeyGenerator_getInstance())) generatePKIKeypair];
  NetI2pDataPublicKey *publicKey = (NetI2pDataPublicKey *) cast_chk(IOSObjectArray_Get(nil_chk(keypair), 0), [NetI2pDataPublicKey class]);
  NetI2pDataPrivateKey *privateKey = (NetI2pDataPrivateKey *) cast_chk(IOSObjectArray_Get(keypair, 1), [NetI2pDataPrivateKey class]);
  IOSObjectArray *signingKeys;
  if ([((NetI2pDataCertificate *) nil_chk(cert)) getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) {
    NetI2pDataKeyCertificate *kcert = [cert toKeyCertificate];
    NetI2pCryptoSigType *type = [((NetI2pDataKeyCertificate *) nil_chk(kcert)) getSigType];
    @try {
      signingKeys = [((NetI2pCryptoKeyGenerator *) nil_chk(NetI2pCryptoKeyGenerator_getInstance())) generateSigningKeysWithNetI2pCryptoSigType:type];
    }
    @catch (JavaSecurityGeneralSecurityException *gse) {
      @throw create_NetI2pI2PException_initWithNSString_withJavaLangThrowable_(@"keygen fail", gse);
    }
  }
  else {
    signingKeys = [((NetI2pCryptoKeyGenerator *) nil_chk(NetI2pCryptoKeyGenerator_getInstance())) generateSigningKeys];
  }
  NetI2pDataSigningPublicKey *signingPubKey = (NetI2pDataSigningPublicKey *) cast_chk(IOSObjectArray_Get(nil_chk(signingKeys), 0), [NetI2pDataSigningPublicKey class]);
  NetI2pDataSigningPrivateKey *signingPrivKey = (NetI2pDataSigningPrivateKey *) cast_chk(IOSObjectArray_Get(signingKeys, 1), [NetI2pDataSigningPrivateKey class]);
  [d setPublicKeyWithNetI2pDataPublicKey:publicKey];
  [d setSigningPublicKeyWithNetI2pDataSigningPublicKey:signingPubKey];
  if ([cert getCertificateType] == NetI2pDataCertificate_CERTIFICATE_TYPE_KEY) {
    NetI2pDataKeyCertificate *kcert = [cert toKeyCertificate];
    NetI2pCryptoSigType *type = [((NetI2pDataKeyCertificate *) nil_chk(kcert)) getSigType];
    jint len = [((NetI2pCryptoSigType *) nil_chk(type)) getPubkeyLen];
    if (len < 128) {
      IOSByteArray *pad = [IOSByteArray arrayWithLength:128 - len];
      [((NetI2pUtilRandomSource *) nil_chk(NetI2pUtilRandomSource_getInstance())) nextBytesWithByteArray:pad];
      [d setPaddingWithByteArray:pad];
    }
    else if (len > 128) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((NetI2pDataSigningPublicKey *) nil_chk(signingPubKey)) getData], 128, [kcert getPayload], NetI2pDataKeyCertificate_HEADER_LENGTH, len - 128);
    }
  }
  [d setCertificateWithNetI2pDataCertificate:cert];
  [d writeBytesWithJavaIoOutputStream:destKeyStream];
  [((NetI2pDataPrivateKey *) nil_chk(privateKey)) writeBytesWithJavaIoOutputStream:destKeyStream];
  [((NetI2pDataSigningPrivateKey *) nil_chk(signingPrivKey)) writeBytesWithJavaIoOutputStream:destKeyStream];
  [((JavaIoOutputStream *) nil_chk(destKeyStream)) flush];
  return d;
}

- (id<NetI2pClientI2PSession>)createSessionWithJavaIoInputStream:(JavaIoInputStream *)destKeyStream
                                          withJavaUtilProperties:(JavaUtilProperties *)options {
  return [self createSessionWithNetI2pI2PAppContext:NetI2pI2PAppContext_getGlobalContext() withJavaIoInputStream:destKeyStream withJavaUtilProperties:options];
}

- (id<NetI2pClientI2PSession>)createSessionWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                             withJavaIoInputStream:(JavaIoInputStream *)destKeyStream
                                            withJavaUtilProperties:(JavaUtilProperties *)options {
  return create_NetI2pClientImplI2PSessionMuxedImpl_initWithNetI2pI2PAppContext_withJavaIoInputStream_withJavaUtilProperties_(context, destKeyStream, options);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, 0, 3, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, 0, 4, 2, -1, -1, -1 },
    { NULL, "LNetI2pClientI2PSession;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LNetI2pClientI2PSession;", 0x1, 5, 8, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createDestinationWithJavaIoOutputStream:);
  methods[2].selector = @selector(createDestinationWithJavaIoOutputStream:withNetI2pCryptoSigType:);
  methods[3].selector = @selector(createDestinationWithJavaIoOutputStream:withNetI2pDataCertificate:);
  methods[4].selector = @selector(createSessionWithJavaIoInputStream:withJavaUtilProperties:);
  methods[5].selector = @selector(createSessionWithNetI2pI2PAppContext:withJavaIoInputStream:withJavaUtilProperties:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createDestination", "LJavaIoOutputStream;", "LNetI2pI2PException;LJavaIoIOException;", "LJavaIoOutputStream;LNetI2pCryptoSigType;", "LJavaIoOutputStream;LNetI2pDataCertificate;", "createSession", "LJavaIoInputStream;LJavaUtilProperties;", "LNetI2pClientI2PSessionException;", "LNetI2pI2PAppContext;LJavaIoInputStream;LJavaUtilProperties;" };
  static const J2ObjcClassInfo _NetI2pClientImplI2PClientImpl = { "I2PClientImpl", "net.i2p.client.impl", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pClientImplI2PClientImpl;
}

@end

void NetI2pClientImplI2PClientImpl_init(NetI2pClientImplI2PClientImpl *self) {
  NSObject_init(self);
}

NetI2pClientImplI2PClientImpl *new_NetI2pClientImplI2PClientImpl_init() {
  J2OBJC_NEW_IMPL(NetI2pClientImplI2PClientImpl, init)
}

NetI2pClientImplI2PClientImpl *create_NetI2pClientImplI2PClientImpl_init() {
  J2OBJC_CREATE_IMPL(NetI2pClientImplI2PClientImpl, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientImplI2PClientImpl)