//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/ExtendedResponse.java
//

#include "J2ObjC_source.h"
#include "javax/naming/ldap/ExtendedResponse.h"

@interface JavaxNamingLdapExtendedResponse : NSObject

@end

@implementation JavaxNamingLdapExtendedResponse

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getID);
  methods[1].selector = @selector(getEncodedValue);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _JavaxNamingLdapExtendedResponse = { "ExtendedResponse", "javax.naming.ldap", NULL, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapExtendedResponse;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxNamingLdapExtendedResponse)
