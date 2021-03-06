//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/com/southernstorm/noise/protocol/CipherState.java
//

#include "J2ObjC_source.h"
#include "com/southernstorm/noise/protocol/CipherState.h"

@interface ComSouthernstormNoiseProtocolCipherState : NSObject

@end

@implementation ComSouthernstormNoiseProtocolCipherState

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 2, 3, 4, -1, -1, -1 },
    { NULL, "I", 0x401, 5, 3, 6, -1, -1, -1 },
    { NULL, "LComSouthernstormNoiseProtocolCipherState;", 0x401, 7, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getCipherName);
  methods[1].selector = @selector(getKeyLength);
  methods[2].selector = @selector(getMACLength);
  methods[3].selector = @selector(initializeKeyWithByteArray:withInt:);
  methods[4].selector = @selector(hasKey);
  methods[5].selector = @selector(encryptWithAdWithByteArray:withByteArray:withInt:withByteArray:withInt:withInt:);
  methods[6].selector = @selector(decryptWithAdWithByteArray:withByteArray:withInt:withByteArray:withInt:withInt:);
  methods[7].selector = @selector(forkWithByteArray:withInt:);
  methods[8].selector = @selector(setNonceWithLong:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "initializeKey", "[BI", "encryptWithAd", "[B[BI[BII", "LJavaxCryptoShortBufferException;", "decryptWithAd", "LJavaxCryptoShortBufferException;LJavaxCryptoBadPaddingException;", "fork", "setNonce", "J" };
  static const J2ObjcClassInfo _ComSouthernstormNoiseProtocolCipherState = { "CipherState", "com.southernstorm.noise.protocol", ptrTable, methods, NULL, 7, 0x609, 9, 0, -1, -1, -1, -1, -1 };
  return &_ComSouthernstormNoiseProtocolCipherState;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComSouthernstormNoiseProtocolCipherState)
