//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/HashSetIVValidator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Set.h"
#include "net/i2p/data/ByteArray.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/router/tunnel/HashSetIVValidator.h"
#include "net/i2p/router/tunnel/HopProcessor.h"
#include "net/i2p/util/ConcurrentHashSet.h"

@interface NetI2pRouterTunnelHashSetIVValidator () {
 @public
  id<JavaUtilSet> _received_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelHashSetIVValidator, _received_, id<JavaUtilSet>)

__attribute__((unused)) static IOSObjectArray *NetI2pRouterTunnelHashSetIVValidator__Annotations$0(void);

@implementation NetI2pRouterTunnelHashSetIVValidator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTunnelHashSetIVValidator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)receiveIVWithByteArray:(IOSByteArray *)ivData
                           withInt:(jint)ivOffset
                     withByteArray:(IOSByteArray *)payload
                           withInt:(jint)payloadOffset {
  IOSByteArray *iv = [IOSByteArray arrayWithLength:NetI2pRouterTunnelHopProcessor_IV_LENGTH];
  NetI2pDataDataHelper_xor__WithByteArray_withInt_withByteArray_withInt_withByteArray_withInt_withInt_(ivData, ivOffset, payload, payloadOffset, iv, 0, NetI2pRouterTunnelHopProcessor_IV_LENGTH);
  NetI2pDataByteArray *ba = create_NetI2pDataByteArray_initWithByteArray_(iv);
  jboolean isNew = [((id<JavaUtilSet>) nil_chk(_received_)) addWithId:ba];
  return isNew;
}

- (void)dealloc {
  RELEASE_(_received_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(receiveIVWithByteArray:withInt:withByteArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_received_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x12, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "receiveIV", "[BI[BI", "Ljava/util/Set<Lnet/i2p/data/ByteArray;>;", (void *)&NetI2pRouterTunnelHashSetIVValidator__Annotations$0 };
  static const J2ObjcClassInfo _NetI2pRouterTunnelHashSetIVValidator = { "HashSetIVValidator", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x0, 2, 1, -1, -1, -1, -1, 3 };
  return &_NetI2pRouterTunnelHashSetIVValidator;
}

@end

void NetI2pRouterTunnelHashSetIVValidator_init(NetI2pRouterTunnelHashSetIVValidator *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->_received_, new_NetI2pUtilConcurrentHashSet_init());
}

NetI2pRouterTunnelHashSetIVValidator *new_NetI2pRouterTunnelHashSetIVValidator_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelHashSetIVValidator, init)
}

NetI2pRouterTunnelHashSetIVValidator *create_NetI2pRouterTunnelHashSetIVValidator_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelHashSetIVValidator, init)
}

IOSObjectArray *NetI2pRouterTunnelHashSetIVValidator__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelHashSetIVValidator)