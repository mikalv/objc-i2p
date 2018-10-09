//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/TunnelManagerFacade.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "net/i2p/router/TunnelManagerFacade.h"

@interface NetI2pRouterTunnelManagerFacade : NSObject

@end

__attribute__((unused)) static IOSObjectArray *NetI2pRouterTunnelManagerFacade__Annotations$0(void);

@implementation NetI2pRouterTunnelManagerFacade

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 0, 1, -1, -1, 2, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 5, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 6, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 3, 7, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 8, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelInfo;", 0x401, 5, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 11, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 12, -1, -1 },
    { NULL, "V", 0x401, 13, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 17, 18, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolSettings;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolSettings;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolSettings;", 0x401, 19, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolSettings;", 0x401, 20, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 21, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 23, 22, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 21, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 23, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 25, 26, -1, 27, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x401, -1, -1, -1, 28, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x401, -1, -1, -1, 28, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolTunnelPool;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolTunnelPool;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolTunnelPool;", 0x401, 29, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTunnelPoolTunnelPool;", 0x401, 30, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 31, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getTunnelInfoWithNetI2pDataTunnelId:);
  methods[1].selector = @selector(selectInboundTunnel);
  methods[2].selector = @selector(selectInboundTunnelWithNetI2pDataHash:);
  methods[3].selector = @selector(selectOutboundTunnel);
  methods[4].selector = @selector(selectOutboundTunnelWithNetI2pDataHash:);
  methods[5].selector = @selector(selectInboundExploratoryTunnelWithNetI2pDataHash:);
  methods[6].selector = @selector(selectInboundTunnelWithNetI2pDataHash:withNetI2pDataHash:);
  methods[7].selector = @selector(selectOutboundExploratoryTunnelWithNetI2pDataHash:);
  methods[8].selector = @selector(selectOutboundTunnelWithNetI2pDataHash:withNetI2pDataHash:);
  methods[9].selector = @selector(isValidTunnelWithNetI2pDataHash:withNetI2pRouterTunnelInfo:);
  methods[10].selector = @selector(getParticipatingCount);
  methods[11].selector = @selector(getFreeTunnelCount);
  methods[12].selector = @selector(getOutboundTunnelCount);
  methods[13].selector = @selector(getInboundClientTunnelCount);
  methods[14].selector = @selector(getOutboundClientTunnelCount);
  methods[15].selector = @selector(getOutboundClientTunnelCountWithNetI2pDataHash:);
  methods[16].selector = @selector(getShareRatio);
  methods[17].selector = @selector(getLastParticipatingExpiration);
  methods[18].selector = @selector(getInboundBuildQueueSize);
  methods[19].selector = @selector(selectPeersInTooManyTunnels);
  methods[20].selector = @selector(buildTunnelsWithNetI2pDataDestination:withNetI2pRouterClientTunnelSettings:);
  methods[21].selector = @selector(addAliasWithNetI2pDataDestination:withNetI2pRouterClientTunnelSettings:withNetI2pDataDestination:);
  methods[22].selector = @selector(removeAliasWithNetI2pDataDestination:);
  methods[23].selector = @selector(getInboundSettings);
  methods[24].selector = @selector(getOutboundSettings);
  methods[25].selector = @selector(getInboundSettingsWithNetI2pDataHash:);
  methods[26].selector = @selector(getOutboundSettingsWithNetI2pDataHash:);
  methods[27].selector = @selector(setInboundSettingsWithNetI2pRouterTunnelPoolSettings:);
  methods[28].selector = @selector(setOutboundSettingsWithNetI2pRouterTunnelPoolSettings:);
  methods[29].selector = @selector(setInboundSettingsWithNetI2pDataHash:withNetI2pRouterTunnelPoolSettings:);
  methods[30].selector = @selector(setOutboundSettingsWithNetI2pDataHash:withNetI2pRouterTunnelPoolSettings:);
  methods[31].selector = @selector(listPoolsWithJavaUtilList:);
  methods[32].selector = @selector(getInboundClientPools);
  methods[33].selector = @selector(getOutboundClientPools);
  methods[34].selector = @selector(getInboundExploratoryPool);
  methods[35].selector = @selector(getOutboundExploratoryPool);
  methods[36].selector = @selector(getInboundPoolWithNetI2pDataHash:);
  methods[37].selector = @selector(getOutboundPoolWithNetI2pDataHash:);
  methods[38].selector = @selector(failWithNetI2pDataHash:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getTunnelInfo", "LNetI2pDataTunnelId;", (void *)&NetI2pRouterTunnelManagerFacade__Annotations$0, "selectInboundTunnel", "LNetI2pDataHash;", "selectOutboundTunnel", "selectInboundExploratoryTunnel", "LNetI2pDataHash;LNetI2pDataHash;", "selectOutboundExploratoryTunnel", "isValidTunnel", "LNetI2pDataHash;LNetI2pRouterTunnelInfo;", "getOutboundClientTunnelCount", "()Ljava/util/Set<Lnet/i2p/data/Hash;>;", "buildTunnels", "LNetI2pDataDestination;LNetI2pRouterClientTunnelSettings;", "addAlias", "LNetI2pDataDestination;LNetI2pRouterClientTunnelSettings;LNetI2pDataDestination;", "removeAlias", "LNetI2pDataDestination;", "getInboundSettings", "getOutboundSettings", "setInboundSettings", "LNetI2pRouterTunnelPoolSettings;", "setOutboundSettings", "LNetI2pDataHash;LNetI2pRouterTunnelPoolSettings;", "listPools", "LJavaUtilList;", "(Ljava/util/List<Lnet/i2p/router/tunnel/pool/TunnelPool;>;)V", "()Ljava/util/Map<Lnet/i2p/data/Hash;Lnet/i2p/router/tunnel/pool/TunnelPool;>;", "getInboundPool", "getOutboundPool", "fail" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelManagerFacade = { "TunnelManagerFacade", "net.i2p.router", ptrTable, methods, NULL, 7, 0x609, 39, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelManagerFacade;
}

@end

IOSObjectArray *NetI2pRouterTunnelManagerFacade__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelManagerFacade)
