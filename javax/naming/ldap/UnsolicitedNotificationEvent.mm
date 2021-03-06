//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/UnsolicitedNotificationEvent.java
//

#include "J2ObjC_source.h"
#include "java/util/EventObject.h"
#include "javax/naming/ldap/UnsolicitedNotification.h"
#include "javax/naming/ldap/UnsolicitedNotificationEvent.h"
#include "javax/naming/ldap/UnsolicitedNotificationListener.h"

@interface JavaxNamingLdapUnsolicitedNotificationEvent () {
 @public
  id<JavaxNamingLdapUnsolicitedNotification> notice_;
}

@end

J2OBJC_FIELD_SETTER(JavaxNamingLdapUnsolicitedNotificationEvent, notice_, id<JavaxNamingLdapUnsolicitedNotification>)

inline jlong JavaxNamingLdapUnsolicitedNotificationEvent_get_serialVersionUID(void);
#define JavaxNamingLdapUnsolicitedNotificationEvent_serialVersionUID -2382603380799883705LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapUnsolicitedNotificationEvent, serialVersionUID, jlong)

@implementation JavaxNamingLdapUnsolicitedNotificationEvent

- (instancetype)initWithId:(id)src
withJavaxNamingLdapUnsolicitedNotification:(id<JavaxNamingLdapUnsolicitedNotification>)notice {
  JavaxNamingLdapUnsolicitedNotificationEvent_initWithId_withJavaxNamingLdapUnsolicitedNotification_(self, src, notice);
  return self;
}

- (id<JavaxNamingLdapUnsolicitedNotification>)getNotification {
  return notice_;
}

- (void)dispatchWithJavaxNamingLdapUnsolicitedNotificationListener:(id<JavaxNamingLdapUnsolicitedNotificationListener>)listener {
  [((id<JavaxNamingLdapUnsolicitedNotificationListener>) nil_chk(listener)) notificationReceivedWithJavaxNamingLdapUnsolicitedNotificationEvent:self];
}

- (void)dealloc {
  RELEASE_(notice_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingLdapUnsolicitedNotification;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithId:withJavaxNamingLdapUnsolicitedNotification:);
  methods[1].selector = @selector(getNotification);
  methods[2].selector = @selector(dispatchWithJavaxNamingLdapUnsolicitedNotificationListener:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "notice_", "LJavaxNamingLdapUnsolicitedNotification;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingLdapUnsolicitedNotificationEvent_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;LJavaxNamingLdapUnsolicitedNotification;", "dispatch", "LJavaxNamingLdapUnsolicitedNotificationListener;" };
  static const J2ObjcClassInfo _JavaxNamingLdapUnsolicitedNotificationEvent = { "UnsolicitedNotificationEvent", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapUnsolicitedNotificationEvent;
}

@end

void JavaxNamingLdapUnsolicitedNotificationEvent_initWithId_withJavaxNamingLdapUnsolicitedNotification_(JavaxNamingLdapUnsolicitedNotificationEvent *self, id src, id<JavaxNamingLdapUnsolicitedNotification> notice) {
  JavaUtilEventObject_initWithId_(self, src);
  JreStrongAssign(&self->notice_, notice);
}

JavaxNamingLdapUnsolicitedNotificationEvent *new_JavaxNamingLdapUnsolicitedNotificationEvent_initWithId_withJavaxNamingLdapUnsolicitedNotification_(id src, id<JavaxNamingLdapUnsolicitedNotification> notice) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapUnsolicitedNotificationEvent, initWithId_withJavaxNamingLdapUnsolicitedNotification_, src, notice)
}

JavaxNamingLdapUnsolicitedNotificationEvent *create_JavaxNamingLdapUnsolicitedNotificationEvent_initWithId_withJavaxNamingLdapUnsolicitedNotification_(id src, id<JavaxNamingLdapUnsolicitedNotification> notice) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapUnsolicitedNotificationEvent, initWithId_withJavaxNamingLdapUnsolicitedNotification_, src, notice)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapUnsolicitedNotificationEvent)
