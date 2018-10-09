//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/StartTlsResponse.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingLdapStartTlsResponse")
#ifdef RESTRICT_JavaxNamingLdapStartTlsResponse
#define INCLUDE_ALL_JavaxNamingLdapStartTlsResponse 0
#else
#define INCLUDE_ALL_JavaxNamingLdapStartTlsResponse 1
#endif
#undef RESTRICT_JavaxNamingLdapStartTlsResponse

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingLdapStartTlsResponse_) && (INCLUDE_ALL_JavaxNamingLdapStartTlsResponse || defined(INCLUDE_JavaxNamingLdapStartTlsResponse))
#define JavaxNamingLdapStartTlsResponse_

#define RESTRICT_JavaxNamingLdapExtendedResponse 1
#define INCLUDE_JavaxNamingLdapExtendedResponse 1
#include "javax/naming/ldap/ExtendedResponse.h"

@class IOSByteArray;
@class IOSObjectArray;
@class JavaxNetSslSSLSocketFactory;
@protocol JavaxNetSslHostnameVerifier;
@protocol JavaxNetSslSSLSession;

@interface JavaxNamingLdapStartTlsResponse : NSObject < JavaxNamingLdapExtendedResponse >
@property (readonly, copy, class) NSString *OID NS_SWIFT_NAME(OID);

+ (NSString *)OID;

#pragma mark Public

- (void)close;

- (IOSByteArray *)getEncodedValue;

- (NSString *)getID;

- (id<JavaxNetSslSSLSession>)negotiate;

- (id<JavaxNetSslSSLSession>)negotiateWithJavaxNetSslSSLSocketFactory:(JavaxNetSslSSLSocketFactory *)factory;

- (void)setEnabledCipherSuitesWithNSStringArray:(IOSObjectArray *)suites;

- (void)setHostnameVerifierWithJavaxNetSslHostnameVerifier:(id<JavaxNetSslHostnameVerifier>)verifier;

#pragma mark Protected

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingLdapStartTlsResponse)

inline NSString *JavaxNamingLdapStartTlsResponse_get_OID(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *JavaxNamingLdapStartTlsResponse_OID;
J2OBJC_STATIC_FIELD_OBJ_FINAL(JavaxNamingLdapStartTlsResponse, OID, NSString *)

FOUNDATION_EXPORT void JavaxNamingLdapStartTlsResponse_init(JavaxNamingLdapStartTlsResponse *self);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingLdapStartTlsResponse)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingLdapStartTlsResponse")