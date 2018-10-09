//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ActionList.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpActionList")
#ifdef RESTRICT_OrgCybergarageUpnpActionList
#define INCLUDE_ALL_OrgCybergarageUpnpActionList 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpActionList 1
#endif
#undef RESTRICT_OrgCybergarageUpnpActionList

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpActionList_) && (INCLUDE_ALL_OrgCybergarageUpnpActionList || defined(INCLUDE_OrgCybergarageUpnpActionList))
#define OrgCybergarageUpnpActionList_

#define RESTRICT_JavaUtilVector 1
#define INCLUDE_JavaUtilVector 1
#include "java/util/Vector.h"

@class OrgCybergarageUpnpAction;
@protocol JavaUtilCollection;

@interface OrgCybergarageUpnpActionList : JavaUtilVector
@property (readonly, copy, class) NSString *ELEM_NAME NS_SWIFT_NAME(ELEM_NAME);

+ (NSString *)ELEM_NAME;

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgCybergarageUpnpAction *)elementAtWithInt:(jint)arg0;

- (OrgCybergarageUpnpAction *)firstElement;

- (OrgCybergarageUpnpAction *)getActionWithInt:(jint)n;

- (OrgCybergarageUpnpAction *)getWithInt:(jint)arg0;

- (OrgCybergarageUpnpAction *)lastElement;

- (OrgCybergarageUpnpAction *)removeWithInt:(jint)arg0;

- (OrgCybergarageUpnpAction *)setWithInt:(jint)arg0
                                  withId:(OrgCybergarageUpnpAction *)arg1;

#pragma mark Package-Private

- (OrgCybergarageUpnpAction *)elementDataWithInt:(jint)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
                              withInt:(jint)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaUtilCollection:(id<JavaUtilCollection>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpActionList)

inline NSString *OrgCybergarageUpnpActionList_get_ELEM_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpActionList_ELEM_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpActionList, ELEM_NAME, NSString *)

FOUNDATION_EXPORT void OrgCybergarageUpnpActionList_init(OrgCybergarageUpnpActionList *self);

FOUNDATION_EXPORT OrgCybergarageUpnpActionList *new_OrgCybergarageUpnpActionList_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpActionList *create_OrgCybergarageUpnpActionList_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpActionList)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpActionList")
