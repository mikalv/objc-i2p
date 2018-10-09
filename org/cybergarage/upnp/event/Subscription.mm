//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/event/Subscription.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "org/cybergarage/upnp/UPnP.h"
#include "org/cybergarage/upnp/event/Subscription.h"

NSString *OrgCybergarageUpnpEventSubscription_XMLNS = @"urn:schemas-upnp-org:event-1-0";
NSString *OrgCybergarageUpnpEventSubscription_TIMEOUT_HEADER = @"Second-";
NSString *OrgCybergarageUpnpEventSubscription_INFINITE_STRING = @"infinite";
NSString *OrgCybergarageUpnpEventSubscription_UUID = @"uuid:";
NSString *OrgCybergarageUpnpEventSubscription_SUBSCRIBE_METHOD = @"SUBSCRIBE";
NSString *OrgCybergarageUpnpEventSubscription_UNSUBSCRIBE_METHOD = @"UNSUBSCRIBE";

@implementation OrgCybergarageUpnpEventSubscription

+ (NSString *)XMLNS {
  return OrgCybergarageUpnpEventSubscription_XMLNS;
}

+ (NSString *)TIMEOUT_HEADER {
  return OrgCybergarageUpnpEventSubscription_TIMEOUT_HEADER;
}

+ (NSString *)INFINITE_STRING {
  return OrgCybergarageUpnpEventSubscription_INFINITE_STRING;
}

+ (jint)INFINITE_VALUE {
  return OrgCybergarageUpnpEventSubscription_INFINITE_VALUE;
}

+ (NSString *)UUID {
  return OrgCybergarageUpnpEventSubscription_UUID;
}

+ (NSString *)SUBSCRIBE_METHOD {
  return OrgCybergarageUpnpEventSubscription_SUBSCRIBE_METHOD;
}

+ (NSString *)UNSUBSCRIBE_METHOD {
  return OrgCybergarageUpnpEventSubscription_UNSUBSCRIBE_METHOD;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpEventSubscription_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)toTimeoutHeaderStringWithLong:(jlong)time {
  return OrgCybergarageUpnpEventSubscription_toTimeoutHeaderStringWithLong_(time);
}

+ (jlong)getTimeoutWithNSString:(NSString *)headerValue {
  return OrgCybergarageUpnpEventSubscription_getTimeoutWithNSString_(headerValue);
}

+ (NSString *)createSID {
  return OrgCybergarageUpnpEventSubscription_createSID();
}

+ (NSString *)toSIDHeaderStringWithNSString:(NSString *)id_ {
  return OrgCybergarageUpnpEventSubscription_toSIDHeaderStringWithNSString_(id_);
}

+ (NSString *)getSIDWithNSString:(NSString *)headerValue {
  return OrgCybergarageUpnpEventSubscription_getSIDWithNSString_(headerValue);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x19, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 4, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x19, 5, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(toTimeoutHeaderStringWithLong:);
  methods[2].selector = @selector(getTimeoutWithNSString:);
  methods[3].selector = @selector(createSID);
  methods[4].selector = @selector(toSIDHeaderStringWithNSString:);
  methods[5].selector = @selector(getSIDWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "XMLNS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "TIMEOUT_HEADER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "INFINITE_STRING", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "INFINITE_VALUE", "I", .constantValue.asInt = OrgCybergarageUpnpEventSubscription_INFINITE_VALUE, 0x19, -1, -1, -1, -1 },
    { "UUID", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "SUBSCRIBE_METHOD", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "UNSUBSCRIBE_METHOD", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "toTimeoutHeaderString", "J", "getTimeout", "LNSString;", "toSIDHeaderString", "getSID", &OrgCybergarageUpnpEventSubscription_XMLNS, &OrgCybergarageUpnpEventSubscription_TIMEOUT_HEADER, &OrgCybergarageUpnpEventSubscription_INFINITE_STRING, &OrgCybergarageUpnpEventSubscription_UUID, &OrgCybergarageUpnpEventSubscription_SUBSCRIBE_METHOD, &OrgCybergarageUpnpEventSubscription_UNSUBSCRIBE_METHOD };
  static const J2ObjcClassInfo _OrgCybergarageUpnpEventSubscription = { "Subscription", "org.cybergarage.upnp.event", ptrTable, methods, fields, 7, 0x1, 6, 7, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpEventSubscription;
}

@end

void OrgCybergarageUpnpEventSubscription_init(OrgCybergarageUpnpEventSubscription *self) {
  NSObject_init(self);
}

OrgCybergarageUpnpEventSubscription *new_OrgCybergarageUpnpEventSubscription_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpEventSubscription, init)
}

OrgCybergarageUpnpEventSubscription *create_OrgCybergarageUpnpEventSubscription_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpEventSubscription, init)
}

NSString *OrgCybergarageUpnpEventSubscription_toTimeoutHeaderStringWithLong_(jlong time) {
  OrgCybergarageUpnpEventSubscription_initialize();
  if (time == OrgCybergarageUpnpEventSubscription_INFINITE_VALUE) return OrgCybergarageUpnpEventSubscription_INFINITE_STRING;
  return JreStrcat("$$", OrgCybergarageUpnpEventSubscription_TIMEOUT_HEADER, JavaLangLong_toStringWithLong_(time));
}

jlong OrgCybergarageUpnpEventSubscription_getTimeoutWithNSString_(NSString *headerValue) {
  OrgCybergarageUpnpEventSubscription_initialize();
  jint minusIdx = [((NSString *) nil_chk(headerValue)) java_indexOf:'-'];
  jlong timeout = OrgCybergarageUpnpEventSubscription_INFINITE_VALUE;
  @try {
    NSString *timeoutStr = [headerValue java_substring:minusIdx + 1 endIndex:[headerValue java_length]];
    timeout = JavaLangLong_parseLongWithNSString_(timeoutStr);
  }
  @catch (JavaLangException *e) {
  }
  return timeout;
}

NSString *OrgCybergarageUpnpEventSubscription_createSID() {
  OrgCybergarageUpnpEventSubscription_initialize();
  return OrgCybergarageUpnpUPnP_createUUID();
}

NSString *OrgCybergarageUpnpEventSubscription_toSIDHeaderStringWithNSString_(NSString *id_) {
  OrgCybergarageUpnpEventSubscription_initialize();
  return JreStrcat("$$", OrgCybergarageUpnpEventSubscription_UUID, id_);
}

NSString *OrgCybergarageUpnpEventSubscription_getSIDWithNSString_(NSString *headerValue) {
  OrgCybergarageUpnpEventSubscription_initialize();
  if (headerValue == nil) return @"";
  if ([headerValue java_hasPrefix:OrgCybergarageUpnpEventSubscription_UUID] == false) return headerValue;
  return [headerValue java_substring:[((NSString *) nil_chk(OrgCybergarageUpnpEventSubscription_UUID)) java_length] endIndex:[headerValue java_length]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpEventSubscription)