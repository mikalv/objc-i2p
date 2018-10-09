//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/ReferralException.java
//

#include "J2ObjC_source.h"
#include "java/util/Hashtable.h"
#include "javax/naming/Context.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/ReferralException.h"

inline jlong JavaxNamingReferralException_get_serialVersionUID(void);
#define JavaxNamingReferralException_serialVersionUID -2881363844695698876LL
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingReferralException, serialVersionUID, jlong)

@implementation JavaxNamingReferralException

- (instancetype)initWithNSString:(NSString *)explanation {
  JavaxNamingReferralException_initWithNSString_(self, explanation);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingReferralException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)getReferralInfo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

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

- (jboolean)skipReferral {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)retryReferral {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x401, -1, -1, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x401, 2, 3, 1, 4, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(getReferralInfo);
  methods[3].selector = @selector(getReferralContext);
  methods[4].selector = @selector(getReferralContextWithJavaUtilHashtable:);
  methods[5].selector = @selector(skipReferral);
  methods[6].selector = @selector(retryReferral);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingReferralException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaxNamingNamingException;", "getReferralContext", "LJavaUtilHashtable;", "(Ljava/util/Hashtable<**>;)Ljavax/naming/Context;" };
  static const J2ObjcClassInfo _JavaxNamingReferralException = { "ReferralException", "javax.naming", ptrTable, methods, fields, 7, 0x401, 7, 1, -1, -1, -1, -1, -1 };
  return &_JavaxNamingReferralException;
}

@end

void JavaxNamingReferralException_initWithNSString_(JavaxNamingReferralException *self, NSString *explanation) {
  JavaxNamingNamingException_initWithNSString_(self, explanation);
}

void JavaxNamingReferralException_init(JavaxNamingReferralException *self) {
  JavaxNamingNamingException_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingReferralException)
