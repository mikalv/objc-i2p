//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/HMACGenerator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/security/MessageDigest.h"
#include "java/security/NoSuchAlgorithmException.h"
#include "java/util/Arrays.h"
#include "java/util/concurrent/LinkedBlockingQueue.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/HMACGenerator.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/util/SimpleByteCache.h"
#include "org/bouncycastle/oldcrypto/macs/I2PHMac.h"

@interface NetI2pCryptoHMACGenerator ()

- (void)release__WithOrgBouncycastleOldcryptoMacsI2PHMac:(OrgBouncycastleOldcryptoMacsI2PHMac *)mac;

@end

__attribute__((unused)) static void NetI2pCryptoHMACGenerator_release__WithOrgBouncycastleOldcryptoMacsI2PHMac_(NetI2pCryptoHMACGenerator *self, OrgBouncycastleOldcryptoMacsI2PHMac *mac);

__attribute__((unused)) static IOSObjectArray *NetI2pCryptoHMACGenerator__Annotations$0(void);

@implementation NetI2pCryptoHMACGenerator

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pCryptoHMACGenerator_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (NetI2pDataHash *)calculateWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key
                                        withByteArray:(IOSByteArray *)data {
  if ((key == nil) || ([((NetI2pDataSessionKey *) nil_chk(key)) getData] == nil) || (data == nil)) @throw create_JavaLangNullPointerException_initWithNSString_(@"Null arguments for HMAC");
  IOSByteArray *rv = [self acquireTmp];
  JavaUtilArrays_fillWithByteArray_withByte_(rv, (jbyte) (jint) 0x0);
  [self calculateWithNetI2pDataSessionKey:key withByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_ withByteArray:rv withInt:0];
  return create_NetI2pDataHash_initWithByteArray_(rv);
}

- (void)calculateWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key
                            withByteArray:(IOSByteArray *)data
                                  withInt:(jint)offset
                                  withInt:(jint)length
                            withByteArray:(IOSByteArray *)target
                                  withInt:(jint)targetOffset {
  if ((key == nil) || ([((NetI2pDataSessionKey *) nil_chk(key)) getData] == nil) || (data == nil)) @throw create_JavaLangNullPointerException_initWithNSString_(@"Null arguments for HMAC");
  OrgBouncycastleOldcryptoMacsI2PHMac *mac = [self acquire];
  [((OrgBouncycastleOldcryptoMacsI2PHMac *) nil_chk(mac)) init__WithByteArray:[((NetI2pDataSessionKey *) nil_chk(key)) getData]];
  [mac updateWithByteArray:data withInt:offset withInt:length];
  [mac doFinalWithByteArray:target withInt:targetOffset];
  NetI2pCryptoHMACGenerator_release__WithOrgBouncycastleOldcryptoMacsI2PHMac_(self, mac);
}

- (jboolean)verifyWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)key
                             withByteArray:(IOSByteArray *)curData
                                   withInt:(jint)curOffset
                                   withInt:(jint)curLength
                             withByteArray:(IOSByteArray *)origMAC
                                   withInt:(jint)origMACOffset
                                   withInt:(jint)origMACLength {
  if ((key == nil) || ([((NetI2pDataSessionKey *) nil_chk(key)) getData] == nil) || (curData == nil)) @throw create_JavaLangNullPointerException_initWithNSString_(@"Null arguments for HMAC");
  OrgBouncycastleOldcryptoMacsI2PHMac *mac = [self acquire];
  [((OrgBouncycastleOldcryptoMacsI2PHMac *) nil_chk(mac)) init__WithByteArray:[((NetI2pDataSessionKey *) nil_chk(key)) getData]];
  [mac updateWithByteArray:curData withInt:curOffset withInt:curLength];
  IOSByteArray *rv = [self acquireTmp];
  [mac doFinalWithByteArray:rv withInt:0];
  NetI2pCryptoHMACGenerator_release__WithOrgBouncycastleOldcryptoMacsI2PHMac_(self, mac);
  jboolean eq = NetI2pDataDataHelper_eqCTWithByteArray_withInt_withByteArray_withInt_withInt_(rv, 0, origMAC, origMACOffset, origMACLength);
  [self releaseTmpWithByteArray:rv];
  return eq;
}

- (OrgBouncycastleOldcryptoMacsI2PHMac *)acquire {
  OrgBouncycastleOldcryptoMacsI2PHMac *rv = [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_available_)) poll];
  if (rv != nil) return rv;
  @try {
    JavaSecurityMessageDigest *md = JavaSecurityMessageDigest_getInstanceWithNSString_(@"MD5");
    return create_OrgBouncycastleOldcryptoMacsI2PHMac_initWithJavaSecurityMessageDigest_withInt_(md, 32);
  }
  @catch (JavaSecurityNoSuchAlgorithmException *nsae) {
    @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"MD5");
  }
}

- (void)release__WithOrgBouncycastleOldcryptoMacsI2PHMac:(OrgBouncycastleOldcryptoMacsI2PHMac *)mac {
  NetI2pCryptoHMACGenerator_release__WithOrgBouncycastleOldcryptoMacsI2PHMac_(self, mac);
}

- (IOSByteArray *)acquireTmp {
  IOSByteArray *rv = NetI2pUtilSimpleByteCache_acquireWithInt_(NetI2pDataHash_HASH_LENGTH);
  return rv;
}

- (void)releaseTmpWithByteArray:(IOSByteArray *)tmp {
  NetI2pUtilSimpleByteCache_release__WithByteArray_(tmp);
}

- (void)dealloc {
  RELEASE_(_available_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, 1, 2, -1, -1, 3, -1 },
    { NULL, "V", 0x1, 1, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgBouncycastleOldcryptoMacsI2PHMac;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(calculateWithNetI2pDataSessionKey:withByteArray:);
  methods[2].selector = @selector(calculateWithNetI2pDataSessionKey:withByteArray:withInt:withInt:withByteArray:withInt:);
  methods[3].selector = @selector(verifyWithNetI2pDataSessionKey:withByteArray:withInt:withInt:withByteArray:withInt:withInt:);
  methods[4].selector = @selector(acquire);
  methods[5].selector = @selector(release__WithOrgBouncycastleOldcryptoMacsI2PHMac:);
  methods[6].selector = @selector(acquireTmp);
  methods[7].selector = @selector(releaseTmpWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_available_", "LJavaUtilConcurrentLinkedBlockingQueue;", .constantValue.asLong = 0, 0x14, -1, -1, 11, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "calculate", "LNetI2pDataSessionKey;[B", (void *)&NetI2pCryptoHMACGenerator__Annotations$0, "LNetI2pDataSessionKey;[BII[BI", "verify", "LNetI2pDataSessionKey;[BII[BII", "release", "LOrgBouncycastleOldcryptoMacsI2PHMac;", "releaseTmp", "[B", "Ljava/util/concurrent/LinkedBlockingQueue<Lorg/bouncycastle/oldcrypto/macs/I2PHMac;>;" };
  static const J2ObjcClassInfo _NetI2pCryptoHMACGenerator = { "HMACGenerator", "net.i2p.crypto", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoHMACGenerator;
}

@end

void NetI2pCryptoHMACGenerator_initWithNetI2pI2PAppContext_(NetI2pCryptoHMACGenerator *self, NetI2pI2PAppContext *context) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->_available_, new_JavaUtilConcurrentLinkedBlockingQueue_initWithInt_(32));
}

NetI2pCryptoHMACGenerator *new_NetI2pCryptoHMACGenerator_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pCryptoHMACGenerator, initWithNetI2pI2PAppContext_, context)
}

NetI2pCryptoHMACGenerator *create_NetI2pCryptoHMACGenerator_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoHMACGenerator, initWithNetI2pI2PAppContext_, context)
}

void NetI2pCryptoHMACGenerator_release__WithOrgBouncycastleOldcryptoMacsI2PHMac_(NetI2pCryptoHMACGenerator *self, OrgBouncycastleOldcryptoMacsI2PHMac *mac) {
  [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(self->_available_)) offerWithId:mac];
}

IOSObjectArray *NetI2pCryptoHMACGenerator__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoHMACGenerator)
