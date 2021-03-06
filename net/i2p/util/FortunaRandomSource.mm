//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/FortunaRandomSource.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/crypto/prng/AsyncFortunaStandalone.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/util/Properties.h"
#include "java/util/Random.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/EntropyHarvester.h"
#include "net/i2p/util/FortunaRandomSource.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pUtilFortunaRandomSource () {
 @public
  GnuCryptoPrngAsyncFortunaStandalone *_fortuna_;
  jdouble _nextGaussian_;
  jboolean _haveNextGaussian_;
}

- (jint)signedNextIntWithInt:(jint)n;

- (jlong)signedNextLong;

@end

J2OBJC_FIELD_SETTER(NetI2pUtilFortunaRandomSource, _fortuna_, GnuCryptoPrngAsyncFortunaStandalone *)

__attribute__((unused)) static jint NetI2pUtilFortunaRandomSource_signedNextIntWithInt_(NetI2pUtilFortunaRandomSource *self, jint n);

__attribute__((unused)) static jlong NetI2pUtilFortunaRandomSource_signedNextLong(NetI2pUtilFortunaRandomSource *self);

@implementation NetI2pUtilFortunaRandomSource

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pUtilFortunaRandomSource_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (void)shutdown {
  @synchronized(_fortuna_) {
    [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) shutdown];
  }
}

- (void)setSeedWithByteArray:(IOSByteArray *)buf {
  @synchronized(_fortuna_) {
    [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) addRandomBytesWithByteArray:buf];
  }
}

- (jint)nextIntWithInt:(jint)n {
  if (n == 0) return 0;
  jint rv = NetI2pUtilFortunaRandomSource_signedNextIntWithInt_(self, n);
  if (rv < 0) rv = 0 - rv;
  rv %= n;
  return rv;
}

- (jint)nextInt {
  return NetI2pUtilFortunaRandomSource_signedNextIntWithInt_(self, JavaLangInteger_MAX_VALUE);
}

- (jint)signedNextIntWithInt:(jint)n {
  return NetI2pUtilFortunaRandomSource_signedNextIntWithInt_(self, n);
}

- (jlong)nextLongWithLong:(jlong)n {
  if (n == 0) return 0;
  jlong rv = NetI2pUtilFortunaRandomSource_signedNextLong(self);
  if (rv < 0) rv = 0 - rv;
  rv %= n;
  return rv;
}

- (jlong)nextLong {
  return NetI2pUtilFortunaRandomSource_signedNextLong(self);
}

- (jlong)signedNextLong {
  return NetI2pUtilFortunaRandomSource_signedNextLong(self);
}

- (jboolean)nextBoolean {
  jbyte val;
  @synchronized(_fortuna_) {
    val = [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) nextByte];
  }
  return ((val & (jint) 0x01) != 0);
}

- (void)nextBytesWithByteArray:(IOSByteArray *)buf {
  @synchronized(_fortuna_) {
    [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) nextBytesWithByteArray:buf];
  }
}

- (void)nextBytesWithByteArray:(IOSByteArray *)buf
                       withInt:(jint)offset
                       withInt:(jint)length {
  @synchronized(_fortuna_) {
    [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) nextBytesWithByteArray:buf withInt:offset withInt:length];
  }
}

- (jbyte)nextByte {
  @synchronized(_fortuna_) {
    return [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) nextByte];
  }
}

- (jdouble)nextDouble {
  jlong d;
  @synchronized(_fortuna_) {
    d = (JreLShift64((jlong) [self nextBitsWithInt:26], 27)) + [self nextBitsWithInt:27];
  }
  return d / (jdouble) (JreLShift64(1LL, 53));
}

- (jfloat)nextFloat {
  jint d;
  @synchronized(_fortuna_) {
    d = [self nextBitsWithInt:24];
  }
  return d / ((jfloat) (JreLShift32(1, 24)));
}

- (jdouble)nextGaussian {
  @synchronized(self) {
    if (_haveNextGaussian_) {
      _haveNextGaussian_ = false;
      return _nextGaussian_;
    }
    jdouble v1;
    jdouble v2;
    jdouble s;
    do {
      v1 = 2 * [self nextDouble] - 1;
      v2 = 2 * [self nextDouble] - 1;
      s = v1 * v1 + v2 * v2;
    }
    while (s >= 1 || s == 0);
    jdouble multiplier = JavaLangMath_sqrtWithDouble_(-2 * JavaLangMath_logWithDouble_(s) / s);
    _nextGaussian_ = v2 * multiplier;
    _haveNextGaussian_ = true;
    return v1 * multiplier;
  }
}

- (jint)nextBitsWithInt:(jint)numBits {
  jlong rv = 0;
  jint bytes = (numBits + 7) / 8;
  for (jint i = 0; i < bytes; i++) rv += (JreLShift32(([((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) nextByte] & (jint) 0xFF), i * 8));
  if (rv < 0) rv = 0 - rv;
  jint off = 8 * bytes - numBits;
  JreURShiftAssignLong(&rv, off);
  return (jint) rv;
}

- (id<NetI2pCryptoEntropyHarvester>)harvester {
  return self;
}

- (void)feedEntropyWithNSString:(NSString *)source
                       withLong:(jlong)data
                        withInt:(jint)bitoffset
                        withInt:(jint)bits {
  @synchronized(_fortuna_) {
    [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) addRandomByteWithByte:(jbyte) (data & (jint) 0xFF)];
  }
}

- (void)feedEntropyWithNSString:(NSString *)source
                  withByteArray:(IOSByteArray *)data
                        withInt:(jint)offset
                        withInt:(jint)len {
  @try {
    @synchronized(_fortuna_) {
      [((GnuCryptoPrngAsyncFortunaStandalone *) nil_chk(_fortuna_)) addRandomBytesWithByteArray:data withInt:offset withInt:len];
    }
  }
  @catch (JavaLangRuntimeException *e) {
    NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:NetI2pUtilFortunaRandomSource_class_()];
    [((NetI2pUtilLog *) nil_chk(log)) warnWithNSString:@"feedEntropy()" withJavaLangThrowable:e];
  }
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pUtilFortunaRandomSource_mainWithNSStringArray_(args);
}

- (void)dealloc {
  RELEASE_(_fortuna_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 5, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 10, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoEntropyHarvester;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 14, 15, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(shutdown);
  methods[2].selector = @selector(setSeedWithByteArray:);
  methods[3].selector = @selector(nextIntWithInt:);
  methods[4].selector = @selector(nextInt);
  methods[5].selector = @selector(signedNextIntWithInt:);
  methods[6].selector = @selector(nextLongWithLong:);
  methods[7].selector = @selector(nextLong);
  methods[8].selector = @selector(signedNextLong);
  methods[9].selector = @selector(nextBoolean);
  methods[10].selector = @selector(nextBytesWithByteArray:);
  methods[11].selector = @selector(nextBytesWithByteArray:withInt:withInt:);
  methods[12].selector = @selector(nextByte);
  methods[13].selector = @selector(nextDouble);
  methods[14].selector = @selector(nextFloat);
  methods[15].selector = @selector(nextGaussian);
  methods[16].selector = @selector(nextBitsWithInt:);
  methods[17].selector = @selector(harvester);
  methods[18].selector = @selector(feedEntropyWithNSString:withLong:withInt:withInt:);
  methods[19].selector = @selector(feedEntropyWithNSString:withByteArray:withInt:withInt:);
  methods[20].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_fortuna_", "LGnuCryptoPrngAsyncFortunaStandalone;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_nextGaussian_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_haveNextGaussian_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "setSeed", "[B", "nextInt", "I", "signedNextInt", "nextLong", "J", "nextBytes", "[BII", "nextBits", "feedEntropy", "LNSString;JII", "LNSString;[BII", "main", "[LNSString;" };
  static const J2ObjcClassInfo _NetI2pUtilFortunaRandomSource = { "FortunaRandomSource", "net.i2p.util", ptrTable, methods, fields, 7, 0x1, 21, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilFortunaRandomSource;
}

@end

void NetI2pUtilFortunaRandomSource_initWithNetI2pI2PAppContext_(NetI2pUtilFortunaRandomSource *self, NetI2pI2PAppContext *context) {
  NetI2pUtilRandomSource_initWithNetI2pI2PAppContext_(self, context);
  JreStrongAssignAndConsume(&self->_fortuna_, new_GnuCryptoPrngAsyncFortunaStandalone_initWithNetI2pI2PAppContext_(context));
  IOSByteArray *seed = [IOSByteArray arrayWithLength:1024];
  if ([self initSeedWithByteArray:seed]) {
    [self->_fortuna_ seedWithByteArray:seed];
  }
  else {
    JavaUtilRandom *sr = create_JavaUtilRandom_init();
    [sr nextBytesWithByteArray:seed];
    [self->_fortuna_ seedWithByteArray:seed];
  }
  [self->_fortuna_ startup];
  [self->_fortuna_ nextBytesWithByteArray:seed];
  self->_haveNextGaussian_ = false;
}

NetI2pUtilFortunaRandomSource *new_NetI2pUtilFortunaRandomSource_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pUtilFortunaRandomSource, initWithNetI2pI2PAppContext_, context)
}

NetI2pUtilFortunaRandomSource *create_NetI2pUtilFortunaRandomSource_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pUtilFortunaRandomSource, initWithNetI2pI2PAppContext_, context)
}

jint NetI2pUtilFortunaRandomSource_signedNextIntWithInt_(NetI2pUtilFortunaRandomSource *self, jint n) {
  if (n <= 0) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"n must be positive");
  jint numBits;
  if (n > (jint) 0x100000) numBits = 31;
  else if (n > (jint) 0x1000) numBits = 24;
  else if (n > (jint) 0x10) numBits = 16;
  else numBits = 8;
  jint rv;
  @synchronized(self->_fortuna_) {
    rv = [self nextBitsWithInt:numBits];
  }
  return rv % n;
}

jlong NetI2pUtilFortunaRandomSource_signedNextLong(NetI2pUtilFortunaRandomSource *self) {
  @synchronized(self->_fortuna_) {
    return (JreLShift64((jlong) [self nextBitsWithInt:32], 32)) + [self nextBitsWithInt:32];
  }
}

void NetI2pUtilFortunaRandomSource_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pUtilFortunaRandomSource_initialize();
  @try {
    JavaUtilProperties *props = create_JavaUtilProperties_init();
    [props setPropertyWithNSString:@"prng.buffers" withNSString:@"12"];
    NetI2pI2PAppContext *ctx = create_NetI2pI2PAppContext_initWithJavaUtilProperties_(props);
    NetI2pUtilRandomSource *rand = [ctx random];
    IOSByteArray *buf = [IOSByteArray arrayWithLength:65536];
    while (true) {
      [((NetI2pUtilRandomSource *) nil_chk(rand)) nextBytesWithByteArray:buf];
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) writeWithByteArray:buf];
    }
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilFortunaRandomSource)
