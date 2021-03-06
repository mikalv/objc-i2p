//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/Constants.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "net/i2p/crypto/eddsa/Utils.h"
#include "net/i2p/crypto/eddsa/math/Constants.h"

J2OBJC_INITIALIZED_DEFN(NetI2pCryptoEddsaMathConstants)

IOSByteArray *NetI2pCryptoEddsaMathConstants_ZERO;
IOSByteArray *NetI2pCryptoEddsaMathConstants_ONE;
IOSByteArray *NetI2pCryptoEddsaMathConstants_TWO;
IOSByteArray *NetI2pCryptoEddsaMathConstants_FOUR;
IOSByteArray *NetI2pCryptoEddsaMathConstants_FIVE;
IOSByteArray *NetI2pCryptoEddsaMathConstants_EIGHT;

@implementation NetI2pCryptoEddsaMathConstants

+ (IOSByteArray *)ZERO {
  return NetI2pCryptoEddsaMathConstants_ZERO;
}

+ (IOSByteArray *)ONE {
  return NetI2pCryptoEddsaMathConstants_ONE;
}

+ (IOSByteArray *)TWO {
  return NetI2pCryptoEddsaMathConstants_TWO;
}

+ (IOSByteArray *)FOUR {
  return NetI2pCryptoEddsaMathConstants_FOUR;
}

+ (IOSByteArray *)FIVE {
  return NetI2pCryptoEddsaMathConstants_FIVE;
}

+ (IOSByteArray *)EIGHT {
  return NetI2pCryptoEddsaMathConstants_EIGHT;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoEddsaMathConstants_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "[B", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
    { "ONE", "[B", .constantValue.asLong = 0, 0x19, -1, 1, -1, -1 },
    { "TWO", "[B", .constantValue.asLong = 0, 0x19, -1, 2, -1, -1 },
    { "FOUR", "[B", .constantValue.asLong = 0, 0x19, -1, 3, -1, -1 },
    { "FIVE", "[B", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "EIGHT", "[B", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { &NetI2pCryptoEddsaMathConstants_ZERO, &NetI2pCryptoEddsaMathConstants_ONE, &NetI2pCryptoEddsaMathConstants_TWO, &NetI2pCryptoEddsaMathConstants_FOUR, &NetI2pCryptoEddsaMathConstants_FIVE, &NetI2pCryptoEddsaMathConstants_EIGHT };
  static const J2ObjcClassInfo _NetI2pCryptoEddsaMathConstants = { "Constants", "net.i2p.crypto.eddsa.math", ptrTable, methods, fields, 7, 0x10, 1, 6, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoEddsaMathConstants;
}

+ (void)initialize {
  if (self == [NetI2pCryptoEddsaMathConstants class]) {
    JreStrongAssign(&NetI2pCryptoEddsaMathConstants_ZERO, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"0000000000000000000000000000000000000000000000000000000000000000"));
    JreStrongAssign(&NetI2pCryptoEddsaMathConstants_ONE, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"0100000000000000000000000000000000000000000000000000000000000000"));
    JreStrongAssign(&NetI2pCryptoEddsaMathConstants_TWO, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"0200000000000000000000000000000000000000000000000000000000000000"));
    JreStrongAssign(&NetI2pCryptoEddsaMathConstants_FOUR, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"0400000000000000000000000000000000000000000000000000000000000000"));
    JreStrongAssign(&NetI2pCryptoEddsaMathConstants_FIVE, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"0500000000000000000000000000000000000000000000000000000000000000"));
    JreStrongAssign(&NetI2pCryptoEddsaMathConstants_EIGHT, NetI2pCryptoEddsaUtils_hexToBytesWithNSString_(@"0800000000000000000000000000000000000000000000000000000000000000"));
    J2OBJC_SET_INITIALIZED(NetI2pCryptoEddsaMathConstants)
  }
}

@end

void NetI2pCryptoEddsaMathConstants_init(NetI2pCryptoEddsaMathConstants *self) {
  NSObject_init(self);
}

NetI2pCryptoEddsaMathConstants *new_NetI2pCryptoEddsaMathConstants_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoEddsaMathConstants, init)
}

NetI2pCryptoEddsaMathConstants *create_NetI2pCryptoEddsaMathConstants_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoEddsaMathConstants, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoEddsaMathConstants)
