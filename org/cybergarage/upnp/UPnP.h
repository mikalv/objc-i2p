//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/UPnP.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpUPnP")
#ifdef RESTRICT_OrgCybergarageUpnpUPnP
#define INCLUDE_ALL_OrgCybergarageUpnpUPnP 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpUPnP 1
#endif
#undef RESTRICT_OrgCybergarageUpnpUPnP

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpUPnP_) && (INCLUDE_ALL_OrgCybergarageUpnpUPnP || defined(INCLUDE_OrgCybergarageUpnpUPnP))
#define OrgCybergarageUpnpUPnP_

@class OrgCybergarageXmlParser;

@interface OrgCybergarageUpnpUPnP : NSObject
@property (readonly, copy, class) NSString *XML_CLASS_PROPERTTY NS_SWIFT_NAME(XML_CLASS_PROPERTTY);
@property (readonly, copy, class) NSString *NAME NS_SWIFT_NAME(NAME);
@property (readonly, copy, class) NSString *VERSION NS_SWIFT_NAME(VERSION);
@property (readonly, class) jint SERVER_RETRY_COUNT NS_SWIFT_NAME(SERVER_RETRY_COUNT);
@property (readonly, class) jint DEFAULT_EXPIRED_DEVICE_EXTRA_TIME NS_SWIFT_NAME(DEFAULT_EXPIRED_DEVICE_EXTRA_TIME);
@property (readonly, copy, class) NSString *INMPR03 NS_SWIFT_NAME(INMPR03);
@property (readonly, copy, class) NSString *INMPR03_VERSION NS_SWIFT_NAME(INMPR03_VERSION);
@property (readonly, class) jint INMPR03_DISCOVERY_OVER_WIRELESS_COUNT NS_SWIFT_NAME(INMPR03_DISCOVERY_OVER_WIRELESS_COUNT);
@property (readonly, copy, class) NSString *XML_DECLARATION NS_SWIFT_NAME(XML_DECLARATION);
@property (readonly, class) jint CONFIGID_UPNP_ORG_MAX NS_SWIFT_NAME(CONFIGID_UPNP_ORG_MAX);
@property (readonly, class) jint USE_ONLY_IPV6_ADDR NS_SWIFT_NAME(USE_ONLY_IPV6_ADDR);
@property (readonly, class) jint USE_LOOPBACK_ADDR NS_SWIFT_NAME(USE_LOOPBACK_ADDR);
@property (readonly, class) jint USE_IPV6_LINK_LOCAL_SCOPE NS_SWIFT_NAME(USE_IPV6_LINK_LOCAL_SCOPE);
@property (readonly, class) jint USE_IPV6_SUBNET_SCOPE NS_SWIFT_NAME(USE_IPV6_SUBNET_SCOPE);
@property (readonly, class) jint USE_IPV6_ADMINISTRATIVE_SCOPE NS_SWIFT_NAME(USE_IPV6_ADMINISTRATIVE_SCOPE);
@property (readonly, class) jint USE_IPV6_SITE_LOCAL_SCOPE NS_SWIFT_NAME(USE_IPV6_SITE_LOCAL_SCOPE);
@property (readonly, class) jint USE_IPV6_GLOBAL_SCOPE NS_SWIFT_NAME(USE_IPV6_GLOBAL_SCOPE);
@property (readonly, class) jint USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES NS_SWIFT_NAME(USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES);
@property (readonly, class) jint USE_ONLY_IPV4_ADDR NS_SWIFT_NAME(USE_ONLY_IPV4_ADDR);
@property (readonly, class) jint DEFAULT_TTL NS_SWIFT_NAME(DEFAULT_TTL);

+ (NSString *)XML_CLASS_PROPERTTY;

+ (NSString *)NAME;

+ (NSString *)VERSION;

+ (jint)SERVER_RETRY_COUNT;

+ (jint)DEFAULT_EXPIRED_DEVICE_EXTRA_TIME;

+ (NSString *)INMPR03;

+ (NSString *)INMPR03_VERSION;

+ (jint)INMPR03_DISCOVERY_OVER_WIRELESS_COUNT;

+ (NSString *)XML_DECLARATION;

+ (jint)CONFIGID_UPNP_ORG_MAX;

+ (jint)USE_ONLY_IPV6_ADDR;

+ (jint)USE_LOOPBACK_ADDR;

+ (jint)USE_IPV6_LINK_LOCAL_SCOPE;

+ (jint)USE_IPV6_SUBNET_SCOPE;

+ (jint)USE_IPV6_ADMINISTRATIVE_SCOPE;

+ (jint)USE_IPV6_SITE_LOCAL_SCOPE;

+ (jint)USE_IPV6_GLOBAL_SCOPE;

+ (jint)USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES;

+ (jint)USE_ONLY_IPV4_ADDR;

+ (jint)DEFAULT_TTL;

#pragma mark Public

- (instancetype __nonnull)init;

+ (jint)caluculateConfigIdWithNSString:(NSString *)configXml;

+ (jint)createBootId;

+ (NSString *)createUUID;

+ (NSString *)getServerName;

+ (jint)getTimeToLive;

+ (OrgCybergarageXmlParser *)getXMLParser;

+ (void)initialize__ OBJC_METHOD_FAMILY_NONE;

+ (jboolean)isEnabledWithInt:(jint)value;

+ (void)setDisableWithInt:(jint)value;

+ (void)setEnableWithInt:(jint)value;

+ (void)setTimeToLiveWithInt:(jint)value;

+ (void)setXMLParserWithOrgCybergarageXmlParser:(OrgCybergarageXmlParser *)parser;

@end

J2OBJC_STATIC_INIT(OrgCybergarageUpnpUPnP)

inline NSString *OrgCybergarageUpnpUPnP_get_XML_CLASS_PROPERTTY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_XML_CLASS_PROPERTTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpUPnP, XML_CLASS_PROPERTTY, NSString *)

inline NSString *OrgCybergarageUpnpUPnP_get_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpUPnP, NAME, NSString *)

inline NSString *OrgCybergarageUpnpUPnP_get_VERSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpUPnP, VERSION, NSString *)

inline jint OrgCybergarageUpnpUPnP_get_SERVER_RETRY_COUNT(void);
#define OrgCybergarageUpnpUPnP_SERVER_RETRY_COUNT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, SERVER_RETRY_COUNT, jint)

inline jint OrgCybergarageUpnpUPnP_get_DEFAULT_EXPIRED_DEVICE_EXTRA_TIME(void);
#define OrgCybergarageUpnpUPnP_DEFAULT_EXPIRED_DEVICE_EXTRA_TIME 60
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, DEFAULT_EXPIRED_DEVICE_EXTRA_TIME, jint)

inline NSString *OrgCybergarageUpnpUPnP_get_INMPR03(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_INMPR03;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpUPnP, INMPR03, NSString *)

inline NSString *OrgCybergarageUpnpUPnP_get_INMPR03_VERSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_INMPR03_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpUPnP, INMPR03_VERSION, NSString *)

inline jint OrgCybergarageUpnpUPnP_get_INMPR03_DISCOVERY_OVER_WIRELESS_COUNT(void);
#define OrgCybergarageUpnpUPnP_INMPR03_DISCOVERY_OVER_WIRELESS_COUNT 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, INMPR03_DISCOVERY_OVER_WIRELESS_COUNT, jint)

inline NSString *OrgCybergarageUpnpUPnP_get_XML_DECLARATION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_XML_DECLARATION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpUPnP, XML_DECLARATION, NSString *)

inline jint OrgCybergarageUpnpUPnP_get_CONFIGID_UPNP_ORG_MAX(void);
#define OrgCybergarageUpnpUPnP_CONFIGID_UPNP_ORG_MAX 16777215
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, CONFIGID_UPNP_ORG_MAX, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_ONLY_IPV6_ADDR(void);
#define OrgCybergarageUpnpUPnP_USE_ONLY_IPV6_ADDR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_ONLY_IPV6_ADDR, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_LOOPBACK_ADDR(void);
#define OrgCybergarageUpnpUPnP_USE_LOOPBACK_ADDR 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_LOOPBACK_ADDR, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_IPV6_LINK_LOCAL_SCOPE(void);
#define OrgCybergarageUpnpUPnP_USE_IPV6_LINK_LOCAL_SCOPE 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_IPV6_LINK_LOCAL_SCOPE, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_IPV6_SUBNET_SCOPE(void);
#define OrgCybergarageUpnpUPnP_USE_IPV6_SUBNET_SCOPE 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_IPV6_SUBNET_SCOPE, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_IPV6_ADMINISTRATIVE_SCOPE(void);
#define OrgCybergarageUpnpUPnP_USE_IPV6_ADMINISTRATIVE_SCOPE 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_IPV6_ADMINISTRATIVE_SCOPE, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_IPV6_SITE_LOCAL_SCOPE(void);
#define OrgCybergarageUpnpUPnP_USE_IPV6_SITE_LOCAL_SCOPE 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_IPV6_SITE_LOCAL_SCOPE, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_IPV6_GLOBAL_SCOPE(void);
#define OrgCybergarageUpnpUPnP_USE_IPV6_GLOBAL_SCOPE 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_IPV6_GLOBAL_SCOPE, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES(void);
#define OrgCybergarageUpnpUPnP_USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES, jint)

inline jint OrgCybergarageUpnpUPnP_get_USE_ONLY_IPV4_ADDR(void);
#define OrgCybergarageUpnpUPnP_USE_ONLY_IPV4_ADDR 9
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, USE_ONLY_IPV4_ADDR, jint)

inline jint OrgCybergarageUpnpUPnP_get_DEFAULT_TTL(void);
#define OrgCybergarageUpnpUPnP_DEFAULT_TTL 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpUPnP, DEFAULT_TTL, jint)

FOUNDATION_EXPORT void OrgCybergarageUpnpUPnP_init(OrgCybergarageUpnpUPnP *self);

FOUNDATION_EXPORT OrgCybergarageUpnpUPnP *new_OrgCybergarageUpnpUPnP_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpUPnP *create_OrgCybergarageUpnpUPnP_init(void);

FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_getServerName(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpUPnP_setEnableWithInt_(jint value);

FOUNDATION_EXPORT void OrgCybergarageUpnpUPnP_setDisableWithInt_(jint value);

FOUNDATION_EXPORT jboolean OrgCybergarageUpnpUPnP_isEnabledWithInt_(jint value);

FOUNDATION_EXPORT NSString *OrgCybergarageUpnpUPnP_createUUID(void);

FOUNDATION_EXPORT jint OrgCybergarageUpnpUPnP_createBootId(void);

FOUNDATION_EXPORT jint OrgCybergarageUpnpUPnP_caluculateConfigIdWithNSString_(NSString *configXml);

FOUNDATION_EXPORT void OrgCybergarageUpnpUPnP_setXMLParserWithOrgCybergarageXmlParser_(OrgCybergarageXmlParser *parser);

FOUNDATION_EXPORT OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_getXMLParser(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpUPnP_setTimeToLiveWithInt_(jint value);

FOUNDATION_EXPORT jint OrgCybergarageUpnpUPnP_getTimeToLive(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpUPnP_initialize__(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpUPnP)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpUPnP")
