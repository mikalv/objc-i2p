//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/FloodfillDatabaseLookupMessageHandler.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/DatabaseLookupMessage.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/router/RouterIdentity.h"
#include "net/i2p/router/Job.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/networkdb/kademlia/FloodfillDatabaseLookupMessageHandler.h"
#include "net/i2p/router/networkdb/kademlia/FloodfillNetworkDatabaseFacade.h"
#include "net/i2p/router/networkdb/kademlia/HandleFloodfillDatabaseLookupMessageJob.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler () {
 @public
  NetI2pRouterRouterContext *_context_;
  NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *_facade_;
  NetI2pUtilLog *_log_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler, _facade_, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)
J2OBJC_FIELD_SETTER(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler, _log_, NetI2pUtilLog *)

@implementation NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:(NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *)facade {
  NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(self, context, facade);
  return self;
}

- (id<NetI2pRouterJob>)createJobWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)receivedMessage
                           withNetI2pDataRouterRouterIdentity:(NetI2pDataRouterRouterIdentity *)from
                                           withNetI2pDataHash:(NetI2pDataHash *)fromHash {
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"netDb.lookupsReceived" withLong:1];
  NetI2pDataI2npDatabaseLookupMessage *dlm = (NetI2pDataI2npDatabaseLookupMessage *) cast_chk(receivedMessage, [NetI2pDataI2npDatabaseLookupMessage class]);
  if (![((NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *) nil_chk(_facade_)) shouldThrottleLookupWithNetI2pDataHash:[((NetI2pDataI2npDatabaseLookupMessage *) nil_chk(dlm)) getFrom] withNetI2pDataTunnelId:[dlm getReplyTunnel]]) {
    id<NetI2pRouterJob> j = create_NetI2pRouterNetworkdbKademliaHandleFloodfillDatabaseLookupMessageJob_initWithNetI2pRouterRouterContext_withNetI2pDataI2npDatabaseLookupMessage_withNetI2pDataRouterRouterIdentity_withNetI2pDataHash_(_context_, dlm, from, fromHash);
    return j;
  }
  else {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [((NetI2pUtilLog *) nil_chk(_log_)) warnWithNSString:JreStrcat("$@$@$@", @"Dropping lookup request for ", [dlm getSearchKey], @" (throttled), reply was to: ", [dlm getFrom], @" tunnel: ", [dlm getReplyTunnel])];
    [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"netDb.lookupsDropped" withLong:1 withLong:1];
    return nil;
  }
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_facade_);
  RELEASE_(_log_);
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
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade:);
  methods[1].selector = @selector(createJobWithNetI2pDataI2npI2NPMessage:withNetI2pDataRouterRouterIdentity:withNetI2pDataHash:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_facade_", "LNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade;", "createJob", "LNetI2pDataI2npI2NPMessage;LNetI2pDataRouterRouterIdentity;LNetI2pDataHash;" };
  static const J2ObjcClassInfo _NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler = { "FloodfillDatabaseLookupMessageHandler", "net.i2p.router.networkdb.kademlia", ptrTable, methods, fields, 7, 0x1, 2, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler;
}

@end

void NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler *self, NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssign(&self->_facade_, facade);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler_class_()]);
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsReceived" withNSString:@"How many netDb lookups have we received?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsDropped" withNSString:@"How many netDb lookups did we drop due to throttling?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsHandled" withNSString:@"How many netDb lookups have we handled?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsMatched" withNSString:@"How many netDb lookups did we have the data for?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsMatchedLeaseSet" withNSString:@"How many netDb leaseSet lookups did we have the data for?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsMatchedReceivedPublished" withNSString:@"How many netDb lookups did we have the data for that were published to us?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsMatchedLocalClosest" withNSString:@"How many netDb lookups for local data were received where we are the closest peers?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsMatchedLocalNotClosest" withNSString:@"How many netDb lookups for local data were received where we are NOT the closest peers?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"netDb.lookupsMatchedRemoteNotClosest" withNSString:@"How many netDb lookups for remote data were received where we are NOT the closest peers?" withNSString:@"NetworkDatabase" withLongArray:[IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000l } count:1]];
}

NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler *new_NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade) {
  J2OBJC_NEW_IMPL(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler, initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_, context, facade)
}

NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler *create_NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler_initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_(NetI2pRouterRouterContext *context, NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade *facade) {
  J2OBJC_CREATE_IMPL(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler, initWithNetI2pRouterRouterContext_withNetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_, context, facade)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterNetworkdbKademliaFloodfillDatabaseLookupMessageHandler)