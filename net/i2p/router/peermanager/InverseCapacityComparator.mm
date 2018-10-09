//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/peermanager/InverseCapacityComparator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/router/peermanager/InverseCapacityComparator.h"
#include "net/i2p/router/peermanager/PeerProfile.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation NetI2pRouterPeermanagerInverseCapacityComparator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterPeermanagerInverseCapacityComparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(NetI2pRouterPeermanagerPeerProfile *)left
               withId:(NetI2pRouterPeermanagerPeerProfile *)right {
  jdouble rval = [((NetI2pRouterPeermanagerPeerProfile *) nil_chk(right)) getCapacityValue];
  jdouble lval = [((NetI2pRouterPeermanagerPeerProfile *) nil_chk(left)) getCapacityValue];
  jint rv = JavaLangDouble_compareWithDouble_withDouble_(rval, lval);
  if (rv == 0) {
    rval = [right getSpeedValue];
    lval = [left getSpeedValue];
    rv = JavaLangDouble_compareWithDouble_withDouble_(rval, lval);
    if (rv == 0) {
      return NetI2pDataDataHelper_compareToWithByteArray_withByteArray_([((NetI2pDataHash *) nil_chk([right getPeer])) getData], [((NetI2pDataHash *) nil_chk([left getPeer])) getData]);
    }
    else {
    }
  }
  return rv;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LNetI2pRouterPeermanagerPeerProfile;LNetI2pRouterPeermanagerPeerProfile;", "Ljava/lang/Object;Ljava/util/Comparator<Lnet/i2p/router/peermanager/PeerProfile;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _NetI2pRouterPeermanagerInverseCapacityComparator = { "InverseCapacityComparator", "net.i2p.router.peermanager", ptrTable, methods, NULL, 7, 0x0, 2, 0, -1, -1, -1, 2, -1 };
  return &_NetI2pRouterPeermanagerInverseCapacityComparator;
}

@end

void NetI2pRouterPeermanagerInverseCapacityComparator_init(NetI2pRouterPeermanagerInverseCapacityComparator *self) {
  NSObject_init(self);
}

NetI2pRouterPeermanagerInverseCapacityComparator *new_NetI2pRouterPeermanagerInverseCapacityComparator_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterPeermanagerInverseCapacityComparator, init)
}

NetI2pRouterPeermanagerInverseCapacityComparator *create_NetI2pRouterPeermanagerInverseCapacityComparator_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterPeermanagerInverseCapacityComparator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterPeermanagerInverseCapacityComparator)
