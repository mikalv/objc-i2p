//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/PayloadGarlicConfig.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/router/message/GarlicConfig.h"
#include "net/i2p/router/message/PayloadGarlicConfig.h"

@interface NetI2pRouterMessagePayloadGarlicConfig () {
 @public
  id<NetI2pDataI2npI2NPMessage> _payload_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterMessagePayloadGarlicConfig, _payload_, id<NetI2pDataI2npI2NPMessage>)

@implementation NetI2pRouterMessagePayloadGarlicConfig

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterMessagePayloadGarlicConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPayloadWithNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)message {
  JreStrongAssign(&_payload_, message);
}

- (id<NetI2pDataI2npI2NPMessage>)getPayload {
  return _payload_;
}

- (NSString *)getSubData {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<payloadMessage>"])) appendWithId:_payload_])) appendWithNSString:@"</payloadMessage>"];
  return [buf description];
}

- (void)addCloveWithNetI2pRouterMessageGarlicConfig:(NetI2pRouterMessageGarlicConfig *)config {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jint)getCloveCount {
  return 0;
}

- (NetI2pRouterMessageGarlicConfig *)getCloveWithInt:(jint)index {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)clearCloves {
}

- (void)dealloc {
  RELEASE_(_payload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npI2NPMessage;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterMessageGarlicConfig;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPayloadWithNetI2pDataI2npI2NPMessage:);
  methods[2].selector = @selector(getPayload);
  methods[3].selector = @selector(getSubData);
  methods[4].selector = @selector(addCloveWithNetI2pRouterMessageGarlicConfig:);
  methods[5].selector = @selector(getCloveCount);
  methods[6].selector = @selector(getCloveWithInt:);
  methods[7].selector = @selector(clearCloves);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_payload_", "LNetI2pDataI2npI2NPMessage;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setPayload", "LNetI2pDataI2npI2NPMessage;", "addClove", "LNetI2pRouterMessageGarlicConfig;", "getClove", "I" };
  static const J2ObjcClassInfo _NetI2pRouterMessagePayloadGarlicConfig = { "PayloadGarlicConfig", "net.i2p.router.message", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterMessagePayloadGarlicConfig;
}

@end

void NetI2pRouterMessagePayloadGarlicConfig_init(NetI2pRouterMessagePayloadGarlicConfig *self) {
  NetI2pRouterMessageGarlicConfig_initWithJavaUtilList_(self, nil);
}

NetI2pRouterMessagePayloadGarlicConfig *new_NetI2pRouterMessagePayloadGarlicConfig_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterMessagePayloadGarlicConfig, init)
}

NetI2pRouterMessagePayloadGarlicConfig *create_NetI2pRouterMessagePayloadGarlicConfig_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessagePayloadGarlicConfig, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessagePayloadGarlicConfig)