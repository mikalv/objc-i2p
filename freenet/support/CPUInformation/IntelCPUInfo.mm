//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/IntelCPUInfo.java
//

#include "J2ObjC_source.h"
#include "freenet/support/CPUInformation/IntelCPUInfo.h"

@interface FreenetSupportCPUInformationIntelCPUInfo : NSObject

@end

@implementation FreenetSupportCPUInformationIntelCPUInfo

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(IsPentiumCompatible);
  methods[1].selector = @selector(IsPentiumMMXCompatible);
  methods[2].selector = @selector(IsPentium2Compatible);
  methods[3].selector = @selector(IsPentium3Compatible);
  methods[4].selector = @selector(IsPentium4Compatible);
  methods[5].selector = @selector(IsPentiumMCompatible);
  methods[6].selector = @selector(IsAtomCompatible);
  methods[7].selector = @selector(IsCore2Compatible);
  methods[8].selector = @selector(IsCoreiCompatible);
  methods[9].selector = @selector(IsSandyCompatible);
  methods[10].selector = @selector(IsIvyCompatible);
  methods[11].selector = @selector(IsHaswellCompatible);
  methods[12].selector = @selector(IsBroadwellCompatible);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _FreenetSupportCPUInformationIntelCPUInfo = { "IntelCPUInfo", "freenet.support.CPUInformation", NULL, methods, NULL, 7, 0x609, 13, 0, -1, -1, -1, -1, -1 };
  return &_FreenetSupportCPUInformationIntelCPUInfo;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(FreenetSupportCPUInformationIntelCPUInfo)