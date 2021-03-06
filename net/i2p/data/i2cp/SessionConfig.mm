//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/SessionConfig.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Date.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "java/util/Set.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/DSAEngine.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/Signature.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/SigningPublicKey.h"
#include "net/i2p/data/i2cp/SessionConfig.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/OrderedProperties.h"

@interface NetI2pDataI2cpSessionConfig () {
 @public
  NetI2pDataDestination *_destination_;
  NetI2pDataSignature *_signature_;
  JavaUtilDate *_creationDate_;
  JavaUtilProperties *_options_;
}

- (IOSByteArray *)getBytes;

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2cpSessionConfig, _destination_, NetI2pDataDestination *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpSessionConfig, _signature_, NetI2pDataSignature *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpSessionConfig, _creationDate_, JavaUtilDate *)
J2OBJC_FIELD_SETTER(NetI2pDataI2cpSessionConfig, _options_, JavaUtilProperties *)

inline jlong NetI2pDataI2cpSessionConfig_get_OFFSET_VALIDITY(void);
#define NetI2pDataI2cpSessionConfig_OFFSET_VALIDITY 180000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2cpSessionConfig, OFFSET_VALIDITY, jlong)

__attribute__((unused)) static IOSByteArray *NetI2pDataI2cpSessionConfig_getBytes(NetI2pDataI2cpSessionConfig *self);

@implementation NetI2pDataI2cpSessionConfig

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpSessionConfig_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNetI2pDataDestination:(NetI2pDataDestination *)dest {
  NetI2pDataI2cpSessionConfig_initWithNetI2pDataDestination_(self, dest);
  return self;
}

- (NetI2pDataDestination *)getDestination {
  return _destination_;
}

- (JavaUtilDate *)getCreationDate {
  return _creationDate_;
}

- (void)setCreationDateWithJavaUtilDate:(JavaUtilDate *)date {
  JreStrongAssign(&_creationDate_, date);
}

- (JavaUtilProperties *)getOptions {
  return _options_;
}

- (void)setOptionsWithJavaUtilProperties:(JavaUtilProperties *)options {
  JreStrongAssign(&_options_, options);
}

- (NetI2pDataSignature *)getSignature {
  return _signature_;
}

- (void)setSignatureWithNetI2pDataSignature:(NetI2pDataSignature *)sig {
  JreStrongAssign(&_signature_, sig);
}

- (void)signSessionConfigWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)signingKey {
  IOSByteArray *data = NetI2pDataI2cpSessionConfig_getBytes(self);
  if (data == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Unable to retrieve bytes for signing");
  if (signingKey == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"No signing key");
  JreStrongAssign(&_signature_, [((NetI2pCryptoDSAEngine *) nil_chk(NetI2pCryptoDSAEngine_getInstance())) signWithByteArray:data withNetI2pDataSigningPrivateKey:signingKey]);
  if (_signature_ == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$@$", @"Signature failed with ", [signingKey getType], @" key"));
}

- (jboolean)verifySignature {
  if ([self getSignature] == nil) {
    return false;
  }
  if ([self getDestination] == nil) {
    return false;
  }
  if ([self getCreationDate] == nil) {
    return false;
  }
  if ([self tooOld]) {
    return false;
  }
  IOSByteArray *data = NetI2pDataI2cpSessionConfig_getBytes(self);
  if (data == nil) {
    return false;
  }
  jboolean ok = [((NetI2pCryptoDSAEngine *) nil_chk(NetI2pCryptoDSAEngine_getInstance())) verifySignatureWithNetI2pDataSignature:[self getSignature] withByteArray:data withNetI2pDataSigningPublicKey:[((NetI2pDataDestination *) nil_chk([self getDestination])) getSigningPublicKey]];
  if (!ok) {
    NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) logManager])) getLogWithIOSClass:NetI2pDataI2cpSessionConfig_class_()];
    if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:@"DSA signature failed!"];
  }
  return ok;
}

- (jboolean)tooOld {
  jlong now = [((NetI2pUtilClock *) nil_chk(NetI2pUtilClock_getInstance())) now];
  jlong earliestValid = now - NetI2pDataI2cpSessionConfig_OFFSET_VALIDITY;
  jlong latestValid = now + NetI2pDataI2cpSessionConfig_OFFSET_VALIDITY;
  if (_creationDate_ == nil) return true;
  if ([_creationDate_ getTime] < earliestValid) return true;
  if ([((JavaUtilDate *) nil_chk(_creationDate_)) getTime] > latestValid) return true;
  return false;
}

- (IOSByteArray *)getBytes {
  return NetI2pDataI2cpSessionConfig_getBytes(self);
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)rawConfig {
  JreStrongAssign(&_destination_, NetI2pDataDestination_createWithJavaIoInputStream_(rawConfig));
  JreStrongAssign(&_options_, NetI2pDataDataHelper_readPropertiesWithJavaIoInputStream_(rawConfig));
  JreStrongAssign(&_creationDate_, NetI2pDataDataHelper_readDateWithJavaIoInputStream_(rawConfig));
  JreStrongAssignAndConsume(&_signature_, new_NetI2pDataSignature_initWithNetI2pCryptoSigType_([((NetI2pDataSigningPublicKey *) nil_chk([((NetI2pDataDestination *) nil_chk(_destination_)) getSigningPublicKey])) getType]));
  [_signature_ readBytesWithJavaIoInputStream:rawConfig];
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if ((_destination_ == nil) || (_options_ == nil) || (_signature_ == nil) || (_creationDate_ == nil)) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"Not enough data to create the session config");
  [((NetI2pDataDestination *) nil_chk(_destination_)) writeBytesWithJavaIoOutputStream:outArg];
  NetI2pDataDataHelper_writePropertiesWithJavaIoOutputStream_withJavaUtilProperties_withBoolean_(outArg, _options_, true);
  NetI2pDataDataHelper_writeDateWithJavaIoOutputStream_withJavaUtilDate_(outArg, _creationDate_);
  [((NetI2pDataSignature *) nil_chk(_signature_)) writeBytesWithJavaIoOutputStream:outArg];
}

- (jboolean)isEqual:(id)object {
  if ((object != nil) && ([object isKindOfClass:[NetI2pDataI2cpSessionConfig class]])) {
    NetI2pDataI2cpSessionConfig *cfg = (NetI2pDataI2cpSessionConfig *) cast_chk(object, [NetI2pDataI2cpSessionConfig class]);
    return NetI2pDataDataHelper_eqWithId_withId_([self getSignature], [((NetI2pDataI2cpSessionConfig *) nil_chk(cfg)) getSignature]) && NetI2pDataDataHelper_eqWithId_withId_([self getDestination], [cfg getDestination]) && NetI2pDataDataHelper_eqWithId_withId_([self getCreationDate], [cfg getCreationDate]) && NetI2pDataDataHelper_eqWithId_withId_([self getOptions], [cfg getOptions]);
  }
  return false;
}

- (NSUInteger)hash {
  return _signature_ != nil ? ((jint) [_signature_ hash]) : 0;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithNSString_(@"[SessionConfig: ");
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tDestination: "])) appendWithId:[self getDestination]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tSignature: "])) appendWithId:[self getSignature]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tCreation Date: "])) appendWithId:[self getCreationDate]];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tOptions: #: "])) appendWithInt:[((JavaUtilProperties *) nil_chk(_options_)) size]];
  JavaUtilProperties *sorted = create_NetI2pUtilOrderedProperties_init();
  [sorted putAllWithJavaUtilMap:_options_];
  for (id<JavaUtilMap_Entry> __strong e in nil_chk([sorted entrySet])) {
    NSString *key = (NSString *) cast_chk([((id<JavaUtilMap_Entry>) nil_chk(e)) getKey], [NSString class]);
    NSString *val = (NSString *) cast_chk([e getValue], [NSString class]);
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\t\t["])) appendWithNSString:key])) appendWithNSString:@"] = ["])) appendWithNSString:val])) appendWithNSString:@"]"];
  }
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_destination_);
  RELEASE_(_signature_);
  RELEASE_(_creationDate_);
  RELEASE_(_options_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilProperties;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataSignature;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 9, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 12, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 12, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 17, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNetI2pDataDestination:);
  methods[2].selector = @selector(getDestination);
  methods[3].selector = @selector(getCreationDate);
  methods[4].selector = @selector(setCreationDateWithJavaUtilDate:);
  methods[5].selector = @selector(getOptions);
  methods[6].selector = @selector(setOptionsWithJavaUtilProperties:);
  methods[7].selector = @selector(getSignature);
  methods[8].selector = @selector(setSignatureWithNetI2pDataSignature:);
  methods[9].selector = @selector(signSessionConfigWithNetI2pDataSigningPrivateKey:);
  methods[10].selector = @selector(verifySignature);
  methods[11].selector = @selector(tooOld);
  methods[12].selector = @selector(getBytes);
  methods[13].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[14].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[15].selector = @selector(isEqual:);
  methods[16].selector = @selector(hash);
  methods[17].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_destination_", "LNetI2pDataDestination;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_signature_", "LNetI2pDataSignature;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_creationDate_", "LJavaUtilDate;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_options_", "LJavaUtilProperties;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "OFFSET_VALIDITY", "J", .constantValue.asLong = NetI2pDataI2cpSessionConfig_OFFSET_VALIDITY, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pDataDestination;", "setCreationDate", "LJavaUtilDate;", "setOptions", "LJavaUtilProperties;", "setSignature", "LNetI2pDataSignature;", "signSessionConfig", "LNetI2pDataSigningPrivateKey;", "LNetI2pDataDataFormatException;", "readBytes", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes", "LJavaIoOutputStream;", "equals", "LNSObject;", "hashCode", "toString" };
  static const J2ObjcClassInfo _NetI2pDataI2cpSessionConfig = { "SessionConfig", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 18, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpSessionConfig;
}

@end

void NetI2pDataI2cpSessionConfig_init(NetI2pDataI2cpSessionConfig *self) {
  NetI2pDataI2cpSessionConfig_initWithNetI2pDataDestination_(self, nil);
}

NetI2pDataI2cpSessionConfig *new_NetI2pDataI2cpSessionConfig_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpSessionConfig, init)
}

NetI2pDataI2cpSessionConfig *create_NetI2pDataI2cpSessionConfig_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpSessionConfig, init)
}

void NetI2pDataI2cpSessionConfig_initWithNetI2pDataDestination_(NetI2pDataI2cpSessionConfig *self, NetI2pDataDestination *dest) {
  NetI2pDataDataStructureImpl_init(self);
  JreStrongAssign(&self->_destination_, dest);
  JreStrongAssignAndConsume(&self->_creationDate_, new_JavaUtilDate_initWithLong_([((NetI2pUtilClock *) nil_chk(NetI2pUtilClock_getInstance())) now]));
}

NetI2pDataI2cpSessionConfig *new_NetI2pDataI2cpSessionConfig_initWithNetI2pDataDestination_(NetI2pDataDestination *dest) {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpSessionConfig, initWithNetI2pDataDestination_, dest)
}

NetI2pDataI2cpSessionConfig *create_NetI2pDataI2cpSessionConfig_initWithNetI2pDataDestination_(NetI2pDataDestination *dest) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpSessionConfig, initWithNetI2pDataDestination_, dest)
}

IOSByteArray *NetI2pDataI2cpSessionConfig_getBytes(NetI2pDataI2cpSessionConfig *self) {
  if (self->_destination_ == nil) return nil;
  if (self->_options_ == nil) return nil;
  if (self->_creationDate_ == nil) return nil;
  JavaIoByteArrayOutputStream *out = create_JavaIoByteArrayOutputStream_init();
  @try {
    [((NetI2pDataDestination *) nil_chk(self->_destination_)) writeBytesWithJavaIoOutputStream:out];
    NetI2pDataDataHelper_writePropertiesWithJavaIoOutputStream_withJavaUtilProperties_withBoolean_(out, self->_options_, true);
    NetI2pDataDataHelper_writeDateWithJavaIoOutputStream_withJavaUtilDate_(out, self->_creationDate_);
  }
  @catch (JavaIoIOException *ioe) {
    NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) logManager])) getLogWithIOSClass:NetI2pDataI2cpSessionConfig_class_()];
    [((NetI2pUtilLog *) nil_chk(log)) errorWithNSString:@"IOError signing" withJavaLangThrowable:ioe];
    return nil;
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) logManager])) getLogWithIOSClass:NetI2pDataI2cpSessionConfig_class_()];
    [((NetI2pUtilLog *) nil_chk(log)) errorWithNSString:@"Error writing out the bytes for signing/verification" withJavaLangThrowable:dfe];
    return nil;
  }
  return [out toByteArray];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpSessionConfig)
