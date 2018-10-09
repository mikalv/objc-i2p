//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/freenet/support/CPUInformation/CPUIDCPUInfo.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FreenetSupportCPUInformationCPUIDCPUInfo")
#ifdef RESTRICT_FreenetSupportCPUInformationCPUIDCPUInfo
#define INCLUDE_ALL_FreenetSupportCPUInformationCPUIDCPUInfo 0
#else
#define INCLUDE_ALL_FreenetSupportCPUInformationCPUIDCPUInfo 1
#endif
#undef RESTRICT_FreenetSupportCPUInformationCPUIDCPUInfo

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (FreenetSupportCPUInformationCPUIDCPUInfo_) && (INCLUDE_ALL_FreenetSupportCPUInformationCPUIDCPUInfo || defined(INCLUDE_FreenetSupportCPUInformationCPUIDCPUInfo))
#define FreenetSupportCPUInformationCPUIDCPUInfo_

#define RESTRICT_FreenetSupportCPUInformationCPUInfo 1
#define INCLUDE_FreenetSupportCPUInformationCPUInfo 1
#include "freenet/support/CPUInformation/CPUInfo.h"

@interface FreenetSupportCPUInformationCPUIDCPUInfo : NSObject < FreenetSupportCPUInformationCPUInfo >

#pragma mark Public

- (NSString *)getCPUModelString;

- (NSString *)getVendor;

- (jboolean)hasABM;

- (jboolean)hasADX;

- (jboolean)hasAES;

- (jboolean)hasAVX;

- (jboolean)hasAVX2;

- (jboolean)hasAVX512;

- (jboolean)hasBMI1;

- (jboolean)hasBMI2;

- (jboolean)hasFMA3;

- (jboolean)hasMMX;

- (jboolean)hasMOVBE;

- (jboolean)hasSSE;

- (jboolean)hasSSE2;

- (jboolean)hasSSE3;

- (jboolean)hasSSE41;

- (jboolean)hasSSE42;

- (jboolean)hasSSE4A;

- (jboolean)hasTBM;

- (jboolean)hasX64;

#pragma mark Package-Private

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(FreenetSupportCPUInformationCPUIDCPUInfo)

FOUNDATION_EXPORT void FreenetSupportCPUInformationCPUIDCPUInfo_init(FreenetSupportCPUInformationCPUIDCPUInfo *self);

FOUNDATION_EXPORT FreenetSupportCPUInformationCPUIDCPUInfo *new_FreenetSupportCPUInformationCPUIDCPUInfo_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT FreenetSupportCPUInformationCPUIDCPUInfo *create_FreenetSupportCPUInformationCPUIDCPUInfo_init(void);

J2OBJC_TYPE_LITERAL_HEADER(FreenetSupportCPUInformationCPUIDCPUInfo)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_FreenetSupportCPUInformationCPUIDCPUInfo")
