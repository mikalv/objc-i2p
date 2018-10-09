//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/Action.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpAction")
#ifdef RESTRICT_OrgCybergarageUpnpAction
#define INCLUDE_ALL_OrgCybergarageUpnpAction 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpAction 1
#endif
#undef RESTRICT_OrgCybergarageUpnpAction

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpAction_) && (INCLUDE_ALL_OrgCybergarageUpnpAction || defined(INCLUDE_OrgCybergarageUpnpAction))
#define OrgCybergarageUpnpAction_

@class OrgCybergarageUpnpArgument;
@class OrgCybergarageUpnpArgumentList;
@class OrgCybergarageUpnpControlActionRequest;
@class OrgCybergarageUpnpService;
@class OrgCybergarageUpnpUPnPStatus;
@class OrgCybergarageXmlNode;
@protocol OrgCybergarageUpnpControlActionListener;

@interface OrgCybergarageUpnpAction : NSObject
@property (readonly, copy, class) NSString *ELEM_NAME NS_SWIFT_NAME(ELEM_NAME);

+ (NSString *)ELEM_NAME;

#pragma mark Public

- (instancetype __nonnull)initWithOrgCybergarageUpnpAction:(OrgCybergarageUpnpAction *)action;

- (instancetype __nonnull)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)serviceNode;

- (instancetype __nonnull)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)serviceNode
                              withOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)actionNode;

- (id<OrgCybergarageUpnpControlActionListener>)getActionListener;

- (OrgCybergarageXmlNode *)getActionNode;

- (OrgCybergarageUpnpArgument *)getArgumentWithNSString:(NSString *)name;

- (jint)getArgumentIntegerValueWithNSString:(NSString *)name;

- (OrgCybergarageUpnpArgumentList *)getArgumentList;

- (NSString *)getArgumentValueWithNSString:(NSString *)name;

- (OrgCybergarageUpnpUPnPStatus *)getControlStatus;

- (OrgCybergarageUpnpArgumentList *)getInputArgumentList;

- (NSString *)getName;

- (OrgCybergarageUpnpArgumentList *)getOutputArgumentList;

- (OrgCybergarageUpnpService *)getService;

- (OrgCybergarageUpnpUPnPStatus *)getStatus;

- (id)getUserData;

+ (jboolean)isActionNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

- (void)lock;

- (jboolean)performActionListenerWithOrgCybergarageUpnpControlActionRequest:(OrgCybergarageUpnpControlActionRequest *)actionReq;

- (jboolean)postControlAction;

- (void)print;

- (void)setActionListenerWithOrgCybergarageUpnpControlActionListener:(id<OrgCybergarageUpnpControlActionListener>)listener;

- (void)setArgumentListWithOrgCybergarageUpnpArgumentList:(OrgCybergarageUpnpArgumentList *)al;

- (void)setArgumentValueWithNSString:(NSString *)name
                             withInt:(jint)value;

- (void)setArgumentValueWithNSString:(NSString *)name
                        withNSString:(NSString *)value;

- (void)setArgumentValuesWithOrgCybergarageUpnpArgumentList:(OrgCybergarageUpnpArgumentList *)argList;

- (void)setInArgumentValuesWithOrgCybergarageUpnpArgumentList:(OrgCybergarageUpnpArgumentList *)argList;

- (void)setNameWithNSString:(NSString *)value;

- (void)setOutArgumentValuesWithOrgCybergarageUpnpArgumentList:(OrgCybergarageUpnpArgumentList *)argList;

- (void)setStatusWithInt:(jint)code;

- (void)setStatusWithInt:(jint)code
            withNSString:(NSString *)descr;

- (void)setUserDataWithId:(id)data;

- (void)unlock;

#pragma mark Package-Private

- (void)setServiceWithOrgCybergarageUpnpService:(OrgCybergarageUpnpService *)s;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpAction)

inline NSString *OrgCybergarageUpnpAction_get_ELEM_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpAction_ELEM_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpAction, ELEM_NAME, NSString *)

FOUNDATION_EXPORT void OrgCybergarageUpnpAction_initWithOrgCybergarageXmlNode_(OrgCybergarageUpnpAction *self, OrgCybergarageXmlNode *serviceNode);

FOUNDATION_EXPORT OrgCybergarageUpnpAction *new_OrgCybergarageUpnpAction_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *serviceNode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpAction *create_OrgCybergarageUpnpAction_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *serviceNode);

FOUNDATION_EXPORT void OrgCybergarageUpnpAction_initWithOrgCybergarageXmlNode_withOrgCybergarageXmlNode_(OrgCybergarageUpnpAction *self, OrgCybergarageXmlNode *serviceNode, OrgCybergarageXmlNode *actionNode);

FOUNDATION_EXPORT OrgCybergarageUpnpAction *new_OrgCybergarageUpnpAction_initWithOrgCybergarageXmlNode_withOrgCybergarageXmlNode_(OrgCybergarageXmlNode *serviceNode, OrgCybergarageXmlNode *actionNode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpAction *create_OrgCybergarageUpnpAction_initWithOrgCybergarageXmlNode_withOrgCybergarageXmlNode_(OrgCybergarageXmlNode *serviceNode, OrgCybergarageXmlNode *actionNode);

FOUNDATION_EXPORT void OrgCybergarageUpnpAction_initWithOrgCybergarageUpnpAction_(OrgCybergarageUpnpAction *self, OrgCybergarageUpnpAction *action);

FOUNDATION_EXPORT OrgCybergarageUpnpAction *new_OrgCybergarageUpnpAction_initWithOrgCybergarageUpnpAction_(OrgCybergarageUpnpAction *action) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpAction *create_OrgCybergarageUpnpAction_initWithOrgCybergarageUpnpAction_(OrgCybergarageUpnpAction *action);

FOUNDATION_EXPORT jboolean OrgCybergarageUpnpAction_isActionNodeWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpAction)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpAction")
