//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/gnu/crypto/prng/AsyncFortunaStandalone.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "gnu/crypto/prng/AsyncFortunaStandalone.h"
#include "gnu/crypto/prng/FortunaStandalone.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/security/MessageDigest.h"
#include "java/util/Collections.h"
#include "java/util/Map.h"
#include "java/util/concurrent/LinkedBlockingQueue.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/I2PThread.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@class GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer;

@interface GnuCryptoPrngAsyncFortunaStandalone () {
 @public
  jint _bufferCount_;
  jint _bufferSize_;
  id asyncBuffers_;
  NetI2pI2PAppContext *_context_;
  NetI2pUtilLog *_log_;
  volatile_jboolean _isRunning_;
  JavaLangThread *_refillThread_;
  JavaUtilConcurrentLinkedBlockingQueue *_fullBuffers_;
  JavaUtilConcurrentLinkedBlockingQueue *_emptyBuffers_;
  GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *_currentBuffer_;
}

- (void)doFillWithByteArray:(IOSByteArray *)buf;

@end

J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, asyncBuffers_, id)
J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, _refillThread_, JavaLangThread *)
J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, _fullBuffers_, JavaUtilConcurrentLinkedBlockingQueue *)
J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, _emptyBuffers_, JavaUtilConcurrentLinkedBlockingQueue *)
J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone, _currentBuffer_, GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *)

inline jint GnuCryptoPrngAsyncFortunaStandalone_get_DEFAULT_BUFFERS(void);
#define GnuCryptoPrngAsyncFortunaStandalone_DEFAULT_BUFFERS 2
J2OBJC_STATIC_FIELD_CONSTANT(GnuCryptoPrngAsyncFortunaStandalone, DEFAULT_BUFFERS, jint)

inline jint GnuCryptoPrngAsyncFortunaStandalone_get_DEFAULT_BUFSIZE(void);
#define GnuCryptoPrngAsyncFortunaStandalone_DEFAULT_BUFSIZE 262144
J2OBJC_STATIC_FIELD_CONSTANT(GnuCryptoPrngAsyncFortunaStandalone, DEFAULT_BUFSIZE, jint)

__attribute__((unused)) static void GnuCryptoPrngAsyncFortunaStandalone_doFillWithByteArray_(GnuCryptoPrngAsyncFortunaStandalone *self, IOSByteArray *buf);

@interface GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer : NSObject {
 @public
  IOSByteArray *buffer_;
}

- (instancetype)initWithInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer)

J2OBJC_FIELD_SETTER(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer, buffer_, IOSByteArray *)

__attribute__((unused)) static void GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *self, jint size);

__attribute__((unused)) static GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *new_GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(jint size) NS_RETURNS_RETAINED;

__attribute__((unused)) static GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *create_GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer)

@implementation GnuCryptoPrngAsyncFortunaStandalone

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  GnuCryptoPrngAsyncFortunaStandalone_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (void)startup {
  for (jint i = 0; i < _bufferCount_; i++) [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_emptyBuffers_)) offerWithId:create_GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(_bufferSize_)];
  JreAssignVolatileBoolean(&_isRunning_, true);
  JreStrongAssignAndConsume(&_refillThread_, new_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_(self, @"PRNG"));
  [_refillThread_ setDaemonWithBoolean:true];
  [((JavaLangThread *) nil_chk(_refillThread_)) setPriorityWithInt:JavaLangThread_NORM_PRIORITY - 2];
  [((JavaLangThread *) nil_chk(_refillThread_)) start];
}

- (void)shutdown {
  JreAssignVolatileBoolean(&_isRunning_, false);
  [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_emptyBuffers_)) clear];
  [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_fullBuffers_)) clear];
  [((JavaLangThread *) nil_chk(_refillThread_)) interrupt];
  JreStrongAssign(&_currentBuffer_, nil);
  JreVolatileStrongAssign(&buffer_, nil);
}

- (void)seedWithByteArray:(IOSByteArray *)val {
  id<JavaUtilMap> props = JavaUtilCollections_singletonMapWithId_withId_(GnuCryptoPrngFortunaStandalone_SEED, val);
  [self init__WithJavaUtilMap:props];
}

- (void)allocBuffer {
}

- (void)rotateBuffer {
  @synchronized(asyncBuffers_) {
    GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *old = _currentBuffer_;
    if (old != nil) [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_emptyBuffers_)) offerWithId:old];
    jlong before = JavaLangSystem_currentTimeMillis();
    GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *nextBuffer = nil;
    while (nextBuffer == nil) {
      if (!JreLoadVolatileBoolean(&_isRunning_)) @throw create_JavaLangIllegalStateException_initWithNSString_(@"shutdown");
      @try {
        nextBuffer = [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_fullBuffers_)) take];
      }
      @catch (JavaLangInterruptedException *ie) {
        continue;
      }
    }
    jlong waited = JavaLangSystem_currentTimeMillis() - before;
    [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"prng.bufferWaitTime" withLong:waited withLong:0];
    if (waited > 10 * 1000 && [((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [((NetI2pUtilLog *) nil_chk(_log_)) warnWithNSString:JreStrcat("$$J$", [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getName], @": Took ", waited, @"ms for a full PRNG buffer to be found")];
    JreStrongAssign(&_currentBuffer_, nextBuffer);
    JreVolatileStrongAssign(&buffer_, nextBuffer->buffer_);
  }
}

- (void)run {
  while (JreLoadVolatileBoolean(&_isRunning_)) {
    GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *aBuff = nil;
    @try {
      aBuff = [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_emptyBuffers_)) take];
    }
    @catch (JavaLangInterruptedException *ie) {
      continue;
    }
    jlong before = JavaLangSystem_currentTimeMillis();
    GnuCryptoPrngAsyncFortunaStandalone_doFillWithByteArray_(self, ((GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *) nil_chk(aBuff))->buffer_);
    jlong after = JavaLangSystem_currentTimeMillis();
    jboolean shouldWait = [((JavaUtilConcurrentLinkedBlockingQueue *) nil_chk(_fullBuffers_)) size] > 1;
    [_fullBuffers_ offerWithId:aBuff];
    [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"prng.bufferFillTime" withLong:after - before withLong:0];
    if (shouldWait) {
      JavaLangThread_yield();
      jlong waitTime = (after - before) * 5;
      if (waitTime <= 0) waitTime = 50;
      else if (waitTime > 5000) waitTime = 5000;
      @try {
        JavaLangThread_sleepWithLong_(waitTime);
      }
      @catch (JavaLangInterruptedException *ie) {
      }
    }
  }
}

- (void)fillBlock {
  [self rotateBuffer];
}

- (void)doFillWithByteArray:(IOSByteArray *)buf {
  GnuCryptoPrngAsyncFortunaStandalone_doFillWithByteArray_(self, buf);
}

- (void)dealloc {
  RELEASE_(asyncBuffers_);
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_refillThread_);
  RELEASE_(_fullBuffers_);
  RELEASE_(_emptyBuffers_);
  RELEASE_(_currentBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(startup);
  methods[2].selector = @selector(shutdown);
  methods[3].selector = @selector(seedWithByteArray:);
  methods[4].selector = @selector(allocBuffer);
  methods[5].selector = @selector(rotateBuffer);
  methods[6].selector = @selector(run);
  methods[7].selector = @selector(fillBlock);
  methods[8].selector = @selector(doFillWithByteArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_BUFFERS", "I", .constantValue.asInt = GnuCryptoPrngAsyncFortunaStandalone_DEFAULT_BUFFERS, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_BUFSIZE", "I", .constantValue.asInt = GnuCryptoPrngAsyncFortunaStandalone_DEFAULT_BUFSIZE, 0x1a, -1, -1, -1, -1 },
    { "_bufferCount_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_bufferSize_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "asyncBuffers_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_isRunning_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_refillThread_", "LJavaLangThread;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_fullBuffers_", "LJavaUtilConcurrentLinkedBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
    { "_emptyBuffers_", "LJavaUtilConcurrentLinkedBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
    { "_currentBuffer_", "LGnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "seed", "[B", "doFill", "Ljava/util/concurrent/LinkedBlockingQueue<Lgnu/crypto/prng/AsyncFortunaStandalone$AsyncBuffer;>;", "LGnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer;" };
  static const J2ObjcClassInfo _GnuCryptoPrngAsyncFortunaStandalone = { "AsyncFortunaStandalone", "gnu.crypto.prng", ptrTable, methods, fields, 7, 0x1, 9, 12, -1, 5, -1, -1, -1 };
  return &_GnuCryptoPrngAsyncFortunaStandalone;
}

@end

void GnuCryptoPrngAsyncFortunaStandalone_initWithNetI2pI2PAppContext_(GnuCryptoPrngAsyncFortunaStandalone *self, NetI2pI2PAppContext *context) {
  GnuCryptoPrngFortunaStandalone_init(self);
  JreStrongAssignAndConsume(&self->asyncBuffers_, new_NSObject_init());
  self->_bufferCount_ = JavaLangMath_maxWithInt_withInt_([((NetI2pI2PAppContext *) nil_chk(context)) getPropertyWithNSString:@"prng.buffers" withInt:GnuCryptoPrngAsyncFortunaStandalone_DEFAULT_BUFFERS], 2);
  self->_bufferSize_ = JavaLangMath_maxWithInt_withInt_([context getPropertyWithNSString:@"prng.bufferSize" withInt:GnuCryptoPrngAsyncFortunaStandalone_DEFAULT_BUFSIZE], 16 * 1024);
  JreStrongAssignAndConsume(&self->_emptyBuffers_, new_JavaUtilConcurrentLinkedBlockingQueue_initWithInt_(self->_bufferCount_));
  JreStrongAssignAndConsume(&self->_fullBuffers_, new_JavaUtilConcurrentLinkedBlockingQueue_initWithInt_(self->_bufferCount_));
  JreStrongAssign(&self->_context_, context);
  [((NetI2pStatStatManager *) nil_chk([context statManager])) createRequiredRateStatWithNSString:@"prng.bufferWaitTime" withNSString:@"Delay for random number buffer (ms)" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 1000, 10 * 60 * 1000, 60 * 60 * 1000 } count:3]];
  [((NetI2pStatStatManager *) nil_chk([context statManager])) createRequiredRateStatWithNSString:@"prng.bufferFillTime" withNSString:@"Time to fill random number buffer (ms)" withNSString:@"Encryption" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 1000, 10 * 60 * 1000, 60 * 60 * 1000 } count:3]];
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([context logManager])) getLogWithIOSClass:GnuCryptoPrngAsyncFortunaStandalone_class_()]);
}

GnuCryptoPrngAsyncFortunaStandalone *new_GnuCryptoPrngAsyncFortunaStandalone_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(GnuCryptoPrngAsyncFortunaStandalone, initWithNetI2pI2PAppContext_, context)
}

GnuCryptoPrngAsyncFortunaStandalone *create_GnuCryptoPrngAsyncFortunaStandalone_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(GnuCryptoPrngAsyncFortunaStandalone, initWithNetI2pI2PAppContext_, context)
}

void GnuCryptoPrngAsyncFortunaStandalone_doFillWithByteArray_(GnuCryptoPrngAsyncFortunaStandalone *self, IOSByteArray *buf) {
  if (self->pool0Count_ >= GnuCryptoPrngFortunaStandalone_MIN_POOL_SIZE && JavaLangSystem_currentTimeMillis() - self->lastReseed_ > 100) {
    self->reseedCount_++;
    for (jint i = 0; i < GnuCryptoPrngFortunaStandalone_NUM_POOLS; i++) {
      if (self->reseedCount_ % (JreLShift32(1, i)) == 0) {
        [((GnuCryptoPrngFortunaStandalone_Generator *) nil_chk(self->generator_)) addRandomBytesWithByteArray:[((JavaSecurityMessageDigest *) nil_chk(IOSObjectArray_Get(nil_chk(self->pools_), i))) digest]];
      }
    }
    self->lastReseed_ = JavaLangSystem_currentTimeMillis();
  }
  [((GnuCryptoPrngFortunaStandalone_Generator *) nil_chk(self->generator_)) nextBytesWithByteArray:buf];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GnuCryptoPrngAsyncFortunaStandalone)

@implementation GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer

- (instancetype)initWithInt:(jint)size {
  GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(self, size);
  return self;
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "[B", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "LGnuCryptoPrngAsyncFortunaStandalone;" };
  static const J2ObjcClassInfo _GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer = { "AsyncBuffer", "gnu.crypto.prng", ptrTable, methods, fields, 7, 0xa, 1, 1, 1, -1, -1, -1, -1 };
  return &_GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer;
}

@end

void GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *self, jint size) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->buffer_, [IOSByteArray newArrayWithLength:size]);
}

GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *new_GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer, initWithInt_, size)
}

GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer *create_GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GnuCryptoPrngAsyncFortunaStandalone_AsyncBuffer)