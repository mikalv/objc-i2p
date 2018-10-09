//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/AMDCPUInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FreenetSupportCPUInformationAMDCPUInfo")
#ifdef RESTRICT_FreenetSupportCPUInformationAMDCPUInfo
#define INCLUDE_ALL_FreenetSupportCPUInformationAMDCPUInfo 0
#else
#define INCLUDE_ALL_FreenetSupportCPUInformationAMDCPUInfo 1
#endif
#undef RESTRICT_FreenetSupportCPUInformationAMDCPUInfo

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (FreenetSupportCPUInformationAMDCPUInfo_) && (INCLUDE_ALL_FreenetSupportCPUInformationAMDCPUInfo || defined(INCLUDE_FreenetSupportCPUInformationAMDCPUInfo))
#define FreenetSupportCPUInformationAMDCPUInfo_

#define RESTRICT_FreenetSupportCPUInformationCPUInfo 1
#define INCLUDE_FreenetSupportCPUInformationCPUInfo 1
#include "freenet/support/CPUInformation/CPUInfo.h"

@protocol FreenetSupportCPUInformationAMDCPUInfo < FreenetSupportCPUInformationCPUInfo, JavaObject >

- (jboolean)IsK6Compatible;

- (jboolean)IsK6_2_Compatible;

- (jboolean)IsK6_3_Compatible;

- (jboolean)IsGeodeCompatible;

- (jboolean)IsAthlonCompatible;

- (jboolean)IsAthlon64Compatible;

- (jboolean)IsK10Compatible;

- (jboolean)IsBobcatCompatible;

- (jboolean)IsJaguarCompatible;

- (jboolean)IsBulldozerCompatible;

- (jboolean)IsPiledriverCompatible;

- (jboolean)IsSteamrollerCompatible;

- (jboolean)IsExcavatorCompatible;

@end

J2OBJC_EMPTY_STATIC_INIT(FreenetSupportCPUInformationAMDCPUInfo)

J2OBJC_TYPE_LITERAL_HEADER(FreenetSupportCPUInformationAMDCPUInfo)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_FreenetSupportCPUInformationAMDCPUInfo")
