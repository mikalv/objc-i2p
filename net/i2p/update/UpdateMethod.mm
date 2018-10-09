//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/update/UpdateMethod.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "net/i2p/update/UpdateMethod.h"

__attribute__((unused)) static void NetI2pUpdateUpdateMethod_initWithNSString_withInt_(NetI2pUpdateUpdateMethod *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(NetI2pUpdateUpdateMethod)

NetI2pUpdateUpdateMethod *NetI2pUpdateUpdateMethod_values_[10];

@implementation NetI2pUpdateUpdateMethod

+ (NetI2pUpdateUpdateMethod *)METHOD_DUMMY {
  return JreEnum(NetI2pUpdateUpdateMethod, METHOD_DUMMY);
}

+ (NetI2pUpdateUpdateMethod *)HTTP {
  return JreEnum(NetI2pUpdateUpdateMethod, HTTP);
}

+ (NetI2pUpdateUpdateMethod *)HTTP_CLEARNET {
  return JreEnum(NetI2pUpdateUpdateMethod, HTTP_CLEARNET);
}

+ (NetI2pUpdateUpdateMethod *)HTTPS_CLEARNET {
  return JreEnum(NetI2pUpdateUpdateMethod, HTTPS_CLEARNET);
}

+ (NetI2pUpdateUpdateMethod *)TORRENT {
  return JreEnum(NetI2pUpdateUpdateMethod, TORRENT);
}

+ (NetI2pUpdateUpdateMethod *)GNUTELLA {
  return JreEnum(NetI2pUpdateUpdateMethod, GNUTELLA);
}

+ (NetI2pUpdateUpdateMethod *)IMULE {
  return JreEnum(NetI2pUpdateUpdateMethod, IMULE);
}

+ (NetI2pUpdateUpdateMethod *)TAHOE_LAFS {
  return JreEnum(NetI2pUpdateUpdateMethod, TAHOE_LAFS);
}

+ (NetI2pUpdateUpdateMethod *)DEBIAN {
  return JreEnum(NetI2pUpdateUpdateMethod, DEBIAN);
}

+ (NetI2pUpdateUpdateMethod *)FILE_ {
  return JreEnum(NetI2pUpdateUpdateMethod, FILE);
}

+ (IOSObjectArray *)values {
  return NetI2pUpdateUpdateMethod_values();
}

+ (NetI2pUpdateUpdateMethod *)valueOfWithNSString:(NSString *)name {
  return NetI2pUpdateUpdateMethod_valueOfWithNSString_(name);
}

- (NetI2pUpdateUpdateMethod_Enum)toNSEnum {
  return (NetI2pUpdateUpdateMethod_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LNetI2pUpdateUpdateMethod;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pUpdateUpdateMethod;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "METHOD_DUMMY", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "HTTP", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "HTTP_CLEARNET", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "HTTPS_CLEARNET", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "TORRENT", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "GNUTELLA", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "IMULE", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "TAHOE_LAFS", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
    { "DEBIAN", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 10, -1, -1 },
    { "FILE", "LNetI2pUpdateUpdateMethod;", .constantValue.asLong = 0, 0x4019, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(NetI2pUpdateUpdateMethod, METHOD_DUMMY), &JreEnum(NetI2pUpdateUpdateMethod, HTTP), &JreEnum(NetI2pUpdateUpdateMethod, HTTP_CLEARNET), &JreEnum(NetI2pUpdateUpdateMethod, HTTPS_CLEARNET), &JreEnum(NetI2pUpdateUpdateMethod, TORRENT), &JreEnum(NetI2pUpdateUpdateMethod, GNUTELLA), &JreEnum(NetI2pUpdateUpdateMethod, IMULE), &JreEnum(NetI2pUpdateUpdateMethod, TAHOE_LAFS), &JreEnum(NetI2pUpdateUpdateMethod, DEBIAN), &JreEnum(NetI2pUpdateUpdateMethod, FILE), "Ljava/lang/Enum<Lnet/i2p/update/UpdateMethod;>;" };
  static const J2ObjcClassInfo _NetI2pUpdateUpdateMethod = { "UpdateMethod", "net.i2p.update", ptrTable, methods, fields, 7, 0x4011, 2, 10, -1, -1, -1, 12, -1 };
  return &_NetI2pUpdateUpdateMethod;
}

+ (void)initialize {
  if (self == [NetI2pUpdateUpdateMethod class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 10 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 10; i++) {
      ((void)(NetI2pUpdateUpdateMethod_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      NetI2pUpdateUpdateMethod_initWithNSString_withInt_(e, JreEnumConstantName(NetI2pUpdateUpdateMethod_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(NetI2pUpdateUpdateMethod)
  }
}

@end

void NetI2pUpdateUpdateMethod_initWithNSString_withInt_(NetI2pUpdateUpdateMethod *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *NetI2pUpdateUpdateMethod_values() {
  NetI2pUpdateUpdateMethod_initialize();
  return [IOSObjectArray arrayWithObjects:NetI2pUpdateUpdateMethod_values_ count:10 type:NetI2pUpdateUpdateMethod_class_()];
}

NetI2pUpdateUpdateMethod *NetI2pUpdateUpdateMethod_valueOfWithNSString_(NSString *name) {
  NetI2pUpdateUpdateMethod_initialize();
  for (int i = 0; i < 10; i++) {
    NetI2pUpdateUpdateMethod *e = NetI2pUpdateUpdateMethod_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

NetI2pUpdateUpdateMethod *NetI2pUpdateUpdateMethod_fromOrdinal(NSUInteger ordinal) {
  NetI2pUpdateUpdateMethod_initialize();
  if (ordinal >= 10) {
    return nil;
  }
  return NetI2pUpdateUpdateMethod_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUpdateUpdateMethod)