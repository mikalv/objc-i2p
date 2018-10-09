//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/stat/StatManager.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/OutputStream.h"
#include "java/text/Collator.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/SortedSet.h"
#include "java/util/TreeSet.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/stat/BufferedStatLog.h"
#include "net/i2p/stat/FrequencyStat.h"
#include "net/i2p/stat/RateStat.h"
#include "net/i2p/stat/StatLog.h"
#include "net/i2p/stat/StatManager.h"

@interface NetI2pStatStatManager () {
 @public
  NetI2pI2PAppContext *_context_;
  JavaUtilConcurrentConcurrentHashMap *_frequencyStats_;
  JavaUtilConcurrentConcurrentHashMap *_rateStats_;
  id<NetI2pStatStatLog> _statLog_;
  jint coalesceCounter_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pStatStatManager, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pStatStatManager, _frequencyStats_, JavaUtilConcurrentConcurrentHashMap *)
J2OBJC_FIELD_SETTER(NetI2pStatStatManager, _rateStats_, JavaUtilConcurrentConcurrentHashMap *)
J2OBJC_FIELD_SETTER(NetI2pStatStatManager, _statLog_, id<NetI2pStatStatLog>)

inline jint NetI2pStatStatManager_get_FREQ_COALESCE_RATE(void);
#define NetI2pStatStatManager_FREQ_COALESCE_RATE 9
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pStatStatManager, FREQ_COALESCE_RATE, jint)

NSString *NetI2pStatStatManager_PROP_STAT_FILTER = @"stat.logFilters";
NSString *NetI2pStatStatManager_PROP_STAT_FILE = @"stat.logFile";
NSString *NetI2pStatStatManager_DEFAULT_STAT_FILE = @"stats.log";
NSString *NetI2pStatStatManager_PROP_STAT_FULL = @"stat.full";

@implementation NetI2pStatStatManager

+ (NSString *)PROP_STAT_FILTER {
  return NetI2pStatStatManager_PROP_STAT_FILTER;
}

+ (NSString *)PROP_STAT_FILE {
  return NetI2pStatStatManager_PROP_STAT_FILE;
}

+ (NSString *)DEFAULT_STAT_FILE {
  return NetI2pStatStatManager_DEFAULT_STAT_FILE;
}

+ (NSString *)PROP_STAT_FULL {
  return NetI2pStatStatManager_PROP_STAT_FULL;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pStatStatManager_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (void)shutdown {
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) clear];
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) clear];
}

- (id<NetI2pStatStatLog>)getStatLog {
  return _statLog_;
}

- (void)setStatLogWithNetI2pStatStatLog:(id<NetI2pStatStatLog>)log {
  JreStrongAssign(&_statLog_, log);
  for (NetI2pStatRateStat * __strong rs in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) values])) {
    [((NetI2pStatRateStat *) nil_chk(rs)) setStatLogWithNetI2pStatStatLog:log];
  }
}

- (void)createFrequencyStatWithNSString:(NSString *)name
                           withNSString:(NSString *)description_
                           withNSString:(NSString *)group
                          withLongArray:(IOSLongArray *)periods {
  if ([self ignoreStatWithNSString:name]) return;
  [self createRequiredFrequencyStatWithNSString:name withNSString:description_ withNSString:group withLongArray:periods];
}

- (void)createRequiredFrequencyStatWithNSString:(NSString *)name
                                   withNSString:(NSString *)description_
                                   withNSString:(NSString *)group
                                  withLongArray:(IOSLongArray *)periods {
  if ([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) containsKeyWithId:name]) return;
  [_frequencyStats_ putIfAbsentWithId:name withId:create_NetI2pStatFrequencyStat_initWithNSString_withNSString_withNSString_withLongArray_(name, description_, group, periods)];
}

- (void)createRateStatWithNSString:(NSString *)name
                      withNSString:(NSString *)description_
                      withNSString:(NSString *)group
                     withLongArray:(IOSLongArray *)periods {
  if ([self ignoreStatWithNSString:name]) return;
  [self createRequiredRateStatWithNSString:name withNSString:description_ withNSString:group withLongArray:periods];
}

- (void)createRequiredRateStatWithNSString:(NSString *)name
                              withNSString:(NSString *)description_
                              withNSString:(NSString *)group
                             withLongArray:(IOSLongArray *)periods {
  if ([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) containsKeyWithId:name]) return;
  NetI2pStatRateStat *rs = create_NetI2pStatRateStat_initWithNSString_withNSString_withNSString_withLongArray_(name, description_, group, periods);
  if (_statLog_ != nil) [rs setStatLogWithNetI2pStatStatLog:_statLog_];
  [_rateStats_ putIfAbsentWithId:name withId:rs];
}

- (void)removeRateStatWithNSString:(NSString *)name {
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) removeWithId:name];
}

- (void)updateFrequencyWithNSString:(NSString *)name {
  NetI2pStatFrequencyStat *freq = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) getWithId:name];
  if (freq != nil) [freq eventOccurred];
}

- (void)addRateDataWithNSString:(NSString *)name
                       withLong:(jlong)data
                       withLong:(jlong)eventDuration {
  NetI2pStatRateStat *stat = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) getWithId:name];
  if (stat != nil) [stat addDataWithLong:data withLong:eventDuration];
}

- (void)addRateDataWithNSString:(NSString *)name
                       withLong:(jlong)data {
  NetI2pStatRateStat *stat = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) getWithId:name];
  if (stat != nil) [stat addDataWithLong:data];
}

- (void)coalesceStats {
  if (++coalesceCounter_ % NetI2pStatStatManager_FREQ_COALESCE_RATE == 0) {
    for (NetI2pStatFrequencyStat * __strong stat in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) values])) {
      if (stat != nil) {
        [stat coalesceStats];
      }
    }
  }
  for (NetI2pStatRateStat * __strong stat in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) values])) {
    if (stat != nil) {
      [stat coalesceStats];
    }
  }
}

- (NetI2pStatFrequencyStat *)getFrequencyWithNSString:(NSString *)name {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) getWithId:name];
}

- (NetI2pStatRateStat *)getRateWithNSString:(NSString *)name {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) getWithId:name];
}

- (id<JavaUtilSet>)getFrequencyNames {
  return create_JavaUtilHashSet_initWithJavaUtilCollection_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) keySet]);
}

- (id<JavaUtilSet>)getRateNames {
  return create_JavaUtilHashSet_initWithJavaUtilCollection_([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) keySet]);
}

- (jboolean)isRateWithNSString:(NSString *)statName {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) containsKeyWithId:statName];
}

- (jboolean)isFrequencyWithNSString:(NSString *)statName {
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) containsKeyWithId:statName];
}

- (id<JavaUtilMap>)getStatsByGroup {
  id<JavaUtilMap> groups = create_JavaUtilHashMap_initWithInt_(32);
  for (NetI2pStatFrequencyStat * __strong stat in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) values])) {
    NSString *gname = [((NetI2pStatFrequencyStat *) nil_chk(stat)) getGroupName];
    id<JavaUtilSortedSet> names = [groups getWithId:gname];
    if (names == nil) {
      names = create_JavaUtilTreeSet_initWithJavaUtilComparator_(JavaTextCollator_getInstance());
      [groups putWithId:gname withId:names];
    }
    [names addWithId:[stat getName]];
  }
  for (NetI2pStatRateStat * __strong stat in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) values])) {
    NSString *gname = [((NetI2pStatRateStat *) nil_chk(stat)) getGroupName];
    id<JavaUtilSortedSet> names = [groups getWithId:gname];
    if (names == nil) {
      names = create_JavaUtilTreeSet_initWithJavaUtilComparator_(JavaTextCollator_getInstance());
      [groups putWithId:gname withId:names];
    }
    [names addWithId:[stat getName]];
  }
  return groups;
}

- (NSString *)getStatFilter {
  return [((NetI2pI2PAppContext *) nil_chk(_context_)) getPropertyWithNSString:NetI2pStatStatManager_PROP_STAT_FILTER];
}

- (NSString *)getStatFile {
  return [((NetI2pI2PAppContext *) nil_chk(_context_)) getPropertyWithNSString:NetI2pStatStatManager_PROP_STAT_FILE withNSString:NetI2pStatStatManager_DEFAULT_STAT_FILE];
}

- (jboolean)ignoreStatWithNSString:(NSString *)statName {
  return [((NetI2pI2PAppContext *) nil_chk(_context_)) isRouterContext] && ![_context_ getBooleanPropertyWithNSString:NetI2pStatStatManager_PROP_STAT_FULL];
}

- (void)storeWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                       withNSString:(NSString *)prefix {
  for (NetI2pStatFrequencyStat * __strong fs in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_frequencyStats_)) values])) [((NetI2pStatFrequencyStat *) nil_chk(fs)) storeWithJavaIoOutputStream:outArg withNSString:prefix];
  for (NetI2pStatRateStat * __strong rs in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(_rateStats_)) values])) [((NetI2pStatRateStat *) nil_chk(rs)) storeWithJavaIoOutputStream:outArg withNSString:prefix];
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_frequencyStats_);
  RELEASE_(_rateStats_);
  RELEASE_(_statLog_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatStatLog;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatFrequencyStat;", 0x1, 14, 9, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatRateStat;", 0x1, 15, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 16, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 16, -1, -1 },
    { NULL, "Z", 0x1, 17, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 19, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 20, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 21, 22, 23, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(shutdown);
  methods[2].selector = @selector(getStatLog);
  methods[3].selector = @selector(setStatLogWithNetI2pStatStatLog:);
  methods[4].selector = @selector(createFrequencyStatWithNSString:withNSString:withNSString:withLongArray:);
  methods[5].selector = @selector(createRequiredFrequencyStatWithNSString:withNSString:withNSString:withLongArray:);
  methods[6].selector = @selector(createRateStatWithNSString:withNSString:withNSString:withLongArray:);
  methods[7].selector = @selector(createRequiredRateStatWithNSString:withNSString:withNSString:withLongArray:);
  methods[8].selector = @selector(removeRateStatWithNSString:);
  methods[9].selector = @selector(updateFrequencyWithNSString:);
  methods[10].selector = @selector(addRateDataWithNSString:withLong:withLong:);
  methods[11].selector = @selector(addRateDataWithNSString:withLong:);
  methods[12].selector = @selector(coalesceStats);
  methods[13].selector = @selector(getFrequencyWithNSString:);
  methods[14].selector = @selector(getRateWithNSString:);
  methods[15].selector = @selector(getFrequencyNames);
  methods[16].selector = @selector(getRateNames);
  methods[17].selector = @selector(isRateWithNSString:);
  methods[18].selector = @selector(isFrequencyWithNSString:);
  methods[19].selector = @selector(getStatsByGroup);
  methods[20].selector = @selector(getStatFilter);
  methods[21].selector = @selector(getStatFile);
  methods[22].selector = @selector(ignoreStatWithNSString:);
  methods[23].selector = @selector(storeWithJavaIoOutputStream:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_frequencyStats_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 24, -1 },
    { "_rateStats_", "LJavaUtilConcurrentConcurrentHashMap;", .constantValue.asLong = 0, 0x12, -1, -1, 25, -1 },
    { "_statLog_", "LNetI2pStatStatLog;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "PROP_STAT_FILTER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "PROP_STAT_FILE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "DEFAULT_STAT_FILE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "PROP_STAT_FULL", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "coalesceCounter_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "FREQ_COALESCE_RATE", "I", .constantValue.asInt = NetI2pStatStatManager_FREQ_COALESCE_RATE, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "setStatLog", "LNetI2pStatStatLog;", "createFrequencyStat", "LNSString;LNSString;LNSString;[J", "createRequiredFrequencyStat", "createRateStat", "createRequiredRateStat", "removeRateStat", "LNSString;", "updateFrequency", "addRateData", "LNSString;JJ", "LNSString;J", "getFrequency", "getRate", "()Ljava/util/Set<Ljava/lang/String;>;", "isRate", "isFrequency", "()Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedSet<Ljava/lang/String;>;>;", "ignoreStat", "store", "LJavaIoOutputStream;LNSString;", "LJavaIoIOException;", "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lnet/i2p/stat/FrequencyStat;>;", "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lnet/i2p/stat/RateStat;>;", &NetI2pStatStatManager_PROP_STAT_FILTER, &NetI2pStatStatManager_PROP_STAT_FILE, &NetI2pStatStatManager_DEFAULT_STAT_FILE, &NetI2pStatStatManager_PROP_STAT_FULL };
  static const J2ObjcClassInfo _NetI2pStatStatManager = { "StatManager", "net.i2p.stat", ptrTable, methods, fields, 7, 0x1, 24, 10, -1, -1, -1, -1, -1 };
  return &_NetI2pStatStatManager;
}

@end

void NetI2pStatStatManager_initWithNetI2pI2PAppContext_(NetI2pStatStatManager *self, NetI2pI2PAppContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssignAndConsume(&self->_frequencyStats_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(8));
  JreStrongAssignAndConsume(&self->_rateStats_, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(128));
  NSString *filter = [self getStatFilter];
  if (filter != nil && [filter java_length] > 0) JreStrongAssignAndConsume(&self->_statLog_, new_NetI2pStatBufferedStatLog_initWithNetI2pI2PAppContext_(context));
}

NetI2pStatStatManager *new_NetI2pStatStatManager_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pStatStatManager, initWithNetI2pI2PAppContext_, context)
}

NetI2pStatStatManager *create_NetI2pStatStatManager_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pStatStatManager, initWithNetI2pI2PAppContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pStatStatManager)
