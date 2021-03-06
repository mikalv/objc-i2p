//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/UPnP.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/lang/reflect/Constructor.h"
#include "org/cybergarage/net/HostInterface.h"
#include "org/cybergarage/soap/SOAP.h"
#include "org/cybergarage/upnp/UPnP.h"
#include "org/cybergarage/upnp/ssdp/SSDP.h"
#include "org/cybergarage/util/Debug.h"
#include "org/cybergarage/xml/Parser.h"

@interface OrgCybergarageUpnpUPnP ()

+ (NSString *)toUUIDWithInt:(jint)seed;

+ (OrgCybergarageXmlParser *)loadDefaultXMLParser;

@end

inline OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_get_xmlParser(void);
inline OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_set_xmlParser(OrgCybergarageXmlParser *value);
static OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_xmlParser;
J2OBJC_STATIC_FIELD_OBJ(OrgCybergarageUpnpUPnP, xmlParser, OrgCybergarageXmlParser *)

inline jint OrgCybergarageUpnpUPnP_get_timeToLive(void);
inline jint OrgCybergarageUpnpUPnP_set_timeToLive(jint value);
inline jint *OrgCybergarageUpnpUPnP_getRef_timeToLive(void);
static jint OrgCybergarageUpnpUPnP_timeToLive = 4;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgCybergarageUpnpUPnP, timeToLive, jint)

__attribute__((unused)) static NSString *OrgCybergarageUpnpUPnP_toUUIDWithInt_(jint seed);

__attribute__((unused)) static OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_loadDefaultXMLParser(void);

J2OBJC_INITIALIZED_DEFN(OrgCybergarageUpnpUPnP)

NSString *OrgCybergarageUpnpUPnP_XML_CLASS_PROPERTTY = @"cyberlink.upnp.xml.parser";
NSString *OrgCybergarageUpnpUPnP_NAME = @"CyberLinkJava";
NSString *OrgCybergarageUpnpUPnP_VERSION = @"3.0";
NSString *OrgCybergarageUpnpUPnP_INMPR03 = @"INMPR03";
NSString *OrgCybergarageUpnpUPnP_INMPR03_VERSION = @"1.0";
NSString *OrgCybergarageUpnpUPnP_XML_DECLARATION = @"<?xml version=\"1.0\" encoding=\"utf-8\"?>";

@implementation OrgCybergarageUpnpUPnP

+ (NSString *)XML_CLASS_PROPERTTY {
  return OrgCybergarageUpnpUPnP_XML_CLASS_PROPERTTY;
}

+ (NSString *)NAME {
  return OrgCybergarageUpnpUPnP_NAME;
}

+ (NSString *)VERSION {
  return OrgCybergarageUpnpUPnP_VERSION;
}

+ (jint)SERVER_RETRY_COUNT {
  return OrgCybergarageUpnpUPnP_SERVER_RETRY_COUNT;
}

+ (jint)DEFAULT_EXPIRED_DEVICE_EXTRA_TIME {
  return OrgCybergarageUpnpUPnP_DEFAULT_EXPIRED_DEVICE_EXTRA_TIME;
}

+ (NSString *)INMPR03 {
  return OrgCybergarageUpnpUPnP_INMPR03;
}

+ (NSString *)INMPR03_VERSION {
  return OrgCybergarageUpnpUPnP_INMPR03_VERSION;
}

+ (jint)INMPR03_DISCOVERY_OVER_WIRELESS_COUNT {
  return OrgCybergarageUpnpUPnP_INMPR03_DISCOVERY_OVER_WIRELESS_COUNT;
}

+ (NSString *)XML_DECLARATION {
  return OrgCybergarageUpnpUPnP_XML_DECLARATION;
}

+ (jint)CONFIGID_UPNP_ORG_MAX {
  return OrgCybergarageUpnpUPnP_CONFIGID_UPNP_ORG_MAX;
}

+ (jint)USE_ONLY_IPV6_ADDR {
  return OrgCybergarageUpnpUPnP_USE_ONLY_IPV6_ADDR;
}

+ (jint)USE_LOOPBACK_ADDR {
  return OrgCybergarageUpnpUPnP_USE_LOOPBACK_ADDR;
}

+ (jint)USE_IPV6_LINK_LOCAL_SCOPE {
  return OrgCybergarageUpnpUPnP_USE_IPV6_LINK_LOCAL_SCOPE;
}

+ (jint)USE_IPV6_SUBNET_SCOPE {
  return OrgCybergarageUpnpUPnP_USE_IPV6_SUBNET_SCOPE;
}

+ (jint)USE_IPV6_ADMINISTRATIVE_SCOPE {
  return OrgCybergarageUpnpUPnP_USE_IPV6_ADMINISTRATIVE_SCOPE;
}

+ (jint)USE_IPV6_SITE_LOCAL_SCOPE {
  return OrgCybergarageUpnpUPnP_USE_IPV6_SITE_LOCAL_SCOPE;
}

+ (jint)USE_IPV6_GLOBAL_SCOPE {
  return OrgCybergarageUpnpUPnP_USE_IPV6_GLOBAL_SCOPE;
}

+ (jint)USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES {
  return OrgCybergarageUpnpUPnP_USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES;
}

+ (jint)USE_ONLY_IPV4_ADDR {
  return OrgCybergarageUpnpUPnP_USE_ONLY_IPV4_ADDR;
}

+ (jint)DEFAULT_TTL {
  return OrgCybergarageUpnpUPnP_DEFAULT_TTL;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpUPnP_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getServerName {
  return OrgCybergarageUpnpUPnP_getServerName();
}

+ (void)setEnableWithInt:(jint)value {
  OrgCybergarageUpnpUPnP_setEnableWithInt_(value);
}

+ (void)setDisableWithInt:(jint)value {
  OrgCybergarageUpnpUPnP_setDisableWithInt_(value);
}

+ (jboolean)isEnabledWithInt:(jint)value {
  return OrgCybergarageUpnpUPnP_isEnabledWithInt_(value);
}

+ (NSString *)toUUIDWithInt:(jint)seed {
  return OrgCybergarageUpnpUPnP_toUUIDWithInt_(seed);
}

+ (NSString *)createUUID {
  return OrgCybergarageUpnpUPnP_createUUID();
}

+ (jint)createBootId {
  return OrgCybergarageUpnpUPnP_createBootId();
}

+ (jint)caluculateConfigIdWithNSString:(NSString *)configXml {
  return OrgCybergarageUpnpUPnP_caluculateConfigIdWithNSString_(configXml);
}

+ (void)setXMLParserWithOrgCybergarageXmlParser:(OrgCybergarageXmlParser *)parser {
  OrgCybergarageUpnpUPnP_setXMLParserWithOrgCybergarageXmlParser_(parser);
}

+ (OrgCybergarageXmlParser *)getXMLParser {
  return OrgCybergarageUpnpUPnP_getXMLParser();
}

+ (OrgCybergarageXmlParser *)loadDefaultXMLParser {
  return OrgCybergarageUpnpUPnP_loadDefaultXMLParser();
}

+ (void)setTimeToLiveWithInt:(jint)value {
  OrgCybergarageUpnpUPnP_setTimeToLiveWithInt_(value);
}

+ (jint)getTimeToLive {
  return OrgCybergarageUpnpUPnP_getTimeToLive();
}

+ (void)initialize__ {
  OrgCybergarageUpnpUPnP_initialize__();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 2, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x19, 3, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1a, 4, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x19, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlParser;", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlParser;", 0xa, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 9, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getServerName);
  methods[2].selector = @selector(setEnableWithInt:);
  methods[3].selector = @selector(setDisableWithInt:);
  methods[4].selector = @selector(isEnabledWithInt:);
  methods[5].selector = @selector(toUUIDWithInt:);
  methods[6].selector = @selector(createUUID);
  methods[7].selector = @selector(createBootId);
  methods[8].selector = @selector(caluculateConfigIdWithNSString:);
  methods[9].selector = @selector(setXMLParserWithOrgCybergarageXmlParser:);
  methods[10].selector = @selector(getXMLParser);
  methods[11].selector = @selector(loadDefaultXMLParser);
  methods[12].selector = @selector(setTimeToLiveWithInt:);
  methods[13].selector = @selector(getTimeToLive);
  methods[14].selector = @selector(initialize__);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "XML_CLASS_PROPERTTY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "SERVER_RETRY_COUNT", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_SERVER_RETRY_COUNT, 0x19, -1, -1, -1, -1 },
    { "DEFAULT_EXPIRED_DEVICE_EXTRA_TIME", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_DEFAULT_EXPIRED_DEVICE_EXTRA_TIME, 0x19, -1, -1, -1, -1 },
    { "INMPR03", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "INMPR03_VERSION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "INMPR03_DISCOVERY_OVER_WIRELESS_COUNT", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_INMPR03_DISCOVERY_OVER_WIRELESS_COUNT, 0x19, -1, -1, -1, -1 },
    { "XML_DECLARATION", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "CONFIGID_UPNP_ORG_MAX", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_CONFIGID_UPNP_ORG_MAX, 0x19, -1, -1, -1, -1 },
    { "USE_ONLY_IPV6_ADDR", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_ONLY_IPV6_ADDR, 0x19, -1, -1, -1, -1 },
    { "USE_LOOPBACK_ADDR", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_LOOPBACK_ADDR, 0x19, -1, -1, -1, -1 },
    { "USE_IPV6_LINK_LOCAL_SCOPE", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_IPV6_LINK_LOCAL_SCOPE, 0x19, -1, -1, -1, -1 },
    { "USE_IPV6_SUBNET_SCOPE", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_IPV6_SUBNET_SCOPE, 0x19, -1, -1, -1, -1 },
    { "USE_IPV6_ADMINISTRATIVE_SCOPE", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_IPV6_ADMINISTRATIVE_SCOPE, 0x19, -1, -1, -1, -1 },
    { "USE_IPV6_SITE_LOCAL_SCOPE", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_IPV6_SITE_LOCAL_SCOPE, 0x19, -1, -1, -1, -1 },
    { "USE_IPV6_GLOBAL_SCOPE", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_IPV6_GLOBAL_SCOPE, 0x19, -1, -1, -1, -1 },
    { "USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_SSDP_SEARCHRESPONSE_MULTIPLE_INTERFACES, 0x19, -1, -1, -1, -1 },
    { "USE_ONLY_IPV4_ADDR", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_USE_ONLY_IPV4_ADDR, 0x19, -1, -1, -1, -1 },
    { "xmlParser", "LOrgCybergarageXmlParser;", .constantValue.asLong = 0, 0xa, -1, 17, -1, -1 },
    { "DEFAULT_TTL", "I", .constantValue.asInt = OrgCybergarageUpnpUPnP_DEFAULT_TTL, 0x19, -1, -1, -1, -1 },
    { "timeToLive", "I", .constantValue.asLong = 0, 0xa, -1, 18, -1, -1 },
  };
  static const void *ptrTable[] = { "setEnable", "I", "setDisable", "isEnabled", "toUUID", "caluculateConfigId", "LNSString;", "setXMLParser", "LOrgCybergarageXmlParser;", "setTimeToLive", "initialize", &OrgCybergarageUpnpUPnP_XML_CLASS_PROPERTTY, &OrgCybergarageUpnpUPnP_NAME, &OrgCybergarageUpnpUPnP_VERSION, &OrgCybergarageUpnpUPnP_INMPR03, &OrgCybergarageUpnpUPnP_INMPR03_VERSION, &OrgCybergarageUpnpUPnP_XML_DECLARATION, &OrgCybergarageUpnpUPnP_xmlParser, &OrgCybergarageUpnpUPnP_timeToLive };
  static const J2ObjcClassInfo _OrgCybergarageUpnpUPnP = { "UPnP", "org.cybergarage.upnp", ptrTable, methods, fields, 7, 0x1, 15, 22, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpUPnP;
}

+ (void)initialize {
  if (self == [OrgCybergarageUpnpUPnP class]) {
    {
      OrgCybergarageUpnpUPnP_setTimeToLiveWithInt_(OrgCybergarageUpnpUPnP_DEFAULT_TTL);
    }
    J2OBJC_SET_INITIALIZED(OrgCybergarageUpnpUPnP)
  }
}

@end

void OrgCybergarageUpnpUPnP_init(OrgCybergarageUpnpUPnP *self) {
  NSObject_init(self);
}

OrgCybergarageUpnpUPnP *new_OrgCybergarageUpnpUPnP_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpUPnP, init)
}

OrgCybergarageUpnpUPnP *create_OrgCybergarageUpnpUPnP_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpUPnP, init)
}

NSString *OrgCybergarageUpnpUPnP_getServerName() {
  OrgCybergarageUpnpUPnP_initialize();
  NSString *osName = JavaLangSystem_getPropertyWithNSString_(@"os.name");
  NSString *osVer = JavaLangSystem_getPropertyWithNSString_(@"os.version");
  return JreStrcat("$C$$$C$", osName, '/', osVer, @" UPnP/1.0 ", OrgCybergarageUpnpUPnP_NAME, '/', OrgCybergarageUpnpUPnP_VERSION);
}

void OrgCybergarageUpnpUPnP_setEnableWithInt_(jint value) {
  OrgCybergarageUpnpUPnP_initialize();
  switch (value) {
    case OrgCybergarageUpnpUPnP_USE_ONLY_IPV6_ADDR:
    {
      *JreLoadStaticRef(OrgCybergarageNetHostInterface, USE_ONLY_IPV6_ADDR) = true;
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_ONLY_IPV4_ADDR:
    {
      *JreLoadStaticRef(OrgCybergarageNetHostInterface, USE_ONLY_IPV4_ADDR) = true;
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_LOOPBACK_ADDR:
    {
      *JreLoadStaticRef(OrgCybergarageNetHostInterface, USE_LOOPBACK_ADDR) = true;
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_IPV6_LINK_LOCAL_SCOPE:
    {
      OrgCybergarageUpnpSsdpSSDP_setIPv6AddressWithNSString_(OrgCybergarageUpnpSsdpSSDP_IPV6_LINK_LOCAL_ADDRESS);
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_IPV6_SUBNET_SCOPE:
    {
      OrgCybergarageUpnpSsdpSSDP_setIPv6AddressWithNSString_(OrgCybergarageUpnpSsdpSSDP_IPV6_SUBNET_ADDRESS);
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_IPV6_ADMINISTRATIVE_SCOPE:
    {
      OrgCybergarageUpnpSsdpSSDP_setIPv6AddressWithNSString_(OrgCybergarageUpnpSsdpSSDP_IPV6_ADMINISTRATIVE_ADDRESS);
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_IPV6_SITE_LOCAL_SCOPE:
    {
      OrgCybergarageUpnpSsdpSSDP_setIPv6AddressWithNSString_(OrgCybergarageUpnpSsdpSSDP_IPV6_SITE_LOCAL_ADDRESS);
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_IPV6_GLOBAL_SCOPE:
    {
      OrgCybergarageUpnpSsdpSSDP_setIPv6AddressWithNSString_(OrgCybergarageUpnpSsdpSSDP_IPV6_GLOBAL_ADDRESS);
    }
    break;
  }
}

void OrgCybergarageUpnpUPnP_setDisableWithInt_(jint value) {
  OrgCybergarageUpnpUPnP_initialize();
  switch (value) {
    case OrgCybergarageUpnpUPnP_USE_ONLY_IPV6_ADDR:
    {
      *JreLoadStaticRef(OrgCybergarageNetHostInterface, USE_ONLY_IPV6_ADDR) = false;
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_ONLY_IPV4_ADDR:
    {
      *JreLoadStaticRef(OrgCybergarageNetHostInterface, USE_ONLY_IPV4_ADDR) = false;
    }
    break;
    case OrgCybergarageUpnpUPnP_USE_LOOPBACK_ADDR:
    {
      *JreLoadStaticRef(OrgCybergarageNetHostInterface, USE_LOOPBACK_ADDR) = false;
    }
    break;
  }
}

jboolean OrgCybergarageUpnpUPnP_isEnabledWithInt_(jint value) {
  OrgCybergarageUpnpUPnP_initialize();
  switch (value) {
    case OrgCybergarageUpnpUPnP_USE_ONLY_IPV6_ADDR:
    {
      return JreLoadStatic(OrgCybergarageNetHostInterface, USE_ONLY_IPV6_ADDR);
    }
    case OrgCybergarageUpnpUPnP_USE_ONLY_IPV4_ADDR:
    {
      return JreLoadStatic(OrgCybergarageNetHostInterface, USE_ONLY_IPV4_ADDR);
    }
    case OrgCybergarageUpnpUPnP_USE_LOOPBACK_ADDR:
    {
      return JreLoadStatic(OrgCybergarageNetHostInterface, USE_LOOPBACK_ADDR);
    }
  }
  return false;
}

NSString *OrgCybergarageUpnpUPnP_toUUIDWithInt_(jint seed) {
  OrgCybergarageUpnpUPnP_initialize();
  NSString *id_ = JavaLangInteger_toStringWithInt_withInt_((jint) (seed & (jint) 0xFFFF), 16);
  jint idLen = [((NSString *) nil_chk(id_)) java_length];
  NSString *uuid = @"";
  for (jint n = 0; n < (4 - idLen); n++) JreStrAppend(&uuid, "$", @"0");
  JreStrAppend(&uuid, "$", id_);
  return uuid;
}

NSString *OrgCybergarageUpnpUPnP_createUUID() {
  OrgCybergarageUpnpUPnP_initialize();
  jlong time1 = JavaLangSystem_currentTimeMillis();
  jlong time2 = JreFpToLong(((jdouble) JavaLangSystem_currentTimeMillis() * JavaLangMath_random()));
  return JreStrcat("$C$C$C$", OrgCybergarageUpnpUPnP_toUUIDWithInt_((jint) (time1 & (jint) 0xFFFF)), '-', OrgCybergarageUpnpUPnP_toUUIDWithInt_((jint) ((JreRShift64(time1, 32)) | (jint) 0xA000) & (jint) 0xFFFF), '-', OrgCybergarageUpnpUPnP_toUUIDWithInt_((jint) (time2 & (jint) 0xFFFF)), '-', OrgCybergarageUpnpUPnP_toUUIDWithInt_((jint) ((JreRShift64(time2, 32)) | (jint) 0xE000) & (jint) 0xFFFF));
}

jint OrgCybergarageUpnpUPnP_createBootId() {
  OrgCybergarageUpnpUPnP_initialize();
  return (jint) (JavaLangSystem_currentTimeMillis() / 1000LL);
}

jint OrgCybergarageUpnpUPnP_caluculateConfigIdWithNSString_(NSString *configXml) {
  OrgCybergarageUpnpUPnP_initialize();
  if (configXml == nil) return 0;
  jint configId = 0;
  jint configLen = [configXml java_length];
  for (jint n = 0; n < configLen; n++) {
    configId += [configXml java_codePointAt:n];
    if (configId < OrgCybergarageUpnpUPnP_CONFIGID_UPNP_ORG_MAX) continue;
    configId = configId % OrgCybergarageUpnpUPnP_CONFIGID_UPNP_ORG_MAX;
  }
  return configId;
}

void OrgCybergarageUpnpUPnP_setXMLParserWithOrgCybergarageXmlParser_(OrgCybergarageXmlParser *parser) {
  OrgCybergarageUpnpUPnP_initialize();
  JreStrongAssign(&OrgCybergarageUpnpUPnP_xmlParser, parser);
  OrgCybergarageSoapSOAP_setXMLParserWithOrgCybergarageXmlParser_(parser);
}

OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_getXMLParser() {
  OrgCybergarageUpnpUPnP_initialize();
  if (OrgCybergarageUpnpUPnP_xmlParser == nil) {
    JreStrongAssign(&OrgCybergarageUpnpUPnP_xmlParser, OrgCybergarageUpnpUPnP_loadDefaultXMLParser());
    if (OrgCybergarageUpnpUPnP_xmlParser == nil) @throw create_JavaLangRuntimeException_initWithNSString_(@"No XML parser defined. And unable to laod any. \nTry to invoke UPnP.setXMLParser before UPnP.getXMLParser");
    OrgCybergarageSoapSOAP_setXMLParserWithOrgCybergarageXmlParser_(OrgCybergarageUpnpUPnP_xmlParser);
  }
  return OrgCybergarageUpnpUPnP_xmlParser;
}

OrgCybergarageXmlParser *OrgCybergarageUpnpUPnP_loadDefaultXMLParser() {
  OrgCybergarageUpnpUPnP_initialize();
  OrgCybergarageXmlParser *parser = nil;
  IOSObjectArray *parserClass = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangSystem_getPropertyWithNSString_(OrgCybergarageUpnpUPnP_XML_CLASS_PROPERTTY), @"org.cybergarage.xml.parser.JaxpParser" } count:2 type:NSString_class_()];
  for (jint i = 0; i < parserClass->size_; i++) {
    if (IOSObjectArray_Get(parserClass, i) == nil) continue;
    @try {
      parser = (OrgCybergarageXmlParser *) cast_chk([((JavaLangReflectConstructor *) nil_chk([((IOSClass *) nil_chk(IOSClass_forName_(IOSObjectArray_Get(parserClass, i)))) getDeclaredConstructor:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]])) newInstanceWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSObject_class_()]], [OrgCybergarageXmlParser class]);
      return parser;
    }
    @catch (JavaLangThrowable *e) {
      OrgCybergarageUtilDebug_warningWithNSString_(JreStrcat("$$$@", @"Unable to load ", IOSObjectArray_Get(parserClass, i), @" as XMLParser due to ", e));
    }
  }
  return nil;
}

void OrgCybergarageUpnpUPnP_setTimeToLiveWithInt_(jint value) {
  OrgCybergarageUpnpUPnP_initialize();
  OrgCybergarageUpnpUPnP_timeToLive = value;
}

jint OrgCybergarageUpnpUPnP_getTimeToLive() {
  OrgCybergarageUpnpUPnP_initialize();
  return OrgCybergarageUpnpUPnP_timeToLive;
}

void OrgCybergarageUpnpUPnP_initialize__() {
  OrgCybergarageUpnpUPnP_initialize();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpUPnP)
