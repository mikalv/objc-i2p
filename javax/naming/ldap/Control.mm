//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/Control.java
//

#include "J2ObjC_source.h"
#include "javax/naming/ldap/Control.h"

@implementation JavaxNamingLdapControl

+ (jboolean)CRITICAL {
  return JavaxNamingLdapControl_CRITICAL;
}

+ (jboolean)NONCRITICAL {
  return JavaxNamingLdapControl_NONCRITICAL;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getID);
  methods[1].selector = @selector(isCritical);
  methods[2].selector = @selector(getEncodedValue);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CRITICAL", "Z", .constantValue.asBOOL = JavaxNamingLdapControl_CRITICAL, 0x19, -1, -1, -1, -1 },
    { "NONCRITICAL", "Z", .constantValue.asBOOL = JavaxNamingLdapControl_NONCRITICAL, 0x19, -1, -1, -1, -1 },
  };
  static const J2ObjcClassInfo _JavaxNamingLdapControl = { "Control", "javax.naming.ldap", NULL, methods, fields, 7, 0x609, 3, 2, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapControl;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxNamingLdapControl)