//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/CPUInfo.java
//

#include "J2ObjC_source.h"
#include "freenet/support/CPUInformation/CPUInfo.h"

@interface FreenetSupportCPUInformationCPUInfo : NSObject

@end

@implementation FreenetSupportCPUInformationCPUInfo

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, 0, -1, -1, -1 },
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
  methods[0].selector = @selector(getVendor);
  methods[1].selector = @selector(getCPUModelString);
  methods[2].selector = @selector(hasMMX);
  methods[3].selector = @selector(hasSSE);
  methods[4].selector = @selector(hasSSE2);
  methods[5].selector = @selector(hasSSE3);
  methods[6].selector = @selector(hasSSE41);
  methods[7].selector = @selector(hasSSE42);
  methods[8].selector = @selector(hasSSE4A);
  methods[9].selector = @selector(hasAVX);
  methods[10].selector = @selector(hasAVX2);
  methods[11].selector = @selector(hasAVX512);
  methods[12].selector = @selector(hasADX);
  methods[13].selector = @selector(hasTBM);
  methods[14].selector = @selector(hasAES);
  methods[15].selector = @selector(hasX64);
  methods[16].selector = @selector(hasBMI1);
  methods[17].selector = @selector(hasBMI2);
  methods[18].selector = @selector(hasFMA3);
  methods[19].selector = @selector(hasMOVBE);
  methods[20].selector = @selector(hasABM);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LFreenetSupportCPUInformationUnknownCPUException;" };
  static const J2ObjcClassInfo _FreenetSupportCPUInformationCPUInfo = { "CPUInfo", "freenet.support.CPUInformation", ptrTable, methods, NULL, 7, 0x609, 21, 0, -1, -1, -1, -1, -1 };
  return &_FreenetSupportCPUInformationCPUInfo;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(FreenetSupportCPUInformationCPUInfo)
