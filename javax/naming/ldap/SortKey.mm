//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/SortKey.java
//

#include "J2ObjC_source.h"
#include "javax/naming/ldap/SortKey.h"

@interface JavaxNamingLdapSortKey () {
 @public
  NSString *attrID_;
  jboolean reverseOrder_;
  NSString *matchingRuleID_;
}

@end

J2OBJC_FIELD_SETTER(JavaxNamingLdapSortKey, attrID_, NSString *)
J2OBJC_FIELD_SETTER(JavaxNamingLdapSortKey, matchingRuleID_, NSString *)

@implementation JavaxNamingLdapSortKey

- (instancetype)initWithNSString:(NSString *)attrID {
  JavaxNamingLdapSortKey_initWithNSString_(self, attrID);
  return self;
}

- (instancetype)initWithNSString:(NSString *)attrID
                     withBoolean:(jboolean)ascendingOrder
                    withNSString:(NSString *)matchingRuleID {
  JavaxNamingLdapSortKey_initWithNSString_withBoolean_withNSString_(self, attrID, ascendingOrder, matchingRuleID);
  return self;
}

- (NSString *)getAttributeID {
  return attrID_;
}

- (jboolean)isAscending {
  return (!reverseOrder_);
}

- (NSString *)getMatchingRuleID {
  return matchingRuleID_;
}

- (void)dealloc {
  RELEASE_(attrID_);
  RELEASE_(matchingRuleID_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withBoolean:withNSString:);
  methods[2].selector = @selector(getAttributeID);
  methods[3].selector = @selector(isAscending);
  methods[4].selector = @selector(getMatchingRuleID);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "attrID_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "reverseOrder_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchingRuleID_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;ZLNSString;" };
  static const J2ObjcClassInfo _JavaxNamingLdapSortKey = { "SortKey", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x1, 5, 3, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapSortKey;
}

@end

void JavaxNamingLdapSortKey_initWithNSString_(JavaxNamingLdapSortKey *self, NSString *attrID) {
  NSObject_init(self);
  self->reverseOrder_ = false;
  JreStrongAssign(&self->matchingRuleID_, nil);
  JreStrongAssign(&self->attrID_, attrID);
}

JavaxNamingLdapSortKey *new_JavaxNamingLdapSortKey_initWithNSString_(NSString *attrID) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapSortKey, initWithNSString_, attrID)
}

JavaxNamingLdapSortKey *create_JavaxNamingLdapSortKey_initWithNSString_(NSString *attrID) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapSortKey, initWithNSString_, attrID)
}

void JavaxNamingLdapSortKey_initWithNSString_withBoolean_withNSString_(JavaxNamingLdapSortKey *self, NSString *attrID, jboolean ascendingOrder, NSString *matchingRuleID) {
  NSObject_init(self);
  self->reverseOrder_ = false;
  JreStrongAssign(&self->matchingRuleID_, nil);
  JreStrongAssign(&self->attrID_, attrID);
  self->reverseOrder_ = (!ascendingOrder);
  JreStrongAssign(&self->matchingRuleID_, matchingRuleID);
}

JavaxNamingLdapSortKey *new_JavaxNamingLdapSortKey_initWithNSString_withBoolean_withNSString_(NSString *attrID, jboolean ascendingOrder, NSString *matchingRuleID) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapSortKey, initWithNSString_withBoolean_withNSString_, attrID, ascendingOrder, matchingRuleID)
}

JavaxNamingLdapSortKey *create_JavaxNamingLdapSortKey_initWithNSString_withBoolean_withNSString_(NSString *attrID, jboolean ascendingOrder, NSString *matchingRuleID) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapSortKey, initWithNSString_withBoolean_withNSString_, attrID, ascendingOrder, matchingRuleID)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapSortKey)
