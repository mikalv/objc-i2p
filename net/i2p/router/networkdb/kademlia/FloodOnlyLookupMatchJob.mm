//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodOnlyLookupMatchJob.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "net/i2p/data/DatabaseEntry.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/LeaseSet.h"
#include "net/i2p/data/i2np/DatabaseSearchReplyMessage.h"
#include "net/i2p/data/i2np/DatabaseStoreMessage.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/NetworkDatabaseFacade.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/networkdb/kademlia/FloodOnlyLookupMatchJob.h"
#include "net/i2p/router/networkdb/kademlia/FloodSearchJob.h"
#include "net/i2p/router/networkdb/kademlia/UnsupportedCryptoException.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterNetworkdbKademliaFloodSearchJob *_search_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob, _search_, NetI2pRouterNetworkdbKademliaFloodSearchJob *)

@implementation NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
  withNetI2pRouterNetworkdbKademliaFloodSearchJob:(NetI2pRouterNetworkdbKademliaFloodSearchJob *)job {
  NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodSearchJob_(self, ctx, job);
  return self;
}

- (void)runJob {
  if ([((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) netDb])) lookupLocallyWithNetI2pDataHash:[((NetI2pRouterNetworkdbKademliaFloodSearchJob *) nil_chk(_search_)) getKey]] != nil) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("J$", [_search_ getJobId], @": search match and found locally")];
    [_search_ success];
  }
  else {
    [_search_ failed];
  }
}

- (NSString *)getName {
  return @"NetDb flood search match";
}

- (void)setMessageWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message {
  if ([message isKindOfClass:[NetI2pDataI2npDatabaseSearchReplyMessage class]]) {
    [((NetI2pRouterNetworkdbKademliaFloodSearchJob *) nil_chk(_search_)) failed];
    return;
  }
  @try {
    NetI2pDataI2npDatabaseStoreMessage *dsm = (NetI2pDataI2npDatabaseStoreMessage *) cast_chk(message, [NetI2pDataI2npDatabaseStoreMessage class]);
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("J$$", [((NetI2pRouterNetworkdbKademliaFloodSearchJob *) nil_chk(_search_)) getJobId], @": got a DSM for ", [((NetI2pDataHash *) nil_chk([((NetI2pDataI2npDatabaseStoreMessage *) nil_chk(dsm)) getKey])) toBase64])];
    if ([((NetI2pDataDatabaseEntry *) nil_chk([((NetI2pDataI2npDatabaseStoreMessage *) nil_chk(dsm)) getEntry])) getType] == NetI2pDataDatabaseEntry_KEY_TYPE_LEASESET) {
      NetI2pDataLeaseSet *ls = (NetI2pDataLeaseSet *) cast_chk([dsm getEntry], [NetI2pDataLeaseSet class]);
      [((NetI2pDataLeaseSet *) nil_chk(ls)) setReceivedAsReply];
      [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) netDb])) storeWithNetI2pDataHash:[dsm getKey] withNetI2pDataLeaseSet:ls];
    }
    else {
      [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) netDb])) storeWithNetI2pDataHash:[dsm getKey] withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *) cast_chk([dsm getEntry], [NetI2pDataRouterRouterInfo class])];
    }
  }
  @catch (NetI2pRouterNetworkdbKademliaUnsupportedCryptoException *uce) {
    [((NetI2pRouterNetworkdbKademliaFloodSearchJob *) nil_chk(_search_)) failed];
    return;
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    if ([_log_ shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("J$", [((NetI2pRouterNetworkdbKademliaFloodSearchJob *) nil_chk(_search_)) getJobId], @": Received an invalid store reply") withJavaLangThrowable:iae];
  }
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_search_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterNetworkdbKademliaFloodSearchJob:);
  methods[1].selector = @selector(runJob);
  methods[2].selector = @selector(getName);
  methods[3].selector = @selector(setMessageWithNetI2pDataI2npI2NPMessage:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_search_", "LNetI2pRouterNetworkdbKademliaFloodSearchJob;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterNetworkdbKademliaFloodSearchJob;", "setMessage", "LNetI2pDataI2npI2NPMessage;" };
  static const J2ObjcClassInfo _NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob = { "FloodOnlyLookupMatchJob", "net.i2p.router.networkdb.kademlia", ptrTable, methods, fields, 7, 0x0, 4, 2, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob;
}

@end

void NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodSearchJob_(NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob *self, NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaFloodSearchJob *job) {
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:[self java_getClass]]);
  JreStrongAssign(&self->_search_, job);
}

NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob *new_NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodSearchJob_(NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaFloodSearchJob *job) {
  J2OBJC_NEW_IMPL(NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob, initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodSearchJob_, ctx, job)
}

NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob *create_NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodSearchJob_(NetI2pRouterRouterContext *ctx, NetI2pRouterNetworkdbKademliaFloodSearchJob *job) {
  J2OBJC_CREATE_IMPL(NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob, initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodSearchJob_, ctx, job)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterNetworkdbKademliaFloodOnlyLookupMatchJob)
