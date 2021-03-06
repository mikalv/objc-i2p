//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/util/Mutex.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "org/cybergarage/util/Debug.h"
#include "org/cybergarage/util/Mutex.h"

@interface OrgCybergarageUtilMutex () {
 @public
  jboolean syncLock_;
}

@end

@implementation OrgCybergarageUtilMutex

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUtilMutex_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)lock {
  @synchronized(self) {
    while (syncLock_ == true) {
      @try {
        [self java_wait];
      }
      @catch (JavaLangException *e) {
        OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
      }
      
      ;
    }
    syncLock_ = true;
  }
}

- (void)unlock {
  @synchronized(self) {
    syncLock_ = false;
    [self java_notifyAll];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(lock);
  methods[2].selector = @selector(unlock);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "syncLock_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const J2ObjcClassInfo _OrgCybergarageUtilMutex = { "Mutex", "org.cybergarage.util", NULL, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUtilMutex;
}

@end

void OrgCybergarageUtilMutex_init(OrgCybergarageUtilMutex *self) {
  NSObject_init(self);
  self->syncLock_ = false;
}

OrgCybergarageUtilMutex *new_OrgCybergarageUtilMutex_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUtilMutex, init)
}

OrgCybergarageUtilMutex *create_OrgCybergarageUtilMutex_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUtilMutex, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUtilMutex)
