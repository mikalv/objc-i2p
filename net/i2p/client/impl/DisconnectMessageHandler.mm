//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/DisconnectMessageHandler.java
//

#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Runnable.h"
#include "java/lang/Thread.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/client/I2PSessionException.h"
#include "net/i2p/client/impl/DisconnectMessageHandler.h"
#include "net/i2p/client/impl/HandlerImpl.h"
#include "net/i2p/client/impl/I2PSessionImpl.h"
#include "net/i2p/data/i2cp/DisconnectMessage.h"
#include "net/i2p/data/i2cp/I2CPMessage.h"
#include "net/i2p/util/I2PAppThread.h"
#include "net/i2p/util/Log.h"

@interface NetI2pClientImplDisconnectMessageHandler_Reconnector : NSObject < JavaLangRunnable > {
 @public
  NetI2pClientImplI2PSessionImpl *_session_;
}

- (instancetype)initWithNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientImplDisconnectMessageHandler_Reconnector)

J2OBJC_FIELD_SETTER(NetI2pClientImplDisconnectMessageHandler_Reconnector, _session_, NetI2pClientImplI2PSessionImpl *)

__attribute__((unused)) static void NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplDisconnectMessageHandler_Reconnector *self, NetI2pClientImplI2PSessionImpl *session);

__attribute__((unused)) static NetI2pClientImplDisconnectMessageHandler_Reconnector *new_NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl *session) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pClientImplDisconnectMessageHandler_Reconnector *create_NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl *session);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplDisconnectMessageHandler_Reconnector)

@implementation NetI2pClientImplDisconnectMessageHandler

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pClientImplDisconnectMessageHandler_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (void)handleMessageWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message
                withNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session {
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$@", @"Handle message ", message)];
  NSString *reason = [((NetI2pDataI2cpDisconnectMessage *) nil_chk(((NetI2pDataI2cpDisconnectMessage *) cast_chk(message, [NetI2pDataI2cpDisconnectMessage class])))) getReason];
  [((NetI2pClientImplI2PSessionImpl *) nil_chk(session)) propogateErrorWithNSString:reason withJavaLangThrowable:create_NetI2pClientI2PSessionException_initWithNSString_(JreStrcat("$$", @"Disconnect Message received: ", reason))];
  [session destroySessionWithBoolean:false];
  if ([((NSString *) nil_chk(reason)) java_contains:@"restart"]) {
    JavaLangThread *t = create_NetI2pUtilI2PAppThread_initWithJavaLangRunnable_withNSString_withBoolean_(create_NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(session), JreStrcat("$@", @"Reconnect ", session), true);
    [t start];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(handleMessageWithNetI2pDataI2cpI2CPMessage:withNetI2pClientImplI2PSessionImpl:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "handleMessage", "LNetI2pDataI2cpI2CPMessage;LNetI2pClientImplI2PSessionImpl;", "LNetI2pClientImplDisconnectMessageHandler_Reconnector;" };
  static const J2ObjcClassInfo _NetI2pClientImplDisconnectMessageHandler = { "DisconnectMessageHandler", "net.i2p.client.impl", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, 3, -1, -1, -1 };
  return &_NetI2pClientImplDisconnectMessageHandler;
}

@end

void NetI2pClientImplDisconnectMessageHandler_initWithNetI2pI2PAppContext_(NetI2pClientImplDisconnectMessageHandler *self, NetI2pI2PAppContext *context) {
  NetI2pClientImplHandlerImpl_initWithNetI2pI2PAppContext_withInt_(self, context, NetI2pDataI2cpDisconnectMessage_MESSAGE_TYPE);
}

NetI2pClientImplDisconnectMessageHandler *new_NetI2pClientImplDisconnectMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pClientImplDisconnectMessageHandler, initWithNetI2pI2PAppContext_, context)
}

NetI2pClientImplDisconnectMessageHandler *create_NetI2pClientImplDisconnectMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pClientImplDisconnectMessageHandler, initWithNetI2pI2PAppContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientImplDisconnectMessageHandler)

@implementation NetI2pClientImplDisconnectMessageHandler_Reconnector

- (instancetype)initWithNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session {
  NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(self, session);
  return self;
}

- (void)run {
  @try {
    JavaLangThread_sleepWithLong_(40 * 1000);
  }
  @catch (JavaLangInterruptedException *ie) {
  }
  [((NetI2pClientImplI2PSessionImpl *) nil_chk(_session_)) reconnect];
}

- (void)dealloc {
  RELEASE_(_session_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pClientImplI2PSessionImpl:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_session_", "LNetI2pClientImplI2PSessionImpl;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pClientImplI2PSessionImpl;", "LNetI2pClientImplDisconnectMessageHandler;" };
  static const J2ObjcClassInfo _NetI2pClientImplDisconnectMessageHandler_Reconnector = { "Reconnector", "net.i2p.client.impl", ptrTable, methods, fields, 7, 0xa, 2, 1, 1, -1, -1, -1, -1 };
  return &_NetI2pClientImplDisconnectMessageHandler_Reconnector;
}

@end

void NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplDisconnectMessageHandler_Reconnector *self, NetI2pClientImplI2PSessionImpl *session) {
  NSObject_init(self);
  JreStrongAssign(&self->_session_, session);
}

NetI2pClientImplDisconnectMessageHandler_Reconnector *new_NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl *session) {
  J2OBJC_NEW_IMPL(NetI2pClientImplDisconnectMessageHandler_Reconnector, initWithNetI2pClientImplI2PSessionImpl_, session)
}

NetI2pClientImplDisconnectMessageHandler_Reconnector *create_NetI2pClientImplDisconnectMessageHandler_Reconnector_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl *session) {
  J2OBJC_CREATE_IMPL(NetI2pClientImplDisconnectMessageHandler_Reconnector, initWithNetI2pClientImplI2PSessionImpl_, session)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientImplDisconnectMessageHandler_Reconnector)
