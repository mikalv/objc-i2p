//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/SortResponseControl.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/sun/jndi/ldap/Ber.h"
#include "com/sun/jndi/ldap/BerDecoder.h"
#include "com/sun/jndi/ldap/LdapCtx.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/ldap/BasicControl.h"
#include "javax/naming/ldap/SortResponseControl.h"

@interface JavaxNamingLdapSortResponseControl () {
 @public
  jint resultCode_;
  NSString *badAttrId_;
}

@end

J2OBJC_FIELD_SETTER(JavaxNamingLdapSortResponseControl, badAttrId_, NSString *)

inline jlong JavaxNamingLdapSortResponseControl_get_serialVersionUID(void);
#define JavaxNamingLdapSortResponseControl_serialVersionUID 5142939176006310877LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapSortResponseControl, serialVersionUID, jlong)

NSString *JavaxNamingLdapSortResponseControl_OID = @"1.2.840.113556.1.4.474";

@implementation JavaxNamingLdapSortResponseControl

+ (NSString *)OID {
  return JavaxNamingLdapSortResponseControl_OID;
}

- (instancetype)initWithNSString:(NSString *)id_
                     withBoolean:(jboolean)criticality
                   withByteArray:(IOSByteArray *)value {
  JavaxNamingLdapSortResponseControl_initWithNSString_withBoolean_withByteArray_(self, id_, criticality, value);
  return self;
}

- (jboolean)isSorted {
  return resultCode_ == 0;
}

- (jint)getResultCode {
  return resultCode_;
}

- (NSString *)getAttributeID {
  return badAttrId_;
}

- (JavaxNamingNamingException *)getException {
  return ComSunJndiLdapLdapCtx_mapErrorCodeWithInt_withNSString_(resultCode_, nil);
}

- (void)dealloc {
  RELEASE_(badAttrId_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingNamingException;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withBoolean:withByteArray:);
  methods[1].selector = @selector(isSorted);
  methods[2].selector = @selector(getResultCode);
  methods[3].selector = @selector(getAttributeID);
  methods[4].selector = @selector(getException);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OID", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingLdapSortResponseControl_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "resultCode_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "badAttrId_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;Z[B", "LJavaIoIOException;", &JavaxNamingLdapSortResponseControl_OID };
  static const J2ObjcClassInfo _JavaxNamingLdapSortResponseControl = { "SortResponseControl", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x11, 5, 4, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapSortResponseControl;
}

@end

void JavaxNamingLdapSortResponseControl_initWithNSString_withBoolean_withByteArray_(JavaxNamingLdapSortResponseControl *self, NSString *id_, jboolean criticality, IOSByteArray *value) {
  JavaxNamingLdapBasicControl_initWithNSString_withBoolean_withByteArray_(self, id_, criticality, value);
  self->resultCode_ = 0;
  JreStrongAssign(&self->badAttrId_, nil);
  ComSunJndiLdapBerDecoder *ber = create_ComSunJndiLdapBerDecoder_initWithByteArray_withInt_withInt_(value, 0, ((IOSByteArray *) nil_chk(value))->size_);
  [ber parseSeqWithIntArray:nil];
  self->resultCode_ = [ber parseEnumeration];
  if (([ber bytesLeft] > 0) && ([ber peekByte] == ComSunJndiLdapBer_ASN_CONTEXT)) {
    JreStrongAssign(&self->badAttrId_, [ber parseStringWithTagWithInt:ComSunJndiLdapBer_ASN_CONTEXT withBoolean:true withIntArray:nil]);
  }
}

JavaxNamingLdapSortResponseControl *new_JavaxNamingLdapSortResponseControl_initWithNSString_withBoolean_withByteArray_(NSString *id_, jboolean criticality, IOSByteArray *value) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapSortResponseControl, initWithNSString_withBoolean_withByteArray_, id_, criticality, value)
}

JavaxNamingLdapSortResponseControl *create_JavaxNamingLdapSortResponseControl_initWithNSString_withBoolean_withByteArray_(NSString *id_, jboolean criticality, IOSByteArray *value) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapSortResponseControl, initWithNSString_withBoolean_withByteArray_, id_, criticality, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapSortResponseControl)
