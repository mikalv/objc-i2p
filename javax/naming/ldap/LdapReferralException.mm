//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/LdapReferralException.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Hashtable.h"
#include "javax/naming/Context.h"
#include "javax/naming/ReferralException.h"
#include "javax/naming/ldap/LdapReferralException.h"

inline jlong JavaxNamingLdapLdapReferralException_get_serialVersionUID(void);
#define JavaxNamingLdapLdapReferralException_serialVersionUID -1668992791764950804LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapLdapReferralException, serialVersionUID, jlong)

@implementation JavaxNamingLdapLdapReferralException

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingLdapLdapReferralException_initWithNSString_(self, explanation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingLdapLdapReferralException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaxNamingContext>)getReferralContext {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaxNamingContext>)getReferralContextWithJavaUtilHashtable:(JavaUtilHashtable *)env {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaxNamingContext>)getReferralContextWithJavaUtilHashtable:(JavaUtilHashtable *)env
                                  withJavaxNamingLdapControlArray:(IOSObjectArray *)reqCtls {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x401, -1, -1, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x401, 2, 3, 1, 4, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x401, 2, 5, 1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(getReferralContext);
  methods[3].selector = @selector(getReferralContextWithJavaUtilHashtable:);
  methods[4].selector = @selector(getReferralContextWithJavaUtilHashtable:withJavaxNamingLdapControlArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingLdapLdapReferralException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaxNamingNamingException;", "getReferralContext", "LJavaUtilHashtable;", "(Ljava/util/Hashtable<**>;)Ljavax/naming/Context;", "LJavaUtilHashtable;[LJavaxNamingLdapControl;", "(Ljava/util/Hashtable<**>;[Ljavax/naming/ldap/Control;)Ljavax/naming/Context;" };
  static const J2ObjcClassInfo _JavaxNamingLdapLdapReferralException = { "LdapReferralException", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x401, 5, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapLdapReferralException;
}

@end

void JavaxNamingLdapLdapReferralException_initWithNSString_(JavaxNamingLdapLdapReferralException *self, NSString *explanation) {
  JavaxNamingReferralException_initWithNSString_(self, explanation);
}

void JavaxNamingLdapLdapReferralException_init(JavaxNamingLdapLdapReferralException *self) {
  JavaxNamingReferralException_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapLdapReferralException)