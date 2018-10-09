//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/StatisticsManager.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/security/GeneralSecurityException.h"
#include "java/text/DecimalFormat.h"
#include "java/text/DecimalFormatSymbols.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/NetworkDatabaseFacade.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/RouterVersion.h"
#include "net/i2p/router/StatisticsManager.h"
#include "net/i2p/router/crypto/FamilyKeyCrypto.h"
#include "net/i2p/router/networkdb/kademlia/FloodfillNetworkDatabaseFacade.h"
#include "net/i2p/stat/Rate.h"
#include "net/i2p/stat/RateStat.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pRouterStatisticsManager () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pRouterRouterContext *_context_;
  NSString *_networkID_;
  JavaTextDecimalFormat *_fmt_;
  JavaTextDecimalFormat *_pct_;
}

- (void)includeRateWithNSString:(NSString *)rateName
         withJavaUtilProperties:(JavaUtilProperties *)stats
                  withLongArray:(IOSLongArray *)selectedPeriods
                    withBoolean:(jboolean)fudgeQuantity;

- (NSString *)renderRateWithNetI2pStatRate:(NetI2pStatRate *)rate
                               withBoolean:(jboolean)fudgeQuantity;

- (void)includeTunnelRatesWithNSString:(NSString *)tunnelType
                withJavaUtilProperties:(JavaUtilProperties *)stats
                              withLong:(jlong)selectedPeriod;

- (NSString *)renderRateWithNetI2pStatRate:(NetI2pStatRate *)rate
                                withDouble:(jdouble)fudgeQuantity;

- (void)includeAverageThroughputWithJavaUtilProperties:(JavaUtilProperties *)stats;

+ (NSString *)getPeriodWithNetI2pStatRate:(NetI2pStatRate *)rate;

- (NSString *)numWithDouble:(jdouble)num;

- (NSString *)pctWithDouble:(jdouble)num;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterStatisticsManager, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterStatisticsManager, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterStatisticsManager, _networkID_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pRouterStatisticsManager, _fmt_, JavaTextDecimalFormat *)
J2OBJC_FIELD_SETTER(NetI2pRouterStatisticsManager, _pct_, JavaTextDecimalFormat *)

inline NSString *NetI2pRouterStatisticsManager_get_PROP_CONTACT_NAME(void);
static NSString *NetI2pRouterStatisticsManager_PROP_CONTACT_NAME = @"netdb.contact";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStatisticsManager, PROP_CONTACT_NAME, NSString *)

inline jint NetI2pRouterStatisticsManager_get_RANDOM_INCLUDE_STATS(void);
#define NetI2pRouterStatisticsManager_RANDOM_INCLUDE_STATS 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterStatisticsManager, RANDOM_INCLUDE_STATS, jint)

inline IOSObjectArray *NetI2pRouterStatisticsManager_get_tunnelStats(void);
static IOSObjectArray *NetI2pRouterStatisticsManager_tunnelStats;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStatisticsManager, tunnelStats, IOSObjectArray *)

__attribute__((unused)) static void NetI2pRouterStatisticsManager_includeRateWithNSString_withJavaUtilProperties_withLongArray_withBoolean_(NetI2pRouterStatisticsManager *self, NSString *rateName, JavaUtilProperties *stats, IOSLongArray *selectedPeriods, jboolean fudgeQuantity);

__attribute__((unused)) static NSString *NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withBoolean_(NetI2pRouterStatisticsManager *self, NetI2pStatRate *rate, jboolean fudgeQuantity);

__attribute__((unused)) static void NetI2pRouterStatisticsManager_includeTunnelRatesWithNSString_withJavaUtilProperties_withLong_(NetI2pRouterStatisticsManager *self, NSString *tunnelType, JavaUtilProperties *stats, jlong selectedPeriod);

__attribute__((unused)) static NSString *NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withDouble_(NetI2pRouterStatisticsManager *self, NetI2pStatRate *rate, jdouble fudgeQuantity);

__attribute__((unused)) static void NetI2pRouterStatisticsManager_includeAverageThroughputWithJavaUtilProperties_(NetI2pRouterStatisticsManager *self, JavaUtilProperties *stats);

__attribute__((unused)) static NSString *NetI2pRouterStatisticsManager_getPeriodWithNetI2pStatRate_(NetI2pStatRate *rate);

__attribute__((unused)) static NSString *NetI2pRouterStatisticsManager_numWithDouble_(NetI2pRouterStatisticsManager *self, jdouble num);

__attribute__((unused)) static NSString *NetI2pRouterStatisticsManager_pctWithDouble_(NetI2pRouterStatisticsManager *self, jdouble num);

J2OBJC_INITIALIZED_DEFN(NetI2pRouterStatisticsManager)

NSString *NetI2pRouterStatisticsManager_PROP_PUBLISH_RANKINGS = @"router.publishPeerRankings";

@implementation NetI2pRouterStatisticsManager

+ (NSString *)PROP_PUBLISH_RANKINGS {
  return NetI2pRouterStatisticsManager_PROP_PUBLISH_RANKINGS;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context {
  NetI2pRouterStatisticsManager_initWithNetI2pRouterRouterContext_(self, context);
  return self;
}

- (JavaUtilProperties *)publishStatistics {
  return [self publishStatisticsWithNetI2pDataHash:[((NetI2pRouterRouterContext *) nil_chk(_context_)) routerHash]];
}

- (JavaUtilProperties *)publishStatisticsWithNetI2pDataHash:(NetI2pDataHash *)h {
  JavaUtilProperties *stats = create_JavaUtilProperties_init();
  [stats setPropertyWithNSString:@"router.version" withNSString:NetI2pRouterRouterVersion_VERSION];
  [stats setPropertyWithNSString:NetI2pDataRouterRouterInfo_PROP_NETWORK_ID withNSString:_networkID_];
  [stats setPropertyWithNSString:NetI2pDataRouterRouterInfo_PROP_CAPABILITIES withNSString:[((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) router])) getCapabilities]];
  if ([_context_ getBooleanPropertyDefaultTrueWithNSString:NetI2pRouterStatisticsManager_PROP_PUBLISH_RANKINGS] && [((NetI2pUtilRandomSource *) nil_chk([_context_ random])) nextIntWithInt:NetI2pRouterStatisticsManager_RANDOM_INCLUDE_STATS] == 0) {
    NetI2pRouterStatisticsManager_includeRateWithNSString_withJavaUtilProperties_withLongArray_withBoolean_(self, @"tunnel.participatingTunnels", stats, [IOSLongArray arrayWithLongs:(jlong[]){ 60 * 60 * 1000 } count:1], true);
    jlong rate = 60 * 60 * 1000;
    NetI2pRouterStatisticsManager_includeTunnelRatesWithNSString_withJavaUtilProperties_withLong_(self, @"Exploratory", stats, rate);
  }
  if (NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_isFloodfillWithNetI2pDataRouterRouterInfo_([((NetI2pRouterRouter *) nil_chk([_context_ router])) getRouterInfo])) {
    jint ri = [((NetI2pRouterRouter *) nil_chk([_context_ router])) getUptime] > 30 * 60 * 1000 ? [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([_context_ netDb])) getKnownRouters] : 3000 + [((NetI2pUtilRandomSource *) nil_chk([_context_ random])) nextIntWithInt:1000];
    [stats setPropertyWithNSString:@"netdb.knownRouters" withNSString:NSString_java_valueOfInt_(ri)];
    jint ls = [((NetI2pRouterRouter *) nil_chk([_context_ router])) getUptime] > 30 * 60 * 1000 ? [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([_context_ netDb])) getKnownLeaseSets] : 30 + [((NetI2pUtilRandomSource *) nil_chk([_context_ random])) nextIntWithInt:40];
    [stats setPropertyWithNSString:@"netdb.knownLeaseSets" withNSString:NSString_java_valueOfInt_(ls)];
  }
  NSString *contact = [_context_ getPropertyWithNSString:NetI2pRouterStatisticsManager_PROP_CONTACT_NAME];
  if (contact != nil) [stats setPropertyWithNSString:@"contact" withNSString:contact];
  NSString *family = [_context_ getPropertyWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_PROP_FAMILY_NAME];
  if (family != nil) {
    [stats setPropertyWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_OPT_NAME withNSString:family];
    NSString *sig = nil;
    NSString *key = nil;
    NetI2pDataRouterRouterInfo *oldRI = [((NetI2pRouterRouter *) nil_chk([_context_ router])) getRouterInfo];
    if (oldRI != nil) {
      if ([family isEqual:[oldRI getOptionWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_OPT_NAME]]) {
        key = [oldRI getOptionWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_OPT_KEY];
        if (key != nil) {
          if ([key java_contains:@";"]) {
            key = nil;
          }
          else {
            [stats setPropertyWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_OPT_KEY withNSString:key];
            sig = [oldRI getOptionWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_OPT_SIG];
            if (sig != nil) [stats setPropertyWithNSString:NetI2pRouterCryptoFamilyKeyCrypto_OPT_SIG withNSString:sig];
          }
        }
      }
    }
    if (sig == nil || key == nil) {
      NetI2pRouterCryptoFamilyKeyCrypto *fkc = [((NetI2pRouterRouter *) nil_chk([_context_ router])) getFamilyKeyCrypto];
      if (fkc != nil) {
        @try {
          [stats putAllWithJavaUtilMap:[fkc signWithNSString:family withNetI2pDataHash:h]];
        }
        @catch (JavaSecurityGeneralSecurityException *gse) {
          [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"Failed to sign router family" withJavaLangThrowable:gse];
          [stats removeWithId:NetI2pRouterCryptoFamilyKeyCrypto_OPT_KEY];
          [stats removeWithId:NetI2pRouterCryptoFamilyKeyCrypto_OPT_SIG];
        }
      }
    }
  }
  return stats;
}

- (void)includeRateWithNSString:(NSString *)rateName
         withJavaUtilProperties:(JavaUtilProperties *)stats
                  withLongArray:(IOSLongArray *)selectedPeriods
                    withBoolean:(jboolean)fudgeQuantity {
  NetI2pRouterStatisticsManager_includeRateWithNSString_withJavaUtilProperties_withLongArray_withBoolean_(self, rateName, stats, selectedPeriods, fudgeQuantity);
}

- (NSString *)renderRateWithNetI2pStatRate:(NetI2pStatRate *)rate
                               withBoolean:(jboolean)fudgeQuantity {
  return NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withBoolean_(self, rate, fudgeQuantity);
}

- (void)includeTunnelRatesWithNSString:(NSString *)tunnelType
                withJavaUtilProperties:(JavaUtilProperties *)stats
                              withLong:(jlong)selectedPeriod {
  NetI2pRouterStatisticsManager_includeTunnelRatesWithNSString_withJavaUtilProperties_withLong_(self, tunnelType, stats, selectedPeriod);
}

- (NSString *)renderRateWithNetI2pStatRate:(NetI2pStatRate *)rate
                                withDouble:(jdouble)fudgeQuantity {
  return NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withDouble_(self, rate, fudgeQuantity);
}

- (void)includeAverageThroughputWithJavaUtilProperties:(JavaUtilProperties *)stats {
  NetI2pRouterStatisticsManager_includeAverageThroughputWithJavaUtilProperties_(self, stats);
}

+ (NSString *)getPeriodWithNetI2pStatRate:(NetI2pStatRate *)rate {
  return NetI2pRouterStatisticsManager_getPeriodWithNetI2pStatRate_(rate);
}

- (NSString *)numWithDouble:(jdouble)num {
  return NetI2pRouterStatisticsManager_numWithDouble_(self, num);
}

- (NSString *)pctWithDouble:(jdouble)num {
  return NetI2pRouterStatisticsManager_pctWithDouble_(self, num);
}

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg {
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_context_);
  RELEASE_(_networkID_);
  RELEASE_(_fmt_);
  RELEASE_(_pct_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilProperties;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilProperties;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 5, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 10, 11, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 12, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x12, 14, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x12, 16, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(publishStatistics);
  methods[2].selector = @selector(publishStatisticsWithNetI2pDataHash:);
  methods[3].selector = @selector(includeRateWithNSString:withJavaUtilProperties:withLongArray:withBoolean:);
  methods[4].selector = @selector(renderRateWithNetI2pStatRate:withBoolean:);
  methods[5].selector = @selector(includeTunnelRatesWithNSString:withJavaUtilProperties:withLong:);
  methods[6].selector = @selector(renderRateWithNetI2pStatRate:withDouble:);
  methods[7].selector = @selector(includeAverageThroughputWithJavaUtilProperties:);
  methods[8].selector = @selector(getPeriodWithNetI2pStatRate:);
  methods[9].selector = @selector(numWithDouble:);
  methods[10].selector = @selector(pctWithDouble:);
  methods[11].selector = @selector(renderStatusHTMLWithJavaIoWriter:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_networkID_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "PROP_PUBLISH_RANKINGS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "PROP_CONTACT_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "RANDOM_INCLUDE_STATS", "I", .constantValue.asInt = NetI2pRouterStatisticsManager_RANDOM_INCLUDE_STATS, 0x1a, -1, -1, -1, -1 },
    { "_fmt_", "LJavaTextDecimalFormat;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_pct_", "LJavaTextDecimalFormat;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "tunnelStats", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "publishStatistics", "LNetI2pDataHash;", "includeRate", "LNSString;LJavaUtilProperties;[JZ", "renderRate", "LNetI2pStatRate;Z", "includeTunnelRates", "LNSString;LJavaUtilProperties;J", "LNetI2pStatRate;D", "includeAverageThroughput", "LJavaUtilProperties;", "getPeriod", "LNetI2pStatRate;", "num", "D", "pct", "renderStatusHTML", "LJavaIoWriter;", &NetI2pRouterStatisticsManager_PROP_PUBLISH_RANKINGS, &NetI2pRouterStatisticsManager_PROP_CONTACT_NAME, &NetI2pRouterStatisticsManager_tunnelStats };
  static const J2ObjcClassInfo _NetI2pRouterStatisticsManager = { "StatisticsManager", "net.i2p.router", ptrTable, methods, fields, 7, 0x1, 12, 9, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterStatisticsManager;
}

+ (void)initialize {
  if (self == [NetI2pRouterStatisticsManager class]) {
    JreStrongAssignAndConsume(&NetI2pRouterStatisticsManager_tunnelStats, [IOSObjectArray newArrayWithObjects:(id[]){ @"Expire", @"Reject", @"Success" } count:3 type:NSString_class_()]);
    J2OBJC_SET_INITIALIZED(NetI2pRouterStatisticsManager)
  }
}

@end

void NetI2pRouterStatisticsManager_initWithNetI2pRouterRouterContext_(NetI2pRouterStatisticsManager *self, NetI2pRouterRouterContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssignAndConsume(&self->_fmt_, new_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(@"###,##0.00", create_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(JreLoadStatic(JavaUtilLocale, UK))));
  JreStrongAssignAndConsume(&self->_pct_, new_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(@"#0.00%", create_JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(JreLoadStatic(JavaUtilLocale, UK))));
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pRouterStatisticsManager_class_()]);
  JreStrongAssign(&self->_networkID_, JavaLangInteger_toStringWithInt_([((NetI2pRouterRouter *) nil_chk([context router])) getNetworkID]));
}

NetI2pRouterStatisticsManager *new_NetI2pRouterStatisticsManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_NEW_IMPL(NetI2pRouterStatisticsManager, initWithNetI2pRouterRouterContext_, context)
}

NetI2pRouterStatisticsManager *create_NetI2pRouterStatisticsManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStatisticsManager, initWithNetI2pRouterRouterContext_, context)
}

void NetI2pRouterStatisticsManager_includeRateWithNSString_withJavaUtilProperties_withLongArray_withBoolean_(NetI2pRouterStatisticsManager *self, NSString *rateName, JavaUtilProperties *stats, IOSLongArray *selectedPeriods, jboolean fudgeQuantity) {
  NetI2pStatRateStat *rate = [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) getRateWithNSString:rateName];
  if (rate == nil) return;
  IOSLongArray *periods = [rate getPeriods];
  for (jint i = 0; i < ((IOSLongArray *) nil_chk(periods))->size_; i++) {
    if (IOSLongArray_Get(periods, i) > [((NetI2pRouterRouter *) nil_chk([self->_context_ router])) getUptime]) continue;
    if (selectedPeriods != nil) {
      jboolean found = false;
      for (jint j = 0; j < selectedPeriods->size_; j++) {
        if (IOSLongArray_Get(selectedPeriods, j) == IOSLongArray_Get(periods, i)) {
          found = true;
          break;
        }
      }
      if (!found) continue;
    }
    NetI2pStatRate *curRate = [rate getRateWithLong:IOSLongArray_Get(periods, i)];
    if (curRate == nil) continue;
    if ([curRate getLifetimeEventCount] <= 0) continue;
    [((JavaUtilProperties *) nil_chk(stats)) setPropertyWithNSString:JreStrcat("$$C$", @"stat_", rateName, '.', NetI2pRouterStatisticsManager_getPeriodWithNetI2pStatRate_(curRate)) withNSString:NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withBoolean_(self, curRate, fudgeQuantity)];
  }
}

NSString *NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withBoolean_(NetI2pRouterStatisticsManager *self, NetI2pStatRate *rate, jboolean fudgeQuantity) {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(128);
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [((NetI2pStatRate *) nil_chk(rate)) getAverageValue])])) appendWithChar:';'];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getExtremeAverageValue])])) appendWithChar:';'];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_pctWithDouble_(self, [rate getPercentageOfLifetimeValue])])) appendWithChar:';'];
  if ([rate getLifetimeTotalEventTime] > 0) {
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_pctWithDouble_(self, [rate getLastEventSaturation])])) appendWithChar:';'];
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getLastSaturationLimit])])) appendWithChar:';'];
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_pctWithDouble_(self, [rate getExtremeEventSaturation])])) appendWithChar:';'];
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getExtremeSaturationLimit])])) appendWithChar:';'];
  }
  jlong numPeriods = [rate getLifetimePeriods];
  if (fudgeQuantity) {
    [buf appendWithNSString:@"555;"];
    if (numPeriods > 0) {
      [buf appendWithNSString:@"555;555;"];
    }
  }
  else {
    [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getLastEventCount])])) appendWithChar:';'];
    if (numPeriods > 0) {
      jdouble avgFrequency = [rate getLifetimeEventCount] / (jdouble) numPeriods;
      [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, avgFrequency)])) appendWithChar:';'];
      [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getExtremeEventCount])])) appendWithChar:';'];
      [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getLifetimeEventCount])])) appendWithChar:';'];
    }
  }
  return [buf description];
}

void NetI2pRouterStatisticsManager_includeTunnelRatesWithNSString_withJavaUtilProperties_withLong_(NetI2pRouterStatisticsManager *self, NSString *tunnelType, JavaUtilProperties *stats, jlong selectedPeriod) {
  jlong totalEvents = 0;
  {
    IOSObjectArray *a__ = NetI2pRouterStatisticsManager_tunnelStats;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *tunnelStat = *b__++;
      NSString *rateName = JreStrcat("$$$", @"tunnel.build", tunnelType, tunnelStat);
      NetI2pStatRateStat *stat = [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) getRateWithNSString:rateName];
      if (stat == nil) continue;
      NetI2pStatRate *curRate = [stat getRateWithLong:selectedPeriod];
      if (curRate == nil) continue;
      totalEvents += [curRate getLastEventCount];
    }
  }
  if (totalEvents <= 0) return;
  {
    IOSObjectArray *a__ = NetI2pRouterStatisticsManager_tunnelStats;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *tunnelStat = *b__++;
      NSString *rateName = JreStrcat("$$$", @"tunnel.build", tunnelType, tunnelStat);
      NetI2pStatRateStat *stat = [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) getRateWithNSString:rateName];
      if (stat == nil) continue;
      NetI2pStatRate *curRate = [stat getRateWithLong:selectedPeriod];
      if (curRate == nil) continue;
      jdouble fudgeQuantity = 100.0 * [curRate getLastEventCount] / totalEvents;
      [((JavaUtilProperties *) nil_chk(stats)) setPropertyWithNSString:JreStrcat("$$C$", @"stat_", rateName, '.', NetI2pRouterStatisticsManager_getPeriodWithNetI2pStatRate_(curRate)) withNSString:NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withDouble_(self, curRate, fudgeQuantity)];
    }
  }
}

NSString *NetI2pRouterStatisticsManager_renderRateWithNetI2pStatRate_withDouble_(NetI2pRouterStatisticsManager *self, NetI2pStatRate *rate, jdouble fudgeQuantity) {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(128);
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [((NetI2pStatRate *) nil_chk(rate)) getAverageValue])])) appendWithChar:';'];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, [rate getExtremeAverageValue])])) appendWithChar:';'];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_pctWithDouble_(self, [rate getPercentageOfLifetimeValue])])) appendWithChar:';'];
  if ([rate getLifetimeTotalEventTime] > 0) {
    [buf appendWithNSString:@"0;0;0;0;"];
  }
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStatisticsManager_numWithDouble_(self, fudgeQuantity)])) appendWithChar:';'];
  return [buf description];
}

void NetI2pRouterStatisticsManager_includeAverageThroughputWithJavaUtilProperties_(NetI2pRouterStatisticsManager *self, JavaUtilProperties *stats) {
  NetI2pStatRateStat *sendRate = [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) getRateWithNSString:@"bw.sendRate"];
  NetI2pStatRateStat *recvRate = [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) getRateWithNSString:@"bw.recvRate"];
  if (sendRate == nil || recvRate == nil) return;
  NetI2pStatRate *s = [sendRate getRateWithLong:60 * 60 * 1000];
  NetI2pStatRate *r = [recvRate getRateWithLong:60 * 60 * 1000];
  if (s == nil || r == nil) return;
  jdouble speed = ([s getAverageValue] + [r getAverageValue]) / 2;
  jdouble max = JavaLangMath_maxWithDouble_withDouble_([s getExtremeAverageValue], [r getExtremeAverageValue]);
  NSString *str = JreStrcat("$C$$", NetI2pRouterStatisticsManager_numWithDouble_(self, speed), ';', NetI2pRouterStatisticsManager_numWithDouble_(self, max), @";0;0;");
  [((JavaUtilProperties *) nil_chk(stats)) setPropertyWithNSString:@"stat_bandwidthSendBps.60m" withNSString:str];
  [stats setPropertyWithNSString:@"stat_bandwidthReceiveBps.60m" withNSString:str];
}

NSString *NetI2pRouterStatisticsManager_getPeriodWithNetI2pStatRate_(NetI2pStatRate *rate) {
  NetI2pRouterStatisticsManager_initialize();
  return NetI2pDataDataHelper_formatDurationWithLong_([((NetI2pStatRate *) nil_chk(rate)) getPeriod]);
}

NSString *NetI2pRouterStatisticsManager_numWithDouble_(NetI2pRouterStatisticsManager *self, jdouble num) {
  if (num < 0) num = 0;
  @synchronized(self->_fmt_) {
    return JreRetainedLocalValue([((JavaTextDecimalFormat *) nil_chk(self->_fmt_)) formatWithDouble:num]);
  }
}

NSString *NetI2pRouterStatisticsManager_pctWithDouble_(NetI2pRouterStatisticsManager *self, jdouble num) {
  if (num < 0) num = 0;
  @synchronized(self->_pct_) {
    return JreRetainedLocalValue([((JavaTextDecimalFormat *) nil_chk(self->_pct_)) formatWithDouble:num]);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStatisticsManager)
