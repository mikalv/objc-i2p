//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/CPUIDCPUInfo.java
//

#include "J2ObjC_source.h"
#include "freenet/support/CPUInformation/CPUID.h"
#include "freenet/support/CPUInformation/CPUIDCPUInfo.h"
#include "freenet/support/CPUInformation/UnknownCPUException.h"

@implementation FreenetSupportCPUInformationCPUIDCPUInfo

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  FreenetSupportCPUInformationCPUIDCPUInfo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getVendor {
  return FreenetSupportCPUInformationCPUID_getCPUVendorID();
}

- (jboolean)hasMMX {
  return (FreenetSupportCPUInformationCPUID_getEDXCPUFlags() & (JreLShift32(1, 23))) != 0;
}

- (jboolean)hasSSE {
  return (FreenetSupportCPUInformationCPUID_getEDXCPUFlags() & (JreLShift32(1, 25))) != 0;
}

- (jboolean)hasSSE2 {
  return (FreenetSupportCPUInformationCPUID_getEDXCPUFlags() & (JreLShift32(1, 26))) != 0;
}

- (jboolean)hasSSE3 {
  return (FreenetSupportCPUInformationCPUID_getECXCPUFlags() & (JreLShift32(1, 0))) != 0;
}

- (jboolean)hasSSE41 {
  return (FreenetSupportCPUInformationCPUID_getECXCPUFlags() & (JreLShift32(1, 19))) != 0;
}

- (jboolean)hasSSE42 {
  return (FreenetSupportCPUInformationCPUID_getECXCPUFlags() & (JreLShift32(1, 20))) != 0;
}

- (jboolean)hasSSE4A {
  return (FreenetSupportCPUInformationCPUID_getExtendedECXCPUFlags() & (JreLShift32(1, 6))) != 0;
}

- (jboolean)hasAVX {
  jint ecx = FreenetSupportCPUInformationCPUID_getECXCPUFlags();
  return (ecx & (JreLShift32(1, 28))) != 0 && (ecx & (JreLShift32(1, 27))) != 0;
}

- (jboolean)hasAVX2 {
  return (FreenetSupportCPUInformationCPUID_getExtendedEBXFeatureFlags() & (JreLShift32(1, 5))) != 0;
}

- (jboolean)hasAVX512 {
  return (FreenetSupportCPUInformationCPUID_getExtendedEBXFeatureFlags() & (JreLShift32(1, 16))) != 0;
}

- (jboolean)hasADX {
  return (FreenetSupportCPUInformationCPUID_getExtendedEBXFeatureFlags() & (JreLShift32(1, 19))) != 0;
}

- (jboolean)hasTBM {
  return (FreenetSupportCPUInformationCPUID_getExtendedECXCPUFlags() & (JreLShift32(1, 21))) != 0;
}

- (jboolean)hasAES {
  return (FreenetSupportCPUInformationCPUID_getECXCPUFlags() & (JreLShift32(1, 25))) != 0;
}

- (jboolean)hasX64 {
  return (FreenetSupportCPUInformationCPUID_getExtendedEDXCPUFlags() & (JreLShift32(1, 29))) != 0;
}

- (jboolean)hasBMI1 {
  return (FreenetSupportCPUInformationCPUID_getExtendedEBXFeatureFlags() & (JreLShift32(1, 3))) != 0;
}

- (jboolean)hasBMI2 {
  return (FreenetSupportCPUInformationCPUID_getExtendedEBXFeatureFlags() & (JreLShift32(1, 8))) != 0;
}

- (jboolean)hasFMA3 {
  return (FreenetSupportCPUInformationCPUID_getECXCPUFlags() & (JreLShift32(1, 12))) != 0;
}

- (jboolean)hasMOVBE {
  return (FreenetSupportCPUInformationCPUID_getECXCPUFlags() & (JreLShift32(1, 22))) != 0;
}

- (jboolean)hasABM {
  return (FreenetSupportCPUInformationCPUID_getExtendedECXCPUFlags() & (JreLShift32(1, 5))) != 0;
}

- (NSString *)getCPUModelString {
  @throw create_FreenetSupportCPUInformationUnknownCPUException_initWithNSString_(@"Class CPUIDCPUInfo cannot indentify CPUs");
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 0, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getVendor);
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
  methods[21].selector = @selector(getCPUModelString);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LFreenetSupportCPUInformationUnknownCPUException;" };
  static const J2ObjcClassInfo _FreenetSupportCPUInformationCPUIDCPUInfo = { "CPUIDCPUInfo", "freenet.support.CPUInformation", ptrTable, methods, NULL, 7, 0x0, 22, 0, -1, -1, -1, -1, -1 };
  return &_FreenetSupportCPUInformationCPUIDCPUInfo;
}

@end

void FreenetSupportCPUInformationCPUIDCPUInfo_init(FreenetSupportCPUInformationCPUIDCPUInfo *self) {
  NSObject_init(self);
}

FreenetSupportCPUInformationCPUIDCPUInfo *new_FreenetSupportCPUInformationCPUIDCPUInfo_init() {
  J2OBJC_NEW_IMPL(FreenetSupportCPUInformationCPUIDCPUInfo, init)
}

FreenetSupportCPUInformationCPUIDCPUInfo *create_FreenetSupportCPUInformationCPUIDCPUInfo_init() {
  J2OBJC_CREATE_IMPL(FreenetSupportCPUInformationCPUIDCPUInfo, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(FreenetSupportCPUInformationCPUIDCPUInfo)
