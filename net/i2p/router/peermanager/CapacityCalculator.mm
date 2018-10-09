//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/CapacityCalculator.java
//

#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NumberFormatException.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/NetworkDatabaseFacade.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/networkdb/kademlia/FloodfillNetworkDatabaseFacade.h"
#include "net/i2p/router/peermanager/CapacityCalculator.h"
#include "net/i2p/router/peermanager/PeerProfile.h"
#include "net/i2p/router/peermanager/TunnelHistory.h"
#include "net/i2p/stat/Rate.h"
#include "net/i2p/stat/RateAverages.h"
#include "net/i2p/stat/RateStat.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pRouterPeermanagerCapacityCalculator ()

+ (jboolean)tooOldWithNetI2pRouterPeermanagerPeerProfile:(NetI2pRouterPeermanagerPeerProfile *)profile;

+ (jdouble)estimateCapacityWithNetI2pStatRateStat:(NetI2pStatRateStat *)acceptStat
                           withNetI2pStatRateStat:(NetI2pStatRateStat *)rejectStat
                           withNetI2pStatRateStat:(NetI2pStatRateStat *)failedStat
                                          withInt:(jint)period;

+ (jdouble)periodWeightWithInt:(jint)period;

@end

inline jlong NetI2pRouterPeermanagerCapacityCalculator_get_ESTIMATE_PERIOD(void);
inline jlong NetI2pRouterPeermanagerCapacityCalculator_set_ESTIMATE_PERIOD(jlong value);
inline jlong *NetI2pRouterPeermanagerCapacityCalculator_getRef_ESTIMATE_PERIOD(void);
static jlong NetI2pRouterPeermanagerCapacityCalculator_ESTIMATE_PERIOD = 3600000;
J2OBJC_STATIC_FIELD_PRIMITIVE(NetI2pRouterPeermanagerCapacityCalculator, ESTIMATE_PERIOD, jlong)

inline jdouble NetI2pRouterPeermanagerCapacityCalculator_get_BONUS_NEW(void);
#define NetI2pRouterPeermanagerCapacityCalculator_BONUS_NEW 0.85
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterPeermanagerCapacityCalculator, BONUS_NEW, jdouble)

inline jdouble NetI2pRouterPeermanagerCapacityCalculator_get_BONUS_ESTABLISHED(void);
#define NetI2pRouterPeermanagerCapacityCalculator_BONUS_ESTABLISHED 0.65
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterPeermanagerCapacityCalculator, BONUS_ESTABLISHED, jdouble)

inline jdouble NetI2pRouterPeermanagerCapacityCalculator_get_BONUS_SAME_COUNTRY(void);
#define NetI2pRouterPeermanagerCapacityCalculator_BONUS_SAME_COUNTRY 0.0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterPeermanagerCapacityCalculator, BONUS_SAME_COUNTRY, jdouble)

inline jdouble NetI2pRouterPeermanagerCapacityCalculator_get_BONUS_XOR(void);
#define NetI2pRouterPeermanagerCapacityCalculator_BONUS_XOR 0.25
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterPeermanagerCapacityCalculator, BONUS_XOR, jdouble)

inline jdouble NetI2pRouterPeermanagerCapacityCalculator_get_PENALTY_UNREACHABLE(void);
#define NetI2pRouterPeermanagerCapacityCalculator_PENALTY_UNREACHABLE 2.0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterPeermanagerCapacityCalculator, PENALTY_UNREACHABLE, jdouble)

inline jdouble NetI2pRouterPeermanagerCapacityCalculator_get_BONUS_NON_FLOODFILL(void);
#define NetI2pRouterPeermanagerCapacityCalculator_BONUS_NON_FLOODFILL 1.0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterPeermanagerCapacityCalculator, BONUS_NON_FLOODFILL, jdouble)

__attribute__((unused)) static jboolean NetI2pRouterPeermanagerCapacityCalculator_tooOldWithNetI2pRouterPeermanagerPeerProfile_(NetI2pRouterPeermanagerPeerProfile *profile);

__attribute__((unused)) static jdouble NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(NetI2pStatRateStat *acceptStat, NetI2pStatRateStat *rejectStat, NetI2pStatRateStat *failedStat, jint period);

__attribute__((unused)) static jdouble NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(jint period);

NSString *NetI2pRouterPeermanagerCapacityCalculator_PROP_COUNTRY_BONUS = @"profileOrganizer.sameCountryBonus";

@implementation NetI2pRouterPeermanagerCapacityCalculator

+ (NSString *)PROP_COUNTRY_BONUS {
  return NetI2pRouterPeermanagerCapacityCalculator_PROP_COUNTRY_BONUS;
}

+ (jlong)GROWTH_FACTOR {
  return NetI2pRouterPeermanagerCapacityCalculator_GROWTH_FACTOR;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterPeermanagerCapacityCalculator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jdouble)calcWithNetI2pRouterPeermanagerPeerProfile:(NetI2pRouterPeermanagerPeerProfile *)profile {
  return NetI2pRouterPeermanagerCapacityCalculator_calcWithNetI2pRouterPeermanagerPeerProfile_(profile);
}

+ (jboolean)tooOldWithNetI2pRouterPeermanagerPeerProfile:(NetI2pRouterPeermanagerPeerProfile *)profile {
  return NetI2pRouterPeermanagerCapacityCalculator_tooOldWithNetI2pRouterPeermanagerPeerProfile_(profile);
}

+ (jdouble)estimateCapacityWithNetI2pStatRateStat:(NetI2pStatRateStat *)acceptStat
                           withNetI2pStatRateStat:(NetI2pStatRateStat *)rejectStat
                           withNetI2pStatRateStat:(NetI2pStatRateStat *)failedStat
                                          withInt:(jint)period {
  return NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(acceptStat, rejectStat, failedStat, period);
}

+ (jdouble)periodWeightWithInt:(jint)period {
  return NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(period);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 2, 1, -1, -1, -1, -1 },
    { NULL, "D", 0xa, 3, 4, -1, -1, -1, -1 },
    { NULL, "D", 0xa, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(calcWithNetI2pRouterPeermanagerPeerProfile:);
  methods[2].selector = @selector(tooOldWithNetI2pRouterPeermanagerPeerProfile:);
  methods[3].selector = @selector(estimateCapacityWithNetI2pStatRateStat:withNetI2pStatRateStat:withNetI2pStatRateStat:withInt:);
  methods[4].selector = @selector(periodWeightWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROP_COUNTRY_BONUS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "GROWTH_FACTOR", "J", .constantValue.asLong = NetI2pRouterPeermanagerCapacityCalculator_GROWTH_FACTOR, 0x18, -1, -1, -1, -1 },
    { "ESTIMATE_PERIOD", "J", .constantValue.asLong = 0, 0xa, -1, 8, -1, -1 },
    { "BONUS_NEW", "D", .constantValue.asDouble = NetI2pRouterPeermanagerCapacityCalculator_BONUS_NEW, 0x1a, -1, -1, -1, -1 },
    { "BONUS_ESTABLISHED", "D", .constantValue.asDouble = NetI2pRouterPeermanagerCapacityCalculator_BONUS_ESTABLISHED, 0x1a, -1, -1, -1, -1 },
    { "BONUS_SAME_COUNTRY", "D", .constantValue.asDouble = NetI2pRouterPeermanagerCapacityCalculator_BONUS_SAME_COUNTRY, 0x1a, -1, -1, -1, -1 },
    { "BONUS_XOR", "D", .constantValue.asDouble = NetI2pRouterPeermanagerCapacityCalculator_BONUS_XOR, 0x1a, -1, -1, -1, -1 },
    { "PENALTY_UNREACHABLE", "D", .constantValue.asDouble = NetI2pRouterPeermanagerCapacityCalculator_PENALTY_UNREACHABLE, 0x1a, -1, -1, -1, -1 },
    { "BONUS_NON_FLOODFILL", "D", .constantValue.asDouble = NetI2pRouterPeermanagerCapacityCalculator_BONUS_NON_FLOODFILL, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "calc", "LNetI2pRouterPeermanagerPeerProfile;", "tooOld", "estimateCapacity", "LNetI2pStatRateStat;LNetI2pStatRateStat;LNetI2pStatRateStat;I", "periodWeight", "I", &NetI2pRouterPeermanagerCapacityCalculator_PROP_COUNTRY_BONUS, &NetI2pRouterPeermanagerCapacityCalculator_ESTIMATE_PERIOD };
  static const J2ObjcClassInfo _NetI2pRouterPeermanagerCapacityCalculator = { "CapacityCalculator", "net.i2p.router.peermanager", ptrTable, methods, fields, 7, 0x0, 5, 9, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterPeermanagerCapacityCalculator;
}

@end

void NetI2pRouterPeermanagerCapacityCalculator_init(NetI2pRouterPeermanagerCapacityCalculator *self) {
  NSObject_init(self);
}

NetI2pRouterPeermanagerCapacityCalculator *new_NetI2pRouterPeermanagerCapacityCalculator_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterPeermanagerCapacityCalculator, init)
}

NetI2pRouterPeermanagerCapacityCalculator *create_NetI2pRouterPeermanagerCapacityCalculator_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterPeermanagerCapacityCalculator, init)
}

jdouble NetI2pRouterPeermanagerCapacityCalculator_calcWithNetI2pRouterPeermanagerPeerProfile_(NetI2pRouterPeermanagerPeerProfile *profile) {
  NetI2pRouterPeermanagerCapacityCalculator_initialize();
  jdouble capacity;
  if (NetI2pRouterPeermanagerCapacityCalculator_tooOldWithNetI2pRouterPeermanagerPeerProfile_(profile)) {
    capacity = 1;
  }
  else {
    NetI2pStatRateStat *acceptStat = [((NetI2pRouterPeermanagerPeerProfile *) nil_chk(profile)) getTunnelCreateResponseTime];
    NetI2pStatRateStat *rejectStat = [((NetI2pRouterPeermanagerTunnelHistory *) nil_chk([profile getTunnelHistory])) getRejectionRate];
    NetI2pStatRateStat *failedStat = [((NetI2pRouterPeermanagerTunnelHistory *) nil_chk([profile getTunnelHistory])) getFailedRate];
    jdouble capacity10m = NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(acceptStat, rejectStat, failedStat, 10 * 60 * 1000);
    if (capacity10m <= 0) {
      capacity = 0;
    }
    else {
      jdouble capacity30m = NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(acceptStat, rejectStat, failedStat, 30 * 60 * 1000);
      jdouble capacity60m = NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(acceptStat, rejectStat, failedStat, 60 * 60 * 1000);
      jdouble capacity1d = NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(acceptStat, rejectStat, failedStat, 24 * 60 * 60 * 1000);
      capacity = capacity10m * NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(10 * 60 * 1000) + capacity30m * NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(30 * 60 * 1000) + capacity60m * NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(60 * 60 * 1000) + capacity1d * NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(24 * 60 * 60 * 1000);
    }
  }
  NetI2pRouterRouterContext *context = [((NetI2pRouterPeermanagerPeerProfile *) nil_chk(profile)) getContext];
  jlong now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) clock])) now];
  if ([((NetI2pRouterPeermanagerTunnelHistory *) nil_chk([profile getTunnelHistory])) getLastRejectedTransient] > now - 5 * 60 * 1000) capacity = 1;
  else if ([((NetI2pRouterPeermanagerTunnelHistory *) nil_chk([profile getTunnelHistory])) getLastRejectedProbabalistic] > now - 5 * 60 * 1000) JreMinusAssignDoubleD(&capacity, [((NetI2pUtilRandomSource *) nil_chk([context random])) nextIntWithInt:5]);
  if (now - [profile getFirstHeardAbout] < 45 * 60 * 1000) JrePlusAssignDoubleD(&capacity, NetI2pRouterPeermanagerCapacityCalculator_BONUS_NEW);
  if ([profile isEstablished]) JrePlusAssignDoubleD(&capacity, NetI2pRouterPeermanagerCapacityCalculator_BONUS_ESTABLISHED);
  if ([profile isSameCountry]) {
    jdouble bonus = NetI2pRouterPeermanagerCapacityCalculator_BONUS_SAME_COUNTRY;
    NSString *b = [context getPropertyWithNSString:NetI2pRouterPeermanagerCapacityCalculator_PROP_COUNTRY_BONUS];
    if (b != nil) {
      @try {
        bonus = JavaLangDouble_parseDoubleWithNSString_(b);
      }
      @catch (JavaLangNumberFormatException *nfe) {
      }
    }
    JrePlusAssignDoubleD(&capacity, bonus);
  }
  if ([profile wasUnreachable]) JreMinusAssignDoubleD(&capacity, NetI2pRouterPeermanagerCapacityCalculator_PENALTY_UNREACHABLE);
  NetI2pDataRouterRouterInfo *ri = [((NetI2pRouterNetworkDatabaseFacade *) nil_chk([context netDb])) lookupRouterInfoLocallyWithNetI2pDataHash:[profile getPeer]];
  if (!NetI2pRouterNetworkdbKademliaFloodfillNetworkDatabaseFacade_isFloodfillWithNetI2pDataRouterRouterInfo_(ri)) JrePlusAssignDoubleD(&capacity, NetI2pRouterPeermanagerCapacityCalculator_BONUS_NON_FLOODFILL);
  JreMinusAssignDoubleD(&capacity, [profile getXORDistance] * (NetI2pRouterPeermanagerCapacityCalculator_BONUS_XOR / 128));
  JrePlusAssignDoubleD(&capacity, [profile getCapacityBonus]);
  if (capacity < 0) capacity = 0;
  return capacity;
}

jboolean NetI2pRouterPeermanagerCapacityCalculator_tooOldWithNetI2pRouterPeermanagerPeerProfile_(NetI2pRouterPeermanagerPeerProfile *profile) {
  NetI2pRouterPeermanagerCapacityCalculator_initialize();
  if ([((NetI2pRouterPeermanagerPeerProfile *) nil_chk(profile)) getIsActiveWithLong:60 * 60 * 1000]) return false;
  else return true;
}

jdouble NetI2pRouterPeermanagerCapacityCalculator_estimateCapacityWithNetI2pStatRateStat_withNetI2pStatRateStat_withNetI2pStatRateStat_withInt_(NetI2pStatRateStat *acceptStat, NetI2pStatRateStat *rejectStat, NetI2pStatRateStat *failedStat, jint period) {
  NetI2pRouterPeermanagerCapacityCalculator_initialize();
  NetI2pStatRate *curAccepted = [((NetI2pStatRateStat *) nil_chk(acceptStat)) getRateWithLong:period];
  NetI2pStatRate *curRejected = [((NetI2pStatRateStat *) nil_chk(rejectStat)) getRateWithLong:period];
  NetI2pStatRate *curFailed = [((NetI2pStatRateStat *) nil_chk(failedStat)) getRateWithLong:period];
  NetI2pStatRateAverages *ra = NetI2pStatRateAverages_getTemp();
  jdouble eventCount = 0;
  if (curAccepted != nil) {
    eventCount = [((NetI2pStatRateAverages *) nil_chk([curAccepted computeAveragesWithNetI2pStatRateAverages:ra withBoolean:false])) getTotalEventCount];
    if (eventCount > 0 && curRejected != nil) {
      jlong rejected = [((NetI2pStatRateAverages *) nil_chk([curRejected computeAveragesWithNetI2pStatRateAverages:ra withBoolean:false])) getTotalEventCount];
      if (rejected > 0) JreTimesAssignDoubleD(&eventCount, eventCount / (eventCount + (2 * rejected)));
    }
  }
  jdouble stretch = ((jdouble) NetI2pRouterPeermanagerCapacityCalculator_ESTIMATE_PERIOD) / period;
  jdouble val = eventCount * stretch;
  if (curFailed != nil) {
    jdouble failed = [((NetI2pStatRateAverages *) nil_chk([curFailed computeAveragesWithNetI2pStatRateAverages:ra withBoolean:false])) getTotalValues];
    if (failed > 0) {
      JreMinusAssignDoubleD(&val, 0.04 * failed * stretch);
    }
  }
  JrePlusAssignDoubleD(&val, NetI2pRouterPeermanagerCapacityCalculator_GROWTH_FACTOR);
  if (val >= 0) {
    return val;
  }
  else {
    return 0.0;
  }
}

jdouble NetI2pRouterPeermanagerCapacityCalculator_periodWeightWithInt_(jint period) {
  NetI2pRouterPeermanagerCapacityCalculator_initialize();
  switch (period) {
    case 10 * 60 * 1000:
    return .4;
    case 30 * 60 * 1000:
    return .3;
    case 60 * 60 * 1000:
    return .2;
    case 24 * 60 * 60 * 1000:
    return .1;
    default:
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$", @"undefined period passed, period [", period, @"]???"));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterPeermanagerCapacityCalculator)