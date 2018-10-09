//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/message/GarlicConfig.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Date.h"
#include "java/util/List.h"
#include "net/i2p/data/Certificate.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/i2np/DeliveryInstructions.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/message/GarlicConfig.h"

@interface NetI2pRouterMessageGarlicConfig () {
 @public
  NetI2pDataRouterRouterInfo *_recipient_;
  NetI2pDataPublicKey *_recipientPublicKey_;
  NetI2pDataCertificate *_cert_;
  jlong _id_;
  jlong _expiration_;
  id<JavaUtilList> _cloveConfigs_;
  NetI2pDataI2npDeliveryInstructions *_instructions_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterMessageGarlicConfig, _recipient_, NetI2pDataRouterRouterInfo *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageGarlicConfig, _recipientPublicKey_, NetI2pDataPublicKey *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageGarlicConfig, _cert_, NetI2pDataCertificate *)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageGarlicConfig, _cloveConfigs_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(NetI2pRouterMessageGarlicConfig, _instructions_, NetI2pDataI2npDeliveryInstructions *)

inline NSString *NetI2pRouterMessageGarlicConfig_get_NL(void);
static NSString *NetI2pRouterMessageGarlicConfig_NL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterMessageGarlicConfig, NL, NSString *)

J2OBJC_INITIALIZED_DEFN(NetI2pRouterMessageGarlicConfig)

@implementation NetI2pRouterMessageGarlicConfig

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterMessageGarlicConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)cloveConfigs {
  NetI2pRouterMessageGarlicConfig_initWithJavaUtilList_(self, cloveConfigs);
  return self;
}

- (void)setRecipientWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)info {
  JreStrongAssign(&_recipient_, info);
}

- (NetI2pDataRouterRouterInfo *)getRecipient {
  return _recipient_;
}

- (void)setRecipientPublicKeyWithNetI2pDataPublicKey:(NetI2pDataPublicKey *)recipientPublicKey {
  JreStrongAssign(&_recipientPublicKey_, recipientPublicKey);
}

- (NetI2pDataPublicKey *)getRecipientPublicKey {
  return _recipientPublicKey_;
}

- (void)setCertificateWithNetI2pDataCertificate:(NetI2pDataCertificate *)cert {
  JreStrongAssign(&_cert_, cert);
}

- (NetI2pDataCertificate *)getCertificate {
  return _cert_;
}

- (void)setIdWithLong:(jlong)id_ {
  _id_ = id_;
}

- (jlong)getId {
  return _id_;
}

- (void)setExpirationWithLong:(jlong)expiration {
  _expiration_ = expiration;
}

- (jlong)getExpiration {
  return _expiration_;
}

- (void)setDeliveryInstructionsWithNetI2pDataI2npDeliveryInstructions:(NetI2pDataI2npDeliveryInstructions *)instructions {
  JreStrongAssign(&_instructions_, instructions);
}

- (NetI2pDataI2npDeliveryInstructions *)getDeliveryInstructions {
  return _instructions_;
}

- (void)addCloveWithNetI2pRouterMessageGarlicConfig:(NetI2pRouterMessageGarlicConfig *)config {
  if (config != nil) {
    [((id<JavaUtilList>) nil_chk(_cloveConfigs_)) addWithId:config];
  }
}

- (jint)getCloveCount {
  return [((id<JavaUtilList>) nil_chk(_cloveConfigs_)) size];
}

- (NetI2pRouterMessageGarlicConfig *)getCloveWithInt:(jint)index {
  return [((id<JavaUtilList>) nil_chk(_cloveConfigs_)) getWithInt:index];
}

- (void)clearCloves {
  [((id<JavaUtilList>) nil_chk(_cloveConfigs_)) clear];
}

- (NSString *)getSubData {
  return @"";
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<garlicConfig>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<certificate>"])) appendWithId:[self getCertificate]])) appendWithNSString:@"</certificate>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<instructions>"])) appendWithId:[self getDeliveryInstructions]])) appendWithNSString:@"</instructions>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<expiration>"])) appendWithId:create_JavaUtilDate_initWithLong_([self getExpiration])])) appendWithNSString:@"</expiration>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<garlicId>"])) appendWithLong:[self getId]])) appendWithNSString:@"</garlicId>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<recipient>"])) appendWithId:[self getRecipient]])) appendWithNSString:@"</recipient>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<recipientPublicKey>"])) appendWithId:[self getRecipientPublicKey]])) appendWithNSString:@"</recipientPublicKey>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [buf appendWithNSString:[self getSubData]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<subcloves>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  for (jint i = 0; i < [self getCloveCount]; i++) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"<clove>"])) appendWithId:[self getCloveWithInt:i]])) appendWithNSString:@"</clove>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"</subcloves>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"</garlicConfig>"])) appendWithNSString:NetI2pRouterMessageGarlicConfig_NL];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_recipient_);
  RELEASE_(_recipientPublicKey_);
  RELEASE_(_cert_);
  RELEASE_(_cloveConfigs_);
  RELEASE_(_instructions_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x4, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataRouterRouterInfo;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataPublicKey;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataCertificate;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npDeliveryInstructions;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterMessageGarlicConfig;", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaUtilList:);
  methods[2].selector = @selector(setRecipientWithNetI2pDataRouterRouterInfo:);
  methods[3].selector = @selector(getRecipient);
  methods[4].selector = @selector(setRecipientPublicKeyWithNetI2pDataPublicKey:);
  methods[5].selector = @selector(getRecipientPublicKey);
  methods[6].selector = @selector(setCertificateWithNetI2pDataCertificate:);
  methods[7].selector = @selector(getCertificate);
  methods[8].selector = @selector(setIdWithLong:);
  methods[9].selector = @selector(getId);
  methods[10].selector = @selector(setExpirationWithLong:);
  methods[11].selector = @selector(getExpiration);
  methods[12].selector = @selector(setDeliveryInstructionsWithNetI2pDataI2npDeliveryInstructions:);
  methods[13].selector = @selector(getDeliveryInstructions);
  methods[14].selector = @selector(addCloveWithNetI2pRouterMessageGarlicConfig:);
  methods[15].selector = @selector(getCloveCount);
  methods[16].selector = @selector(getCloveWithInt:);
  methods[17].selector = @selector(clearCloves);
  methods[18].selector = @selector(getSubData);
  methods[19].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_recipient_", "LNetI2pDataRouterRouterInfo;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_recipientPublicKey_", "LNetI2pDataPublicKey;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_cert_", "LNetI2pDataCertificate;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_id_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_expiration_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_cloveConfigs_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 18, -1 },
    { "_instructions_", "LNetI2pDataI2npDeliveryInstructions;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "NL", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilList;", "(Ljava/util/List<Lnet/i2p/router/message/GarlicConfig;>;)V", "setRecipient", "LNetI2pDataRouterRouterInfo;", "setRecipientPublicKey", "LNetI2pDataPublicKey;", "setCertificate", "LNetI2pDataCertificate;", "setId", "J", "setExpiration", "setDeliveryInstructions", "LNetI2pDataI2npDeliveryInstructions;", "addClove", "LNetI2pRouterMessageGarlicConfig;", "getClove", "I", "toString", "Ljava/util/List<Lnet/i2p/router/message/GarlicConfig;>;", &NetI2pRouterMessageGarlicConfig_NL };
  static const J2ObjcClassInfo _NetI2pRouterMessageGarlicConfig = { "GarlicConfig", "net.i2p.router.message", ptrTable, methods, fields, 7, 0x0, 20, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterMessageGarlicConfig;
}

+ (void)initialize {
  if (self == [NetI2pRouterMessageGarlicConfig class]) {
    JreStrongAssign(&NetI2pRouterMessageGarlicConfig_NL, JavaLangSystem_getPropertyWithNSString_(@"line.separator"));
    J2OBJC_SET_INITIALIZED(NetI2pRouterMessageGarlicConfig)
  }
}

@end

void NetI2pRouterMessageGarlicConfig_init(NetI2pRouterMessageGarlicConfig *self) {
  NetI2pRouterMessageGarlicConfig_initWithJavaUtilList_(self, create_JavaUtilArrayList_initWithInt_(4));
}

NetI2pRouterMessageGarlicConfig *new_NetI2pRouterMessageGarlicConfig_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageGarlicConfig, init)
}

NetI2pRouterMessageGarlicConfig *create_NetI2pRouterMessageGarlicConfig_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageGarlicConfig, init)
}

void NetI2pRouterMessageGarlicConfig_initWithJavaUtilList_(NetI2pRouterMessageGarlicConfig *self, id<JavaUtilList> cloveConfigs) {
  NSObject_init(self);
  self->_id_ = -1;
  self->_expiration_ = -1;
  JreStrongAssign(&self->_cloveConfigs_, cloveConfigs);
}

NetI2pRouterMessageGarlicConfig *new_NetI2pRouterMessageGarlicConfig_initWithJavaUtilList_(id<JavaUtilList> cloveConfigs) {
  J2OBJC_NEW_IMPL(NetI2pRouterMessageGarlicConfig, initWithJavaUtilList_, cloveConfigs)
}

NetI2pRouterMessageGarlicConfig *create_NetI2pRouterMessageGarlicConfig_initWithJavaUtilList_(id<JavaUtilList> cloveConfigs) {
  J2OBJC_CREATE_IMPL(NetI2pRouterMessageGarlicConfig, initWithJavaUtilList_, cloveConfigs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterMessageGarlicConfig)