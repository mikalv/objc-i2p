//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/BuildMessageProcessor.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/AESEngine.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/PrivateKey.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/data/i2np/BuildRequestRecord.h"
#include "net/i2p/data/i2np/EncryptedBuildRecord.h"
#include "net/i2p/data/i2np/TunnelBuildMessage.h"
#include "net/i2p/router/RouterThrottleImpl.h"
#include "net/i2p/router/tunnel/BuildMessageProcessor.h"
#include "net/i2p/router/util/DecayingBloomFilter.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterTunnelBuildMessageProcessor () {
 @public
  NetI2pI2PAppContext *ctx_;
  NetI2pUtilLog *log_;
  NetI2pRouterUtilDecayingBloomFilter *_filter_;
}

- (NetI2pRouterUtilDecayingBloomFilter *)selectFilter;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTunnelBuildMessageProcessor, ctx_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelBuildMessageProcessor, log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTunnelBuildMessageProcessor, _filter_, NetI2pRouterUtilDecayingBloomFilter *)

__attribute__((unused)) static NetI2pRouterUtilDecayingBloomFilter *NetI2pRouterTunnelBuildMessageProcessor_selectFilter(NetI2pRouterTunnelBuildMessageProcessor *self);

@implementation NetI2pRouterTunnelBuildMessageProcessor

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  NetI2pRouterTunnelBuildMessageProcessor_initWithNetI2pI2PAppContext_(self, ctx);
  return self;
}

- (NetI2pRouterUtilDecayingBloomFilter *)selectFilter {
  return NetI2pRouterTunnelBuildMessageProcessor_selectFilter(self);
}

- (NetI2pDataI2npBuildRequestRecord *)decryptWithNetI2pDataI2npTunnelBuildMessage:(NetI2pDataI2npTunnelBuildMessage *)msg
                                                               withNetI2pDataHash:(NetI2pDataHash *)ourHash
                                                         withNetI2pDataPrivateKey:(NetI2pDataPrivateKey *)privKey {
  NetI2pDataI2npBuildRequestRecord *rv = nil;
  jint ourHop = -1;
  jlong beforeActualDecrypt = 0;
  jlong afterActualDecrypt = 0;
  IOSByteArray *ourHashData = [((NetI2pDataHash *) nil_chk(ourHash)) getData];
  jlong beforeLoop = JavaLangSystem_currentTimeMillis();
  for (jint i = 0; i < [((NetI2pDataI2npTunnelBuildMessage *) nil_chk(msg)) getRecordCount]; i++) {
    NetI2pDataI2npEncryptedBuildRecord *rec = [msg getRecordWithInt:i];
    jint len = NetI2pDataI2npBuildRequestRecord_PEER_SIZE;
    jboolean eq = NetI2pDataDataHelper_eqWithByteArray_withInt_withByteArray_withInt_withInt_(ourHashData, 0, [((NetI2pDataI2npEncryptedBuildRecord *) nil_chk(rec)) getData], 0, len);
    if (eq) {
      beforeActualDecrypt = JavaLangSystem_currentTimeMillis();
      @try {
        rv = create_NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withNetI2pDataPrivateKey_withNetI2pDataI2npEncryptedBuildRecord_(ctx_, privKey, rec);
        afterActualDecrypt = JavaLangSystem_currentTimeMillis();
        jboolean isBad = [((NetI2pDataSessionKey *) nil_chk(JreLoadStatic(NetI2pDataSessionKey, INVALID_KEY))) isEqual:[rv readReplyKey]];
        if (isBad) {
          if ([((NetI2pUtilLog *) nil_chk(log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log_ warnWithNSString:JreStrcat("J$@", [msg getUniqueId], @": Bad reply key: ", rv)];
          [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx_)) statManager])) addRateDataWithNSString:@"tunnel.buildRequestBadReplyKey" withLong:1];
          return nil;
        }
        jboolean isDup = [((NetI2pRouterUtilDecayingBloomFilter *) nil_chk(_filter_)) addWithByteArray:[rv getData] withInt:NetI2pDataI2npBuildRequestRecord_OFF_REPLY_KEY withInt:32];
        if (isDup) {
          if ([((NetI2pUtilLog *) nil_chk(log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log_ warnWithNSString:JreStrcat("J$@", [msg getUniqueId], @": Dup record: ", rv)];
          [((NetI2pStatStatManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx_)) statManager])) addRateDataWithNSString:@"tunnel.buildRequestDup" withLong:1];
          return nil;
        }
        if ([((NetI2pUtilLog *) nil_chk(log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [log_ debugWithNSString:JreStrcat("J$@", [msg getUniqueId], @": Matching record: ", rv)];
        ourHop = i;
        break;
      }
      @catch (NetI2pDataDataFormatException *dfe) {
        if ([((NetI2pUtilLog *) nil_chk(log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log_ warnWithNSString:JreStrcat("J$", [msg getUniqueId], @": Matching record decrypt failure") withJavaLangThrowable:dfe];
        continue;
      }
    }
  }
  if (rv == nil) {
    if ([((NetI2pUtilLog *) nil_chk(log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log_ warnWithNSString:JreStrcat("J$", [msg getUniqueId], @": No matching record")];
    return nil;
  }
  jlong beforeEncrypt = JavaLangSystem_currentTimeMillis();
  NetI2pDataSessionKey *replyKey = [rv readReplyKey];
  IOSByteArray *iv = [rv readReplyIV];
  for (jint i = 0; i < [msg getRecordCount]; i++) {
    if (i != ourHop) {
      NetI2pDataI2npEncryptedBuildRecord *data = [msg getRecordWithInt:i];
      IOSByteArray *bytes = [((NetI2pDataI2npEncryptedBuildRecord *) nil_chk(data)) getData];
      [((NetI2pCryptoAESEngine *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx_)) aes])) encryptWithByteArray:bytes withInt:0 withByteArray:bytes withInt:0 withNetI2pDataSessionKey:replyKey withByteArray:iv withInt:0 withInt:NetI2pDataI2npEncryptedBuildRecord_LENGTH];
    }
  }
  jlong afterEncrypt = JavaLangSystem_currentTimeMillis();
  [msg setRecordWithInt:ourHop withNetI2pDataI2npEncryptedBuildRecord:nil];
  if (afterEncrypt - beforeLoop > 1000) {
    if ([((NetI2pUtilLog *) nil_chk(log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log_ warnWithNSString:JreStrcat("$J$J$J$J", @"Slow decryption, total=", (afterEncrypt - beforeLoop), @" looping=", (beforeEncrypt - beforeLoop), @" decrypt=", (afterActualDecrypt - beforeActualDecrypt), @" encrypt=", (afterEncrypt - beforeEncrypt))];
  }
  return rv;
}

- (void)dealloc {
  RELEASE_(ctx_);
  RELEASE_(log_);
  RELEASE_(_filter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterUtilDecayingBloomFilter;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npBuildRequestRecord;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(selectFilter);
  methods[2].selector = @selector(decryptWithNetI2pDataI2npTunnelBuildMessage:withNetI2pDataHash:withNetI2pDataPrivateKey:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ctx_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_filter_", "LNetI2pRouterUtilDecayingBloomFilter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "decrypt", "LNetI2pDataI2npTunnelBuildMessage;LNetI2pDataHash;LNetI2pDataPrivateKey;" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelBuildMessageProcessor = { "BuildMessageProcessor", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x1, 3, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelBuildMessageProcessor;
}

@end

void NetI2pRouterTunnelBuildMessageProcessor_initWithNetI2pI2PAppContext_(NetI2pRouterTunnelBuildMessageProcessor *self, NetI2pI2PAppContext *ctx) {
  NSObject_init(self);
  JreStrongAssign(&self->ctx_, ctx);
  JreStrongAssign(&self->log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:[self java_getClass]]);
  JreStrongAssign(&self->_filter_, NetI2pRouterTunnelBuildMessageProcessor_selectFilter(self));
}

NetI2pRouterTunnelBuildMessageProcessor *new_NetI2pRouterTunnelBuildMessageProcessor_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelBuildMessageProcessor, initWithNetI2pI2PAppContext_, ctx)
}

NetI2pRouterTunnelBuildMessageProcessor *create_NetI2pRouterTunnelBuildMessageProcessor_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelBuildMessageProcessor, initWithNetI2pI2PAppContext_, ctx)
}

NetI2pRouterUtilDecayingBloomFilter *NetI2pRouterTunnelBuildMessageProcessor_selectFilter(NetI2pRouterTunnelBuildMessageProcessor *self) {
  jlong maxMemory = NetI2pUtilSystemVersion_getMaxMemory();
  jint m;
  if (NetI2pUtilSystemVersion_isAndroid() || NetI2pUtilSystemVersion_isARM() || maxMemory < 96 * 1024 * 1024LL) {
    m = 17;
  }
  else if ([((NetI2pI2PAppContext *) nil_chk(self->ctx_)) getPropertyWithNSString:NetI2pRouterRouterThrottleImpl_PROP_MAX_TUNNELS withInt:NetI2pRouterRouterThrottleImpl_DEFAULT_MAX_TUNNELS] > NetI2pRouterRouterThrottleImpl_DEFAULT_MAX_TUNNELS && maxMemory > 256 * 1024 * 1024LL) {
    m = 23;
  }
  else if (maxMemory > 256 * 1024 * 1024LL) {
    m = 22;
  }
  else if (maxMemory > 128 * 1024 * 1024LL) {
    m = 21;
  }
  else {
    m = 19;
  }
  if ([((NetI2pUtilLog *) nil_chk(self->log_)) shouldInfo]) [self->log_ infoWithNSString:JreStrcat("$I", @"Selected Bloom filter m = ", m)];
  return create_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_withInt_(self->ctx_, 60 * 60 * 1000, 32, @"TunnelBMP", m);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelBuildMessageProcessor)
