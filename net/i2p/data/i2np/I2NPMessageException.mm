//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/I2NPMessageException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "net/i2p/I2PException.h"
#include "net/i2p/data/i2np/I2NPMessageException.h"

@implementation NetI2pDataI2npI2NPMessageException

- (instancetype)initWithNSString:(NSString *)message
           withJavaLangThrowable:(JavaLangThrowable *)parent {
  NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(self, message, parent);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message {
  NetI2pDataI2npI2NPMessageException_initWithNSString_(self, message);
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
  methods[0].selector = @selector(initWithNSString:withJavaLangThrowable:);
  methods[1].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LJavaLangThrowable;", "LNSString;" };
  static const J2ObjcClassInfo _NetI2pDataI2npI2NPMessageException = { "I2NPMessageException", "net.i2p.data.i2np", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2npI2NPMessageException;
}

@end

void NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(NetI2pDataI2npI2NPMessageException *self, NSString *message, JavaLangThrowable *parent) {
  NetI2pI2PException_initWithNSString_withJavaLangThrowable_(self, message, parent);
}

NetI2pDataI2npI2NPMessageException *new_NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *parent) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npI2NPMessageException, initWithNSString_withJavaLangThrowable_, message, parent)
}

NetI2pDataI2npI2NPMessageException *create_NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *parent) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npI2NPMessageException, initWithNSString_withJavaLangThrowable_, message, parent)
}

void NetI2pDataI2npI2NPMessageException_initWithNSString_(NetI2pDataI2npI2NPMessageException *self, NSString *message) {
  NetI2pI2PException_initWithNSString_(self, message);
}

NetI2pDataI2npI2NPMessageException *new_NetI2pDataI2npI2NPMessageException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npI2NPMessageException, initWithNSString_, message)
}

NetI2pDataI2npI2NPMessageException *create_NetI2pDataI2npI2NPMessageException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npI2NPMessageException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2npI2NPMessageException)
