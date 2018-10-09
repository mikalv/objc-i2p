//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/UnsolicitedNotification.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingLdapUnsolicitedNotification")
#ifdef RESTRICT_JavaxNamingLdapUnsolicitedNotification
#define INCLUDE_ALL_JavaxNamingLdapUnsolicitedNotification 0
#else
#define INCLUDE_ALL_JavaxNamingLdapUnsolicitedNotification 1
#endif
#undef RESTRICT_JavaxNamingLdapUnsolicitedNotification

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingLdapUnsolicitedNotification_) && (INCLUDE_ALL_JavaxNamingLdapUnsolicitedNotification || defined(INCLUDE_JavaxNamingLdapUnsolicitedNotification))
#define JavaxNamingLdapUnsolicitedNotification_

#define RESTRICT_JavaxNamingLdapExtendedResponse 1
#define INCLUDE_JavaxNamingLdapExtendedResponse 1
#include "javax/naming/ldap/ExtendedResponse.h"

#define RESTRICT_JavaxNamingLdapHasControls 1
#define INCLUDE_JavaxNamingLdapHasControls 1
#include "javax/naming/ldap/HasControls.h"

@class IOSObjectArray;
@class JavaxNamingNamingException;

@protocol JavaxNamingLdapUnsolicitedNotification < JavaxNamingLdapExtendedResponse, JavaxNamingLdapHasControls, JavaObject >

- (IOSObjectArray *)getReferrals;

- (JavaxNamingNamingException *)getException;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingLdapUnsolicitedNotification)

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingLdapUnsolicitedNotification)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingLdapUnsolicitedNotification")
