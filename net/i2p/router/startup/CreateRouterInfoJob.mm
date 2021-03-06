//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/CreateRouterInfoJob.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedOutputStream.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/security/GeneralSecurityException.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "net/i2p/crypto/KeyGenerator.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/Certificate.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/KeyCertificate.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/PrivateKeyFile.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/SigningPublicKey.h"
#include "net/i2p/data/SimpleDataStructure.h"
#include "net/i2p/data/router/RouterIdentity.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/CommSystemFacade.h"
#include "net/i2p/router/Job.h"
#include "net/i2p/router/JobImpl.h"
#include "net/i2p/router/JobQueue.h"
#include "net/i2p/router/KeyManager.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/StatisticsManager.h"
#include "net/i2p/router/startup/CreateRouterInfoJob.h"
#include "net/i2p/router/util/EventLog.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SecureFileOutputStream.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterStartupCreateRouterInfoJob () {
 @public
  NetI2pUtilLog *_log_;
  id<NetI2pRouterJob> _next_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterStartupCreateRouterInfoJob, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterStartupCreateRouterInfoJob, _next_, id<NetI2pRouterJob>)

inline NetI2pCryptoSigType *NetI2pRouterStartupCreateRouterInfoJob_get_DEFAULT_SIGTYPE(void);
static NetI2pCryptoSigType *NetI2pRouterStartupCreateRouterInfoJob_DEFAULT_SIGTYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupCreateRouterInfoJob, DEFAULT_SIGTYPE, NetI2pCryptoSigType *)

J2OBJC_INITIALIZED_DEFN(NetI2pRouterStartupCreateRouterInfoJob)

NSString *NetI2pRouterStartupCreateRouterInfoJob_INFO_FILENAME = @"router.info";
NSString *NetI2pRouterStartupCreateRouterInfoJob_KEYS_FILENAME = @"router.keys";
NSString *NetI2pRouterStartupCreateRouterInfoJob_KEYS2_FILENAME = @"router.keys.dat";
NSString *NetI2pRouterStartupCreateRouterInfoJob_PROP_ROUTER_SIGTYPE = @"router.sigType";

@implementation NetI2pRouterStartupCreateRouterInfoJob

+ (NSString *)INFO_FILENAME {
  return NetI2pRouterStartupCreateRouterInfoJob_INFO_FILENAME;
}

+ (NSString *)KEYS_FILENAME {
  return NetI2pRouterStartupCreateRouterInfoJob_KEYS_FILENAME;
}

+ (NSString *)KEYS2_FILENAME {
  return NetI2pRouterStartupCreateRouterInfoJob_KEYS2_FILENAME;
}

+ (NSString *)PROP_ROUTER_SIGTYPE {
  return NetI2pRouterStartupCreateRouterInfoJob_PROP_ROUTER_SIGTYPE;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                              withNetI2pRouterJob:(id<NetI2pRouterJob>)next {
  NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(self, ctx, next);
  return self;
}

- (NSString *)getName {
  return @"Create New Router Info";
}

- (void)runJob {
  [((NetI2pUtilLog *) nil_chk(_log_)) debugWithNSString:@"Creating the new router info"];
  @synchronized(((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) router]))->routerInfoFileLock_) {
    [self createRouterInfo];
  }
  [((NetI2pRouterJobQueue *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) jobQueue])) addJobWithNetI2pRouterJob:_next_];
}

- (NetI2pDataRouterRouterInfo *)createRouterInfo {
  NetI2pCryptoSigType *type = NetI2pRouterStartupCreateRouterInfoJob_getSigTypeConfigWithNetI2pRouterRouterContext_([self getContext]);
  NetI2pDataRouterRouterInfo *info = create_NetI2pDataRouterRouterInfo_init();
  JavaIoOutputStream *fos1 = nil;
  @try {
    [info setAddressesWithJavaUtilCollection:[((NetI2pRouterCommSystemFacade *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) commSystem])) createAddresses]];
    [info setPublishedWithLong:NetI2pRouterStartupCreateRouterInfoJob_getCurrentPublishDateWithNetI2pRouterRouterContext_([self getContext])];
    IOSObjectArray *keypair = [((NetI2pCryptoKeyGenerator *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) keyGenerator])) generatePKIKeypair];
    NetI2pDataPublicKey *pubkey = (NetI2pDataPublicKey *) cast_chk(IOSObjectArray_Get(nil_chk(keypair), 0), [NetI2pDataPublicKey class]);
    NetI2pDataPrivateKey *privkey = (NetI2pDataPrivateKey *) cast_chk(IOSObjectArray_Get(keypair, 1), [NetI2pDataPrivateKey class]);
    IOSObjectArray *signingKeypair = [((NetI2pCryptoKeyGenerator *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) keyGenerator])) generateSigningKeysWithNetI2pCryptoSigType:type];
    NetI2pDataSigningPublicKey *signingPubKey = (NetI2pDataSigningPublicKey *) cast_chk(IOSObjectArray_Get(nil_chk(signingKeypair), 0), [NetI2pDataSigningPublicKey class]);
    NetI2pDataSigningPrivateKey *signingPrivKey = (NetI2pDataSigningPrivateKey *) cast_chk(IOSObjectArray_Get(signingKeypair, 1), [NetI2pDataSigningPrivateKey class]);
    NetI2pDataRouterRouterIdentity *ident = create_NetI2pDataRouterRouterIdentity_init();
    NetI2pDataCertificate *cert = NetI2pRouterStartupCreateRouterInfoJob_createCertificateWithNetI2pRouterRouterContext_withNetI2pDataSigningPublicKey_([self getContext], signingPubKey);
    [ident setCertificateWithNetI2pDataCertificate:cert];
    [ident setPublicKeyWithNetI2pDataPublicKey:pubkey];
    [ident setSigningPublicKeyWithNetI2pDataSigningPublicKey:signingPubKey];
    IOSByteArray *padding;
    jint padLen = JreLoadStatic(NetI2pDataSigningPublicKey, KEYSIZE_BYTES) - [((NetI2pDataSigningPublicKey *) nil_chk(signingPubKey)) length];
    if (padLen > 0) {
      padding = [IOSByteArray arrayWithLength:padLen];
      [((NetI2pUtilRandomSource *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) random])) nextBytesWithByteArray:padding];
      [ident setPaddingWithByteArray:padding];
    }
    else {
      padding = nil;
    }
    [info setIdentityWithNetI2pDataRouterRouterIdentity:ident];
    JavaUtilProperties *stats = [((NetI2pRouterStatisticsManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) statPublisher])) publishStatisticsWithNetI2pDataHash:[ident getHash]];
    [info setOptionsWithJavaUtilProperties:stats];
    [info signWithNetI2pDataSigningPrivateKey:signingPrivKey];
    if (![info isValid]) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$@", @"RouterInfo we just built is invalid: ", info));
    [(create_JavaIoFile_initWithJavaIoFile_withNSString_([((NetI2pRouterRouterContext *) nil_chk([self getContext])) getRouterDir], NetI2pRouterStartupCreateRouterInfoJob_KEYS_FILENAME)) delete__];
    JavaIoFile *ifile = create_JavaIoFile_initWithJavaIoFile_withNSString_([((NetI2pRouterRouterContext *) nil_chk([self getContext])) getRouterDir], NetI2pRouterStartupCreateRouterInfoJob_INFO_FILENAME);
    fos1 = create_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(ifile));
    [info writeBytesWithJavaIoOutputStream:fos1];
    JavaIoFile *kfile = create_JavaIoFile_initWithJavaIoFile_withNSString_([((NetI2pRouterRouterContext *) nil_chk([self getContext])) getRouterDir], NetI2pRouterStartupCreateRouterInfoJob_KEYS2_FILENAME);
    NetI2pDataPrivateKeyFile *pkf = create_NetI2pDataPrivateKeyFile_initWithJavaIoFile_withNetI2pDataPublicKey_withNetI2pDataSigningPublicKey_withNetI2pDataCertificate_withNetI2pDataPrivateKey_withNetI2pDataSigningPrivateKey_withByteArray_(kfile, pubkey, signingPubKey, cert, privkey, signingPrivKey, padding);
    [pkf write];
    id<JavaUtilMap> map = create_JavaUtilHashMap_initWithInt_(2);
    IOSByteArray *rk = [IOSByteArray arrayWithLength:32];
    [((NetI2pUtilRandomSource *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) random])) nextBytesWithByteArray:rk];
    [map putWithId:NetI2pRouterRouter_PROP_IB_RANDOM_KEY withId:NetI2pDataBase64_encodeWithByteArray_(rk)];
    [((NetI2pUtilRandomSource *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) random])) nextBytesWithByteArray:rk];
    [map putWithId:NetI2pRouterRouter_PROP_OB_RANDOM_KEY withId:NetI2pDataBase64_encodeWithByteArray_(rk)];
    [((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) router])) saveConfigWithJavaUtilMap:map withJavaUtilCollection:nil];
    [((NetI2pRouterKeyManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) keyManager])) setKeysWithNetI2pDataPublicKey:pubkey withNetI2pDataPrivateKey:privkey withNetI2pDataSigningPublicKey:signingPubKey withNetI2pDataSigningPrivateKey:signingPrivKey];
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [_log_ infoWithNSString:JreStrcat("$$$$$@C", @"Router info created and stored at ", [ifile getAbsolutePath], @" with private keys stored at ", [kfile getAbsolutePath], @" [", info, ']')];
    [((NetI2pRouterUtilEventLog *) nil_chk([((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk([self getContext])) router])) eventLog])) addEventWithNSString:NetI2pRouterUtilEventLog_REKEYED withNSString:[((NetI2pDataHash *) nil_chk([ident calculateHash])) toBase64]];
  }
  @catch (JavaSecurityGeneralSecurityException *gse) {
    [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Error building the new router information" withJavaLangThrowable:gse];
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Error building the new router information" withJavaLangThrowable:dfe];
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) logWithInt:NetI2pUtilLog_CRIT withNSString:@"Error writing out the new router information" withJavaLangThrowable:ioe];
  }
  @finally {
    if (fos1 != nil) @try {
      [fos1 close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
  return info;
}

+ (NetI2pCryptoSigType *)getSigTypeConfigWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  return NetI2pRouterStartupCreateRouterInfoJob_getSigTypeConfigWithNetI2pRouterRouterContext_(ctx);
}

+ (jlong)getCurrentPublishDateWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context {
  return NetI2pRouterStartupCreateRouterInfoJob_getCurrentPublishDateWithNetI2pRouterRouterContext_(context);
}

+ (NetI2pDataCertificate *)createCertificateWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                           withNetI2pDataSigningPublicKey:(NetI2pDataSigningPublicKey *)spk {
  return NetI2pRouterStartupCreateRouterInfoJob_createCertificateWithNetI2pRouterRouterContext_withNetI2pDataSigningPublicKey_(ctx, spk);
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_next_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataRouterRouterInfo;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pCryptoSigType;", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x8, 3, 2, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataCertificate;", 0x8, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterJob:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(runJob);
  methods[3].selector = @selector(createRouterInfo);
  methods[4].selector = @selector(getSigTypeConfigWithNetI2pRouterRouterContext:);
  methods[5].selector = @selector(getCurrentPublishDateWithNetI2pRouterRouterContext:);
  methods[6].selector = @selector(createCertificateWithNetI2pRouterRouterContext:withNetI2pDataSigningPublicKey:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_next_", "LNetI2pRouterJob;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "INFO_FILENAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
    { "KEYS_FILENAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "KEYS2_FILENAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "PROP_ROUTER_SIGTYPE", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 9, -1, -1 },
    { "DEFAULT_SIGTYPE", "LNetI2pCryptoSigType;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterJob;", "getSigTypeConfig", "LNetI2pRouterRouterContext;", "getCurrentPublishDate", "createCertificate", "LNetI2pRouterRouterContext;LNetI2pDataSigningPublicKey;", &NetI2pRouterStartupCreateRouterInfoJob_INFO_FILENAME, &NetI2pRouterStartupCreateRouterInfoJob_KEYS_FILENAME, &NetI2pRouterStartupCreateRouterInfoJob_KEYS2_FILENAME, &NetI2pRouterStartupCreateRouterInfoJob_PROP_ROUTER_SIGTYPE, &NetI2pRouterStartupCreateRouterInfoJob_DEFAULT_SIGTYPE };
  static const J2ObjcClassInfo _NetI2pRouterStartupCreateRouterInfoJob = { "CreateRouterInfoJob", "net.i2p.router.startup", ptrTable, methods, fields, 7, 0x1, 7, 7, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterStartupCreateRouterInfoJob;
}

+ (void)initialize {
  if (self == [NetI2pRouterStartupCreateRouterInfoJob class]) {
    JreStrongAssign(&NetI2pRouterStartupCreateRouterInfoJob_DEFAULT_SIGTYPE, NetI2pUtilSystemVersion_isAndroid() ? JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1) : JreLoadEnum(NetI2pCryptoSigType, EdDSA_SHA512_Ed25519));
    J2OBJC_SET_INITIALIZED(NetI2pRouterStartupCreateRouterInfoJob)
  }
}

@end

void NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(NetI2pRouterStartupCreateRouterInfoJob *self, NetI2pRouterRouterContext *ctx, id<NetI2pRouterJob> next) {
  NetI2pRouterJobImpl_initWithNetI2pRouterRouterContext_(self, ctx);
  JreStrongAssign(&self->_next_, next);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterStartupCreateRouterInfoJob_class_()]);
}

NetI2pRouterStartupCreateRouterInfoJob *new_NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(NetI2pRouterRouterContext *ctx, id<NetI2pRouterJob> next) {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupCreateRouterInfoJob, initWithNetI2pRouterRouterContext_withNetI2pRouterJob_, ctx, next)
}

NetI2pRouterStartupCreateRouterInfoJob *create_NetI2pRouterStartupCreateRouterInfoJob_initWithNetI2pRouterRouterContext_withNetI2pRouterJob_(NetI2pRouterRouterContext *ctx, id<NetI2pRouterJob> next) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupCreateRouterInfoJob, initWithNetI2pRouterRouterContext_withNetI2pRouterJob_, ctx, next)
}

NetI2pCryptoSigType *NetI2pRouterStartupCreateRouterInfoJob_getSigTypeConfigWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  NetI2pRouterStartupCreateRouterInfoJob_initialize();
  NetI2pCryptoSigType *cstype = NetI2pRouterStartupCreateRouterInfoJob_DEFAULT_SIGTYPE;
  NSString *sstype = [((NetI2pRouterRouterContext *) nil_chk(ctx)) getPropertyWithNSString:NetI2pRouterStartupCreateRouterInfoJob_PROP_ROUTER_SIGTYPE];
  if (sstype != nil) {
    NetI2pCryptoSigType *ntype = NetI2pCryptoSigType_parseSigTypeWithNSString_(sstype);
    if (ntype != nil) cstype = ntype;
  }
  if (cstype != JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1) && ![((NetI2pCryptoSigType *) nil_chk(cstype)) isAvailable]) cstype = JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1);
  return cstype;
}

jlong NetI2pRouterStartupCreateRouterInfoJob_getCurrentPublishDateWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) {
  NetI2pRouterStartupCreateRouterInfoJob_initialize();
  return [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(context)) clock])) now];
}

NetI2pDataCertificate *NetI2pRouterStartupCreateRouterInfoJob_createCertificateWithNetI2pRouterRouterContext_withNetI2pDataSigningPublicKey_(NetI2pRouterRouterContext *ctx, NetI2pDataSigningPublicKey *spk) {
  NetI2pRouterStartupCreateRouterInfoJob_initialize();
  if ([((NetI2pDataSigningPublicKey *) nil_chk(spk)) getType] != JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1)) return create_NetI2pDataKeyCertificate_initWithNetI2pDataSigningPublicKey_(spk);
  if ([((NetI2pRouterRouterContext *) nil_chk(ctx)) getBooleanPropertyWithNSString:NetI2pRouterRouter_PROP_HIDDEN]) return create_NetI2pDataCertificate_initWithInt_withByteArray_(NetI2pDataCertificate_CERTIFICATE_TYPE_HIDDEN, nil);
  return JreLoadStatic(NetI2pDataCertificate, NULL_CERT);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupCreateRouterInfoJob)
