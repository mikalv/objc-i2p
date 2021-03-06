//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/LookupDestJob.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Locale.h"
#include "net/i2p/client/naming/NamingService.h"
#include "net/i2p/data/Base32.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/i2cp/DestReplyMessage.h"
#include "net/i2p/data/i2cp/HostReplyMessage.h"
#include "net/i2p/data/i2cp/I2CPMessage.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/SessionId.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/NetworkDatabaseFacade.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/client/ClientConnectionRunner.h"
#include "net/i2p/router/client/LookupDestJob.h"

@interface NetI2pRouterClientLookupDestJob () {
 @public
  NetI2pRouterClientClientConnectionRunner *_runner_;
  jlong _reqID_;
  jlong _timeout_;
  NetI2pDataHash *_hash_;
  NSString *_name_;
  NetI2pDataI2cpSessionId *_sessID_;
  NetI2pDataHash *_fromLocalDest_;
}

- (void)returnDestWithNetI2pDataDestination:(NetI2pDataDestination *)d;

- (void)returnFail;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterClientLookupDestJob, _runner_, NetI2pRouterClientClientConnectionRunner *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientLookupDestJob, _hash_, NetI2pDataHash *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientLookupDestJob, _name_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientLookupDestJob, _sessID_, NetI2pDataI2cpSessionId *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientLookupDestJob, _fromLocalDest_, NetI2pDataHash *)

inline jlong NetI2pRouterClientLookupDestJob_get_DEFAULT_TIMEOUT(void);
#define NetI2pRouterClientLookupDestJob_DEFAULT_TIMEOUT 15000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterClientLookupDestJob, DEFAULT_TIMEOUT, jlong)

__attribute__((unused)) static void NetI2pRouterClientLookupDestJob_returnDestWithNetI2pDataDestination_(NetI2pRouterClientLookupDestJob *self, NetI2pDataDestination *d);

__attribute__((unused)) static void NetI2pRouterClientLookupDestJob_returnFail(NetI2pRouterClientLookupDestJob *self);

@interface NetI2pRouterClientLookupDestJob_DoneJob : NetI2pRouterJobImpl {
 @public
  NetI2pRouterClientLookupDestJob *this$0_;
}

- (instancetype)initWithNetI2pRouterClientLookupDestJob:(NetI2pRouterClientLookupDestJob *)outer$
                          withNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)enclosingContext;

- (NSString *)getName;

- (void)runJob;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterClientLookupDestJob_DoneJob)

__attribute__((unused)) static void NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(NetI2pRouterClientLookupDestJob_DoneJob *self, NetI2pRouterClientLookupDestJob *outer$, NetI2pRouterRouterContext *enclosingContext);

__attribute__((unused)) static NetI2pRouterClientLookupDestJob_DoneJob *new_NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(NetI2pRouterClientLookupDestJob *outer$, NetI2pRouterRouterContext *enclosingContext) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterClientLookupDestJob_DoneJob *create_NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(NetI2pRouterClientLookupDestJob *outer$, NetI2pRouterRouterContext *enclosingContext);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterClientLookupDestJob_DoneJob)

@implementation NetI2pRouterClientLookupDestJob

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
     withNetI2pRouterClientClientConnectionRunner:(NetI2pRouterClientClientConnectionRunner *)runner
                               withNetI2pDataHash:(NetI2pDataHash *)h
                               withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest {
  NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(self, context, runner, h, fromLocalDest);
  return self;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
     withNetI2pRouterClientClientConnectionRunner:(NetI2pRouterClientClientConnectionRunner *)runner
                                         withLong:(jlong)reqID
                                         withLong:(jlong)timeout
                      withNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)sessID
                               withNetI2pDataHash:(NetI2pDataHash *)h
                                     withNSString:(NSString *)name
                               withNetI2pDataHash:(NetI2pDataHash *)fromLocalDest {
  NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(self, context, runner, reqID, timeout, sessID, h, name, fromLocalDest);
  return self;
}

- (NSString *)getName {
  return _name_ != nil ? @"HostName Lookup for Client" : @"LeaseSet Lookup for Client";
}

- (void)runJob {
  if (_name_ != nil) {
    NetI2pDataDestination *d = [((NetI2pClientNamingNamingService *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) namingService])) lookupWithNSString:_name_];
    if (d != nil) NetI2pRouterClientLookupDestJob_returnDestWithNetI2pDataDestination_(self, d);
    else NetI2pRouterClientLookupDestJob_returnFail(self);
  }
  else {
    NetI2pRouterClientLookupDestJob_DoneJob *done = create_NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(self, [self getContext]);
    [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) netDb])) lookupDestinationWithNetI2pDataHash:_hash_ withNetI2pRouterJob:done withLong:_timeout_ withNetI2pDataHash:_fromLocalDest_];
  }
}

- (void)returnDestWithNetI2pDataDestination:(NetI2pDataDestination *)d {
  NetI2pRouterClientLookupDestJob_returnDestWithNetI2pDataDestination_(self, d);
}

- (void)returnFail {
  NetI2pRouterClientLookupDestJob_returnFail(self);
}

- (void)dealloc {
  RELEASE_(_runner_);
  RELEASE_(_hash_);
  RELEASE_(_name_);
  RELEASE_(_sessID_);
  RELEASE_(_fromLocalDest_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterClientClientConnectionRunner:withNetI2pDataHash:withNetI2pDataHash:);
  methods[1].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterClientClientConnectionRunner:withLong:withLong:withNetI2pDataI2cpSessionId:withNetI2pDataHash:withNSString:withNetI2pDataHash:);
  methods[2].selector = @selector(getName);
  methods[3].selector = @selector(runJob);
  methods[4].selector = @selector(returnDestWithNetI2pDataDestination:);
  methods[5].selector = @selector(returnFail);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_runner_", "LNetI2pRouterClientClientConnectionRunner;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_reqID_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_timeout_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_hash_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_sessID_", "LNetI2pDataI2cpSessionId;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_fromLocalDest_", "LNetI2pDataHash;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "DEFAULT_TIMEOUT", "J", .constantValue.asLong = NetI2pRouterClientLookupDestJob_DEFAULT_TIMEOUT, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterClientClientConnectionRunner;LNetI2pDataHash;LNetI2pDataHash;", "LNetI2pRouterRouterContext;LNetI2pRouterClientClientConnectionRunner;JJLNetI2pDataI2cpSessionId;LNetI2pDataHash;LNSString;LNetI2pDataHash;", "returnDest", "LNetI2pDataDestination;", "LNetI2pRouterClientLookupDestJob_DoneJob;" };
  static const J2ObjcClassInfo _NetI2pRouterClientLookupDestJob = { "LookupDestJob", "net.i2p.router.client", ptrTable, methods, fields, 7, 0x0, 6, 8, -1, 4, -1, -1, -1 };
  return &_NetI2pRouterClientLookupDestJob;
}

@end

void NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterClientLookupDestJob *self, NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataHash *h, NetI2pDataHash *fromLocalDest) {
  NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(self, context, runner, -1, NetI2pRouterClientLookupDestJob_DEFAULT_TIMEOUT, nil, h, nil, fromLocalDest);
}

NetI2pRouterClientLookupDestJob *new_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataHash *h, NetI2pDataHash *fromLocalDest) {
  J2OBJC_NEW_IMPL(NetI2pRouterClientLookupDestJob, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_, context, runner, h, fromLocalDest)
}

NetI2pRouterClientLookupDestJob *create_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, NetI2pDataHash *h, NetI2pDataHash *fromLocalDest) {
  J2OBJC_CREATE_IMPL(NetI2pRouterClientLookupDestJob, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withNetI2pDataHash_withNetI2pDataHash_, context, runner, h, fromLocalDest)
}

void NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(NetI2pRouterClientLookupDestJob *self, NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jlong reqID, jlong timeout, NetI2pDataI2cpSessionId *sessID, NetI2pDataHash *h, NSString *name, NetI2pDataHash *fromLocalDest) {
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, context);
  if ((h == nil && name == nil) || (h != nil && name != nil) || (reqID >= 0 && sessID == nil) || (reqID < 0 && name != nil)) @throw create_JavaLangIllegalArgumentException_init();
  JreStrongAssign(&self->_runner_, runner);
  self->_reqID_ = reqID;
  self->_timeout_ = timeout;
  JreStrongAssign(&self->_sessID_, sessID);
  JreStrongAssign(&self->_fromLocalDest_, fromLocalDest);
  if (name != nil && [name java_length] == 60) {
    NSString *nlc = [name java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
    if ([((NSString *) nil_chk(nlc)) java_hasSuffix:@".b32.i2p"]) {
      IOSByteArray *b = NetI2pDataBase32_decodeWithNSString_([nlc java_substring:0 endIndex:52]);
      if (b != nil && b->size_ == NetI2pDataHash_HASH_LENGTH) {
        h = NetI2pDataHash_createWithByteArray_(b);
        name = nil;
      }
    }
  }
  JreStrongAssign(&self->_hash_, h);
  JreStrongAssign(&self->_name_, name);
}

NetI2pRouterClientLookupDestJob *new_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jlong reqID, jlong timeout, NetI2pDataI2cpSessionId *sessID, NetI2pDataHash *h, NSString *name, NetI2pDataHash *fromLocalDest) {
  J2OBJC_NEW_IMPL(NetI2pRouterClientLookupDestJob, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_, context, runner, reqID, timeout, sessID, h, name, fromLocalDest)
}

NetI2pRouterClientLookupDestJob *create_NetI2pRouterClientLookupDestJob_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jlong reqID, jlong timeout, NetI2pDataI2cpSessionId *sessID, NetI2pDataHash *h, NSString *name, NetI2pDataHash *fromLocalDest) {
  J2OBJC_CREATE_IMPL(NetI2pRouterClientLookupDestJob, initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withLong_withLong_withNetI2pDataI2cpSessionId_withNetI2pDataHash_withNSString_withNetI2pDataHash_, context, runner, reqID, timeout, sessID, h, name, fromLocalDest)
}

void NetI2pRouterClientLookupDestJob_returnDestWithNetI2pDataDestination_(NetI2pRouterClientLookupDestJob *self, NetI2pDataDestination *d) {
  id<NetI2pDataI2cpI2CPMessage> msg;
  if (self->_reqID_ >= 0) msg = create_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withNetI2pDataDestination_withLong_(self->_sessID_, d, self->_reqID_);
  else msg = create_NetI2pDataI2cpDestReplyMessage_initWithNetI2pDataDestination_(d);
  @try {
    [((NetI2pRouterClientClientConnectionRunner *) nil_chk(self->_runner_)) doSendWithNetI2pDataI2cpI2CPMessage:msg];
  }
  @catch (NetI2pDataI2cpI2CPMessageException *ime) {
  }
}

void NetI2pRouterClientLookupDestJob_returnFail(NetI2pRouterClientLookupDestJob *self) {
  id<NetI2pDataI2cpI2CPMessage> msg;
  if (self->_reqID_ >= 0) msg = create_NetI2pDataI2cpHostReplyMessage_initWithNetI2pDataI2cpSessionId_withInt_withLong_(self->_sessID_, NetI2pDataI2cpHostReplyMessage_RESULT_FAILURE, self->_reqID_);
  else msg = create_NetI2pDataI2cpDestReplyMessage_initWithNetI2pDataHash_(self->_hash_);
  @try {
    [((NetI2pRouterClientClientConnectionRunner *) nil_chk(self->_runner_)) doSendWithNetI2pDataI2cpI2CPMessage:msg];
  }
  @catch (NetI2pDataI2cpI2CPMessageException *ime) {
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterClientLookupDestJob)

@implementation NetI2pRouterClientLookupDestJob_DoneJob

- (instancetype)initWithNetI2pRouterClientLookupDestJob:(NetI2pRouterClientLookupDestJob *)outer$
                          withNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)enclosingContext {
  NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(self, outer$, enclosingContext);
  return self;
}

- (NSString *)getName {
  return @"LeaseSet Lookup Reply to Client";
}

- (void)runJob {
  NetI2pDataDestination *dest = [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) netDb])) lookupDestinationLocallyWithNetI2pDataHash:this$0_->_hash_];
  if (dest != nil) NetI2pRouterClientLookupDestJob_returnDestWithNetI2pDataDestination_(this$0_, dest);
  else NetI2pRouterClientLookupDestJob_returnFail(this$0_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
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
  methods[0].selector = @selector(initWithNetI2pRouterClientLookupDestJob:withNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(runJob);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterClientLookupDestJob;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "LNetI2pRouterClientLookupDestJob;" };
  static const J2ObjcClassInfo _NetI2pRouterClientLookupDestJob_DoneJob = { "DoneJob", "net.i2p.router.client", ptrTable, methods, fields, 7, 0x2, 3, 1, 1, -1, -1, -1, -1 };
  return &_NetI2pRouterClientLookupDestJob_DoneJob;
}

@end

void NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(NetI2pRouterClientLookupDestJob_DoneJob *self, NetI2pRouterClientLookupDestJob *outer$, NetI2pRouterRouterContext *enclosingContext) {
  JreStrongAssign(&self->this$0_, outer$);
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, enclosingContext);
}

NetI2pRouterClientLookupDestJob_DoneJob *new_NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(NetI2pRouterClientLookupDestJob *outer$, NetI2pRouterRouterContext *enclosingContext) {
  J2OBJC_NEW_IMPL(NetI2pRouterClientLookupDestJob_DoneJob, initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_, outer$, enclosingContext)
}

NetI2pRouterClientLookupDestJob_DoneJob *create_NetI2pRouterClientLookupDestJob_DoneJob_initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_(NetI2pRouterClientLookupDestJob *outer$, NetI2pRouterRouterContext *enclosingContext) {
  J2OBJC_CREATE_IMPL(NetI2pRouterClientLookupDestJob_DoneJob, initWithNetI2pRouterClientLookupDestJob_withNetI2pRouterRouterContext_, outer$, enclosingContext)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterClientLookupDestJob_DoneJob)
