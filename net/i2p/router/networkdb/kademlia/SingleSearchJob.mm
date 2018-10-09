//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/SingleSearchJob.java
//

#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/DatabaseLookupMessage.h"
#include "net/i2p/router/Job.h"
#include "net/i2p/router/MessageSelector.h"
#include "net/i2p/router/OutNetMessage.h"
#include "net/i2p/router/ProfileManager.h"
#include "net/i2p/router/ReplyJob.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/TunnelInfo.h"
#include "net/i2p/router/TunnelManagerFacade.h"
#include "net/i2p/router/networkdb/kademlia/FloodOnlySearchJob.h"
#include "net/i2p/router/networkdb/kademlia/SingleSearchJob.h"
#include "net/i2p/router/transport/OutboundMessageRegistry.h"
#include "net/i2p/router/tunnel/TunnelDispatcher.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"

@interface NetI2pRouterNetworkdbKademliaSingleSearchJob () {
 @public
  NetI2pDataHash *_to_;
  NetI2pRouterOutNetMessage *_onm_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaSingleSearchJob, _to_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaSingleSearchJob, _onm_, NetI2pRouterOutNetMessage *)

inline jint NetI2pRouterNetworkdbKademliaSingleSearchJob_get_TIMEOUT(void);
#define NetI2pRouterNetworkdbKademliaSingleSearchJob_TIMEOUT 8000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbKademliaSingleSearchJob, TIMEOUT, jint)

@implementation NetI2pRouterNetworkdbKademliaSingleSearchJob

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                               withNetI2pDataHash:(NetI2pDataHash *)key
                               withNetI2pDataHash:(NetI2pDataHash *)to {
  NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(self, ctx, key, to);
  return self;
}

- (NSString *)getName {
  return @"NetDb search key from DSRM";
}

- (jboolean)shouldProcessDSRM {
  return false;
}

- (void)runJob {
  JreStrongAssign(&_onm_, [((NetI2pRouterTransportOutboundMessageRegistry *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) messageRegistry])) registerPendingWithNetI2pRouterMessageSelector:_replySelector_ withNetI2pRouterReplyJob:_onReply_ withNetI2pRouterJob:_onTimeout_]);
  NetI2pDataI2npDatabaseLookupMessage *dlm = create_NetI2pDataI2npDatabaseLookupMessage_initWithNetI2pI2PAppContext_withBoolean_([self getContext], true);
  id<NetI2pRouterTunnelInfo> replyTunnel = [((id<NetI2pRouterTunnelManagerFacade>) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) tunnelManager])) selectInboundExploratoryTunnelWithNetI2pDataHash:_to_];
  id<NetI2pRouterTunnelInfo> outTunnel = [((id<NetI2pRouterTunnelManagerFacade>) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) tunnelManager])) selectOutboundExploratoryTunnelWithNetI2pDataHash:_to_];
  if ((replyTunnel == nil) || (outTunnel == nil)) {
    [self failed];
    return;
  }
  [dlm setFromWithNetI2pDataHash:[((id<NetI2pRouterTunnelInfo>) nil_chk(replyTunnel)) getPeerWithInt:0]];
  [dlm setMessageExpirationWithLong:[((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) clock])) now] + 5 * 1000];
  [dlm setReplyTunnelWithNetI2pDataTunnelId:[replyTunnel getReceiveTunnelIdWithInt:0]];
  [dlm setSearchKeyWithNetI2pDataHash:_key_];
  [dlm setSearchTypeWithNetI2pDataI2npDatabaseLookupMessage_Type:JreLoadEnum(NetI2pDataI2npDatabaseLookupMessage_Type, RI)];
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("J$@$@", [self getJobId], @": Single search for ", _key_, @" to ", _to_)];
  [((NetI2pRouterTunnelTunnelDispatcher *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) tunnelDispatcher])) dispatchOutboundWithNetI2pDataI2npI2NPMessage:dlm withNetI2pDataTunnelId:[((id<NetI2pRouterTunnelInfo>) nil_chk(outTunnel)) getSendTunnelIdWithInt:0] withNetI2pDataHash:_to_];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(_lookupsRemaining_)) setWithInt:1];
}

- (void)failed {
  [((NetI2pRouterTransportOutboundMessageRegistry *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) messageRegistry])) unregisterPendingWithNetI2pRouterOutNetMessage:_onm_];
  [((id<NetI2pRouterProfileManager>) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) profileManager])) dbLookupFailedWithNetI2pDataHash:_to_];
}

- (void)success {
  [((id<NetI2pRouterProfileManager>) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) profileManager])) dbLookupSuccessfulWithNetI2pDataHash:_to_ withLong:JavaLangSystem_currentTimeMillis() - _created_];
}

- (void)dealloc {
  RELEASE_(_to_);
  RELEASE_(_onm_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pDataHash:withNetI2pDataHash:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(shouldProcessDSRM);
  methods[3].selector = @selector(runJob);
  methods[4].selector = @selector(failed);
  methods[5].selector = @selector(success);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_to_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_onm_", "LNetI2pRouterOutNetMessage;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "TIMEOUT", "I", .constantValue.asInt = NetI2pRouterNetworkdbKademliaSingleSearchJob_TIMEOUT, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pDataHash;LNetI2pDataHash;" };
  static const J2ObjcClassInfo _NetI2pRouterNetworkdbKademliaSingleSearchJob = { "SingleSearchJob", "net.i2p.router.networkdb.kademlia", ptrTable, methods, fields, 7, 0x0, 6, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterNetworkdbKademliaSingleSearchJob;
}

@end

void NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterNetworkdbKademliaSingleSearchJob *self, NetI2pRouterRouterContext *ctx, NetI2pDataHash *key, NetI2pDataHash *to) {
  NetI2pRouterNetworkdbKademliaFloodOnlySearchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_withNetI2pDataHash_withNetI2pRouterJob_withNetI2pRouterJob_withInt_withBoolean_(self, ctx, nil, key, nil, nil, NetI2pRouterNetworkdbKademliaSingleSearchJob_TIMEOUT, false);
  JreStrongAssign(&self->_to_, to);
}

NetI2pRouterNetworkdbKademliaSingleSearchJob *new_NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *key, NetI2pDataHash *to) {
  J2OBJC_NEW_IMPL(NetI2pRouterNetworkdbKademliaSingleSearchJob, initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_, ctx, key, to)
}

NetI2pRouterNetworkdbKademliaSingleSearchJob *create_NetI2pRouterNetworkdbKademliaSingleSearchJob_initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *ctx, NetI2pDataHash *key, NetI2pDataHash *to) {
  J2OBJC_CREATE_IMPL(NetI2pRouterNetworkdbKademliaSingleSearchJob, initWithNetI2pRouterRouterContext_withNetI2pDataHash_withNetI2pDataHash_, ctx, key, to)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterNetworkdbKademliaSingleSearchJob)
