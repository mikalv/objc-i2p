//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/com/maxmind/geoip/InvalidDatabaseException.java
//

#include "J2ObjC_source.h"
#include "com/maxmind/geoip/InvalidDatabaseException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"

@implementation ComMaxmindGeoipInvalidDatabaseException

- (instancetype)initWithNSString:(NSString *)message {
  ComMaxmindGeoipInvalidDatabaseException_initWithNSString_(self, message);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)cause {
  ComMaxmindGeoipInvalidDatabaseException_initWithNSString_withJavaLangThrowable_(self, message, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "LNSString;LJavaLangThrowable;" };
  static const J2ObjcClassInfo _ComMaxmindGeoipInvalidDatabaseException = { "InvalidDatabaseException", "com.maxmind.geoip", ptrTable, methods, NULL, 7, 0x11, 2, 0, -1, -1, -1, -1, -1 };
  return &_ComMaxmindGeoipInvalidDatabaseException;
}

@end

void ComMaxmindGeoipInvalidDatabaseException_initWithNSString_(ComMaxmindGeoipInvalidDatabaseException *self, NSString *message) {
  JavaLangRuntimeException_initWithNSString_(self, message);
}

ComMaxmindGeoipInvalidDatabaseException *new_ComMaxmindGeoipInvalidDatabaseException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(ComMaxmindGeoipInvalidDatabaseException, initWithNSString_, message)
}

ComMaxmindGeoipInvalidDatabaseException *create_ComMaxmindGeoipInvalidDatabaseException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(ComMaxmindGeoipInvalidDatabaseException, initWithNSString_, message)
}

void ComMaxmindGeoipInvalidDatabaseException_initWithNSString_withJavaLangThrowable_(ComMaxmindGeoipInvalidDatabaseException *self, NSString *message, JavaLangThrowable *cause) {
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(self, message, cause);
}

ComMaxmindGeoipInvalidDatabaseException *new_ComMaxmindGeoipInvalidDatabaseException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_NEW_IMPL(ComMaxmindGeoipInvalidDatabaseException, initWithNSString_withJavaLangThrowable_, message, cause)
}

ComMaxmindGeoipInvalidDatabaseException *create_ComMaxmindGeoipInvalidDatabaseException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *cause) {
  J2OBJC_CREATE_IMPL(ComMaxmindGeoipInvalidDatabaseException, initWithNSString_withJavaLangThrowable_, message, cause)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComMaxmindGeoipInvalidDatabaseException)
