//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ssdp/SSDPResponse.java
//

#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "org/cybergarage/http/HTTP.h"
#include "org/cybergarage/http/HTTPResponse.h"
#include "org/cybergarage/upnp/ssdp/SSDP.h"
#include "org/cybergarage/upnp/ssdp/SSDPResponse.h"

@implementation OrgCybergarageUpnpSsdpSSDPResponse

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpSsdpSSDPResponse_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  OrgCybergarageUpnpSsdpSSDPResponse_initWithJavaIoInputStream_(self, inArg);
  return self;
}

- (void)setSTWithNSString:(NSString *)value {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_ST withNSString:value];
}

- (NSString *)getST {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_ST];
}

- (void)setLocationWithNSString:(NSString *)value {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_LOCATION withNSString:value];
}

- (NSString *)getLocation {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_LOCATION];
}

- (void)setUSNWithNSString:(NSString *)value {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_USN withNSString:value];
}

- (NSString *)getUSN {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_USN];
}

- (void)setMYNAMEWithNSString:(NSString *)value {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_MYNAME withNSString:value];
}

- (NSString *)getMYNAME {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_MYNAME];
}

- (void)setLeaseTimeWithInt:(jint)len {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CACHE_CONTROL withNSString:JreStrcat("$$", @"max-age=", JavaLangInteger_toStringWithInt_(len))];
}

- (jint)getLeaseTime {
  NSString *cacheCtrl = [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_CACHE_CONTROL];
  return OrgCybergarageUpnpSsdpSSDP_getLeaseTimeWithNSString_(cacheCtrl);
}

- (void)setBootIdWithInt:(jint)bootId {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_BOOTID_UPNP_ORG withInt:bootId];
}

- (jint)getBootId {
  return [self getIntegerHeaderValueWithNSString:OrgCybergarageHttpHTTP_BOOTID_UPNP_ORG];
}

- (NSString *)getHeader {
  JavaLangStringBuffer *str = create_JavaLangStringBuffer_init();
  [str appendWithNSString:[self getStatusLineString]];
  [str appendWithNSString:[self getHeaderString]];
  [str appendWithNSString:OrgCybergarageHttpHTTP_CRLF];
  return [str description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaIoInputStream:);
  methods[2].selector = @selector(setSTWithNSString:);
  methods[3].selector = @selector(getST);
  methods[4].selector = @selector(setLocationWithNSString:);
  methods[5].selector = @selector(getLocation);
  methods[6].selector = @selector(setUSNWithNSString:);
  methods[7].selector = @selector(getUSN);
  methods[8].selector = @selector(setMYNAMEWithNSString:);
  methods[9].selector = @selector(getMYNAME);
  methods[10].selector = @selector(setLeaseTimeWithInt:);
  methods[11].selector = @selector(getLeaseTime);
  methods[12].selector = @selector(setBootIdWithInt:);
  methods[13].selector = @selector(getBootId);
  methods[14].selector = @selector(getHeader);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoInputStream;", "setST", "LNSString;", "setLocation", "setUSN", "setMYNAME", "setLeaseTime", "I", "setBootId" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpSsdpSSDPResponse = { "SSDPResponse", "org.cybergarage.upnp.ssdp", ptrTable, methods, NULL, 7, 0x1, 15, 0, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpSsdpSSDPResponse;
}

@end

void OrgCybergarageUpnpSsdpSSDPResponse_init(OrgCybergarageUpnpSsdpSSDPResponse *self) {
  OrgCybergarageHttpHTTPResponse_init(self);
  [self setVersionWithNSString:OrgCybergarageHttpHTTP_VERSION_11];
}

OrgCybergarageUpnpSsdpSSDPResponse *new_OrgCybergarageUpnpSsdpSSDPResponse_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPResponse, init)
}

OrgCybergarageUpnpSsdpSSDPResponse *create_OrgCybergarageUpnpSsdpSSDPResponse_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPResponse, init)
}

void OrgCybergarageUpnpSsdpSSDPResponse_initWithJavaIoInputStream_(OrgCybergarageUpnpSsdpSSDPResponse *self, JavaIoInputStream *inArg) {
  OrgCybergarageHttpHTTPResponse_initWithJavaIoInputStream_(self, inArg);
}

OrgCybergarageUpnpSsdpSSDPResponse *new_OrgCybergarageUpnpSsdpSSDPResponse_initWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPResponse, initWithJavaIoInputStream_, inArg)
}

OrgCybergarageUpnpSsdpSSDPResponse *create_OrgCybergarageUpnpSsdpSSDPResponse_initWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPResponse, initWithJavaIoInputStream_, inArg)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpSsdpSSDPResponse)