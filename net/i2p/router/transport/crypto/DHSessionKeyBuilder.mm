//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/crypto/DHSessionKeyBuilder.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/Throwable.h"
#include "java/math/BigInteger.h"
#include "java/security/InvalidKeyException.h"
#include "java/util/concurrent/LinkedBlockingQueue.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/I2PException.h"
#include "net/i2p/crypto/CryptoConstants.h"
#include "net/i2p/crypto/EntropyHarvester.h"
#include "net/i2p/crypto/KeyGenerator.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/crypto/SigUtil.h"
#include "net/i2p/data/ByteArray.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/router/transport/crypto/DHSessionKeyBuilder.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/I2PThread.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/NativeBigInteger.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterTransportCryptoDHSessionKeyBuilder () {
 @public
  JavaMathBigInteger *_myPrivateValue_;
  JavaMathBigInteger *_myPublicValue_;
  JavaMathBigInteger *_peerValue_;
  NetI2pDataSessionKey *_sessionKey_;
  NetI2pDataByteArray *_extraExchangedBytes_;
}

+ (IOSByteArray *)toByteArrayWithJavaMathBigInteger:(JavaMathBigInteger *)bi;

- (NetI2pDataSessionKey *)calculateSessionKeyWithJavaMathBigInteger:(JavaMathBigInteger *)myPrivateValue
                                             withJavaMathBigInteger:(JavaMathBigInteger *)publicPeerValue;

+ (void)validatePublicWithJavaMathBigInteger:(JavaMathBigInteger *)publicValue;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder, _myPrivateValue_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder, _myPublicValue_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder, _peerValue_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder, _sessionKey_, NetI2pDataSessionKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder, _extraExchangedBytes_, NetI2pDataByteArray *)

inline NSString *NetI2pRouterTransportCryptoDHSessionKeyBuilder_get_PROP_DH_PRECALC_MIN(void);
static NSString *NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_MIN = @"crypto.dh.precalc.min";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, PROP_DH_PRECALC_MIN, NSString *)

inline NSString *NetI2pRouterTransportCryptoDHSessionKeyBuilder_get_PROP_DH_PRECALC_MAX(void);
static NSString *NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_MAX = @"crypto.dh.precalc.max";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, PROP_DH_PRECALC_MAX, NSString *)

inline NSString *NetI2pRouterTransportCryptoDHSessionKeyBuilder_get_PROP_DH_PRECALC_DELAY(void);
static NSString *NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_DELAY = @"crypto.dh.precalc.delay";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, PROP_DH_PRECALC_DELAY, NSString *)

inline jint NetI2pRouterTransportCryptoDHSessionKeyBuilder_get_DEFAULT_DH_PRECALC_MIN(void);
#define NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_MIN 20
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportCryptoDHSessionKeyBuilder, DEFAULT_DH_PRECALC_MIN, jint)

inline jint NetI2pRouterTransportCryptoDHSessionKeyBuilder_get_DEFAULT_DH_PRECALC_MAX(void);
#define NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_MAX 60
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportCryptoDHSessionKeyBuilder, DEFAULT_DH_PRECALC_MAX, jint)

inline jint NetI2pRouterTransportCryptoDHSessionKeyBuilder_get_DEFAULT_DH_PRECALC_DELAY(void);
#define NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_DELAY 25
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportCryptoDHSessionKeyBuilder, DEFAULT_DH_PRECALC_DELAY, jint)

__attribute__((unused)) static IOSByteArray *NetI2pRouterTransportCryptoDHSessionKeyBuilder_toByteArrayWithJavaMathBigInteger_(JavaMathBigInteger *bi);

__attribute__((unused)) static NetI2pDataSessionKey *NetI2pRouterTransportCryptoDHSessionKeyBuilder_calculateSessionKeyWithJavaMathBigInteger_withJavaMathBigInteger_(NetI2pRouterTransportCryptoDHSessionKeyBuilder *self, JavaMathBigInteger *myPrivateValue, JavaMathBigInteger *publicPeerValue);

__attribute__((unused)) static void NetI2pRouterTransportCryptoDHSessionKeyBuilder_validatePublicWithJavaMathBigInteger_(JavaMathBigInteger *publicValue);

@interface NetI2pRouterTransportCryptoDHSessionKeyBuilder_Factory : NSObject

@end

@interface NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner () {
 @public
  NetI2pI2PAppContext *_context_;
  NetI2pUtilLog *_log_;
  jint _minSize_;
  jint _maxSize_;
  jint _calcDelay_;
  JavaUtilConcurrentLinkedBlockingQueue *_builders_;
  volatile_jboolean _isRunning_;
  jlong _checkDelay_;
}

- (NetI2pRouterTransportCryptoDHSessionKeyBuilder *)precalc;

- (jboolean)addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder:(NetI2pRouterTransportCryptoDHSessionKeyBuilder *)builder;

- (jint)getSize;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner, _builders_, JavaUtilConcurrentLinkedBlockingQueue *)

__attribute__((unused)) static NetI2pRouterTransportCryptoDHSessionKeyBuilder *NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_precalc(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self);

__attribute__((unused)) static jboolean NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder_(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self, NetI2pRouterTransportCryptoDHSessionKeyBuilder *builder);

__attribute__((unused)) static jint NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_getSize(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self);

@implementation NetI2pRouterTransportCryptoDHSessionKeyBuilder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_initWithNetI2pI2PAppContext_(self, ctx);
  return self;
}

- (JavaMathBigInteger *)getMyPublicValue {
  return _myPublicValue_;
}

- (IOSByteArray *)getMyPublicValueBytes {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_toByteArrayWithJavaMathBigInteger_([self getMyPublicValue]);
}

+ (IOSByteArray *)toByteArrayWithJavaMathBigInteger:(JavaMathBigInteger *)bi {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_toByteArrayWithJavaMathBigInteger_(bi);
}

- (void)setPeerPublicValueWithJavaMathBigInteger:(JavaMathBigInteger *)peerVal {
  @synchronized(self) {
    if (_peerValue_ != nil) {
      if (![_peerValue_ isEqual:peerVal]) @throw create_JavaLangIllegalStateException_init();
      return;
    }
    NetI2pRouterTransportCryptoDHSessionKeyBuilder_validatePublicWithJavaMathBigInteger_(peerVal);
    JreStrongAssign(&_peerValue_, peerVal);
  }
}

- (void)setPeerPublicValueWithByteArray:(IOSByteArray *)val {
  if (((IOSByteArray *) nil_chk(val))->size_ != 256) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Peer public value must be exactly 256 bytes");
  [self setPeerPublicValueWithJavaMathBigInteger:create_NetI2pUtilNativeBigInteger_initWithInt_withByteArray_(1, val)];
}

- (JavaMathBigInteger *)getPeerPublicValue {
  @synchronized(self) {
    return JreRetainedLocalValue(_peerValue_);
  }
}

- (IOSByteArray *)getPeerPublicValueBytes {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_toByteArrayWithJavaMathBigInteger_([self getPeerPublicValue]);
}

- (NetI2pDataSessionKey *)getSessionKey {
  @synchronized(self) {
    if (_sessionKey_ != nil) return JreRetainedLocalValue(_sessionKey_);
    if (_peerValue_ != nil) {
      JreStrongAssign(&_sessionKey_, NetI2pRouterTransportCryptoDHSessionKeyBuilder_calculateSessionKeyWithJavaMathBigInteger_withJavaMathBigInteger_(self, _myPrivateValue_, _peerValue_));
    }
    else {
    }
    return JreRetainedLocalValue(_sessionKey_);
  }
}

- (NetI2pDataByteArray *)getExtraBytes {
  return _extraExchangedBytes_;
}

- (NetI2pDataSessionKey *)calculateSessionKeyWithJavaMathBigInteger:(JavaMathBigInteger *)myPrivateValue
                                             withJavaMathBigInteger:(JavaMathBigInteger *)publicPeerValue {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_calculateSessionKeyWithJavaMathBigInteger_withJavaMathBigInteger_(self, myPrivateValue, publicPeerValue);
}

+ (void)validatePublicWithJavaMathBigInteger:(JavaMathBigInteger *)publicValue {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_validatePublicWithJavaMathBigInteger_(publicValue);
}

- (void)dealloc {
  RELEASE_(_myPrivateValue_);
  RELEASE_(_myPublicValue_);
  RELEASE_(_peerValue_);
  RELEASE_(_sessionKey_);
  RELEASE_(_extraExchangedBytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1a, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 3, 2, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 5, 4, -1, -1, -1 },
    { NULL, "LJavaMathBigInteger;", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataByteArray;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSessionKey;", 0x12, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1a, 8, 2, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[2].selector = @selector(getMyPublicValue);
  methods[3].selector = @selector(getMyPublicValueBytes);
  methods[4].selector = @selector(toByteArrayWithJavaMathBigInteger:);
  methods[5].selector = @selector(setPeerPublicValueWithJavaMathBigInteger:);
  methods[6].selector = @selector(setPeerPublicValueWithByteArray:);
  methods[7].selector = @selector(getPeerPublicValue);
  methods[8].selector = @selector(getPeerPublicValueBytes);
  methods[9].selector = @selector(getSessionKey);
  methods[10].selector = @selector(getExtraBytes);
  methods[11].selector = @selector(calculateSessionKeyWithJavaMathBigInteger:withJavaMathBigInteger:);
  methods[12].selector = @selector(validatePublicWithJavaMathBigInteger:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_myPrivateValue_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_myPublicValue_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_peerValue_", "LJavaMathBigInteger;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_sessionKey_", "LNetI2pDataSessionKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_extraExchangedBytes_", "LNetI2pDataByteArray;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "PROP_DH_PRECALC_MIN", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "PROP_DH_PRECALC_MAX", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "PROP_DH_PRECALC_DELAY", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "DEFAULT_DH_PRECALC_MIN", "I", .constantValue.asInt = NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_MIN, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_DH_PRECALC_MAX", "I", .constantValue.asInt = NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_MAX, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_DH_PRECALC_DELAY", "I", .constantValue.asInt = NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_DELAY, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "toByteArray", "LJavaMathBigInteger;", "setPeerPublicValue", "LNetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException;", "[B", "calculateSessionKey", "LJavaMathBigInteger;LJavaMathBigInteger;", "validatePublic", &NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_MIN, &NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_MAX, &NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_DELAY, "LNetI2pRouterTransportCryptoDHSessionKeyBuilder_Factory;LNetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner;LNetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportCryptoDHSessionKeyBuilder = { "DHSessionKeyBuilder", "net.i2p.router.transport.crypto", ptrTable, methods, fields, 7, 0x1, 13, 11, -1, 12, -1, -1, -1 };
  return &_NetI2pRouterTransportCryptoDHSessionKeyBuilder;
}

@end

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_init(NetI2pRouterTransportCryptoDHSessionKeyBuilder *self) {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_initWithNetI2pI2PAppContext_(self, NetI2pI2PAppContext_getGlobalContext());
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder *new_NetI2pRouterTransportCryptoDHSessionKeyBuilder_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, init)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder *create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, init)
}

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_initWithNetI2pI2PAppContext_(NetI2pRouterTransportCryptoDHSessionKeyBuilder *self, NetI2pI2PAppContext *ctx) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->_myPrivateValue_, new_NetI2pUtilNativeBigInteger_initWithInt_withJavaUtilRandom_([((NetI2pCryptoKeyGenerator *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) keyGenerator])) getElGamalExponentSize], [ctx random]));
  JreStrongAssign(&self->_myPublicValue_, [((NetI2pUtilNativeBigInteger *) nil_chk(JreLoadStatic(NetI2pCryptoCryptoConstants, elgg))) modPowWithJavaMathBigInteger:self->_myPrivateValue_ withJavaMathBigInteger:JreLoadStatic(NetI2pCryptoCryptoConstants, elgp)]);
  JreStrongAssignAndConsume(&self->_extraExchangedBytes_, new_NetI2pDataByteArray_init());
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder *new_NetI2pRouterTransportCryptoDHSessionKeyBuilder_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, initWithNetI2pI2PAppContext_, ctx)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder *create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder, initWithNetI2pI2PAppContext_, ctx)
}

IOSByteArray *NetI2pRouterTransportCryptoDHSessionKeyBuilder_toByteArrayWithJavaMathBigInteger_(JavaMathBigInteger *bi) {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_initialize();
  @try {
    return NetI2pCryptoSigUtil_rectifyWithJavaMathBigInteger_withInt_(bi, 256);
  }
  @catch (JavaSecurityInvalidKeyException *ike) {
    @throw create_JavaLangIllegalArgumentException_initWithJavaLangThrowable_(ike);
  }
}

NetI2pDataSessionKey *NetI2pRouterTransportCryptoDHSessionKeyBuilder_calculateSessionKeyWithJavaMathBigInteger_withJavaMathBigInteger_(NetI2pRouterTransportCryptoDHSessionKeyBuilder *self, JavaMathBigInteger *myPrivateValue, JavaMathBigInteger *publicPeerValue) {
  jlong start = JavaLangSystem_currentTimeMillis();
  NetI2pDataSessionKey *key = create_NetI2pDataSessionKey_init();
  JavaMathBigInteger *exchangedKey = [((JavaMathBigInteger *) nil_chk(publicPeerValue)) modPowWithJavaMathBigInteger:myPrivateValue withJavaMathBigInteger:JreLoadStatic(NetI2pCryptoCryptoConstants, elgp)];
  IOSByteArray *buf = [((JavaMathBigInteger *) nil_chk(exchangedKey)) toByteArray];
  IOSByteArray *val = [IOSByteArray arrayWithLength:NetI2pDataSessionKey_KEYSIZE_BYTES];
  if (((IOSByteArray *) nil_chk(buf))->size_ < 2 * NetI2pDataSessionKey_KEYSIZE_BYTES) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, 0, val, 0, JavaLangMath_minWithInt_withInt_(buf->size_, NetI2pDataSessionKey_KEYSIZE_BYTES));
    IOSByteArray *remaining = [IOSByteArray arrayWithLength:NetI2pDataSessionKey_KEYSIZE_BYTES];
    [((NetI2pCryptoSHA256Generator *) nil_chk(NetI2pCryptoSHA256Generator_getInstance())) calculateHashWithByteArray:buf withInt:0 withInt:buf->size_ withByteArray:remaining withInt:0];
    [((NetI2pDataByteArray *) nil_chk(self->_extraExchangedBytes_)) setDataWithByteArray:remaining];
  }
  else {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, 0, val, 0, NetI2pDataSessionKey_KEYSIZE_BYTES);
    [((id<NetI2pCryptoEntropyHarvester>) nil_chk([((NetI2pUtilRandomSource *) nil_chk(NetI2pUtilRandomSource_getInstance())) harvester])) feedEntropyWithNSString:@"DH" withByteArray:buf withInt:val->size_ withInt:buf->size_ - val->size_];
    IOSByteArray *remaining = [IOSByteArray arrayWithLength:buf->size_ - val->size_];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buf, val->size_, remaining, 0, remaining->size_);
    [((NetI2pDataByteArray *) nil_chk(self->_extraExchangedBytes_)) setDataWithByteArray:remaining];
  }
  [key setDataWithByteArray:val];
  jlong end = JavaLangSystem_currentTimeMillis();
  jlong diff = end - start;
  [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) statManager])) addRateDataWithNSString:@"crypto.dhCalculateSessionTime" withLong:diff];
  return key;
}

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_validatePublicWithJavaMathBigInteger_(JavaMathBigInteger *publicValue) {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_initialize();
  jint cmp = [((JavaMathBigInteger *) nil_chk(publicValue)) compareToWithId:JreLoadStatic(JavaMathBigInteger, ONE)];
  if (cmp <= 0) @throw create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_(JreStrcat("$$", @"Public value is below two: ", [publicValue description]));
  cmp = [publicValue compareToWithId:JreLoadStatic(NetI2pCryptoCryptoConstants, elgp)];
  if (cmp >= 0) @throw create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_(JreStrcat("$$", @"Public value is above p-1: ", [publicValue description]));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportCryptoDHSessionKeyBuilder)

@implementation NetI2pRouterTransportCryptoDHSessionKeyBuilder_Factory

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNetI2pRouterTransportCryptoDHSessionKeyBuilder;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getBuilder);
  methods[1].selector = @selector(returnUnusedWithNetI2pRouterTransportCryptoDHSessionKeyBuilder:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "returnUnused", "LNetI2pRouterTransportCryptoDHSessionKeyBuilder;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportCryptoDHSessionKeyBuilder_Factory = { "Factory", "net.i2p.router.transport.crypto", ptrTable, methods, NULL, 7, 0x609, 2, 0, 1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportCryptoDHSessionKeyBuilder_Factory;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterTransportCryptoDHSessionKeyBuilder_Factory)

@implementation NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_initWithNetI2pI2PAppContext_(self, ctx);
  return self;
}

- (void)shutdown {
  JreAssignVolatileBoolean(&_isRunning_, false);
  [self interrupt];
  [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_builders_)) clear];
}

- (void)run {
  JreAssignVolatileBoolean(&_isRunning_, true);
  while (JreLoadVolatileBoolean(&_isRunning_)) {
    jint startSize = NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_getSize(self);
    if (startSize <= (_minSize_ * 2 / 3) && _checkDelay_ > 1000) _checkDelay_ -= 1000;
    else if (startSize > (_minSize_ * 3 / 2) && _checkDelay_ < 60 * 1000) _checkDelay_ += 1000;
    if (startSize < _minSize_) {
      while (NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_getSize(self) < _maxSize_ && JreLoadVolatileBoolean(&_isRunning_)) {
        jlong curStart = JavaLangSystem_currentTimeMillis();
        if (!NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder_(self, NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_precalc(self))) break;
        jlong curCalc = JavaLangSystem_currentTimeMillis() - curStart;
        if (!JavaLangThread_interrupted()) {
          @try {
            JavaLangThread_sleepWithLong_(JavaLangMath_minWithLong_withLong_(200, JavaLangMath_maxWithLong_withLong_(10, _calcDelay_ + (curCalc * 3))));
          }
          @catch (JavaLangInterruptedException *ie) {
          }
        }
      }
    }
    if (!JreLoadVolatileBoolean(&_isRunning_)) break;
    @try {
      JavaLangThread_sleepWithLong_(_checkDelay_);
    }
    @catch (JavaLangInterruptedException *ie) {
    }
  }
}

- (NetI2pRouterTransportCryptoDHSessionKeyBuilder *)getBuilder {
  [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"crypto.DHUsed" withLong:1];
  NetI2pRouterTransportCryptoDHSessionKeyBuilder *builder = [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_builders_)) poll];
  if (builder == nil) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:@"No more builders, creating one now"];
    [((NetI2pStatStatManager *) nil_chk([_context_ statManager])) addRateDataWithNSString:@"crypto.DHEmpty" withLong:1];
    builder = NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_precalc(self);
    [self interrupt];
  }
  return builder;
}

- (NetI2pRouterTransportCryptoDHSessionKeyBuilder *)precalc {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_precalc(self);
}

- (void)returnUnusedWithNetI2pRouterTransportCryptoDHSessionKeyBuilder:(NetI2pRouterTransportCryptoDHSessionKeyBuilder *)builder {
  if ([((NetI2pRouterTransportCryptoDHSessionKeyBuilder *) nil_chk(builder)) getPeerPublicValue] != nil) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"builder returned used" withJavaLangThrowable:create_JavaLangException_init()];
    return;
  }
  [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"crypto.DHReused" withLong:1];
  [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_builders_)) offerWithId:builder];
}

- (jboolean)addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder:(NetI2pRouterTransportCryptoDHSessionKeyBuilder *)builder {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder_(self, builder);
}

- (jint)getSize {
  return NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_getSize(self);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_builders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportCryptoDHSessionKeyBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportCryptoDHSessionKeyBuilder;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, 3, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x12, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(shutdown);
  methods[2].selector = @selector(run);
  methods[3].selector = @selector(getBuilder);
  methods[4].selector = @selector(precalc);
  methods[5].selector = @selector(returnUnusedWithNetI2pRouterTransportCryptoDHSessionKeyBuilder:);
  methods[6].selector = @selector(addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder:);
  methods[7].selector = @selector(getSize);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_minSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_maxSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_calcDelay_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_builders_", "LJavaUtilConcurrentLinkedBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
    { "_isRunning_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_checkDelay_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "returnUnused", "LNetI2pRouterTransportCryptoDHSessionKeyBuilder;", "addBuilder", "Ljava/util/concurrent/LinkedBlockingQueue<Lnet/i2p/router/transport/crypto/DHSessionKeyBuilder;>;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner = { "PrecalcRunner", "net.i2p.router.transport.crypto", ptrTable, methods, fields, 7, 0x9, 8, 8, 2, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner;
}

@end

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_initWithNetI2pI2PAppContext_(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self, NetI2pI2PAppContext *ctx) {
  NetI2pUtilI2PThread_initWithNSString_(self, @"DH Precalc");
  self->_checkDelay_ = 10 * 1000;
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterTransportCryptoDHSessionKeyBuilder_class_()]);
  [((NetI2pStatStatManager *) nil_chk([ctx statManager])) createRateStatWithNSString:@"crypto.dhGeneratePublicTime" withNSString:@"How long it takes to create x and X" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000 } count:1]];
  [((NetI2pStatStatManager *) nil_chk([ctx statManager])) createRateStatWithNSString:@"crypto.dhCalculateSessionTime" withNSString:@"How long it takes to create the session key" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000 } count:1]];
  [((NetI2pStatStatManager *) nil_chk([ctx statManager])) createRateStatWithNSString:@"crypto.DHUsed" withNSString:@"Need a DH from the queue" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000 } count:1]];
  [((NetI2pStatStatManager *) nil_chk([ctx statManager])) createRateStatWithNSString:@"crypto.DHReused" withNSString:@"Unused DH requeued" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000 } count:1]];
  [((NetI2pStatStatManager *) nil_chk([ctx statManager])) createRateStatWithNSString:@"crypto.DHEmpty" withNSString:@"DH queue empty" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000 } count:1]];
  jlong maxMemory = NetI2pUtilSystemVersion_getMaxMemory();
  jint factor = (jint) JavaLangMath_maxWithLong_withLong_(1l, JavaLangMath_minWithLong_withLong_(4l, 1 + (maxMemory / (128 * 1024 * 1024l))));
  jint defaultMin = NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_MIN * factor;
  jint defaultMax = NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_MAX * factor;
  self->_minSize_ = [ctx getPropertyWithNSString:NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_MIN withInt:defaultMin];
  self->_maxSize_ = [ctx getPropertyWithNSString:NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_MAX withInt:defaultMax];
  self->_calcDelay_ = [ctx getPropertyWithNSString:NetI2pRouterTransportCryptoDHSessionKeyBuilder_PROP_DH_PRECALC_DELAY withInt:NetI2pRouterTransportCryptoDHSessionKeyBuilder_DEFAULT_DH_PRECALC_DELAY];
  if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$I$I$IC", @"DH Precalc (minimum: ", self->_minSize_, @" max: ", self->_maxSize_, @", delay: ", self->_calcDelay_, ')')];
  JreStrongAssignAndConsume(&self->_builders_, new_JavaUtilConcurrentLinkedBlockingQueue_initWithInt_(self->_maxSize_));
  if (!NetI2pUtilSystemVersion_isWindows()) [self setPriorityWithInt:JavaLangThread_NORM_PRIORITY - 1];
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *new_NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner, initWithNetI2pI2PAppContext_, ctx)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner, initWithNetI2pI2PAppContext_, ctx)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder *NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_precalc(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self) {
  jlong start = JavaLangSystem_currentTimeMillis();
  NetI2pRouterTransportCryptoDHSessionKeyBuilder *builder = create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_initWithNetI2pI2PAppContext_(self->_context_);
  jlong end = JavaLangSystem_currentTimeMillis();
  jlong diff = end - start;
  [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(self->_context_)) statManager])) addRateDataWithNSString:@"crypto.dhGeneratePublicTime" withLong:diff];
  if (diff > 1000) {
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [self->_log_ warnWithNSString:JreStrcat("$J$", @"Took more than a second (", diff, @"ms) to generate local DH value")];
  }
  else {
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$J$", @"Took ", diff, @"ms to generate local DH value")];
  }
  return builder;
}

jboolean NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_addBuilderWithNetI2pRouterTransportCryptoDHSessionKeyBuilder_(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self, NetI2pRouterTransportCryptoDHSessionKeyBuilder *builder) {
  return [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(self->_builders_)) offerWithId:builder];
}

jint NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner_getSize(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner *self) {
  return [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(self->_builders_)) size];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportCryptoDHSessionKeyBuilder_PrecalcRunner)

@implementation NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)msg {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_(self, msg);
  return self;
}

- (instancetype)initWithNSString:(NSString *)msg
           withJavaLangThrowable:(JavaLangThrowable *)t {
  NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_withJavaLangThrowable_(self, msg, t);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithNSString:withJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;", "LNetI2pRouterTransportCryptoDHSessionKeyBuilder;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException = { "InvalidPublicParameterException", "net.i2p.router.transport.crypto", ptrTable, methods, NULL, 7, 0x9, 3, 0, 2, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException;
}

@end

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_init(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *self) {
  NetI2pI2PException_init(self);
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *new_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException, init)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException, init)
}

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *self, NSString *msg) {
  NetI2pI2PException_initWithNSString_(self, msg);
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *new_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_(NSString *msg) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException, initWithNSString_, msg)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_(NSString *msg) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException, initWithNSString_, msg)
}

void NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_withJavaLangThrowable_(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *self, NSString *msg, JavaLangThrowable *t) {
  NetI2pI2PException_initWithNSString_withJavaLangThrowable_(self, msg, t);
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *new_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *t) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException, initWithNSString_withJavaLangThrowable_, msg, t)
}

NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *create_NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *t) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException, initWithNSString_withJavaLangThrowable_, msg, t)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException)
