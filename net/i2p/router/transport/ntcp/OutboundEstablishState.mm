//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/OutboundEstablishState.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/net/InetAddress.h"
#include "java/net/Socket.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/channels/SocketChannel.h"
#include "java/util/Arrays.h"
#include "net/i2p/crypto/AESEngine.h"
#include "net/i2p/crypto/DSAEngine.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/data/Signature.h"
#include "net/i2p/data/SigningPrivateKey.h"
#include "net/i2p/data/SigningPublicKey.h"
#include "net/i2p/data/router/RouterIdentity.h"
#include "net/i2p/data/router/RouterInfo.h"
#include "net/i2p/router/Banlist.h"
#include "net/i2p/router/KeyManager.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/transport/crypto/DHSessionKeyBuilder.h"
#include "net/i2p/router/transport/ntcp/EstablishBase.h"
#include "net/i2p/router/transport/ntcp/EventPumper.h"
#include "net/i2p/router/transport/ntcp/NTCPConnection.h"
#include "net/i2p/router/transport/ntcp/NTCPTransport.h"
#include "net/i2p/router/transport/ntcp/OutboundEstablishState.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SimpleByteCache.h"

@interface NetI2pRouterTransportNtcpOutboundEstablishState ()

- (void)receiveOutboundWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;

@end

__attribute__((unused)) static void NetI2pRouterTransportNtcpOutboundEstablishState_receiveOutboundWithJavaNioByteBuffer_(NetI2pRouterTransportNtcpOutboundEstablishState *self, JavaNioByteBuffer *src);

@implementation NetI2pRouterTransportNtcpOutboundEstablishState

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
       withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport
      withNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con {
  NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(self, ctx, transport, con);
  return self;
}

- (void)receiveWithJavaNioByteBuffer:(JavaNioByteBuffer *)src {
  @synchronized(self) {
    [super receiveWithJavaNioByteBuffer:src];
    if (![((JavaNioByteBuffer *) nil_chk(src)) hasRemaining]) return;
    NetI2pRouterTransportNtcpOutboundEstablishState_receiveOutboundWithJavaNioByteBuffer_(self, src);
  }
}

- (jint)getVersion {
  return 1;
}

- (void)receiveOutboundWithJavaNioByteBuffer:(JavaNioByteBuffer *)src {
  NetI2pRouterTransportNtcpOutboundEstablishState_receiveOutboundWithJavaNioByteBuffer_(self, src);
}

- (void)prepareOutbound {
  @synchronized(self) {
    if (JreLoadVolatileId(&_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_INIT)) {
      if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$$", [self prefix], @"send X")];
      IOSByteArray *toWrite = [IOSByteArray arrayWithLength:NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + ((IOSByteArray *) nil_chk(_hX_xor_bobIdentHash_))->size_];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_X_, 0, toWrite, 0, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_hX_xor_bobIdentHash_, 0, toWrite, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE, _hX_xor_bobIdentHash_->size_);
      [self changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_X)];
      [((NetI2pRouterTransportNtcpEventPumper *) nil_chk([((NetI2pRouterTransportNtcpNTCPTransport *) nil_chk(_transport_)) getPumper])) wantsWriteWithNetI2pRouterTransportNtcpNTCPConnection:_con_ withByteArray:toWrite];
    }
    else {
      @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$", [self prefix], @"unexpected prepareOutbound()"));
    }
  }
}

- (void)releaseBufsWithBoolean:(jboolean)isVerified {
  [super releaseBufsWithBoolean:isVerified];
  JavaUtilArrays_fillWithByteArray_withByte_(_Y_, (jbyte) 0);
  NetI2pUtilSimpleByteCache_release__WithByteArray_(_Y_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterTransportNtcpNTCPTransport:withNetI2pRouterTransportNtcpNTCPConnection:);
  methods[1].selector = @selector(receiveWithJavaNioByteBuffer:);
  methods[2].selector = @selector(getVersion);
  methods[3].selector = @selector(receiveOutboundWithJavaNioByteBuffer:);
  methods[4].selector = @selector(prepareOutbound);
  methods[5].selector = @selector(releaseBufsWithBoolean:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterTransportNtcpNTCPTransport;LNetI2pRouterTransportNtcpNTCPConnection;", "receive", "LJavaNioByteBuffer;", "receiveOutbound", "releaseBufs", "Z" };
  static const J2ObjcClassInfo _NetI2pRouterTransportNtcpOutboundEstablishState = { "OutboundEstablishState", "net.i2p.router.transport.ntcp", ptrTable, methods, NULL, 7, 0x0, 6, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportNtcpOutboundEstablishState;
}

@end

void NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterTransportNtcpOutboundEstablishState *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con) {
  NetI2pRouterTransportNtcpEstablishBase_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(self, ctx, transport, con);
  JreVolatileStrongAssign(&self->_state_, JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_INIT));
  [((NetI2pCryptoSHA256Generator *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) sha])) calculateHashWithByteArray:self->_X_ withInt:0 withInt:NetI2pRouterTransportNtcpEstablishBase_XY_SIZE withByteArray:self->_hX_xor_bobIdentHash_ withInt:0];
  NetI2pRouterTransportNtcpEstablishBase_xor32WithByteArray_withByteArray_([((NetI2pDataHash *) nil_chk([((NetI2pDataRouterRouterIdentity *) nil_chk([((NetI2pRouterTransportNtcpNTCPConnection *) nil_chk(con)) getRemotePeer])) calculateHash])) getData], self->_hX_xor_bobIdentHash_);
}

NetI2pRouterTransportNtcpOutboundEstablishState *new_NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportNtcpOutboundEstablishState, initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_, ctx, transport, con)
}

NetI2pRouterTransportNtcpOutboundEstablishState *create_NetI2pRouterTransportNtcpOutboundEstablishState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportNtcpOutboundEstablishState, initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_, ctx, transport, con)
}

void NetI2pRouterTransportNtcpOutboundEstablishState_receiveOutboundWithJavaNioByteBuffer_(NetI2pRouterTransportNtcpOutboundEstablishState *self, JavaNioByteBuffer *src) {
  if (JreLoadVolatileId(&self->_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_X) && [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining]) {
    jint toGet = JavaLangMath_minWithInt_withInt_([((JavaNioByteBuffer *) nil_chk(src)) remaining], NetI2pRouterTransportNtcpEstablishBase_XY_SIZE - self->_received_);
    [src getWithByteArray:self->_Y_ withInt:self->_received_ withInt:toGet];
    self->_received_ += toGet;
    if (self->_received_ < NetI2pRouterTransportNtcpEstablishBase_XY_SIZE) return;
    @try {
      [((NetI2pRouterTransportCryptoDHSessionKeyBuilder *) nil_chk(self->_dh_)) setPeerPublicValueWithByteArray:self->_Y_];
      [self->_dh_ getSessionKey];
      if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$$C", [self prefix], @"DH session key calculated (", [((NetI2pDataSessionKey *) nil_chk([self->_dh_ getSessionKey])) toBase64], ')')];
      [self changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_Y)];
      self->_received_ = 0;
    }
    @catch (NetI2pRouterTransportCryptoDHSessionKeyBuilder_InvalidPublicParameterException *e) {
      [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) addRateDataWithNSString:@"ntcp.invalidDH" withLong:1];
      [self failWithNSString:@"Invalid X" withJavaLangException:e];
      return;
    }
    @catch (JavaLangIllegalStateException *ise) {
      [self failWithNSString:@"reused keys?" withJavaLangException:ise];
      return;
    }
  }
  if (JreLoadVolatileId(&self->_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_Y) && [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining]) {
    jint toGet = JavaLangMath_minWithInt_withInt_([((JavaNioByteBuffer *) nil_chk(src)) remaining], NetI2pRouterTransportNtcpEstablishBase_HXY_TSB_PAD_SIZE - self->_received_);
    [src getWithByteArray:self->_e_hXY_tsB_ withInt:self->_received_ withInt:toGet];
    self->_received_ += toGet;
    if (self->_received_ < NetI2pRouterTransportNtcpEstablishBase_HXY_TSB_PAD_SIZE) return;
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$", [self prefix], @"received _e_hXY_tsB fully")];
    IOSByteArray *hXY_tsB = [IOSByteArray arrayWithLength:NetI2pRouterTransportNtcpEstablishBase_HXY_TSB_PAD_SIZE];
    [((NetI2pCryptoAESEngine *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) aes])) decryptWithByteArray:self->_e_hXY_tsB_ withInt:0 withByteArray:hXY_tsB withInt:0 withNetI2pDataSessionKey:[((NetI2pRouterTransportCryptoDHSessionKeyBuilder *) nil_chk(self->_dh_)) getSessionKey] withByteArray:self->_Y_ withInt:NetI2pRouterTransportNtcpEstablishBase_XY_SIZE - NetI2pRouterTransportNtcpEstablishBase_AES_SIZE withInt:NetI2pRouterTransportNtcpEstablishBase_HXY_TSB_PAD_SIZE];
    IOSByteArray *XY = [IOSByteArray arrayWithLength:NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_X_, 0, XY, 0, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_Y_, 0, XY, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
    IOSByteArray *h = NetI2pUtilSimpleByteCache_acquireWithInt_(NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE);
    [((NetI2pCryptoSHA256Generator *) nil_chk([self->_context_ sha])) calculateHashWithByteArray:XY withInt:0 withInt:NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE withByteArray:h withInt:0];
    if (!NetI2pDataDataHelper_eqWithByteArray_withInt_withByteArray_withInt_withInt_(h, 0, hXY_tsB, 0, NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE)) {
      NetI2pUtilSimpleByteCache_release__WithByteArray_(h);
      [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) addRateDataWithNSString:@"ntcp.invalidHXY" withLong:1];
      [self failWithNSString:@"Invalid H(X+Y) - mitm attack attempted?"];
      return;
    }
    NetI2pUtilSimpleByteCache_release__WithByteArray_(h);
    [self changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_HXY)];
    self->_received_ = 0;
    self->_tsB_ = NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(hXY_tsB, NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE, 4);
    jlong now = [((NetI2pUtilClock *) nil_chk([self->_context_ clock])) now];
    jlong rtt = now - [((NetI2pRouterTransportNtcpNTCPConnection *) nil_chk(self->_con_)) getCreated];
    self->_tsA_ = (now + 500) / 1000;
    self->_peerSkew_ = (now - (self->_tsB_ * 1000) - (rtt / 2) + 500) / 1000;
    if ([self->_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$J", [self prefix], @"h(X+Y) is correct, skew = ", self->_peerSkew_)];
    jlong diff = 1000 * JavaLangMath_absWithLong_(self->_peerSkew_);
    if (![((NetI2pUtilClock *) nil_chk([self->_context_ clock])) getUpdatedSuccessfully]) {
      [((NetI2pUtilClock *) nil_chk([self->_context_ clock])) setOffsetWithLong:1000 * (0 - self->_peerSkew_) withBoolean:true];
      self->_peerSkew_ = 0;
      if (diff != 0) [self->_log_ logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:JreStrcat("$$", @"NTP failure, NTCP adjusting clock by ", NetI2pDataDataHelper_formatDurationWithLong_(diff))];
    }
    else if (diff >= NetI2pRouterRouter_CLOCK_FUDGE_FACTOR) {
      [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) addRateDataWithNSString:@"ntcp.invalidOutboundSkew" withLong:diff];
      [((NetI2pRouterTransportNtcpNTCPTransport *) nil_chk(self->_transport_)) markReachableWithNetI2pDataHash:[((NetI2pDataRouterRouterIdentity *) nil_chk([self->_con_ getRemotePeer])) calculateHash] withBoolean:false];
      [((NetI2pRouterBanlist *) nil_chk([self->_context_ banlist])) banlistRouterWithNSString:NetI2pDataDataHelper_formatDurationWithLong_(diff) withNetI2pDataHash:[((NetI2pDataRouterRouterIdentity *) nil_chk([self->_con_ getRemotePeer])) calculateHash] withNSString:NetI2pRouterTransportNtcpEstablishBase__xWithNSString_(@"Excessive clock skew: {0}")];
      [self->_transport_ setLastBadSkewWithLong:self->_peerSkew_];
      [self failWithNSString:JreStrcat("$J$", @"Clocks too skewed (", diff, @" ms)") withJavaLangException:nil withBoolean:true];
      return;
    }
    else if ([self->_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) {
      [self->_log_ debugWithNSString:JreStrcat("$$J$", [self prefix], @"Clock skew: ", diff, @" ms")];
    }
    jint sigSize = NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE + 4 + 4;
    IOSByteArray *preSign = [IOSByteArray arrayWithLength:sigSize];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_X_, 0, preSign, 0, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_Y_, 0, preSign, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((NetI2pDataHash *) nil_chk([((NetI2pDataRouterRouterIdentity *) nil_chk([self->_con_ getRemotePeer])) calculateHash])) getData], 0, preSign, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE, NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE);
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(preSign, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE, 4, self->_tsA_);
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(preSign, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE + 4, 4, self->_tsB_);
    NetI2pDataSignature *sig = [((NetI2pCryptoDSAEngine *) nil_chk([self->_context_ dsa])) signWithByteArray:preSign withNetI2pDataSigningPrivateKey:[((NetI2pRouterKeyManager *) nil_chk([self->_context_ keyManager])) getSigningPrivateKey]];
    IOSByteArray *ident = [((NetI2pDataRouterRouterIdentity *) nil_chk([((NetI2pDataRouterRouterInfo *) nil_chk([((NetI2pRouterRouter *) nil_chk([self->_context_ router])) getRouterInfo])) getIdentity])) toByteArray];
    jint min = 2 + ((IOSByteArray *) nil_chk(ident))->size_ + 4 + [((NetI2pDataSignature *) nil_chk(sig)) length];
    jint rem = min % NetI2pRouterTransportNtcpEstablishBase_AES_SIZE;
    jint padding = 0;
    if (rem > 0) padding = NetI2pRouterTransportNtcpEstablishBase_AES_SIZE - rem;
    IOSByteArray *preEncrypt = [IOSByteArray arrayWithLength:min + padding];
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(preEncrypt, 0, 2, ident->size_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(ident, 0, preEncrypt, 2, ident->size_);
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(preEncrypt, 2 + ident->size_, 4, self->_tsA_);
    if (padding > 0) [((NetI2pUtilRandomSource *) nil_chk([self->_context_ random])) nextBytesWithByteArray:preEncrypt withInt:2 + ident->size_ + 4 withInt:padding];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([sig getData], 0, preEncrypt, 2 + ident->size_ + 4 + padding, [sig length]);
    JreStrongAssignAndConsume(&self->_prevEncrypted_, [IOSByteArray newArrayWithLength:preEncrypt->size_]);
    [((NetI2pCryptoAESEngine *) nil_chk([self->_context_ aes])) encryptWithByteArray:preEncrypt withInt:0 withByteArray:self->_prevEncrypted_ withInt:0 withNetI2pDataSessionKey:[self->_dh_ getSessionKey] withByteArray:self->_hX_xor_bobIdentHash_ withInt:((IOSByteArray *) nil_chk(self->_hX_xor_bobIdentHash_))->size_ - NetI2pRouterTransportNtcpEstablishBase_AES_SIZE withInt:preEncrypt->size_];
    [self changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_RI)];
    [((NetI2pRouterTransportNtcpEventPumper *) nil_chk([((NetI2pRouterTransportNtcpNTCPTransport *) nil_chk(self->_transport_)) getPumper])) wantsWriteWithNetI2pRouterTransportNtcpNTCPConnection:self->_con_ withByteArray:self->_prevEncrypted_];
  }
  if (JreLoadVolatileId(&self->_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_RI) && [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining]) {
    jint off = 0;
    if (self->_e_bobSig_ == nil) {
      jint siglen = [((NetI2pCryptoSigType *) nil_chk([((NetI2pDataSigningPublicKey *) nil_chk([((NetI2pDataRouterRouterIdentity *) nil_chk([((NetI2pRouterTransportNtcpNTCPConnection *) nil_chk(self->_con_)) getRemotePeer])) getSigningPublicKey])) getType])) getSigLen];
      jint rem = siglen % NetI2pRouterTransportNtcpEstablishBase_AES_SIZE;
      jint padding;
      if (rem > 0) padding = NetI2pRouterTransportNtcpEstablishBase_AES_SIZE - rem;
      else padding = 0;
      JreStrongAssignAndConsume(&self->_e_bobSig_, [IOSByteArray newArrayWithLength:siglen + padding]);
      if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$ZC", [self prefix], @"receiving E(S(X+Y+Alice.identHash+tsA+tsB)+padding, sk, prev) (remaining? ", [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining], ')')];
    }
    else {
      off = self->_received_;
      if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$Z$I$IC", [self prefix], @"continuing to receive E(S(X+Y+Alice.identHash+tsA+tsB)+padding, sk, prev) (remaining? ", [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining], @" off=", off, @" recv=", self->_received_, ')')];
    }
    while (JreLoadVolatileId(&self->_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_RI) && [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining]) {
      *IOSByteArray_GetRef(nil_chk(self->_e_bobSig_), off++) = [((JavaNioByteBuffer *) nil_chk(src)) get];
      self->_received_++;
      if (off >= ((IOSByteArray *) nil_chk(self->_e_bobSig_))->size_) {
        [self changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_SIG)];
        IOSByteArray *bobSig = [IOSByteArray arrayWithLength:((IOSByteArray *) nil_chk(self->_e_bobSig_))->size_];
        [((NetI2pCryptoAESEngine *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) aes])) decryptWithByteArray:self->_e_bobSig_ withInt:0 withByteArray:bobSig withInt:0 withNetI2pDataSessionKey:[((NetI2pRouterTransportCryptoDHSessionKeyBuilder *) nil_chk(self->_dh_)) getSessionKey] withByteArray:self->_e_hXY_tsB_ withInt:NetI2pRouterTransportNtcpEstablishBase_HXY_TSB_PAD_SIZE - NetI2pRouterTransportNtcpEstablishBase_AES_SIZE withInt:((IOSByteArray *) nil_chk(self->_e_bobSig_))->size_];
        NetI2pCryptoSigType *type = [((NetI2pDataSigningPublicKey *) nil_chk([((NetI2pDataRouterRouterIdentity *) nil_chk([((NetI2pRouterTransportNtcpNTCPConnection *) nil_chk(self->_con_)) getRemotePeer])) getSigningPublicKey])) getType];
        jint siglen = [((NetI2pCryptoSigType *) nil_chk(type)) getSigLen];
        IOSByteArray *bobSigData = [IOSByteArray arrayWithLength:siglen];
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bobSig, 0, bobSigData, 0, siglen);
        NetI2pDataSignature *sig = create_NetI2pDataSignature_initWithNetI2pCryptoSigType_withByteArray_(type, bobSigData);
        IOSByteArray *toVerify = [IOSByteArray arrayWithLength:NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_XY_SIZE + NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE + 4 + 4];
        jint voff = 0;
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_X_, 0, toVerify, voff, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
        voff += NetI2pRouterTransportNtcpEstablishBase_XY_SIZE;
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_Y_, 0, toVerify, voff, NetI2pRouterTransportNtcpEstablishBase_XY_SIZE);
        voff += NetI2pRouterTransportNtcpEstablishBase_XY_SIZE;
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((NetI2pDataHash *) nil_chk([self->_context_ routerHash])) getData], 0, toVerify, voff, NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE);
        voff += NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE;
        NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(toVerify, voff, 4, self->_tsA_);
        voff += 4;
        NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(toVerify, voff, 4, self->_tsB_);
        voff += 4;
        jboolean ok = [((NetI2pCryptoDSAEngine *) nil_chk([self->_context_ dsa])) verifySignatureWithNetI2pDataSignature:sig withByteArray:toVerify withNetI2pDataSigningPublicKey:[((NetI2pDataRouterRouterIdentity *) nil_chk([self->_con_ getRemotePeer])) getSigningPublicKey]];
        if (!ok) {
          [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) addRateDataWithNSString:@"ntcp.invalidSignature" withLong:1];
          [self failWithNSString:JreStrcat("$$C", @"Signature was invalid - attempt to spoof ", [((NetI2pDataHash *) nil_chk([((NetI2pDataRouterRouterIdentity *) nil_chk([self->_con_ getRemotePeer])) calculateHash])) toBase64], '?')];
        }
        else {
          if ([self->_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$$", [self prefix], @"signature verified from Bob.  done!")];
          IOSByteArray *nextWriteIV = NetI2pUtilSimpleByteCache_acquireWithInt_(NetI2pRouterTransportNtcpEstablishBase_AES_SIZE);
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->_prevEncrypted_, ((IOSByteArray *) nil_chk(self->_prevEncrypted_))->size_ - NetI2pRouterTransportNtcpEstablishBase_AES_SIZE, nextWriteIV, 0, NetI2pRouterTransportNtcpEstablishBase_AES_SIZE);
          [self->_con_ finishOutboundEstablishmentWithNetI2pDataSessionKey:[self->_dh_ getSessionKey] withLong:self->_peerSkew_ withByteArray:nextWriteIV withByteArray:self->_e_bobSig_];
          [self changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, VERIFIED)];
          if ([src hasRemaining]) {
            if ([self->_log_ shouldInfo]) [self->_log_ infoWithNSString:JreStrcat("$I$@", @"extra data ", [src remaining], @" on ", self)];
            [self->_con_ recvEncryptedI2NPWithJavaNioByteBuffer:src];
          }
          [self releaseBufsWithBoolean:true];
          JavaNetInetAddress *ia = [((JavaNetSocket *) nil_chk([((JavaNioChannelsSocketChannel *) nil_chk([self->_con_ getChannel])) socket])) getInetAddress];
          if (ia != nil) [((NetI2pRouterTransportNtcpNTCPTransport *) nil_chk(self->_transport_)) setIPWithNetI2pDataHash:[((NetI2pDataRouterRouterIdentity *) nil_chk([self->_con_ getRemotePeer])) calculateHash] withByteArray:[ia getAddress]];
        }
        return;
      }
    }
  }
  if ((JreLoadVolatileId(&self->_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, VERIFIED) || JreLoadVolatileId(&self->_state_) == JreLoadEnum(NetI2pRouterTransportNtcpEstablishBase_State, CORRUPT)) && [((JavaNioByteBuffer *) nil_chk(src)) hasRemaining]) {
    if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldWarn]) [self->_log_ warnWithNSString:JreStrcat("$I$@", @"Received unexpected ", [((JavaNioByteBuffer *) nil_chk(src)) remaining], @" on ", self) withJavaLangThrowable:create_JavaLangException_init()];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportNtcpOutboundEstablishState)