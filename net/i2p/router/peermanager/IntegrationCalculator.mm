//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/IntegrationCalculator.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/peermanager/IntegrationCalculator.h"
#include "net/i2p/router/peermanager/PeerProfile.h"
#include "net/i2p/stat/Rate.h"
#include "net/i2p/stat/RateStat.h"

@implementation NetI2pRouterPeermanagerIntegrationCalculator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterPeermanagerIntegrationCalculator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jdouble)calcWithNetI2pRouterPeermanagerPeerProfile:(NetI2pRouterPeermanagerPeerProfile *)profile {
  return NetI2pRouterPeermanagerIntegrationCalculator_calcWithNetI2pRouterPeermanagerPeerProfile_(profile);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(calcWithNetI2pRouterPeermanagerPeerProfile:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "calc", "LNetI2pRouterPeermanagerPeerProfile;" };
  static const J2ObjcClassInfo _NetI2pRouterPeermanagerIntegrationCalculator = { "IntegrationCalculator", "net.i2p.router.peermanager", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterPeermanagerIntegrationCalculator;
}

@end

void NetI2pRouterPeermanagerIntegrationCalculator_init(NetI2pRouterPeermanagerIntegrationCalculator *self) {
  NSObject_init(self);
}

NetI2pRouterPeermanagerIntegrationCalculator *new_NetI2pRouterPeermanagerIntegrationCalculator_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterPeermanagerIntegrationCalculator, init)
}

NetI2pRouterPeermanagerIntegrationCalculator *create_NetI2pRouterPeermanagerIntegrationCalculator_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterPeermanagerIntegrationCalculator, init)
}

jdouble NetI2pRouterPeermanagerIntegrationCalculator_calcWithNetI2pRouterPeermanagerPeerProfile_(NetI2pRouterPeermanagerPeerProfile *profile) {
  NetI2pRouterPeermanagerIntegrationCalculator_initialize();
  jlong val = 0;
  if ([((NetI2pRouterPeermanagerPeerProfile *) nil_chk(profile)) getIsExpandedDB]) {
    val = [((NetI2pStatRate *) nil_chk([((NetI2pStatRateStat *) nil_chk([profile getDbIntroduction])) getRateWithLong:24 * 60 * 60 * 1000l])) getCurrentEventCount];
    val += 2 * 4 * [((NetI2pStatRate *) nil_chk([((NetI2pStatRateStat *) nil_chk([profile getDbIntroduction])) getRateWithLong:6 * 60 * 60 * 1000l])) getLastEventCount];
    val += 3 * 4 * [((NetI2pStatRate *) nil_chk([((NetI2pStatRateStat *) nil_chk([profile getDbIntroduction])) getRateWithLong:6 * 60 * 60 * 1000l])) getCurrentEventCount];
    val += 4 * 24 * [((NetI2pStatRate *) nil_chk([((NetI2pStatRateStat *) nil_chk([profile getDbIntroduction])) getRateWithLong:60 * 60 * 1000l])) getCurrentEventCount];
    val /= 10;
  }
  val += [profile getIntegrationBonus];
  return val;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterPeermanagerIntegrationCalculator)
