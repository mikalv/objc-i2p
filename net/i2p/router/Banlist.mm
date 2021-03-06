//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/Banlist.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/router/Banlist.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/JobQueue.h"
#include "net/i2p/router/JobTiming.h"
#include "net/i2p/router/MessageHistory.h"
#include "net/i2p/router/NetworkDatabaseFacade.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/TunnelManagerFacade.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/ConcurrentHashSet.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pRouterBanlist () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterRouterContext *_context_;
  id<JavaUtilMap> _entries_;
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                               withNSString:(NSString *)reason
                               withNSString:(NSString *)reasonCode
                               withNSString:(NSString *)transport
                                withBoolean:(jboolean)forever;

- (void)unbanlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                              withBoolean:(jboolean)realUnbanlist;

- (void)unbanlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                              withBoolean:(jboolean)realUnbanlist
                             withNSString:(NSString *)transport;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterBanlist, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterBanlist, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterBanlist, _entries_, id<JavaUtilMap>)

__attribute__((unused)) static jboolean NetI2pRouterBanlist_banlistRouterWithNetI2pDataHash_withNSString_withNSString_withNSString_withBoolean_(NetI2pRouterBanlist *self, NetI2pDataHash *peer, NSString *reason, NSString *reasonCode, NSString *transport, jboolean forever);

__attribute__((unused)) static void NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_(NetI2pRouterBanlist *self, NetI2pDataHash *peer, jboolean realUnbanlist);

__attribute__((unused)) static void NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_withNSString_(NetI2pRouterBanlist *self, NetI2pDataHash *peer, jboolean realUnbanlist, NSString *transport);

__attribute__((unused)) static IOSObjectArray *NetI2pRouterBanlist__Annotations$0(void);

@interface NetI2pRouterBanlist_Cleanup : NetI2pRouterJobImpl {
 @public
  NetI2pRouterBanlist *this$0_;
  id<JavaUtilList> _toUnbanlist_;
}

- (instancetype)initWithNetI2pRouterBanlist:(NetI2pRouterBanlist *)outer$
              withNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (NSString *)getName;

- (void)runJob;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterBanlist_Cleanup)

J2OBJC_FIELD_SETTER(NetI2pRouterBanlist_Cleanup, _toUnbanlist_, id<JavaUtilList>)

__attribute__((unused)) static void NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(NetI2pRouterBanlist_Cleanup *self, NetI2pRouterBanlist *outer$, NetI2pRouterRouterContext *ctx);

__attribute__((unused)) static NetI2pRouterBanlist_Cleanup *new_NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(NetI2pRouterBanlist *outer$, NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterBanlist_Cleanup *create_NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(NetI2pRouterBanlist *outer$, NetI2pRouterRouterContext *ctx);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterBanlist_Cleanup)

@implementation NetI2pRouterBanlist

+ (jlong)BANLIST_DURATION_MS {
  return NetI2pRouterBanlist_BANLIST_DURATION_MS;
}

+ (jlong)BANLIST_DURATION_MAX {
  return NetI2pRouterBanlist_BANLIST_DURATION_MAX;
}

+ (jlong)BANLIST_DURATION_PARTIAL {
  return NetI2pRouterBanlist_BANLIST_DURATION_PARTIAL;
}

+ (jlong)BANLIST_DURATION_FOREVER {
  return NetI2pRouterBanlist_BANLIST_DURATION_FOREVER;
}

+ (jlong)BANLIST_CLEANER_START_DELAY {
  return NetI2pRouterBanlist_BANLIST_CLEANER_START_DELAY;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context {
  NetI2pRouterBanlist_initWithNetI2pRouterRouterContext_(self, context);
  return self;
}

- (jint)getRouterCount {
  return [((id<JavaUtilMap>) nil_chk(_entries_)) size];
}

- (id<JavaUtilMap>)getEntries {
  return JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(_entries_);
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer {
  return [self banlistRouterWithNetI2pDataHash:peer withNSString:nil];
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                               withNSString:(NSString *)reason {
  return [self banlistRouterWithNetI2pDataHash:peer withNSString:reason withNSString:nil];
}

- (jboolean)banlistRouterWithNSString:(NSString *)reasonCode
                   withNetI2pDataHash:(NetI2pDataHash *)peer
                         withNSString:(NSString *)reason {
  return NetI2pRouterBanlist_banlistRouterWithNetI2pDataHash_withNSString_withNSString_withNSString_withBoolean_(self, peer, reason, reasonCode, nil, false);
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                               withNSString:(NSString *)reason
                               withNSString:(NSString *)transport {
  return [self banlistRouterWithNetI2pDataHash:peer withNSString:reason withNSString:transport withBoolean:false];
}

- (jboolean)banlistRouterForeverWithNetI2pDataHash:(NetI2pDataHash *)peer
                                      withNSString:(NSString *)reason {
  return [self banlistRouterWithNetI2pDataHash:peer withNSString:reason withNSString:nil withBoolean:true];
}

- (jboolean)banlistRouterForeverWithNetI2pDataHash:(NetI2pDataHash *)peer
                                      withNSString:(NSString *)reason
                                      withNSString:(NSString *)reasonCode {
  return NetI2pRouterBanlist_banlistRouterWithNetI2pDataHash_withNSString_withNSString_withNSString_withBoolean_(self, peer, reason, reasonCode, nil, true);
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                               withNSString:(NSString *)reason
                               withNSString:(NSString *)transport
                                withBoolean:(jboolean)forever {
  return NetI2pRouterBanlist_banlistRouterWithNetI2pDataHash_withNSString_withNSString_withNSString_withBoolean_(self, peer, reason, nil, transport, forever);
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                               withNSString:(NSString *)reason
                               withNSString:(NSString *)reasonCode
                               withNSString:(NSString *)transport
                                withBoolean:(jboolean)forever {
  return NetI2pRouterBanlist_banlistRouterWithNetI2pDataHash_withNSString_withNSString_withNSString_withBoolean_(self, peer, reason, reasonCode, transport, forever);
}

- (jboolean)banlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                               withNSString:(NSString *)reason
                               withNSString:(NSString *)reasonCode
                               withNSString:(NSString *)transport
                                   withLong:(jlong)expireOn {
  if (peer == nil) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"ban null?" withJavaLangThrowable:create_JavaLangException_init()];
    return false;
  }
  if ([peer isEqual:[((NetI2pRouterRouterContext *) nil_chk(_context_)) routerHash]]) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldWarn]) [_log_ warnWithNSString:@"not banning us" withJavaLangThrowable:create_JavaLangException_init()];
    return false;
  }
  jboolean wasAlready = false;
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$$", @"Banlist ", [peer toBase64], ((transport != nil) ? JreStrcat("$$", @" on transport ", transport) : @"")) withJavaLangThrowable:create_JavaLangException_initWithNSString_(JreStrcat("$$", @"Banlist cause: ", reason))];
  NetI2pRouterBanlist_Entry *e = create_NetI2pRouterBanlist_Entry_init();
  e->expireOn_ = expireOn;
  JreStrongAssign(&e->cause_, reason);
  JreStrongAssign(&e->causeCode_, reasonCode);
  JreStrongAssign(&e->transports_, nil);
  if (transport != nil) {
    JreStrongAssignAndConsume(&e->transports_, new_NetI2pUtilConcurrentHashSet_initWithInt_(2));
    [e->transports_ addWithId:transport];
  }
  NetI2pRouterBanlist_Entry *old = [((id<JavaUtilMap>) nil_chk(_entries_)) getWithId:peer];
  if (old != nil) {
    wasAlready = true;
    if (old->expireOn_ > e->expireOn_) {
      e->expireOn_ = old->expireOn_;
      JreStrongAssign(&e->cause_, old->cause_);
      JreStrongAssign(&e->causeCode_, old->causeCode_);
    }
    if (e->transports_ != nil) {
      if (old->transports_ != nil) [e->transports_ addAllWithJavaUtilCollection:old->transports_];
      else {
        JreStrongAssign(&e->transports_, nil);
        JreStrongAssign(&e->cause_, reason);
        JreStrongAssign(&e->causeCode_, reasonCode);
      }
    }
  }
  [_entries_ putWithId:peer withId:e];
  if (transport == nil) {
    [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([_context_ netDb])) failWithNetI2pDataHash:peer];
    [((id<NetI2pRouterTunnelManagerFacade>) nil_chk([_context_ tunnelManager])) failWithNetI2pDataHash:peer];
  }
  if (!wasAlready) [((NetI2pRouterMessageHistory *) nil_chk([_context_ messageHistory])) banlistWithNetI2pDataHash:peer withNSString:reason];
  return wasAlready;
}

- (void)unbanlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer {
  NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_(self, peer, true);
}

- (void)unbanlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                              withBoolean:(jboolean)realUnbanlist {
  NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_(self, peer, realUnbanlist);
}

- (void)unbanlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                             withNSString:(NSString *)transport {
  NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_withNSString_(self, peer, true, transport);
}

- (void)unbanlistRouterWithNetI2pDataHash:(NetI2pDataHash *)peer
                              withBoolean:(jboolean)realUnbanlist
                             withNSString:(NSString *)transport {
  NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_withNSString_(self, peer, realUnbanlist, transport);
}

- (jboolean)isBanlistedWithNetI2pDataHash:(NetI2pDataHash *)peer {
  return [self isBanlistedWithNetI2pDataHash:peer withNSString:nil];
}

- (jboolean)isBanlistedWithNetI2pDataHash:(NetI2pDataHash *)peer
                             withNSString:(NSString *)transport {
  jboolean rv = false;
  jboolean unbanlist = false;
  NetI2pRouterBanlist_Entry *entry_ = [((id<JavaUtilMap>) nil_chk(_entries_)) getWithId:peer];
  if (entry_ == nil) {
    rv = false;
  }
  else if (entry_->expireOn_ <= [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now]) {
    [_entries_ removeWithId:peer];
    unbanlist = true;
    rv = false;
  }
  else if (entry_->transports_ == nil) {
    rv = true;
  }
  else {
    rv = [entry_->transports_ containsWithId:transport];
  }
  if (unbanlist) {
    [((NetI2pRouterMessageHistory *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) messageHistory])) unbanlistWithNetI2pDataHash:peer];
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$", @"Unbanlisting (expired) ", [((NetI2pDataHash *) nil_chk(peer)) toBase64])];
  }
  return rv;
}

- (jboolean)isBanlistedForeverWithNetI2pDataHash:(NetI2pDataHash *)peer {
  NetI2pRouterBanlist_Entry *entry_ = [((id<JavaUtilMap>) nil_chk(_entries_)) getWithId:peer];
  return entry_ != nil && entry_->expireOn_ > [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now] + 2 * 24 * 60 * 60 * 1000LL;
}

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg {
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_context_);
  RELEASE_(_entries_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 2, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 11, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, 18, -1, 19, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getRouterCount);
  methods[2].selector = @selector(getEntries);
  methods[3].selector = @selector(banlistRouterWithNetI2pDataHash:);
  methods[4].selector = @selector(banlistRouterWithNetI2pDataHash:withNSString:);
  methods[5].selector = @selector(banlistRouterWithNSString:withNetI2pDataHash:withNSString:);
  methods[6].selector = @selector(banlistRouterWithNetI2pDataHash:withNSString:withNSString:);
  methods[7].selector = @selector(banlistRouterForeverWithNetI2pDataHash:withNSString:);
  methods[8].selector = @selector(banlistRouterForeverWithNetI2pDataHash:withNSString:withNSString:);
  methods[9].selector = @selector(banlistRouterWithNetI2pDataHash:withNSString:withNSString:withBoolean:);
  methods[10].selector = @selector(banlistRouterWithNetI2pDataHash:withNSString:withNSString:withNSString:withBoolean:);
  methods[11].selector = @selector(banlistRouterWithNetI2pDataHash:withNSString:withNSString:withNSString:withLong:);
  methods[12].selector = @selector(unbanlistRouterWithNetI2pDataHash:);
  methods[13].selector = @selector(unbanlistRouterWithNetI2pDataHash:withBoolean:);
  methods[14].selector = @selector(unbanlistRouterWithNetI2pDataHash:withNSString:);
  methods[15].selector = @selector(unbanlistRouterWithNetI2pDataHash:withBoolean:withNSString:);
  methods[16].selector = @selector(isBanlistedWithNetI2pDataHash:);
  methods[17].selector = @selector(isBanlistedWithNetI2pDataHash:withNSString:);
  methods[18].selector = @selector(isBanlistedForeverWithNetI2pDataHash:);
  methods[19].selector = @selector(renderStatusHTMLWithJavaIoWriter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_entries_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 20, -1 },
    { "BANLIST_DURATION_MS", "J", .constantValue.asLong = NetI2pRouterBanlist_BANLIST_DURATION_MS, 0x19, -1, -1, -1, -1 },
    { "BANLIST_DURATION_MAX", "J", .constantValue.asLong = NetI2pRouterBanlist_BANLIST_DURATION_MAX, 0x19, -1, -1, -1, -1 },
    { "BANLIST_DURATION_PARTIAL", "J", .constantValue.asLong = NetI2pRouterBanlist_BANLIST_DURATION_PARTIAL, 0x19, -1, -1, -1, -1 },
    { "BANLIST_DURATION_FOREVER", "J", .constantValue.asLong = NetI2pRouterBanlist_BANLIST_DURATION_FOREVER, 0x19, -1, -1, -1, -1 },
    { "BANLIST_CLEANER_START_DELAY", "J", .constantValue.asLong = NetI2pRouterBanlist_BANLIST_CLEANER_START_DELAY, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "()Ljava/util/Map<Lnet/i2p/data/Hash;Lnet/i2p/router/Banlist$Entry;>;", "banlistRouter", "LNetI2pDataHash;", "LNetI2pDataHash;LNSString;", "LNSString;LNetI2pDataHash;LNSString;", "LNetI2pDataHash;LNSString;LNSString;", "banlistRouterForever", "LNetI2pDataHash;LNSString;LNSString;Z", "LNetI2pDataHash;LNSString;LNSString;LNSString;Z", "LNetI2pDataHash;LNSString;LNSString;LNSString;J", "unbanlistRouter", "LNetI2pDataHash;Z", "LNetI2pDataHash;ZLNSString;", "isBanlisted", "isBanlistedForever", "renderStatusHTML", "LJavaIoWriter;", "LJavaIoIOException;", (void *)&NetI2pRouterBanlist__Annotations$0, "Ljava/util/Map<Lnet/i2p/data/Hash;Lnet/i2p/router/Banlist$Entry;>;", "LNetI2pRouterBanlist_Entry;LNetI2pRouterBanlist_Cleanup;" };
  static const J2ObjcClassInfo _NetI2pRouterBanlist = { "Banlist", "net.i2p.router", ptrTable, methods, fields, 7, 0x1, 20, 8, -1, 21, -1, -1, -1 };
  return &_NetI2pRouterBanlist;
}

@end

void NetI2pRouterBanlist_initWithNetI2pRouterRouterContext_(NetI2pRouterBanlist *self, NetI2pRouterRouterContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pRouterBanlist_class_()]);
  JreStrongAssignAndConsume(&self->_entries_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(16));
  [((NetI2pRouterJobQueue *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) jobQueue])) addJobWithNetI2pRouterJob:create_NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(self, self->_context_)];
  [self banlistRouterForeverWithNetI2pDataHash:JreLoadStatic(NetI2pDataHash, FAKE_HASH) withNSString:@"Invalid Hash"];
}

NetI2pRouterBanlist *new_NetI2pRouterBanlist_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_NEW_IMPL(NetI2pRouterBanlist, initWithNetI2pRouterRouterContext_, context)
}

NetI2pRouterBanlist *create_NetI2pRouterBanlist_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pRouterBanlist, initWithNetI2pRouterRouterContext_, context)
}

jboolean NetI2pRouterBanlist_banlistRouterWithNetI2pDataHash_withNSString_withNSString_withNSString_withBoolean_(NetI2pRouterBanlist *self, NetI2pDataHash *peer, NSString *reason, NSString *reasonCode, NSString *transport, jboolean forever) {
  jlong expireOn;
  if (forever) {
    expireOn = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now] + NetI2pRouterBanlist_BANLIST_DURATION_FOREVER;
  }
  else if (transport != nil) {
    expireOn = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now] + NetI2pRouterBanlist_BANLIST_DURATION_PARTIAL;
  }
  else {
    jlong period = NetI2pRouterBanlist_BANLIST_DURATION_MS + [((NetI2pUtilRandomSource *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) random])) nextLongWithLong:NetI2pRouterBanlist_BANLIST_DURATION_MS / 4];
    if (period > NetI2pRouterBanlist_BANLIST_DURATION_MAX) period = NetI2pRouterBanlist_BANLIST_DURATION_MAX;
    expireOn = [((NetI2pUtilClock *) nil_chk([self->_context_ clock])) now] + period;
  }
  return [self banlistRouterWithNetI2pDataHash:peer withNSString:reason withNSString:reasonCode withNSString:transport withLong:expireOn];
}

void NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_(NetI2pRouterBanlist *self, NetI2pDataHash *peer, jboolean realUnbanlist) {
  NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_withNSString_(self, peer, realUnbanlist, nil);
}

void NetI2pRouterBanlist_unbanlistRouterWithNetI2pDataHash_withBoolean_withNSString_(NetI2pRouterBanlist *self, NetI2pDataHash *peer, jboolean realUnbanlist, NSString *transport) {
  if (peer == nil) return;
  if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$$", @"unbanlist ", [peer toBase64], (transport != nil ? JreStrcat("C$", '/', transport) : @""))];
  jboolean fully = false;
  NetI2pRouterBanlist_Entry *e = [((id<JavaUtilMap>) nil_chk(self->_entries_)) removeWithId:peer];
  if ((e == nil) || (((NetI2pRouterBanlist_Entry *) nil_chk(e))->transports_ == nil) || (transport == nil) || ([((id<JavaUtilSet>) nil_chk(e->transports_)) size] <= 1)) {
    fully = true;
  }
  else {
    [((id<JavaUtilSet>) nil_chk(((NetI2pRouterBanlist_Entry *) nil_chk(e))->transports_)) removeWithId:transport];
    if ([((id<JavaUtilSet>) nil_chk(e->transports_)) isEmpty]) fully = true;
    else [self->_entries_ putWithId:peer withId:e];
  }
  if (fully) {
    [((NetI2pRouterMessageHistory *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) messageHistory])) unbanlistWithNetI2pDataHash:peer];
    if ([self->_log_ shouldLogWithInt:NetI2pUtilLog_INFO] && e != nil) [self->_log_ infoWithNSString:JreStrcat("$$$", @"Unbanlisting router ", [peer toBase64], (transport != nil ? JreStrcat("C$", '/', transport) : @""))];
  }
}

IOSObjectArray *NetI2pRouterBanlist__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterBanlist)

@implementation NetI2pRouterBanlist_Entry

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterBanlist_Entry_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(cause_);
  RELEASE_(causeCode_);
  RELEASE_(transports_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "expireOn_", "J", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "cause_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "causeCode_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "transports_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x1, -1, -1, 0, -1 },
  };
  static const void *ptrTable[] = { "Ljava/util/Set<Ljava/lang/String;>;", "LNetI2pRouterBanlist;" };
  static const J2ObjcClassInfo _NetI2pRouterBanlist_Entry = { "Entry", "net.i2p.router", ptrTable, methods, fields, 7, 0x9, 1, 4, 1, -1, -1, -1, -1 };
  return &_NetI2pRouterBanlist_Entry;
}

@end

void NetI2pRouterBanlist_Entry_init(NetI2pRouterBanlist_Entry *self) {
  NSObject_init(self);
}

NetI2pRouterBanlist_Entry *new_NetI2pRouterBanlist_Entry_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterBanlist_Entry, init)
}

NetI2pRouterBanlist_Entry *create_NetI2pRouterBanlist_Entry_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterBanlist_Entry, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterBanlist_Entry)

@implementation NetI2pRouterBanlist_Cleanup

- (instancetype)initWithNetI2pRouterBanlist:(NetI2pRouterBanlist *)outer$
              withNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(self, outer$, ctx);
  return self;
}

- (NSString *)getName {
  return @"Expire banned peers";
}

- (void)runJob {
  [((id<JavaUtilList>) nil_chk(_toUnbanlist_)) clear];
  jlong now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) clock])) now];
  @try {
    for (id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(this$0_->_entries_)) entrySet])) iterator]; [((id<JavaUtilIterator>) nil_chk(iter)) hasNext]; ) {
      id<JavaUtilMap_Entry> e = [iter next];
      if (((NetI2pRouterBanlist_Entry *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(e)) getValue]))->expireOn_ <= now) {
        [iter remove];
        [((id<JavaUtilList>) nil_chk(_toUnbanlist_)) addWithId:[e getKey]];
      }
    }
  }
  @catch (JavaLangIllegalStateException *ise) {
  }
  for (NetI2pDataHash * __strong peer in nil_chk(_toUnbanlist_)) {
    [((NetI2pRouterMessageHistory *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(this$0_->_context_)) messageHistory])) unbanlistWithNetI2pDataHash:peer];
    if ([((NetI2pUtilLog *) nil_chk(this$0_->_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [this$0_->_log_ infoWithNSString:JreStrcat("$$", @"Unbanlisting router (expired) ", [((NetI2pDataHash *) nil_chk(peer)) toBase64])];
  }
  [self requeueWithLong:30 * 1000];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(_toUnbanlist_);
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
  methods[0].selector = @selector(initWithNetI2pRouterBanlist:withNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(runJob);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterBanlist;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "_toUnbanlist_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "Ljava/util/List<Lnet/i2p/data/Hash;>;", "LNetI2pRouterBanlist;" };
  static const J2ObjcClassInfo _NetI2pRouterBanlist_Cleanup = { "Cleanup", "net.i2p.router", ptrTable, methods, fields, 7, 0x2, 3, 2, 2, -1, -1, -1, -1 };
  return &_NetI2pRouterBanlist_Cleanup;
}

@end

void NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(NetI2pRouterBanlist_Cleanup *self, NetI2pRouterBanlist *outer$, NetI2pRouterRouterContext *ctx) {
  JreStrongAssign(&self->this$0_, outer$);
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
  JreStrongAssignAndConsume(&self->_toUnbanlist_, new_JavaUtilArrayList_initWithInt_(4));
  [((NetI2pRouterJobTiming *) nil_chk([self getTiming])) setStartAfterWithLong:[((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) clock])) now] + NetI2pRouterBanlist_BANLIST_CLEANER_START_DELAY];
}

NetI2pRouterBanlist_Cleanup *new_NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(NetI2pRouterBanlist *outer$, NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterBanlist_Cleanup, initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_, outer$, ctx)
}

NetI2pRouterBanlist_Cleanup *create_NetI2pRouterBanlist_Cleanup_initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_(NetI2pRouterBanlist *outer$, NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterBanlist_Cleanup, initWithNetI2pRouterBanlist_withNetI2pRouterRouterContext_, outer$, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterBanlist_Cleanup)
