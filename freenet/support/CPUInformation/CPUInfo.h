//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/CPUInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FreenetSupportCPUInformationCPUInfo")
#ifdef RESTRICT_FreenetSupportCPUInformationCPUInfo
#define INCLUDE_ALL_FreenetSupportCPUInformationCPUInfo 0
#else
#define INCLUDE_ALL_FreenetSupportCPUInformationCPUInfo 1
#endif
#undef RESTRICT_FreenetSupportCPUInformationCPUInfo

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (FreenetSupportCPUInformationCPUInfo_) && (INCLUDE_ALL_FreenetSupportCPUInformationCPUInfo || defined(INCLUDE_FreenetSupportCPUInformationCPUInfo))
#define FreenetSupportCPUInformationCPUInfo_

@protocol FreenetSupportCPUInformationCPUInfo < JavaObject >

- (NSString *)getVendor;

- (NSString *)getCPUModelString;

- (jboolean)hasMMX;

- (jboolean)hasSSE;

- (jboolean)hasSSE2;

- (jboolean)hasSSE3;

- (jboolean)hasSSE41;

- (jboolean)hasSSE42;

- (jboolean)hasSSE4A;

- (jboolean)hasAVX;

- (jboolean)hasAVX2;

- (jboolean)hasAVX512;

- (jboolean)hasADX;

- (jboolean)hasTBM;

- (jboolean)hasAES;

- (jboolean)hasX64;

- (jboolean)hasBMI1;

- (jboolean)hasBMI2;

- (jboolean)hasFMA3;

- (jboolean)hasMOVBE;

- (jboolean)hasABM;

@end

J2OBJC_EMPTY_STATIC_INIT(FreenetSupportCPUInformationCPUInfo)

J2OBJC_TYPE_LITERAL_HEADER(FreenetSupportCPUInformationCPUInfo)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_FreenetSupportCPUInformationCPUInfo")