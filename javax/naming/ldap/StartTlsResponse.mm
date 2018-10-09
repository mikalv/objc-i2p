//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/StartTlsResponse.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "javax/naming/ldap/StartTlsResponse.h"
#include "javax/net/ssl/HostnameVerifier.h"
#include "javax/net/ssl/SSLSession.h"
#include "javax/net/ssl/SSLSocketFactory.h"

inline jlong JavaxNamingLdapStartTlsResponse_get_serialVersionUID(void);
#define JavaxNamingLdapStartTlsResponse_serialVersionUID 8372842182579276418LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapStartTlsResponse, serialVersionUID, jlong)

NSString *JavaxNamingLdapStartTlsResponse_OID = @"1.3.6.1.4.1.1466.20037";

@implementation JavaxNamingLdapStartTlsResponse

+ (NSString *)OID {
  return JavaxNamingLdapStartTlsResponse_OID;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingLdapStartTlsResponse_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getID {
  return JavaxNamingLdapStartTlsResponse_OID;
}

- (IOSByteArray *)getEncodedValue {
  return nil;
}

- (void)setEnabledCipherSuitesWithNSStringArray:(IOSObjectArray *)suites {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setHostnameVerifierWithJavaxNetSslHostnameVerifier:(id<JavaxNetSslHostnameVerifier>)verifier {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id<JavaxNetSslSSLSession>)negotiate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaxNetSslSSLSession>)negotiateWithJavaxNetSslSSLSocketFactory:(JavaxNetSslSSLSocketFactory *)factory {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaxNetSslSSLSession;", 0x401, -1, -1, 4, -1, -1, -1 },
    { NULL, "LJavaxNetSslSSLSession;", 0x401, 5, 6, 4, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getID);
  methods[2].selector = @selector(getEncodedValue);
  methods[3].selector = @selector(setEnabledCipherSuitesWithNSStringArray:);
  methods[4].selector = @selector(setHostnameVerifierWithJavaxNetSslHostnameVerifier:);
  methods[5].selector = @selector(negotiate);
  methods[6].selector = @selector(negotiateWithJavaxNetSslSSLSocketFactory:);
  methods[7].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OID", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingLdapStartTlsResponse_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setEnabledCipherSuites", "[LNSString;", "setHostnameVerifier", "LJavaxNetSslHostnameVerifier;", "LJavaIoIOException;", "negotiate", "LJavaxNetSslSSLSocketFactory;", &JavaxNamingLdapStartTlsResponse_OID };
  static const J2ObjcClassInfo _JavaxNamingLdapStartTlsResponse = { "StartTlsResponse", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x401, 8, 2, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapStartTlsResponse;
}

@end

void JavaxNamingLdapStartTlsResponse_init(JavaxNamingLdapStartTlsResponse *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapStartTlsResponse)