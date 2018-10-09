//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/AMDInfoImpl.java
//

#include "J2ObjC_source.h"
#include "freenet/support/CPUInformation/AMDInfoImpl.h"
#include "freenet/support/CPUInformation/CPUID.h"
#include "freenet/support/CPUInformation/CPUIDCPUInfo.h"
#include "freenet/support/CPUInformation/UnknownCPUException.h"

@interface FreenetSupportCPUInformationAMDInfoImpl ()

- (NSString *)identifyCPU;

@end

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isK6Compatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isK6Compatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isK6Compatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isK6Compatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isK6_2_Compatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isK6_2_Compatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isK6_2_Compatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isK6_2_Compatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isK6_3_Compatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isK6_3_Compatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isK6_3_Compatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isK6_3_Compatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isGeodeCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isGeodeCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isGeodeCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isGeodeCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isGeodeCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isAthlonCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isAthlonCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isAthlonCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isAthlonCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isAthlon64Compatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isAthlon64Compatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isAthlon64Compatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isAthlon64Compatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isK10Compatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isK10Compatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isK10Compatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isK10Compatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isK10Compatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isBobcatCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isBobcatCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isBobcatCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isBobcatCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isBobcatCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isJaguarCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isJaguarCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isJaguarCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isJaguarCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isJaguarCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isBulldozerCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isBulldozerCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isBulldozerCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isBulldozerCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isBulldozerCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isPiledriverCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isPiledriverCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isPiledriverCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isPiledriverCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isPiledriverCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isSteamrollerCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isSteamrollerCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isSteamrollerCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isSteamrollerCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isSteamrollerCompatible, jboolean)

inline jboolean FreenetSupportCPUInformationAMDInfoImpl_get_isExcavatorCompatible(void);
inline jboolean FreenetSupportCPUInformationAMDInfoImpl_set_isExcavatorCompatible(jboolean value);
inline jboolean *FreenetSupportCPUInformationAMDInfoImpl_getRef_isExcavatorCompatible(void);
static jboolean FreenetSupportCPUInformationAMDInfoImpl_isExcavatorCompatible;
J2OBJC_STATIC_FIELD_PRIMITIVE(FreenetSupportCPUInformationAMDInfoImpl, isExcavatorCompatible, jboolean)

__attribute__((unused)) static NSString *FreenetSupportCPUInformationAMDInfoImpl_identifyCPU(FreenetSupportCPUInformationAMDInfoImpl *self);

@implementation FreenetSupportCPUInformationAMDInfoImpl

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  FreenetSupportCPUInformationAMDInfoImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)IsK6Compatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible;
}

- (jboolean)IsK6_2_Compatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible;
}

- (jboolean)IsK6_3_Compatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible;
}

- (jboolean)IsGeodeCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isGeodeCompatible;
}

- (jboolean)IsAthlonCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible;
}

- (jboolean)IsAthlon64Compatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible;
}

- (jboolean)IsK10Compatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isK10Compatible;
}

- (jboolean)IsBobcatCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isBobcatCompatible;
}

- (jboolean)IsJaguarCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isJaguarCompatible;
}

- (jboolean)IsBulldozerCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isBulldozerCompatible;
}

- (jboolean)IsPiledriverCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isPiledriverCompatible;
}

- (jboolean)IsSteamrollerCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isSteamrollerCompatible;
}

- (jboolean)IsExcavatorCompatible {
  return FreenetSupportCPUInformationAMDInfoImpl_isExcavatorCompatible;
}

- (NSString *)getCPUModelString {
  NSString *smodel = FreenetSupportCPUInformationAMDInfoImpl_identifyCPU(self);
  if (smodel != nil) return smodel;
  @throw create_FreenetSupportCPUInformationUnknownCPUException_initWithNSString_(JreStrcat("$ICI$ICI", @"Unknown AMD CPU; Family=", FreenetSupportCPUInformationCPUID_getCPUFamily(), '/', FreenetSupportCPUInformationCPUID_getCPUExtendedFamily(), @", Model=", FreenetSupportCPUInformationCPUID_getCPUModel(), '/', FreenetSupportCPUInformationCPUID_getCPUExtendedModel()));
}

- (NSString *)identifyCPU {
  return FreenetSupportCPUInformationAMDInfoImpl_identifyCPU(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
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
    { NULL, "LNSString;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(IsK6Compatible);
  methods[2].selector = @selector(IsK6_2_Compatible);
  methods[3].selector = @selector(IsK6_3_Compatible);
  methods[4].selector = @selector(IsGeodeCompatible);
  methods[5].selector = @selector(IsAthlonCompatible);
  methods[6].selector = @selector(IsAthlon64Compatible);
  methods[7].selector = @selector(IsK10Compatible);
  methods[8].selector = @selector(IsBobcatCompatible);
  methods[9].selector = @selector(IsJaguarCompatible);
  methods[10].selector = @selector(IsBulldozerCompatible);
  methods[11].selector = @selector(IsPiledriverCompatible);
  methods[12].selector = @selector(IsSteamrollerCompatible);
  methods[13].selector = @selector(IsExcavatorCompatible);
  methods[14].selector = @selector(getCPUModelString);
  methods[15].selector = @selector(identifyCPU);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "isK6Compatible", "Z", .constantValue.asLong = 0, 0xa, -1, 1, -1, -1 },
    { "isK6_2_Compatible", "Z", .constantValue.asLong = 0, 0xa, -1, 2, -1, -1 },
    { "isK6_3_Compatible", "Z", .constantValue.asLong = 0, 0xa, -1, 3, -1, -1 },
    { "isGeodeCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 4, -1, -1 },
    { "isAthlonCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 5, -1, -1 },
    { "isAthlon64Compatible", "Z", .constantValue.asLong = 0, 0xa, -1, 6, -1, -1 },
    { "isK10Compatible", "Z", .constantValue.asLong = 0, 0xa, -1, 7, -1, -1 },
    { "isBobcatCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 8, -1, -1 },
    { "isJaguarCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 9, -1, -1 },
    { "isBulldozerCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 10, -1, -1 },
    { "isPiledriverCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 11, -1, -1 },
    { "isSteamrollerCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 12, -1, -1 },
    { "isExcavatorCompatible", "Z", .constantValue.asLong = 0, 0xa, -1, 13, -1, -1 },
  };
  static const void *ptrTable[] = { "LFreenetSupportCPUInformationUnknownCPUException;", &FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible, &FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible, &FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible, &FreenetSupportCPUInformationAMDInfoImpl_isGeodeCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible, &FreenetSupportCPUInformationAMDInfoImpl_isK10Compatible, &FreenetSupportCPUInformationAMDInfoImpl_isBobcatCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isJaguarCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isBulldozerCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isPiledriverCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isSteamrollerCompatible, &FreenetSupportCPUInformationAMDInfoImpl_isExcavatorCompatible };
  static const J2ObjcClassInfo _FreenetSupportCPUInformationAMDInfoImpl = { "AMDInfoImpl", "freenet.support.CPUInformation", ptrTable, methods, fields, 7, 0x0, 16, 13, -1, -1, -1, -1, -1 };
  return &_FreenetSupportCPUInformationAMDInfoImpl;
}

@end

void FreenetSupportCPUInformationAMDInfoImpl_init(FreenetSupportCPUInformationAMDInfoImpl *self) {
  FreenetSupportCPUInformationCPUIDCPUInfo_init(self);
}

FreenetSupportCPUInformationAMDInfoImpl *new_FreenetSupportCPUInformationAMDInfoImpl_init() {
  J2OBJC_NEW_IMPL(FreenetSupportCPUInformationAMDInfoImpl, init)
}

FreenetSupportCPUInformationAMDInfoImpl *create_FreenetSupportCPUInformationAMDInfoImpl_init() {
  J2OBJC_CREATE_IMPL(FreenetSupportCPUInformationAMDInfoImpl, init)
}

NSString *FreenetSupportCPUInformationAMDInfoImpl_identifyCPU(FreenetSupportCPUInformationAMDInfoImpl *self) {
  NSString *modelString = nil;
  jint family = FreenetSupportCPUInformationCPUID_getCPUFamily();
  jint model = FreenetSupportCPUInformationCPUID_getCPUModel();
  if (family == 15) {
    family += FreenetSupportCPUInformationCPUID_getCPUExtendedFamily();
    model += JreLShift32(FreenetSupportCPUInformationCPUID_getCPUExtendedModel(), 4);
  }
  switch (family) {
    case 4:
    {
      switch (model) {
        case 3:
        modelString = @"486 DX/2";
        break;
        case 7:
        modelString = @"486 DX/2-WB";
        break;
        case 8:
        modelString = @"486 DX/4";
        break;
        case 9:
        modelString = @"486 DX/4-WB";
        break;
        case 14:
        modelString = @"Am5x86-WT";
        break;
        case 15:
        modelString = @"Am5x86-WB";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD 486/586 model ", model);
        break;
      }
    }
    break;
    case 5:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      switch (model) {
        case 0:
        modelString = @"K5/SSA5";
        break;
        case 1:
        case 2:
        case 3:
        modelString = @"K5";
        break;
        case 4:
        FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = false;
        FreenetSupportCPUInformationAMDInfoImpl_isGeodeCompatible = true;
        modelString = @"Geode GX1/GXLV/GXm";
        break;
        case 5:
        FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = false;
        FreenetSupportCPUInformationAMDInfoImpl_isGeodeCompatible = true;
        modelString = @"Geode GX2/LX";
        break;
        case 6:
        case 7:
        modelString = @"K6";
        break;
        case 8:
        FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
        modelString = @"K6-2";
        break;
        case 9:
        FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
        FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
        modelString = @"K6-3";
        break;
        case 13:
        FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
        modelString = @"K6-2+ or K6-III+";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD K5/K6 model ", model);
        break;
      }
    }
    break;
    case 6:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      switch (model) {
        case 0:
        case 1:
        modelString = @"Athlon (250 nm)";
        break;
        case 2:
        modelString = @"Athlon (180 nm)";
        break;
        case 3:
        modelString = @"Duron";
        break;
        case 4:
        modelString = @"Athlon (Thunderbird)";
        break;
        case 6:
        modelString = @"Athlon (Palamino)";
        break;
        case 7:
        modelString = @"Duron (Morgan)";
        break;
        case 8:
        modelString = @"Athlon (Thoroughbred)";
        break;
        case 10:
        modelString = @"Athlon (Barton)";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD Athlon/Duron model ", model);
        break;
      }
    }
    break;
    case 15:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      switch (model) {
        case 4:
        modelString = @"Athlon 64/Mobile XP-M";
        break;
        case 5:
        modelString = @"Athlon 64 FX Opteron";
        break;
        case 7:
        modelString = @"Athlon 64 FX (Sledgehammer S939, 130 nm)";
        break;
        case 8:
        modelString = @"Mobile A64/Sempron/XP-M";
        break;
        case 11:
        modelString = @"Athlon 64 (Clawhammer S939, 130 nm)";
        break;
        case 12:
        case 14:
        modelString = @"Athlon 64/Sempron (Newcastle S754, 130 nm)";
        break;
        case 15:
        modelString = @"Athlon 64/Sempron (Clawhammer S939, 130 nm)";
        break;
        case 18:
        modelString = @"Sempron (Palermo, 90 nm)";
        break;
        case 20:
        modelString = @"Athlon 64 (Winchester S754, 90 nm)";
        break;
        case 23:
        modelString = @"Athlon 64 (Winchester S939, 90 nm)";
        break;
        case 24:
        modelString = @"Mobile A64/Sempron/XP-M (Winchester S754, 90 nm)";
        break;
        case 26:
        modelString = @"Athlon 64 (Winchester S939, 90 nm)";
        break;
        case 27:
        modelString = @"Athlon 64/Sempron (Winchester/Palermo 90 nm)";
        break;
        case 28:
        modelString = @"Sempron (Palermo, 90 nm)";
        break;
        case 31:
        modelString = @"Athlon 64/Sempron (Winchester/Palermo, 90 nm)";
        break;
        case 33:
        modelString = @"Dual-Core Opteron (Italy-Egypt S940, 90 nm)";
        break;
        case 35:
        modelString = @"Athlon 64 X2/A64 FX/Opteron (Toledo/Denmark S939, 90 nm)";
        break;
        case 36:
        modelString = @"Mobile A64/Turion (Lancaster/Richmond/Newark, 90 nm)";
        break;
        case 37:
        modelString = @"Opteron (Troy/Athens S940, 90 nm)";
        break;
        case 39:
        modelString = @"Athlon 64 (San Diego, 90 nm)";
        break;
        case 43:
        modelString = @"Athlon 64 X2 (Manchester, 90 nm)";
        break;
        case 44:
        modelString = @"Sempron/mobile Sempron (Palermo/Albany/Roma S754, 90 nm)";
        break;
        case 47:
        modelString = @"Athlon 64/Sempron (Venice/Palermo S939, 90 nm)";
        break;
        case 65:
        modelString = @"Second-Generaton Opteron (Santa Rosa S1207, 90 nm)";
        break;
        case 67:
        modelString = @"Athlon 64 X2/2nd-gen Opteron (Windsor/Santa Rosa, 90 nm)";
        break;
        case 72:
        modelString = @"Athlon 64 X2/Turion 64 X2 (Windsor/Taylor/Trinidad, 90 nm)";
        break;
        case 75:
        modelString = @"Athlon 64 X2 (Windsor, 90 nm)";
        break;
        case 76:
        modelString = @"Mobile A64/mobile Sempron/Turion (Keene/Trinidad/Taylor, 90 nm)";
        break;
        case 79:
        modelString = @"Athlon 64/Sempron (Orleans/Manila AM2, 90 nm)";
        break;
        case 93:
        modelString = @"Opteron Gen 2 (Santa Rosa, 90 nm)";
        break;
        case 95:
        modelString = @"A64/Sempron/mobile Sempron (Orleans/Manila/Keene, 90 nm)";
        break;
        case 104:
        modelString = @"Turion 64 X2 (Tyler S1, 65 nm)";
        break;
        case 107:
        modelString = @"Athlon 64 X2/Sempron X2/Athlon Neo X2 (Brisbane/Huron, 65 nm)";
        break;
        case 108:
        modelString = @"A64/Athlon Neo/Sempron/Mobile Sempron (Lima/Huron/Sparta/Sherman, 65 nm)";
        break;
        case 111:
        modelString = @"Neo/Sempron/mobile Sempron (Huron/Sparta/Sherman, 65 nm)";
        break;
        case 124:
        modelString = @"Athlon/Sempron/mobile Sempron (Lima/Sparta/Sherman, 65 nm)";
        break;
        case 127:
        modelString = @"A64/Athlon Neo/Sempron/mobile Sempron (Lima/Huron/Sparta/Sherman, 65 nm)";
        break;
        case 193:
        modelString = @"Athlon 64 FX (Windsor S1207 90 nm)";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD Athlon/Duron/Sempron model ", model);
        break;
      }
    }
    break;
    case 16:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK10Compatible = true;
      switch (model) {
        case 2:
        modelString = @"Phenom / Athlon / Opteron Gen 3 (Barcelona/Agena/Toliman/Kuma, 65 nm)";
        break;
        case 4:
        modelString = @"Phenom II / Opteron Gen 3 (Shanghai/Deneb/Heka/Callisto, 45 nm)";
        break;
        case 5:
        modelString = @"Athlon II X2/X3/X4 (Regor/Rana/Propus AM3, 45 nm)";
        break;
        case 6:
        modelString = @"Mobile Athlon II/Turion II/Phenom II/Sempron/V-series (Regor/Caspian/Champlain, 45 nm)";
        break;
        case 8:
        modelString = @"Six-Core Opteron/Opteron 4100 series (Istanbul/Lisbon, 45 nm)";
        break;
        case 9:
        modelString = @"Opteron 6100 series (Magny-Cours G34, 45 nm)";
        break;
        case 10:
        modelString = @"Phenom II X4/X6 (Zosma/Thuban AM3, 45 nm)";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD Athlon/Opteron model ", model);
        break;
      }
    }
    break;
    case 17:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      switch (model) {
        case 3:
        modelString = @"AMD Turion X2/Athlon X2/Sempron (Lion/Sable, 65 nm)";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD Athlon/Turion/Sempron model ", model);
        break;
      }
    }
    break;
    case 18:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      modelString = JreStrcat("$I", @"AMD APU model ", model);
    }
    break;
    case 20:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isBobcatCompatible = true;
      switch (model) {
        case 1:
        case 3:
        modelString = @"AMD Bobcat APU";
        break;
        default:
        modelString = JreStrcat("$I", @"AMD Bobcat APU model ", model);
        break;
      }
    }
    break;
    case 21:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isBulldozerCompatible = true;
      if (![self hasAVX]) {
        modelString = @"Bulldozer";
        break;
      }
      if (model >= (jint) 0x50 && model <= (jint) 0x5F) {
        FreenetSupportCPUInformationAMDInfoImpl_isPiledriverCompatible = true;
        FreenetSupportCPUInformationAMDInfoImpl_isSteamrollerCompatible = true;
        FreenetSupportCPUInformationAMDInfoImpl_isExcavatorCompatible = true;
        modelString = @"Excavator";
      }
      else if (model >= (jint) 0x30 && model <= (jint) 0x3F) {
        FreenetSupportCPUInformationAMDInfoImpl_isPiledriverCompatible = true;
        FreenetSupportCPUInformationAMDInfoImpl_isSteamrollerCompatible = true;
        modelString = @"Steamroller";
      }
      else if ((model >= (jint) 0x10 && model <= (jint) 0x1F) || [self hasTBM]) {
        FreenetSupportCPUInformationAMDInfoImpl_isPiledriverCompatible = true;
        modelString = @"Piledriver";
      }
      else {
        modelString = @"Bulldozer";
      }
    }
    break;
    case 22:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isBobcatCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isJaguarCompatible = true;
      modelString = @"Jaguar";
    }
    break;
    case 23:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      if (model == 1) modelString = @"Ryzen 7";
      else modelString = JreStrcat("$I", @"Ryzen model ", model);
    }
    break;
    case 24:
    {
      FreenetSupportCPUInformationAMDInfoImpl_isK6Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_2_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isK6_3_Compatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlonCompatible = true;
      FreenetSupportCPUInformationAMDInfoImpl_isAthlon64Compatible = true;
      modelString = JreStrcat("$I", @"Hygon Dhyana model ", model);
    }
    break;
  }
  return modelString;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(FreenetSupportCPUInformationAMDInfoImpl)
