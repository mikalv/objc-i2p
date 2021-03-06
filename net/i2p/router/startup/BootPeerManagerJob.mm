//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/BootPeerManagerJob.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/PeerManagerFacade.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/startup/BootPeerManagerJob.h"

@implementation NetI2pRouterStartupBootPeerManagerJob

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterStartupBootPeerManagerJob_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (NSString *)getName {
  return @"Boot Peer Manager";
}

- (void)runJob {
  [((id<NetI2pRouterPeerManagerFacade>) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) peerManager])) startup];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(runJob);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;" };
  static const J2ObjcClassInfo _NetI2pRouterStartupBootPeerManagerJob = { "BootPeerManagerJob", "net.i2p.router.startup", ptrTable, methods, NULL, 7, 0x0, 3, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterStartupBootPeerManagerJob;
}

@end

void NetI2pRouterStartupBootPeerManagerJob_initWithNetI2pRouterRouterContext_(NetI2pRouterStartupBootPeerManagerJob *self, NetI2pRouterRouterContext *ctx) {
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
}

NetI2pRouterStartupBootPeerManagerJob *new_NetI2pRouterStartupBootPeerManagerJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupBootPeerManagerJob, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterStartupBootPeerManagerJob *create_NetI2pRouterStartupBootPeerManagerJob_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupBootPeerManagerJob, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupBootPeerManagerJob)
