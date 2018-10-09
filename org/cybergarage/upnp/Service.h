//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/Service.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpService")
#ifdef RESTRICT_OrgCybergarageUpnpService
#define INCLUDE_ALL_OrgCybergarageUpnpService 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpService 1
#endif
#undef RESTRICT_OrgCybergarageUpnpService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpService_) && (INCLUDE_ALL_OrgCybergarageUpnpService || defined(INCLUDE_OrgCybergarageUpnpService))
#define OrgCybergarageUpnpService_

@class IOSByteArray;
@class JavaIoFile;
@class JavaIoInputStream;
@class OrgCybergarageUpnpAction;
@class OrgCybergarageUpnpActionList;
@class OrgCybergarageUpnpDevice;
@class OrgCybergarageUpnpEventSubscriber;
@class OrgCybergarageUpnpEventSubscriberList;
@class OrgCybergarageUpnpServiceStateTable;
@class OrgCybergarageUpnpSsdpSSDPPacket;
@class OrgCybergarageUpnpStateVariable;
@class OrgCybergarageXmlNode;
@protocol OrgCybergarageUpnpControlActionListener;
@protocol OrgCybergarageUpnpControlQueryListener;

@interface OrgCybergarageUpnpService : NSObject
@property (readonly, copy, class) NSString *ELEM_NAME NS_SWIFT_NAME(ELEM_NAME);
@property (readonly, copy, class) NSString *SCPD_ROOTNODE NS_SWIFT_NAME(SCPD_ROOTNODE);
@property (readonly, copy, class) NSString *SCPD_ROOTNODE_NS NS_SWIFT_NAME(SCPD_ROOTNODE_NS);
@property (readonly, copy, class) NSString *SPEC_VERSION NS_SWIFT_NAME(SPEC_VERSION);
@property (readonly, copy, class) NSString *MAJOR NS_SWIFT_NAME(MAJOR);
@property (readonly, copy, class) NSString *MAJOR_VALUE NS_SWIFT_NAME(MAJOR_VALUE);
@property (readonly, copy, class) NSString *MINOR NS_SWIFT_NAME(MINOR);
@property (readonly, copy, class) NSString *MINOR_VALUE NS_SWIFT_NAME(MINOR_VALUE);

+ (NSString *)ELEM_NAME;

+ (NSString *)SCPD_ROOTNODE;

+ (NSString *)SCPD_ROOTNODE_NS;

+ (NSString *)SPEC_VERSION;

+ (NSString *)MAJOR;

+ (NSString *)MAJOR_VALUE;

+ (NSString *)MINOR;

+ (NSString *)MINOR_VALUE;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

- (void)addActionWithOrgCybergarageUpnpAction:(OrgCybergarageUpnpAction *)a;

- (void)addStateVariableWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)var;

- (void)addSubscriberWithOrgCybergarageUpnpEventSubscriber:(OrgCybergarageUpnpEventSubscriber *)sub;

- (void)announceWithNSString:(NSString *)bindAddr;

- (void)byebyeWithNSString:(NSString *)bindAddr;

- (void)clearSID;

- (OrgCybergarageUpnpAction *)getActionWithNSString:(NSString *)actionName;

- (OrgCybergarageUpnpActionList *)getActionList;

- (jint)getConfigId;

- (NSString *)getControlURL;

- (NSString *)getDescriptionURL;

- (OrgCybergarageUpnpDevice *)getDevice;

- (NSString *)getEventSubURL;

- (OrgCybergarageUpnpDevice *)getRootDevice;

- (IOSByteArray *)getSCPDData;

- (NSString *)getSCPDURL;

- (NSString *)getServiceID;

- (OrgCybergarageXmlNode *)getServiceNode;

- (OrgCybergarageUpnpServiceStateTable *)getServiceStateTable;

- (NSString *)getServiceType;

- (NSString *)getSID;

- (OrgCybergarageUpnpStateVariable *)getStateVariableWithNSString:(NSString *)name;

- (OrgCybergarageUpnpEventSubscriber *)getSubscriberWithNSString:(NSString *)name;

- (OrgCybergarageUpnpEventSubscriberList *)getSubscriberList;

- (jlong)getTimeout;

- (id)getUserData;

- (jboolean)hasSID;

- (jboolean)hasStateVariableWithNSString:(NSString *)name;

- (jboolean)isControlURLWithNSString:(NSString *)url;

- (jboolean)isEventSubURLWithNSString:(NSString *)url;

- (jboolean)isSCPDURLWithNSString:(NSString *)url;

- (jboolean)isServiceWithNSString:(NSString *)name;

+ (jboolean)isServiceNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

- (jboolean)isSubscribed;

- (jboolean)loadSCPDWithJavaIoFile:(JavaIoFile *)file;

- (jboolean)loadSCPDWithJavaIoInputStream:(JavaIoInputStream *)input;

- (jboolean)loadSCPDWithNSString:(NSString *)scpdStr;

- (void)lock;

- (void)notifyWithOrgCybergarageUpnpStateVariable:(OrgCybergarageUpnpStateVariable *)stateVar;

- (void)notifyAllStateVariables;

- (void)removeSubscriberWithOrgCybergarageUpnpEventSubscriber:(OrgCybergarageUpnpEventSubscriber *)sub;

- (jboolean)serviceSearchResponseWithOrgCybergarageUpnpSsdpSSDPPacket:(OrgCybergarageUpnpSsdpSSDPPacket *)ssdpPacket;

- (void)setActionListenerWithOrgCybergarageUpnpControlActionListener:(id<OrgCybergarageUpnpControlActionListener>)listener;

- (void)setControlURLWithNSString:(NSString *)value;

- (void)setDescriptionURLWithNSString:(NSString *)value;

- (void)setEventSubURLWithNSString:(NSString *)value;

- (void)setQueryListenerWithOrgCybergarageUpnpControlQueryListener:(id<OrgCybergarageUpnpControlQueryListener>)queryListener;

- (void)setSCPDURLWithNSString:(NSString *)value;

- (void)setServiceIDWithNSString:(NSString *)value;

- (void)setServiceTypeWithNSString:(NSString *)value;

- (void)setSIDWithNSString:(NSString *)id_;

- (void)setTimeoutWithLong:(jlong)value;

- (void)setUserDataWithId:(id)data;

- (void)unlock;

- (void)updateConfigId;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageUpnpService)

inline NSString *OrgCybergarageUpnpService_get_ELEM_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_ELEM_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, ELEM_NAME, NSString *)

inline NSString *OrgCybergarageUpnpService_get_SCPD_ROOTNODE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_SCPD_ROOTNODE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, SCPD_ROOTNODE, NSString *)

inline NSString *OrgCybergarageUpnpService_get_SCPD_ROOTNODE_NS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_SCPD_ROOTNODE_NS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, SCPD_ROOTNODE_NS, NSString *)

inline NSString *OrgCybergarageUpnpService_get_SPEC_VERSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_SPEC_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, SPEC_VERSION, NSString *)

inline NSString *OrgCybergarageUpnpService_get_MAJOR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_MAJOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, MAJOR, NSString *)

inline NSString *OrgCybergarageUpnpService_get_MAJOR_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_MAJOR_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, MAJOR_VALUE, NSString *)

inline NSString *OrgCybergarageUpnpService_get_MINOR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_MINOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, MINOR, NSString *)

inline NSString *OrgCybergarageUpnpService_get_MINOR_VALUE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpService_MINOR_VALUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpService, MINOR_VALUE, NSString *)

FOUNDATION_EXPORT void OrgCybergarageUpnpService_init(OrgCybergarageUpnpService *self);

FOUNDATION_EXPORT OrgCybergarageUpnpService *new_OrgCybergarageUpnpService_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpService *create_OrgCybergarageUpnpService_init(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpService_initWithOrgCybergarageXmlNode_(OrgCybergarageUpnpService *self, OrgCybergarageXmlNode *node);

FOUNDATION_EXPORT OrgCybergarageUpnpService *new_OrgCybergarageUpnpService_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpService *create_OrgCybergarageUpnpService_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node);

FOUNDATION_EXPORT jboolean OrgCybergarageUpnpService_isServiceNodeWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpService)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpService")
