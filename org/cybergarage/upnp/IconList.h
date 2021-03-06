//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/IconList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpIconList")
#ifdef RESTRICT_OrgCybergarageUpnpIconList
#define INCLUDE_ALL_OrgCybergarageUpnpIconList 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpIconList 1
#endif
#undef RESTRICT_OrgCybergarageUpnpIconList

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpIconList_) && (INCLUDE_ALL_OrgCybergarageUpnpIconList || defined(INCLUDE_OrgCybergarageUpnpIconList))
#define OrgCybergarageUpnpIconList_

#define RESTRICT_JavaUtilVector 1
#define INCLUDE_JavaUtilVector 1
#include "java/util/Vector.h"

@class OrgCybergarageUpnpIcon;
@protocol JavaUtilCollection;

@interface OrgCybergarageUpnpIconList : JavaUtilVector
@property (readonly, copy, class) NSString *ELEM_NAME NS_SWIFT_NAME(ELEM_NAME);

+ (NSString *)ELEM_NAME;

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgCybergarageUpnpIcon *)elementAtWithInt:(jint)arg0;

- (OrgCybergarageUpnpIcon *)firstElement;

- (OrgCybergarageUpnpIcon *)getIconWithInt:(jint)n;

- (OrgCybergarageUpnpIcon *)getWithInt:(jint)arg0;

- (OrgCybergarageUpnpIcon *)lastElement;

- (OrgCybergarageUpnpIcon *)removeWithInt:(jint)arg0;

- (OrgCybergarageUpnpIcon *)setWithInt:(jint)arg0
                                withId:(OrgCybergarageUpnpIcon *)arg1;

#pragma mark Package-Private

- (OrgCybergarageUpnpIcon *)elementDataWithInt:(jint)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaUtilCollection:(id<JavaUtilCollection>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpIconList)

inline NSString *OrgCybergarageUpnpIconList_get_ELEM_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpIconList_ELEM_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpIconList, ELEM_NAME, NSString *)

FOUNDATION_EXPORT void OrgCybergarageUpnpIconList_init(OrgCybergarageUpnpIconList *self);

FOUNDATION_EXPORT OrgCybergarageUpnpIconList *new_OrgCybergarageUpnpIconList_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpIconList *create_OrgCybergarageUpnpIconList_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpIconList)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpIconList")
