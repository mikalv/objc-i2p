//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/BuildMessageGenerator.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/crypto/AESEngine.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/PublicKey.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/data/i2np/BuildRequestRecord.h"
#include "net/i2p/data/i2np/EncryptedBuildRecord.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/i2np/TunnelBuildMessage.h"
#include "net/i2p/data/i2np/TunnelBuildMessageBase.h"
#include "net/i2p/router/tunnel/BuildMessageGenerator.h"
#include "net/i2p/router/tunnel/HopConfig.h"
#include "net/i2p/router/tunnel/TunnelCreatorConfig.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pRouterTunnelBuildMessageGenerator ()

+ (NetI2pDataI2npBuildRequestRecord *)createUnencryptedRecordWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                           withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
                                                                             withInt:(jint)hop
                                                                  withNetI2pDataHash:(NetI2pDataHash *)replyRouter
                                                                            withLong:(jlong)replyTunnel;

@end

__attribute__((unused)) static NetI2pDataI2npBuildRequestRecord *NetI2pRouterTunnelBuildMessageGenerator_createUnencryptedRecordWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_withInt_withNetI2pDataHash_withLong_(NetI2pI2PAppContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *cfg, jint hop, NetI2pDataHash *replyRouter, jlong replyTunnel);

@implementation NetI2pRouterTunnelBuildMessageGenerator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTunnelBuildMessageGenerator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)createRecordWithInt:(jint)recordNum
                    withInt:(jint)hop
withNetI2pDataI2npTunnelBuildMessage:(NetI2pDataI2npTunnelBuildMessage *)msg
withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
         withNetI2pDataHash:(NetI2pDataHash *)replyRouter
                   withLong:(jlong)replyTunnel
    withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
    withNetI2pDataPublicKey:(NetI2pDataPublicKey *)peerKey {
  NetI2pRouterTunnelBuildMessageGenerator_createRecordWithInt_withInt_withNetI2pDataI2npTunnelBuildMessage_withNetI2pRouterTunnelTunnelCreatorConfig_withNetI2pDataHash_withLong_withNetI2pI2PAppContext_withNetI2pDataPublicKey_(recordNum, hop, msg, cfg, replyRouter, replyTunnel, ctx, peerKey);
}

+ (NetI2pDataI2npBuildRequestRecord *)createUnencryptedRecordWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                           withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
                                                                             withInt:(jint)hop
                                                                  withNetI2pDataHash:(NetI2pDataHash *)replyRouter
                                                                            withLong:(jlong)replyTunnel {
  return NetI2pRouterTunnelBuildMessageGenerator_createUnencryptedRecordWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_withInt_withNetI2pDataHash_withLong_(ctx, cfg, hop, replyRouter, replyTunnel);
}

+ (void)layeredEncryptWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
         withNetI2pDataI2npTunnelBuildMessage:(NetI2pDataI2npTunnelBuildMessage *)msg
    withNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
                             withJavaUtilList:(id<JavaUtilList>)order {
  NetI2pRouterTunnelBuildMessageGenerator_layeredEncryptWithNetI2pI2PAppContext_withNetI2pDataI2npTunnelBuildMessage_withNetI2pRouterTunnelTunnelCreatorConfig_withJavaUtilList_(ctx, msg, cfg, order);
}

+ (jboolean)isBlankWithNetI2pRouterTunnelTunnelCreatorConfig:(NetI2pRouterTunnelTunnelCreatorConfig *)cfg
                                                     withInt:(jint)hop {
  return NetI2pRouterTunnelBuildMessageGenerator_isBlankWithNetI2pRouterTunnelTunnelCreatorConfig_withInt_(cfg, hop);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npBuildRequestRecord;", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 4, 5, -1, 6, -1, -1 },
    { NULL, "Z", 0x9, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createRecordWithInt:withInt:withNetI2pDataI2npTunnelBuildMessage:withNetI2pRouterTunnelTunnelCreatorConfig:withNetI2pDataHash:withLong:withNetI2pI2PAppContext:withNetI2pDataPublicKey:);
  methods[2].selector = @selector(createUnencryptedRecordWithNetI2pI2PAppContext:withNetI2pRouterTunnelTunnelCreatorConfig:withInt:withNetI2pDataHash:withLong:);
  methods[3].selector = @selector(layeredEncryptWithNetI2pI2PAppContext:withNetI2pDataI2npTunnelBuildMessage:withNetI2pRouterTunnelTunnelCreatorConfig:withJavaUtilList:);
  methods[4].selector = @selector(isBlankWithNetI2pRouterTunnelTunnelCreatorConfig:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createRecord", "IILNetI2pDataI2npTunnelBuildMessage;LNetI2pRouterTunnelTunnelCreatorConfig;LNetI2pDataHash;JLNetI2pI2PAppContext;LNetI2pDataPublicKey;", "createUnencryptedRecord", "LNetI2pI2PAppContext;LNetI2pRouterTunnelTunnelCreatorConfig;ILNetI2pDataHash;J", "layeredEncrypt", "LNetI2pI2PAppContext;LNetI2pDataI2npTunnelBuildMessage;LNetI2pRouterTunnelTunnelCreatorConfig;LJavaUtilList;", "(Lnet/i2p/I2PAppContext;Lnet/i2p/data/i2np/TunnelBuildMessage;Lnet/i2p/router/tunnel/TunnelCreatorConfig;Ljava/util/List<Ljava/lang/Integer;>;)V", "isBlank", "LNetI2pRouterTunnelTunnelCreatorConfig;I" };
  static const J2ObjcClassInfo _NetI2pRouterTunnelBuildMessageGenerator = { "BuildMessageGenerator", "net.i2p.router.tunnel", ptrTable, methods, NULL, 7, 0x401, 5, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelBuildMessageGenerator;
}

@end

void NetI2pRouterTunnelBuildMessageGenerator_init(NetI2pRouterTunnelBuildMessageGenerator *self) {
  NSObject_init(self);
}

void NetI2pRouterTunnelBuildMessageGenerator_createRecordWithInt_withInt_withNetI2pDataI2npTunnelBuildMessage_withNetI2pRouterTunnelTunnelCreatorConfig_withNetI2pDataHash_withLong_withNetI2pI2PAppContext_withNetI2pDataPublicKey_(jint recordNum, jint hop, NetI2pDataI2npTunnelBuildMessage *msg, NetI2pRouterTunnelTunnelCreatorConfig *cfg, NetI2pDataHash *replyRouter, jlong replyTunnel, NetI2pI2PAppContext *ctx, NetI2pDataPublicKey *peerKey) {
  NetI2pRouterTunnelBuildMessageGenerator_initialize();
  NetI2pDataI2npEncryptedBuildRecord *erec;
  if (peerKey != nil) {
    NetI2pDataI2npBuildRequestRecord *req = nil;
    if ((![((NetI2pRouterTunnelTunnelCreatorConfig *) nil_chk(cfg)) isInbound]) && (hop + 1 == [cfg getLength])) req = NetI2pRouterTunnelBuildMessageGenerator_createUnencryptedRecordWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_withInt_withNetI2pDataHash_withLong_(ctx, cfg, hop, replyRouter, replyTunnel);
    else req = NetI2pRouterTunnelBuildMessageGenerator_createUnencryptedRecordWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_withInt_withNetI2pDataHash_withLong_(ctx, cfg, hop, nil, -1);
    if (req == nil) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"hop bigger than config");
    NetI2pDataHash *peer = [cfg getPeerWithInt:hop];
    erec = [req encryptRecordWithNetI2pI2PAppContext:ctx withNetI2pDataPublicKey:peerKey withNetI2pDataHash:peer];
  }
  else {
    IOSByteArray *encrypted = [IOSByteArray arrayWithLength:NetI2pDataI2npTunnelBuildMessageBase_RECORD_SIZE];
    [((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) random])) nextBytesWithByteArray:encrypted];
    erec = create_NetI2pDataI2npEncryptedBuildRecord_initWithByteArray_(encrypted);
  }
  [((NetI2pDataI2npTunnelBuildMessage *) nil_chk(msg)) setRecordWithInt:recordNum withNetI2pDataI2npEncryptedBuildRecord:erec];
}

NetI2pDataI2npBuildRequestRecord *NetI2pRouterTunnelBuildMessageGenerator_createUnencryptedRecordWithNetI2pI2PAppContext_withNetI2pRouterTunnelTunnelCreatorConfig_withInt_withNetI2pDataHash_withLong_(NetI2pI2PAppContext *ctx, NetI2pRouterTunnelTunnelCreatorConfig *cfg, jint hop, NetI2pDataHash *replyRouter, jlong replyTunnel) {
  NetI2pRouterTunnelBuildMessageGenerator_initialize();
  if (hop < [((NetI2pRouterTunnelTunnelCreatorConfig *) nil_chk(cfg)) getLength]) {
    NetI2pRouterTunnelHopConfig *hopConfig = [cfg getConfigWithInt:hop];
    NetI2pDataHash *peer = [cfg getPeerWithInt:hop];
    jlong recvTunnelId = -1;
    if ([cfg isInbound] || (hop > 0)) recvTunnelId = [((NetI2pDataTunnelId *) nil_chk([((NetI2pRouterTunnelHopConfig *) nil_chk(hopConfig)) getReceiveTunnel])) getTunnelId];
    else recvTunnelId = 0;
    jlong nextTunnelId = -1;
    NetI2pDataHash *nextPeer = nil;
    if (hop + 1 < [cfg getLength]) {
      nextTunnelId = [((NetI2pDataTunnelId *) nil_chk([((NetI2pRouterTunnelHopConfig *) nil_chk([cfg getConfigWithInt:hop + 1])) getReceiveTunnel])) getTunnelId];
      nextPeer = [cfg getPeerWithInt:hop + 1];
    }
    else {
      if ((replyTunnel >= 0) && (replyRouter != nil)) {
        nextTunnelId = replyTunnel;
        nextPeer = replyRouter;
      }
      else {
        nextTunnelId = 0;
        nextPeer = peer;
      }
    }
    NetI2pDataSessionKey *layerKey = [((NetI2pRouterTunnelHopConfig *) nil_chk(hopConfig)) getLayerKey];
    NetI2pDataSessionKey *ivKey = [hopConfig getIVKey];
    NetI2pDataSessionKey *replyKey = [hopConfig getReplyKey];
    IOSByteArray *iv = [hopConfig getReplyIV];
    if (iv == nil) {
      iv = [IOSByteArray arrayWithLength:NetI2pDataI2npBuildRequestRecord_IV_SIZE];
      [((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) random])) nextBytesWithByteArray:iv];
      [hopConfig setReplyIVWithByteArray:iv];
    }
    jboolean isInGW = ([cfg isInbound] && (hop == 0));
    jboolean isOutEnd = (![cfg isInbound] && (hop + 1 >= [cfg getLength]));
    jlong nextMsgId = -1;
    if (isOutEnd || ([cfg isInbound] && (hop + 2 >= [cfg getLength]))) {
      nextMsgId = [cfg getReplyMessageId];
    }
    else {
      nextMsgId = [((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) random])) nextLongWithLong:NetI2pDataI2npI2NPMessage_MAX_ID_VALUE];
    }
    NetI2pDataI2npBuildRequestRecord *rec = create_NetI2pDataI2npBuildRequestRecord_initWithNetI2pI2PAppContext_withLong_withNetI2pDataHash_withLong_withNetI2pDataHash_withLong_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withNetI2pDataSessionKey_withByteArray_withBoolean_withBoolean_(ctx, recvTunnelId, peer, nextTunnelId, nextPeer, nextMsgId, layerKey, ivKey, replyKey, iv, isInGW, isOutEnd);
    return rec;
  }
  else {
    return nil;
  }
}

void NetI2pRouterTunnelBuildMessageGenerator_layeredEncryptWithNetI2pI2PAppContext_withNetI2pDataI2npTunnelBuildMessage_withNetI2pRouterTunnelTunnelCreatorConfig_withJavaUtilList_(NetI2pI2PAppContext *ctx, NetI2pDataI2npTunnelBuildMessage *msg, NetI2pRouterTunnelTunnelCreatorConfig *cfg, id<JavaUtilList> order) {
  NetI2pRouterTunnelBuildMessageGenerator_initialize();
  for (jint i = 0; i < [((NetI2pDataI2npTunnelBuildMessage *) nil_chk(msg)) getRecordCount]; i++) {
    NetI2pDataI2npEncryptedBuildRecord *rec = [msg getRecordWithInt:i];
    JavaLangInteger *hopNum = [((id<JavaUtilList>) nil_chk(order)) getWithInt:i];
    jint hop = [((JavaLangInteger *) nil_chk(hopNum)) intValue];
    if ((NetI2pRouterTunnelBuildMessageGenerator_isBlankWithNetI2pRouterTunnelTunnelCreatorConfig_withInt_(cfg, hop)) || (![((NetI2pRouterTunnelTunnelCreatorConfig *) nil_chk(cfg)) isInbound] && hop == 1)) {
      continue;
    }
    jint stop = ([((NetI2pRouterTunnelTunnelCreatorConfig *) nil_chk(cfg)) isInbound] ? 0 : 1);
    for (jint j = hop - 1; j >= stop; j--) {
      NetI2pRouterTunnelHopConfig *hopConfig = [cfg getConfigWithInt:j];
      NetI2pDataSessionKey *key = [((NetI2pRouterTunnelHopConfig *) nil_chk(hopConfig)) getReplyKey];
      IOSByteArray *iv = [hopConfig getReplyIV];
      [((NetI2pCryptoAESEngine *) nil_chk([((NetI2pI2PAppContext *) nil_chk(ctx)) aes])) decryptWithByteArray:[((NetI2pDataI2npEncryptedBuildRecord *) nil_chk(rec)) getData] withInt:0 withByteArray:[rec getData] withInt:0 withNetI2pDataSessionKey:key withByteArray:iv withInt:NetI2pDataI2npTunnelBuildMessageBase_RECORD_SIZE];
    }
  }
}

jboolean NetI2pRouterTunnelBuildMessageGenerator_isBlankWithNetI2pRouterTunnelTunnelCreatorConfig_withInt_(NetI2pRouterTunnelTunnelCreatorConfig *cfg, jint hop) {
  NetI2pRouterTunnelBuildMessageGenerator_initialize();
  if ([((NetI2pRouterTunnelTunnelCreatorConfig *) nil_chk(cfg)) isInbound]) {
    if (hop + 1 >= [cfg getLength]) return true;
    else return false;
  }
  else {
    if (hop == 0) return true;
    else if (hop >= [cfg getLength]) return true;
    else return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelBuildMessageGenerator)
