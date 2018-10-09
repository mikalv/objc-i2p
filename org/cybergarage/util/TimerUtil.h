//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/util/TimerUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUtilTimerUtil")
#ifdef RESTRICT_OrgCybergarageUtilTimerUtil
#define INCLUDE_ALL_OrgCybergarageUtilTimerUtil 0
#else
#define INCLUDE_ALL_OrgCybergarageUtilTimerUtil 1
#endif
#undef RESTRICT_OrgCybergarageUtilTimerUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUtilTimerUtil_) && (INCLUDE_ALL_OrgCybergarageUtilTimerUtil || defined(INCLUDE_OrgCybergarageUtilTimerUtil))
#define OrgCybergarageUtilTimerUtil_

@interface OrgCybergarageUtilTimerUtil : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)waitWithInt:(jint)waitTime;

+ (void)waitRandomWithInt:(jint)time;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUtilTimerUtil)

FOUNDATION_EXPORT void OrgCybergarageUtilTimerUtil_init(OrgCybergarageUtilTimerUtil *self);

FOUNDATION_EXPORT OrgCybergarageUtilTimerUtil *new_OrgCybergarageUtilTimerUtil_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUtilTimerUtil *create_OrgCybergarageUtilTimerUtil_init(void);

FOUNDATION_EXPORT void OrgCybergarageUtilTimerUtil_waitWithInt_(jint waitTime);

FOUNDATION_EXPORT void OrgCybergarageUtilTimerUtil_waitRandomWithInt_(jint time);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUtilTimerUtil)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUtilTimerUtil")
