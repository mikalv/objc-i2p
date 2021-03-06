//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/I2CPMessageQueueImpl.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/BlockingQueue.h"
#include "java/util/concurrent/TimeUnit.h"
#include "net/i2p/data/i2cp/I2CPMessage.h"
#include "net/i2p/internal/I2CPMessageQueue.h"
#include "net/i2p/router/client/I2CPMessageQueueImpl.h"

@interface NetI2pRouterClientI2CPMessageQueueImpl () {
 @public
  id<JavaUtilConcurrentBlockingQueue> _in_;
  id<JavaUtilConcurrentBlockingQueue> _out_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterClientI2CPMessageQueueImpl, _in_, id<JavaUtilConcurrentBlockingQueue>)
J2OBJC_FIELD_SETTER(NetI2pRouterClientI2CPMessageQueueImpl, _out_, id<JavaUtilConcurrentBlockingQueue>)

@implementation NetI2pRouterClientI2CPMessageQueueImpl

- (instancetype)initWithJavaUtilConcurrentBlockingQueue:(id<JavaUtilConcurrentBlockingQueue>)inArg
                    withJavaUtilConcurrentBlockingQueue:(id<JavaUtilConcurrentBlockingQueue>)outArg {
  NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(self, inArg, outArg);
  return self;
}

- (jboolean)offerWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_out_)) offerWithId:msg];
}

- (jboolean)offerWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg
                                      withLong:(jlong)timeout {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_out_)) offerWithId:msg withLong:timeout withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
}

- (id<NetI2pDataI2cpI2CPMessage>)poll {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_in_)) poll];
}

- (void)putWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg {
  [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_out_)) putWithId:msg];
}

- (id<NetI2pDataI2cpI2CPMessage>)take {
  return [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_in_)) take];
}

- (void)dealloc {
  RELEASE_(_in_);
  RELEASE_(_out_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 4, 5, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpI2CPMessage;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 3, 5, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpI2CPMessage;", 0x1, -1, -1, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilConcurrentBlockingQueue:withJavaUtilConcurrentBlockingQueue:);
  methods[1].selector = @selector(offerWithNetI2pDataI2cpI2CPMessage:);
  methods[2].selector = @selector(offerWithNetI2pDataI2cpI2CPMessage:withLong:);
  methods[3].selector = @selector(poll);
  methods[4].selector = @selector(putWithNetI2pDataI2cpI2CPMessage:);
  methods[5].selector = @selector(take);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_in_", "LJavaUtilConcurrentBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
    { "_out_", "LJavaUtilConcurrentBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentBlockingQueue;LJavaUtilConcurrentBlockingQueue;", "(Ljava/util/concurrent/BlockingQueue<Lnet/i2p/data/i2cp/I2CPMessage;>;Ljava/util/concurrent/BlockingQueue<Lnet/i2p/data/i2cp/I2CPMessage;>;)V", "offer", "LNetI2pDataI2cpI2CPMessage;", "LNetI2pDataI2cpI2CPMessage;J", "LJavaLangInterruptedException;", "put", "Ljava/util/concurrent/BlockingQueue<Lnet/i2p/data/i2cp/I2CPMessage;>;" };
  static const J2ObjcClassInfo _NetI2pRouterClientI2CPMessageQueueImpl = { "I2CPMessageQueueImpl", "net.i2p.router.client", ptrTable, methods, fields, 7, 0x0, 6, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterClientI2CPMessageQueueImpl;
}

@end

void NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(NetI2pRouterClientI2CPMessageQueueImpl *self, id<JavaUtilConcurrentBlockingQueue> inArg, id<JavaUtilConcurrentBlockingQueue> outArg) {
  NetI2pInternalI2CPMessageQueue_init(self);
  JreStrongAssign(&self->_in_, inArg);
  JreStrongAssign(&self->_out_, outArg);
}

NetI2pRouterClientI2CPMessageQueueImpl *new_NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(id<JavaUtilConcurrentBlockingQueue> inArg, id<JavaUtilConcurrentBlockingQueue> outArg) {
  J2OBJC_NEW_IMPL(NetI2pRouterClientI2CPMessageQueueImpl, initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_, inArg, outArg)
}

NetI2pRouterClientI2CPMessageQueueImpl *create_NetI2pRouterClientI2CPMessageQueueImpl_initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_(id<JavaUtilConcurrentBlockingQueue> inArg, id<JavaUtilConcurrentBlockingQueue> outArg) {
  J2OBJC_CREATE_IMPL(NetI2pRouterClientI2CPMessageQueueImpl, initWithJavaUtilConcurrentBlockingQueue_withJavaUtilConcurrentBlockingQueue_, inArg, outArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterClientI2CPMessageQueueImpl)
