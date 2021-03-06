//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/QueuedClientConnectionRunner.java
//

#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "net/i2p/CoreVersion.h"
#include "net/i2p/data/i2cp/I2CPMessage.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageReader.h"
#include "net/i2p/internal/I2CPMessageQueue.h"
#include "net/i2p/internal/QueuedI2CPMessageReader.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/client/ClientConnectionRunner.h"
#include "net/i2p/router/client/ClientManager.h"
#include "net/i2p/router/client/ClientMessageEventListener.h"
#include "net/i2p/router/client/QueuedClientConnectionRunner.h"

@interface NetI2pRouterClientQueuedClientConnectionRunner () {
 @public
  NetI2pInternalI2CPMessageQueue *queue_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterClientQueuedClientConnectionRunner, queue_, NetI2pInternalI2CPMessageQueue *)

@implementation NetI2pRouterClientQueuedClientConnectionRunner

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
              withNetI2pRouterClientClientManager:(NetI2pRouterClientClientManager *)manager
               withNetI2pInternalI2CPMessageQueue:(NetI2pInternalI2CPMessageQueue *)queue {
  NetI2pRouterClientQueuedClientConnectionRunner_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withNetI2pInternalI2CPMessageQueue_(self, context, manager, queue);
  return self;
}

- (void)startRunning {
  @synchronized(self) {
    JreStrongAssignAndConsume(&_reader_, new_NetI2pInternalQueuedI2CPMessageReader_initWithNetI2pInternalI2CPMessageQueue_withNetI2pDataI2cpI2CPMessageReader_I2CPMessageEventListener_(self->queue_, create_NetI2pRouterClientClientMessageEventListener_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withBoolean_(_context_, self, false)));
    [_reader_ startReading];
  }
}

- (void)stopRunning {
  @synchronized(self) {
    [super stopRunning];
    [((NetI2pInternalI2CPMessageQueue *) nil_chk(queue_)) close];
  }
}

- (void)writeMessageWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg {
  @throw create_JavaLangRuntimeException_initWithNSString_(@"huh?");
}

- (void)doSendWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)msg {
  jboolean success = [((NetI2pInternalI2CPMessageQueue *) nil_chk(queue_)) offerWithNetI2pDataI2cpI2CPMessage:msg];
  if (!success) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"I2CP write to queue failed");
}

- (void)setClientVersionWithNSString:(NSString *)version_ {
}

- (NSString *)getClientVersion {
  return NetI2pCoreVersion_VERSION;
}

- (void)dealloc {
  RELEASE_(queue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 2, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterClientClientManager:withNetI2pInternalI2CPMessageQueue:);
  methods[1].selector = @selector(startRunning);
  methods[2].selector = @selector(stopRunning);
  methods[3].selector = @selector(writeMessageWithNetI2pDataI2cpI2CPMessage:);
  methods[4].selector = @selector(doSendWithNetI2pDataI2cpI2CPMessage:);
  methods[5].selector = @selector(setClientVersionWithNSString:);
  methods[6].selector = @selector(getClientVersion);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "queue_", "LNetI2pInternalI2CPMessageQueue;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterClientClientManager;LNetI2pInternalI2CPMessageQueue;", "writeMessage", "LNetI2pDataI2cpI2CPMessage;", "doSend", "LNetI2pDataI2cpI2CPMessageException;", "setClientVersion", "LNSString;" };
  static const J2ObjcClassInfo _NetI2pRouterClientQueuedClientConnectionRunner = { "QueuedClientConnectionRunner", "net.i2p.router.client", ptrTable, methods, fields, 7, 0x0, 7, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterClientQueuedClientConnectionRunner;
}

@end

void NetI2pRouterClientQueuedClientConnectionRunner_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withNetI2pInternalI2CPMessageQueue_(NetI2pRouterClientQueuedClientConnectionRunner *self, NetI2pRouterRouterContext *context, NetI2pRouterClientClientManager *manager, NetI2pInternalI2CPMessageQueue *queue) {
  NetI2pRouterClientClientConnectionRunner_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withJavaNetSocket_(self, context, manager, nil);
  JreStrongAssign(&self->queue_, queue);
}

NetI2pRouterClientQueuedClientConnectionRunner *new_NetI2pRouterClientQueuedClientConnectionRunner_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withNetI2pInternalI2CPMessageQueue_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientManager *manager, NetI2pInternalI2CPMessageQueue *queue) {
  J2OBJC_NEW_IMPL(NetI2pRouterClientQueuedClientConnectionRunner, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withNetI2pInternalI2CPMessageQueue_, context, manager, queue)
}

NetI2pRouterClientQueuedClientConnectionRunner *create_NetI2pRouterClientQueuedClientConnectionRunner_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withNetI2pInternalI2CPMessageQueue_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientManager *manager, NetI2pInternalI2CPMessageQueue *queue) {
  J2OBJC_CREATE_IMPL(NetI2pRouterClientQueuedClientConnectionRunner, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientManager_withNetI2pInternalI2CPMessageQueue_, context, manager, queue)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterClientQueuedClientConnectionRunner)
