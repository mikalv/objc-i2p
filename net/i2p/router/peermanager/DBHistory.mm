//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/DBHistory.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/OutputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Locale.h"
#include "java/util/Properties.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/peermanager/DBHistory.h"
#include "net/i2p/router/peermanager/ProfilePersistenceHelper.h"
#include "net/i2p/stat/RateStat.h"
#include "net/i2p/stat/StatLog.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterPeermanagerDBHistory () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterRouterContext *_context_;
  NetI2pStatRateStat *_failedLookupRate_;
  NetI2pStatRateStat *_invalidReplyRate_;
  jlong _lastLookupSuccessful_;
  jlong _lastLookupFailed_;
  jlong _lastStoreSuccessful_;
  jlong _lastStoreFailed_;
  jlong _unpromptedDbStoreNew_;
  jlong _unpromptedDbStoreOld_;
  NSString *_statGroup_;
}

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)buf
                        withNSString:(NSString *)name
                            withLong:(jlong)val
                        withNSString:(NSString *)description_;

- (void)createRatesWithNSString:(NSString *)statGroup;

+ (jlong)getLongWithJavaUtilProperties:(JavaUtilProperties *)props
                          withNSString:(NSString *)key;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterPeermanagerDBHistory, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterPeermanagerDBHistory, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterPeermanagerDBHistory, _failedLookupRate_, NetI2pStatRateStat *)
J2OBJC_FIELD_SETTER(NetI2pRouterPeermanagerDBHistory, _invalidReplyRate_, NetI2pStatRateStat *)
J2OBJC_FIELD_SETTER(NetI2pRouterPeermanagerDBHistory, _statGroup_, NSString *)

inline NSString *NetI2pRouterPeermanagerDBHistory_get_NL(void);
static NSString *NetI2pRouterPeermanagerDBHistory_NL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterPeermanagerDBHistory, NL, NSString *)

__attribute__((unused)) static void NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(JavaLangStringBuilder *buf, NSString *name, jlong val, NSString *description_);

__attribute__((unused)) static void NetI2pRouterPeermanagerDBHistory_createRatesWithNSString_(NetI2pRouterPeermanagerDBHistory *self, NSString *statGroup);

__attribute__((unused)) static jlong NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(JavaUtilProperties *props, NSString *key);

J2OBJC_INITIALIZED_DEFN(NetI2pRouterPeermanagerDBHistory)

@implementation NetI2pRouterPeermanagerDBHistory

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
                                     withNSString:(NSString *)statGroup {
  NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(self, context, statGroup);
  return self;
}

- (jlong)getLastLookupSuccessful {
  return _lastLookupSuccessful_;
}

- (jlong)getLastLookupFailed {
  return _lastLookupFailed_;
}

- (jlong)getLastStoreSuccessful {
  return _lastStoreSuccessful_;
}

- (jlong)getLastStoreFailed {
  return _lastStoreFailed_;
}

- (jlong)getUnpromptedDbStoreNew {
  return _unpromptedDbStoreNew_;
}

- (jlong)getUnpromptedDbStoreOld {
  return _unpromptedDbStoreOld_;
}

- (NetI2pStatRateStat *)getFailedLookupRate {
  return _failedLookupRate_;
}

- (NetI2pStatRateStat *)getInvalidReplyRate {
  return _invalidReplyRate_;
}

- (void)lookupSuccessful {
  [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) addDataWithLong:0];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"peer.failedLookupRate" withLong:0];
  _lastLookupSuccessful_ = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
}

- (void)lookupFailed {
  [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) addDataWithLong:1];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"peer.failedLookupRate" withLong:1];
  _lastLookupFailed_ = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
}

- (void)storeSuccessful {
  [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) addDataWithLong:0];
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) statManager])) addRateDataWithNSString:@"peer.failedLookupRate" withLong:0];
  _lastStoreSuccessful_ = [((NetI2pUtilClock *) nil_chk([_context_ clock])) now];
}

- (void)storeFailed {
  [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) addDataWithLong:1];
  _lastStoreFailed_ = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now];
}

- (void)lookupReplyWithInt:(jint)newPeers
                   withInt:(jint)oldPeers
                   withInt:(jint)invalid
                   withInt:(jint)duplicate {
  if (invalid > 0) {
    [((NetI2pStatRateStat *) nil_chk(_invalidReplyRate_)) addDataWithLong:invalid];
  }
}

- (void)unpromptedStoreReceivedWithBoolean:(jboolean)wasNew {
  if (wasNew) _unpromptedDbStoreNew_++;
  else _unpromptedDbStoreOld_++;
}

- (void)setUnpromptedDbStoreNewWithLong:(jlong)num {
  _unpromptedDbStoreNew_ = num;
}

- (void)setUnpromptedDbStoreOldWithLong:(jlong)num {
  _unpromptedDbStoreOld_ = num;
}

- (void)coalesceStats {
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:@"Coallescing stats"];
  [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) coalesceStats];
  [((NetI2pStatRateStat *) nil_chk(_invalidReplyRate_)) coalesceStats];
}

- (void)storeWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(512);
  [buf appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"#################"])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"# DB history"])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"###"])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL];
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, @"unpromptedDbStoreNew", _unpromptedDbStoreNew_, @"How times have they sent us something we didn't ask for and hadn't seen before?");
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, @"unpromptedDbStoreOld", _unpromptedDbStoreOld_, @"How times have they sent us something we didn't ask for but have seen before?");
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, @"lastLookupSuccessful", _lastLookupSuccessful_, @"When was the last time a lookup from them succeeded?  (milliseconds since the epoch)");
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, @"lastLookupFailed", _lastLookupFailed_, @"When was the last time a lookup from them failed?  (milliseconds since the epoch)");
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, @"lastStoreSuccessful", _lastStoreSuccessful_, @"When was the last time a store to them succeeded?  (milliseconds since the epoch)");
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, @"lastStoreFailed", _lastStoreFailed_, @"When was the last time a store to them failed?  (milliseconds since the epoch)");
  [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:[((NSString *) nil_chk([buf description])) java_getBytesWithCharsetName:@"UTF-8"]];
  [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) storeWithJavaIoOutputStream:outArg withNSString:@"dbHistory.failedLookupRate"];
  [((NetI2pStatRateStat *) nil_chk(_invalidReplyRate_)) storeWithJavaIoOutputStream:outArg withNSString:@"dbHistory.invalidReplyRate"];
}

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)buf
                        withNSString:(NSString *)name
                            withLong:(jlong)val
                        withNSString:(NSString *)description_ {
  NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(buf, name, val, description_);
}

- (void)load__WithJavaUtilProperties:(JavaUtilProperties *)props {
  _unpromptedDbStoreNew_ = NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, @"dbHistory.unpromptedDbStoreNew");
  _unpromptedDbStoreOld_ = NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, @"dbHistory.unpromptedDbStoreOld");
  _lastLookupSuccessful_ = NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, @"dbHistory.lastLookupSuccessful");
  _lastLookupFailed_ = NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, @"dbHistory.lastLookupFailed");
  _lastStoreSuccessful_ = NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, @"dbHistory.lastStoreSuccessful");
  _lastStoreFailed_ = NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, @"dbHistory.lastStoreFailed");
  @try {
    [((NetI2pStatRateStat *) nil_chk(_failedLookupRate_)) load__WithJavaUtilProperties:props withNSString:@"dbHistory.failedLookupRate" withBoolean:true];
    [((NetI2pUtilLog *) nil_chk(_log_)) debugWithNSString:@"Loading dbHistory.failedLookupRate"];
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    [((NetI2pUtilLog *) nil_chk(_log_)) warnWithNSString:@"DB History failed lookup rate is corrupt, resetting" withJavaLangThrowable:iae];
  }
  @try {
    [((NetI2pStatRateStat *) nil_chk(_invalidReplyRate_)) load__WithJavaUtilProperties:props withNSString:@"dbHistory.invalidReplyRate" withBoolean:true];
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    [((NetI2pUtilLog *) nil_chk(_log_)) warnWithNSString:@"DB History invalid reply rate is corrupt, resetting" withJavaLangThrowable:iae];
    NetI2pRouterPeermanagerDBHistory_createRatesWithNSString_(self, _statGroup_);
  }
}

- (void)createRatesWithNSString:(NSString *)statGroup {
  NetI2pRouterPeermanagerDBHistory_createRatesWithNSString_(self, statGroup);
}

+ (jlong)getLongWithJavaUtilProperties:(JavaUtilProperties *)props
                          withNSString:(NSString *)key {
  return NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(props, key);
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_context_);
  RELEASE_(_failedLookupRate_);
  RELEASE_(_invalidReplyRate_);
  RELEASE_(_statGroup_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatRateStat;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatRateStat;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 10, -1, -1, -1 },
    { NULL, "V", 0xa, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x22, 15, 16, -1, -1, -1, -1 },
    { NULL, "J", 0x1a, 17, 18, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNSString:);
  methods[1].selector = @selector(getLastLookupSuccessful);
  methods[2].selector = @selector(getLastLookupFailed);
  methods[3].selector = @selector(getLastStoreSuccessful);
  methods[4].selector = @selector(getLastStoreFailed);
  methods[5].selector = @selector(getUnpromptedDbStoreNew);
  methods[6].selector = @selector(getUnpromptedDbStoreOld);
  methods[7].selector = @selector(getFailedLookupRate);
  methods[8].selector = @selector(getInvalidReplyRate);
  methods[9].selector = @selector(lookupSuccessful);
  methods[10].selector = @selector(lookupFailed);
  methods[11].selector = @selector(storeSuccessful);
  methods[12].selector = @selector(storeFailed);
  methods[13].selector = @selector(lookupReplyWithInt:withInt:withInt:withInt:);
  methods[14].selector = @selector(unpromptedStoreReceivedWithBoolean:);
  methods[15].selector = @selector(setUnpromptedDbStoreNewWithLong:);
  methods[16].selector = @selector(setUnpromptedDbStoreOldWithLong:);
  methods[17].selector = @selector(coalesceStats);
  methods[18].selector = @selector(storeWithJavaIoOutputStream:);
  methods[19].selector = @selector(addWithJavaLangStringBuilder:withNSString:withLong:withNSString:);
  methods[20].selector = @selector(load__WithJavaUtilProperties:);
  methods[21].selector = @selector(createRatesWithNSString:);
  methods[22].selector = @selector(getLongWithJavaUtilProperties:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_failedLookupRate_", "LNetI2pStatRateStat;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_invalidReplyRate_", "LNetI2pStatRateStat;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastLookupSuccessful_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastLookupFailed_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastStoreSuccessful_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastStoreFailed_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_unpromptedDbStoreNew_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_unpromptedDbStoreOld_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_statGroup_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "NL", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNSString;", "lookupReply", "IIII", "unpromptedStoreReceived", "Z", "setUnpromptedDbStoreNew", "J", "setUnpromptedDbStoreOld", "store", "LJavaIoOutputStream;", "LJavaIoIOException;", "add", "LJavaLangStringBuilder;LNSString;JLNSString;", "load", "LJavaUtilProperties;", "createRates", "LNSString;", "getLong", "LJavaUtilProperties;LNSString;", &NetI2pRouterPeermanagerDBHistory_NL };
  static const J2ObjcClassInfo _NetI2pRouterPeermanagerDBHistory = { "DBHistory", "net.i2p.router.peermanager", ptrTable, methods, fields, 7, 0x1, 23, 12, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterPeermanagerDBHistory;
}

+ (void)initialize {
  if (self == [NetI2pRouterPeermanagerDBHistory class]) {
    JreStrongAssign(&NetI2pRouterPeermanagerDBHistory_NL, JavaLangSystem_getPropertyWithNSString_(@"line.separator"));
    J2OBJC_SET_INITIALIZED(NetI2pRouterPeermanagerDBHistory)
  }
}

@end

void NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(NetI2pRouterPeermanagerDBHistory *self, NetI2pRouterRouterContext *context, NSString *statGroup) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pRouterPeermanagerDBHistory_class_()]);
  JreStrongAssign(&self->_statGroup_, statGroup);
  NetI2pRouterPeermanagerDBHistory_createRatesWithNSString_(self, statGroup);
}

NetI2pRouterPeermanagerDBHistory *new_NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(NetI2pRouterRouterContext *context, NSString *statGroup) {
  J2OBJC_NEW_IMPL(NetI2pRouterPeermanagerDBHistory, initWithNetI2pRouterRouterContext_withNSString_, context, statGroup)
}

NetI2pRouterPeermanagerDBHistory *create_NetI2pRouterPeermanagerDBHistory_initWithNetI2pRouterRouterContext_withNSString_(NetI2pRouterRouterContext *context, NSString *statGroup) {
  J2OBJC_CREATE_IMPL(NetI2pRouterPeermanagerDBHistory, initWithNetI2pRouterRouterContext_withNSString_, context, statGroup)
}

void NetI2pRouterPeermanagerDBHistory_addWithJavaLangStringBuilder_withNSString_withLong_withNSString_(JavaLangStringBuilder *buf, NSString *name, jlong val, NSString *description_) {
  NetI2pRouterPeermanagerDBHistory_initialize();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buf)) appendWithNSString:@"# "])) appendWithNSString:[((NSString *) nil_chk(name)) java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)]])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL])) appendWithNSString:@"# "])) appendWithNSString:description_])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"dbHistory."])) appendWithNSString:name])) appendWithChar:'='])) appendWithLong:val])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL])) appendWithNSString:NetI2pRouterPeermanagerDBHistory_NL];
}

void NetI2pRouterPeermanagerDBHistory_createRatesWithNSString_(NetI2pRouterPeermanagerDBHistory *self, NSString *statGroup) {
  @synchronized(self) {
    if (self->_failedLookupRate_ == nil) JreStrongAssignAndConsume(&self->_failedLookupRate_, new_NetI2pStatRateStat_initWithNSString_withNSString_withNSString_withLongArray_(@"dbHistory.failedLookupRate", @"How often does this peer to respond to a lookup?", statGroup, [IOSLongArray arrayWithLongs:(jlong[]){ 10 * 60 * 1000l, 60 * 60 * 1000l, 24 * 60 * 60 * 1000l } count:3]));
    if (self->_invalidReplyRate_ == nil) JreStrongAssignAndConsume(&self->_invalidReplyRate_, new_NetI2pStatRateStat_initWithNSString_withNSString_withNSString_withLongArray_(@"dbHistory.invalidReplyRate", @"How often does this peer give us a bad (nonexistant, forged, etc) peer?", statGroup, [IOSLongArray arrayWithLongs:(jlong[]){ 30 * 60 * 1000l } count:1]));
    [((NetI2pStatRateStat *) nil_chk(self->_failedLookupRate_)) setStatLogWithNetI2pStatStatLog:[((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) getStatLog]];
    [((NetI2pStatRateStat *) nil_chk(self->_invalidReplyRate_)) setStatLogWithNetI2pStatStatLog:[((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) getStatLog]];
  }
}

jlong NetI2pRouterPeermanagerDBHistory_getLongWithJavaUtilProperties_withNSString_(JavaUtilProperties *props, NSString *key) {
  NetI2pRouterPeermanagerDBHistory_initialize();
  return NetI2pRouterPeermanagerProfilePersistenceHelper_getLongWithJavaUtilProperties_withNSString_(props, key);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterPeermanagerDBHistory)
