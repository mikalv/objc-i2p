//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ldap/StartTlsRequest.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/sun/naming/internal/VersionHelper.h"
#include "java/lang/Boolean.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/InstantiationException.h"
#include "java/lang/Thread.h"
#include "java/security/AccessController.h"
#include "java/security/PrivilegedAction.h"
#include "java/util/Iterator.h"
#include "java/util/ServiceLoader.h"
#include "javax/naming/ConfigurationException.h"
#include "javax/naming/ldap/ExtendedResponse.h"
#include "javax/naming/ldap/StartTlsRequest.h"
#include "javax/naming/ldap/StartTlsResponse.h"

@interface JavaxNamingLdapStartTlsRequest ()

- (JavaxNamingConfigurationException *)wrapExceptionWithJavaLangException:(JavaLangException *)e;

- (JavaLangClassLoader *)getContextClassLoader;

+ (jboolean)privilegedHasNextWithJavaUtilIterator:(id<JavaUtilIterator>)iter;

@end

inline jlong JavaxNamingLdapStartTlsRequest_get_serialVersionUID(void);
#define JavaxNamingLdapStartTlsRequest_serialVersionUID 4441679576360753397LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingLdapStartTlsRequest, serialVersionUID, jlong)

__attribute__((unused)) static JavaxNamingConfigurationException *JavaxNamingLdapStartTlsRequest_wrapExceptionWithJavaLangException_(JavaxNamingLdapStartTlsRequest *self, JavaLangException *e);

__attribute__((unused)) static JavaLangClassLoader *JavaxNamingLdapStartTlsRequest_getContextClassLoader(JavaxNamingLdapStartTlsRequest *self);

__attribute__((unused)) static jboolean JavaxNamingLdapStartTlsRequest_privilegedHasNextWithJavaUtilIterator_(id<JavaUtilIterator> iter);

@interface JavaxNamingLdapStartTlsRequest_1 : NSObject < JavaSecurityPrivilegedAction >

- (instancetype)init;

- (JavaLangClassLoader *)run;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingLdapStartTlsRequest_1)

__attribute__((unused)) static void JavaxNamingLdapStartTlsRequest_1_init(JavaxNamingLdapStartTlsRequest_1 *self);

__attribute__((unused)) static JavaxNamingLdapStartTlsRequest_1 *new_JavaxNamingLdapStartTlsRequest_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static JavaxNamingLdapStartTlsRequest_1 *create_JavaxNamingLdapStartTlsRequest_1_init(void);

@interface JavaxNamingLdapStartTlsRequest_2 : NSObject < JavaSecurityPrivilegedAction > {
 @public
  id<JavaUtilIterator> val$iter_;
}

- (instancetype)initWithJavaUtilIterator:(id<JavaUtilIterator>)capture$0;

- (JavaLangBoolean *)run;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingLdapStartTlsRequest_2)

__attribute__((unused)) static void JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(JavaxNamingLdapStartTlsRequest_2 *self, id<JavaUtilIterator> capture$0);

__attribute__((unused)) static JavaxNamingLdapStartTlsRequest_2 *new_JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static JavaxNamingLdapStartTlsRequest_2 *create_JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0);

NSString *JavaxNamingLdapStartTlsRequest_OID = @"1.3.6.1.4.1.1466.20037";

@implementation JavaxNamingLdapStartTlsRequest

+ (NSString *)OID {
  return JavaxNamingLdapStartTlsRequest_OID;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingLdapStartTlsRequest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getID {
  return JavaxNamingLdapStartTlsRequest_OID;
}

- (IOSByteArray *)getEncodedValue {
  return nil;
}

- (id<JavaxNamingLdapExtendedResponse>)createExtendedResponseWithNSString:(NSString *)id_
                                                            withByteArray:(IOSByteArray *)berValue
                                                                  withInt:(jint)offset
                                                                  withInt:(jint)length {
  if ((id_ != nil) && (![((NSString *) nil_chk(id_)) isEqual:JavaxNamingLdapStartTlsRequest_OID])) {
    @throw create_JavaxNamingConfigurationException_initWithNSString_(JreStrcat("$$$$", @"Start TLS received the following response instead of ", JavaxNamingLdapStartTlsRequest_OID, @": ", id_));
  }
  JavaxNamingLdapStartTlsResponse *resp = nil;
  JavaUtilServiceLoader *sl = JavaUtilServiceLoader_load__WithIOSClass_withJavaLangClassLoader_(JavaxNamingLdapStartTlsResponse_class_(), JavaxNamingLdapStartTlsRequest_getContextClassLoader(self));
  id<JavaUtilIterator> iter = [((JavaUtilServiceLoader *) nil_chk(sl)) iterator];
  while (resp == nil && JavaxNamingLdapStartTlsRequest_privilegedHasNextWithJavaUtilIterator_(iter)) {
    resp = [((id<JavaUtilIterator>) nil_chk(iter)) next];
  }
  if (resp != nil) {
    return resp;
  }
  @try {
    ComSunNamingInternalVersionHelper *helper = ComSunNamingInternalVersionHelper_getVersionHelper();
    IOSClass *clas = [((ComSunNamingInternalVersionHelper *) nil_chk(helper)) loadClassWithNSString:@"com.sun.jndi.ldap.ext.StartTlsResponseImpl"];
    resp = (JavaxNamingLdapStartTlsResponse *) cast_chk([((IOSClass *) nil_chk(clas)) newInstance], [JavaxNamingLdapStartTlsResponse class]);
  }
  @catch (JavaLangIllegalAccessException *e) {
    @throw nil_chk(JavaxNamingLdapStartTlsRequest_wrapExceptionWithJavaLangException_(self, e));
  }
  @catch (JavaLangInstantiationException *e) {
    @throw nil_chk(JavaxNamingLdapStartTlsRequest_wrapExceptionWithJavaLangException_(self, e));
  }
  @catch (JavaLangClassNotFoundException *e) {
    @throw nil_chk(JavaxNamingLdapStartTlsRequest_wrapExceptionWithJavaLangException_(self, e));
  }
  return resp;
}

- (JavaxNamingConfigurationException *)wrapExceptionWithJavaLangException:(JavaLangException *)e {
  return JavaxNamingLdapStartTlsRequest_wrapExceptionWithJavaLangException_(self, e);
}

- (JavaLangClassLoader *)getContextClassLoader {
  return JavaxNamingLdapStartTlsRequest_getContextClassLoader(self);
}

+ (jboolean)privilegedHasNextWithJavaUtilIterator:(id<JavaUtilIterator>)iter {
  return JavaxNamingLdapStartTlsRequest_privilegedHasNextWithJavaUtilIterator_(iter);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingLdapExtendedResponse;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LJavaxNamingConfigurationException;", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaLangClassLoader;", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1a, 5, 6, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getID);
  methods[2].selector = @selector(getEncodedValue);
  methods[3].selector = @selector(createExtendedResponseWithNSString:withByteArray:withInt:withInt:);
  methods[4].selector = @selector(wrapExceptionWithJavaLangException:);
  methods[5].selector = @selector(getContextClassLoader);
  methods[6].selector = @selector(privilegedHasNextWithJavaUtilIterator:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OID", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingLdapStartTlsRequest_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "createExtendedResponse", "LNSString;[BII", "LJavaxNamingNamingException;", "wrapException", "LJavaLangException;", "privilegedHasNext", "LJavaUtilIterator;", "(Ljava/util/Iterator<Ljavax/naming/ldap/StartTlsResponse;>;)Z", &JavaxNamingLdapStartTlsRequest_OID };
  static const J2ObjcClassInfo _JavaxNamingLdapStartTlsRequest = { "StartTlsRequest", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_JavaxNamingLdapStartTlsRequest;
}

@end

void JavaxNamingLdapStartTlsRequest_init(JavaxNamingLdapStartTlsRequest *self) {
  NSObject_init(self);
}

JavaxNamingLdapStartTlsRequest *new_JavaxNamingLdapStartTlsRequest_init() {
  J2OBJC_NEW_IMPL(JavaxNamingLdapStartTlsRequest, init)
}

JavaxNamingLdapStartTlsRequest *create_JavaxNamingLdapStartTlsRequest_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapStartTlsRequest, init)
}

JavaxNamingConfigurationException *JavaxNamingLdapStartTlsRequest_wrapExceptionWithJavaLangException_(JavaxNamingLdapStartTlsRequest *self, JavaLangException *e) {
  JavaxNamingConfigurationException *ce = create_JavaxNamingConfigurationException_initWithNSString_(@"Cannot load implementation of javax.naming.ldap.StartTlsResponse");
  [ce setRootCauseWithJavaLangThrowable:e];
  return ce;
}

JavaLangClassLoader *JavaxNamingLdapStartTlsRequest_getContextClassLoader(JavaxNamingLdapStartTlsRequest *self) {
  return JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(create_JavaxNamingLdapStartTlsRequest_1_init());
}

jboolean JavaxNamingLdapStartTlsRequest_privilegedHasNextWithJavaUtilIterator_(id<JavaUtilIterator> iter) {
  JavaxNamingLdapStartTlsRequest_initialize();
  JavaLangBoolean *answer = JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(create_JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(iter));
  return [((JavaLangBoolean *) nil_chk(answer)) booleanValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingLdapStartTlsRequest)

@implementation JavaxNamingLdapStartTlsRequest_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingLdapStartTlsRequest_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaLangClassLoader *)run {
  return [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getContextClassLoader];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangClassLoader;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaxNamingLdapStartTlsRequest;", "getContextClassLoader", "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/ClassLoader;>;" };
  static const J2ObjcClassInfo _JavaxNamingLdapStartTlsRequest_1 = { "", "javax.naming.ldap", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 0, -1, 1, 2, -1 };
  return &_JavaxNamingLdapStartTlsRequest_1;
}

@end

void JavaxNamingLdapStartTlsRequest_1_init(JavaxNamingLdapStartTlsRequest_1 *self) {
  NSObject_init(self);
}

JavaxNamingLdapStartTlsRequest_1 *new_JavaxNamingLdapStartTlsRequest_1_init() {
  J2OBJC_NEW_IMPL(JavaxNamingLdapStartTlsRequest_1, init)
}

JavaxNamingLdapStartTlsRequest_1 *create_JavaxNamingLdapStartTlsRequest_1_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapStartTlsRequest_1, init)
}

@implementation JavaxNamingLdapStartTlsRequest_2

- (instancetype)initWithJavaUtilIterator:(id<JavaUtilIterator>)capture$0 {
  JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(self, capture$0);
  return self;
}

- (JavaLangBoolean *)run {
  return JavaLangBoolean_valueOfWithBoolean_([((id<JavaUtilIterator>) nil_chk(val$iter_)) hasNext]);
}

- (void)dealloc {
  RELEASE_(val$iter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangBoolean;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilIterator:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$iter_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x1012, -1, -1, 0, -1 },
  };
  static const void *ptrTable[] = { "Ljava/util/Iterator<Ljavax/naming/ldap/StartTlsResponse;>;", "LJavaxNamingLdapStartTlsRequest;", "privilegedHasNextWithJavaUtilIterator:", "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/Boolean;>;" };
  static const J2ObjcClassInfo _JavaxNamingLdapStartTlsRequest_2 = { "", "javax.naming.ldap", ptrTable, methods, fields, 7, 0x8018, 2, 1, 1, -1, 2, 3, -1 };
  return &_JavaxNamingLdapStartTlsRequest_2;
}

@end

void JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(JavaxNamingLdapStartTlsRequest_2 *self, id<JavaUtilIterator> capture$0) {
  JreStrongAssign(&self->val$iter_, capture$0);
  NSObject_init(self);
}

JavaxNamingLdapStartTlsRequest_2 *new_JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0) {
  J2OBJC_NEW_IMPL(JavaxNamingLdapStartTlsRequest_2, initWithJavaUtilIterator_, capture$0)
}

JavaxNamingLdapStartTlsRequest_2 *create_JavaxNamingLdapStartTlsRequest_2_initWithJavaUtilIterator_(id<JavaUtilIterator> capture$0) {
  J2OBJC_CREATE_IMPL(JavaxNamingLdapStartTlsRequest_2, initWithJavaUtilIterator_, capture$0)
}
