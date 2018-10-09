//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/device/NT.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpDeviceNT")
#ifdef RESTRICT_OrgCybergarageUpnpDeviceNT
#define INCLUDE_ALL_OrgCybergarageUpnpDeviceNT 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpDeviceNT 1
#endif
#undef RESTRICT_OrgCybergarageUpnpDeviceNT

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpDeviceNT_) && (INCLUDE_ALL_OrgCybergarageUpnpDeviceNT || defined(INCLUDE_OrgCybergarageUpnpDeviceNT))
#define OrgCybergarageUpnpDeviceNT_

@interface OrgCybergarageUpnpDeviceNT : NSObject
@property (readonly, copy, class) NSString *ROOTDEVICE NS_SWIFT_NAME(ROOTDEVICE);
@property (readonly, copy, class) NSString *EVENT NS_SWIFT_NAME(EVENT);

+ (NSString *)ROOTDEVICE;

+ (NSString *)EVENT;

#pragma mark Public

- (instancetype __nonnull)init;

+ (jboolean)isRootDeviceWithNSString:(NSString *)ntValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpDeviceNT)

inline NSString *OrgCybergarageUpnpDeviceNT_get_ROOTDEVICE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpDeviceNT_ROOTDEVICE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpDeviceNT, ROOTDEVICE, NSString *)

inline NSString *OrgCybergarageUpnpDeviceNT_get_EVENT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpDeviceNT_EVENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpDeviceNT, EVENT, NSString *)

FOUNDATION_EXPORT void OrgCybergarageUpnpDeviceNT_init(OrgCybergarageUpnpDeviceNT *self);

FOUNDATION_EXPORT OrgCybergarageUpnpDeviceNT *new_OrgCybergarageUpnpDeviceNT_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDeviceNT *create_OrgCybergarageUpnpDeviceNT_init(void);

FOUNDATION_EXPORT jboolean OrgCybergarageUpnpDeviceNT_isRootDeviceWithNSString_(NSString *ntValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpDeviceNT)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpDeviceNT")
