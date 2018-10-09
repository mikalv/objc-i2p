//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/GarlicMessageHandler.java
//

#include "J2ObjC_source.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/i2np/GarlicMessage.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/router/RouterIdentity.h"
#include "net/i2p/router/Job.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/message/GarlicMessageHandler.h"
#include "net/i2p/router/message/HandleGarlicMessageJob.h"

@interface NetI2pRouterMessageGarlicMessageHandler () {
 @public
  NetI2pRouterRouterContext *_context_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterMessageGarlicMessageHandler, _context_, NetI2pRouterRouterContext *)

@implementation NetI2pRouterMessageGarlicMessageHandler

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context {
  NetI2pRouterMessageGarlicMessageHandler_initWithNetI2pRouterRouterContext_(self, context);
  return self;
}

- (id<NetI2pRouterJob>)createJobWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)receivedMessage
                           withNetI2pDataRouterRouterIdentity:(NetI2pDataRouterRouterIdentity *)from
                                           withNetI2pDataHash:(NetI2pDataHash *)fromHash {
  NetI2pRouterMessageHandleGarlicMessageJob *job = create_NetI2pRouterMessageHandleGarlicMessageJob_initWithNetI2pRouterRouterContext_withNetI2pDataI2npGarlicMessage_withNetI2pDataRouterRouterIdentity_withNetI2pDataHash_(_context_, (NetI2pDataI2npGarlicMessage *) cast_chk(receivedMessage, [NetI2pDataI2npGarlicMessage class]), from, fromHash);
  return job;
}

- (void)dealloc {
  RELEASE_(_context_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterJob;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(createJobWithNetI2pDataI2npI2NPMessage:withNetI2pDataRouterRouterIdentity:withNetI2pDataHash:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "createJob", "LNetI2pDataI2npI2NPMessage;LNetI2pDataRouterRouterIdentity;LNetI2pDataHash;" };
  static const J2ObjcClassInfo _NetI2pRouterMessageGarlicMessageHandler = { "GarlicMessageHandler", "net.i2p.router.message", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterMessageGarlicMessageHandler;
}

@end

void NetI2pRouterMessageGarlicMessageHandler_initWithNetI2pRouterRouterContext_(NetI2pRouterMessageGarlicMessageHandler *self, NetI2pRouterRouterContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
}

NetI2pRouterMessageGarlicMessageHandler *new_NetI2pRouterMessageGarlicMessageHandler_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageGarlicMessageHandler, initWithNetI2pRouterRouterContext_, context)
}

NetI2pRouterMessageGarlicMessageHandler *create_NetI2pRouterMessageGarlicMessageHandler_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageGarlicMessageHandler, initWithNetI2pRouterRouterContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessageGarlicMessageHandler)