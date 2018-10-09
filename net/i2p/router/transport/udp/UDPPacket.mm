//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/UDPPacket.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Exception.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/net/DatagramPacket.h"
#include "java/net/InetAddress.h"
#include "java/util/Arrays.h"
#include "net/i2p/crypto/AESEngine.h"
#include "net/i2p/crypto/HMACGenerator.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/transport/FIFOBandwidthLimiter.h"
#include "net/i2p/router/transport/udp/RemoteHostId.h"
#include "net/i2p/router/transport/udp/UDPPacket.h"
#include "net/i2p/util/Addresses.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/HexDump.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/SystemVersion.h"
#include "net/i2p/util/TryCache.h"

@interface NetI2pRouterTransportUdpUDPPacket () {
 @public
  NetI2pRouterRouterContext *_context_;
  JavaNetDatagramPacket *_packet_;
  volatile_jshort _priority_;
  volatile_jlong _initializeTime_;
  IOSByteArray *_data_;
  IOSByteArray *_validateBuf_;
  IOSByteArray *_ivBuf_;
  volatile_jint _markedType_;
  NetI2pRouterTransportUdpRemoteHostId *_remoteHost_;
  jboolean _released_;
  jlong _enqueueTime_;
  jlong _receivedTime_;
  jint _validateCount_;
  id<NetI2pRouterTransportFIFOBandwidthLimiter_Request> _bandwidthRequest_;
  jint _messageType_;
  jint _fragmentCount_;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

- (void)init__WithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx OBJC_METHOD_FAMILY_NONE;

- (void)verifyNotReleased;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _packet_, JavaNetDatagramPacket *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _data_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _validateBuf_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _ivBuf_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _remoteHost_, NetI2pRouterTransportUdpRemoteHostId *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPPacket, _bandwidthRequest_, id<NetI2pRouterTransportFIFOBandwidthLimiter_Request>)

inline NetI2pUtilTryCache *NetI2pRouterTransportUdpUDPPacket_get__packetCache(void);
static NetI2pUtilTryCache *NetI2pRouterTransportUdpUDPPacket__packetCache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPPacket, _packetCache, NetI2pUtilTryCache *)

inline id<NetI2pUtilTryCache_ObjectFactory> NetI2pRouterTransportUdpUDPPacket_get__packetFactory(void);
static id<NetI2pUtilTryCache_ObjectFactory> NetI2pRouterTransportUdpUDPPacket__packetFactory;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPPacket, _packetFactory, id<NetI2pUtilTryCache_ObjectFactory>)

inline jboolean NetI2pRouterTransportUdpUDPPacket_get_CACHE(void);
#define NetI2pRouterTransportUdpUDPPacket_CACHE true
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpUDPPacket, CACHE, jboolean)

inline jint NetI2pRouterTransportUdpUDPPacket_get_MIN_CACHE_SIZE(void);
#define NetI2pRouterTransportUdpUDPPacket_MIN_CACHE_SIZE 64
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpUDPPacket, MIN_CACHE_SIZE, jint)

inline jint NetI2pRouterTransportUdpUDPPacket_get_MAX_CACHE_SIZE(void);
#define NetI2pRouterTransportUdpUDPPacket_MAX_CACHE_SIZE 256
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpUDPPacket, MAX_CACHE_SIZE, jint)

inline jint NetI2pRouterTransportUdpUDPPacket_get_MAX_VALIDATE_SIZE(void);
#define NetI2pRouterTransportUdpUDPPacket_MAX_VALIDATE_SIZE 1572
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpUDPPacket, MAX_VALIDATE_SIZE, jint)

__attribute__((unused)) static void NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterTransportUdpUDPPacket *self, NetI2pRouterRouterContext *ctx);

__attribute__((unused)) static NetI2pRouterTransportUdpUDPPacket *new_NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTransportUdpUDPPacket *create_NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

__attribute__((unused)) static void NetI2pRouterTransportUdpUDPPacket_init__WithNetI2pRouterRouterContext_(NetI2pRouterTransportUdpUDPPacket *self, NetI2pRouterRouterContext *ctx);

__attribute__((unused)) static void NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(NetI2pRouterTransportUdpUDPPacket *self);

__attribute__((unused)) static IOSObjectArray *NetI2pRouterTransportUdpUDPPacket__Annotations$0(void);

@interface NetI2pRouterTransportUdpUDPPacket_PacketFactory : NSObject < NetI2pUtilTryCache_ObjectFactory >

- (instancetype)init;

- (NetI2pRouterTransportUdpUDPPacket *)newInstance OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportUdpUDPPacket_PacketFactory)

inline NetI2pRouterRouterContext *NetI2pRouterTransportUdpUDPPacket_PacketFactory_get_context(void);
inline NetI2pRouterRouterContext *NetI2pRouterTransportUdpUDPPacket_PacketFactory_set_context(NetI2pRouterRouterContext *value);
static NetI2pRouterRouterContext *NetI2pRouterTransportUdpUDPPacket_PacketFactory_context;
J2OBJC_STATIC_FIELD_OBJ(NetI2pRouterTransportUdpUDPPacket_PacketFactory, context, NetI2pRouterRouterContext *)

__attribute__((unused)) static void NetI2pRouterTransportUdpUDPPacket_PacketFactory_init(NetI2pRouterTransportUdpUDPPacket_PacketFactory *self);

__attribute__((unused)) static NetI2pRouterTransportUdpUDPPacket_PacketFactory *new_NetI2pRouterTransportUdpUDPPacket_PacketFactory_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTransportUdpUDPPacket_PacketFactory *create_NetI2pRouterTransportUdpUDPPacket_PacketFactory_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportUdpUDPPacket_PacketFactory)

J2OBJC_INITIALIZED_DEFN(NetI2pRouterTransportUdpUDPPacket)

@implementation NetI2pRouterTransportUdpUDPPacket

+ (jint)MAX_PACKET_SIZE {
  return NetI2pRouterTransportUdpUDPPacket_MAX_PACKET_SIZE;
}

+ (jint)IV_SIZE {
  return NetI2pRouterTransportUdpUDPPacket_IV_SIZE;
}

+ (jint)MAC_SIZE {
  return NetI2pRouterTransportUdpUDPPacket_MAC_SIZE;
}

+ (jint)PAYLOAD_TYPE_SESSION_REQUEST {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_REQUEST;
}

+ (jint)PAYLOAD_TYPE_SESSION_CREATED {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_CREATED;
}

+ (jint)PAYLOAD_TYPE_SESSION_CONFIRMED {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_CONFIRMED;
}

+ (jint)PAYLOAD_TYPE_RELAY_REQUEST {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_RELAY_REQUEST;
}

+ (jint)PAYLOAD_TYPE_RELAY_RESPONSE {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_RELAY_RESPONSE;
}

+ (jint)PAYLOAD_TYPE_RELAY_INTRO {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_RELAY_INTRO;
}

+ (jint)PAYLOAD_TYPE_DATA {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_DATA;
}

+ (jint)PAYLOAD_TYPE_TEST {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_TEST;
}

+ (jint)PAYLOAD_TYPE_SESSION_DESTROY {
  return NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_DESTROY;
}

+ (jint)MAX_PAYLOAD_TYPE {
  return NetI2pRouterTransportUdpUDPPacket_MAX_PAYLOAD_TYPE;
}

+ (jbyte)HEADER_FLAG_REKEY {
  return NetI2pRouterTransportUdpUDPPacket_HEADER_FLAG_REKEY;
}

+ (jbyte)HEADER_FLAG_EXTENDED_OPTIONS {
  return NetI2pRouterTransportUdpUDPPacket_HEADER_FLAG_EXTENDED_OPTIONS;
}

+ (jint)SESS_REQ_MIN_EXT_OPTIONS_LENGTH {
  return NetI2pRouterTransportUdpUDPPacket_SESS_REQ_MIN_EXT_OPTIONS_LENGTH;
}

+ (jint)SESS_REQ_EXT_FLAG_REQUEST_RELAY_TAG {
  return NetI2pRouterTransportUdpUDPPacket_SESS_REQ_EXT_FLAG_REQUEST_RELAY_TAG;
}

+ (jbyte)DATA_FLAG_EXPLICIT_ACK {
  return NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_EXPLICIT_ACK;
}

+ (jbyte)DATA_FLAG_ACK_BITFIELDS {
  return NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_ACK_BITFIELDS;
}

+ (jbyte)DATA_FLAG_ECN {
  return NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_ECN;
}

+ (jbyte)DATA_FLAG_WANT_ACKS {
  return NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_WANT_ACKS;
}

+ (jbyte)DATA_FLAG_WANT_REPLY {
  return NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_WANT_REPLY;
}

+ (jbyte)DATA_FLAG_EXTENDED {
  return NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_EXTENDED;
}

+ (jbyte)BITFIELD_CONTINUATION {
  return NetI2pRouterTransportUdpUDPPacket_BITFIELD_CONTINUATION;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (void)init__WithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTransportUdpUDPPacket_init__WithNetI2pRouterRouterContext_(self, ctx);
}

- (JavaNetDatagramPacket *)getPacket {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    return JreRetainedLocalValue(_packet_);
  }
}

- (jshort)getPriority {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    return JreLoadVolatileShort(&_priority_);
  }
}

- (jlong)getBegin {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    return JreLoadVolatileLong(&_initializeTime_);
  }
}

- (jlong)getLifetime {
  return [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now] - JreLoadVolatileLong(&_initializeTime_);
}

- (void)resetBegin {
  @synchronized(self) {
    JreAssignVolatileLong(&_initializeTime_, [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now]);
  }
}

- (void)markTypeWithInt:(jint)type {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    JreAssignVolatileInt(&_markedType_, type);
  }
}

- (jint)getMarkedType {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    return JreLoadVolatileInt(&_markedType_);
  }
}

- (jint)getMessageType {
  return _messageType_;
}

- (void)setMessageTypeWithInt:(jint)type {
  _messageType_ = type;
}

- (jint)getFragmentCount {
  return _fragmentCount_;
}

- (void)setFragmentCountWithInt:(jint)count {
  _fragmentCount_ = count;
}

- (NetI2pRouterTransportUdpRemoteHostId *)getRemoteHost {
  @synchronized(self) {
    if (_remoteHost_ == nil) {
      JavaNetInetAddress *addr = [((JavaNetDatagramPacket *) nil_chk(_packet_)) getAddress];
      IOSByteArray *ip = [((JavaNetInetAddress *) nil_chk(addr)) getAddress];
      jint port = [_packet_ getPort];
      JreStrongAssignAndConsume(&_remoteHost_, new_NetI2pRouterTransportUdpRemoteHostId_initWithByteArray_withInt_(ip, port));
    }
    return JreRetainedLocalValue(_remoteHost_);
  }
}

- (jboolean)validateWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)macKey {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    jboolean eq = false;
    JavaUtilArrays_fillWithByteArray_withByte_(_validateBuf_, (jbyte) 0);
    jint payloadLength = [((JavaNetDatagramPacket *) nil_chk(_packet_)) getLength] - NetI2pRouterTransportUdpUDPPacket_MAC_SIZE - NetI2pRouterTransportUdpUDPPacket_IV_SIZE;
    if (payloadLength > 0) {
      jint off = 0;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_data_, [_packet_ getOffset] + NetI2pRouterTransportUdpUDPPacket_MAC_SIZE + NetI2pRouterTransportUdpUDPPacket_IV_SIZE, _validateBuf_, off, payloadLength);
      off += payloadLength;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_data_, [_packet_ getOffset] + NetI2pRouterTransportUdpUDPPacket_MAC_SIZE, _validateBuf_, off, NetI2pRouterTransportUdpUDPPacket_IV_SIZE);
      off += NetI2pRouterTransportUdpUDPPacket_IV_SIZE;
      NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(_validateBuf_, off, 2, payloadLength);
      off += 2;
      eq = [((NetI2pCryptoHMACGenerator *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) hmac])) verifyWithNetI2pDataSessionKey:macKey withByteArray:_validateBuf_ withInt:0 withInt:off withByteArray:_data_ withInt:[_packet_ getOffset] withInt:NetI2pRouterTransportUdpUDPPacket_MAC_SIZE];
      if (!eq) {
        NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:NetI2pRouterTransportUdpUDPPacket_class_()];
        if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_INFO]) {
          IOSByteArray *calc = [IOSByteArray arrayWithLength:32];
          [((NetI2pCryptoHMACGenerator *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) hmac])) calculateWithNetI2pDataSessionKey:macKey withByteArray:_validateBuf_ withInt:0 withInt:off withByteArray:calc withInt:0];
          JavaLangStringBuilder *str = create_JavaLangStringBuilder_initWithInt_(512);
          [str appendWithNSString:@"Bad HMAC:\n\t"];
          [((JavaLangStringBuilder *) nil_chk([str appendWithInt:[_packet_ getLength]])) appendWithNSString:@" byte pkt, "];
          [((JavaLangStringBuilder *) nil_chk([str appendWithInt:payloadLength])) appendWithNSString:@" byte payload"];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tFrom: "])) appendWithNSString:[((NetI2pRouterTransportUdpRemoteHostId *) nil_chk([self getRemoteHost])) description]];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tIV:   "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(_validateBuf_, payloadLength, NetI2pRouterTransportUdpUDPPacket_IV_SIZE)];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tIV2:  "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(_data_, NetI2pRouterTransportUdpUDPPacket_MAC_SIZE, NetI2pRouterTransportUdpUDPPacket_IV_SIZE)];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tGiven Len: "])) appendWithLong:NetI2pDataDataHelper_fromLongWithByteArray_withInt_withInt_(_validateBuf_, payloadLength + NetI2pRouterTransportUdpUDPPacket_IV_SIZE, 2)];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tCalc HMAC: "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(calc, 0, NetI2pRouterTransportUdpUDPPacket_MAC_SIZE)];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tRead HMAC: "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(_data_, [_packet_ getOffset], NetI2pRouterTransportUdpUDPPacket_MAC_SIZE)];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tUsing key: "])) appendWithNSString:[((NetI2pDataSessionKey *) nil_chk(macKey)) toBase64]];
          if (NetI2pDataDataHelper_eqWithByteArray_withInt_withByteArray_withInt_withInt_([macKey getData], 0, [((NetI2pDataHash *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) routerHash])) getData], 0, 32)) [str appendWithNSString:@" (Intro)"];
          else [str appendWithNSString:@" (Session)"];
          [((JavaLangStringBuilder *) nil_chk([str appendWithNSString:@"\n\tRaw:       "])) appendWithNSString:NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(_data_, [_packet_ getOffset], [_packet_ getLength])];
          [log infoWithNSString:[str description] withJavaLangThrowable:create_JavaLangException_init()];
        }
      }
    }
    else {
      NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) logManager])) getLogWithIOSClass:NetI2pRouterTransportUdpUDPPacket_class_()];
      if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:JreStrcat("$I$@C$", @"Payload length is ", payloadLength, @", too short! From: ", [self getRemoteHost], 0x000a, NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_(_data_, [_packet_ getOffset], [_packet_ getLength]))];
    }
    _validateCount_++;
    return eq;
  }
}

- (void)decryptWithNetI2pDataSessionKey:(NetI2pDataSessionKey *)cipherKey {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(_data_, NetI2pRouterTransportUdpUDPPacket_MAC_SIZE, _ivBuf_, 0, NetI2pRouterTransportUdpUDPPacket_IV_SIZE);
    jint len = [((JavaNetDatagramPacket *) nil_chk(_packet_)) getLength];
    jint rem = len & (jint) 0x0f;
    if (rem != 0) len -= rem;
    jint off = [_packet_ getOffset] + NetI2pRouterTransportUdpUDPPacket_MAC_SIZE + NetI2pRouterTransportUdpUDPPacket_IV_SIZE;
    [((NetI2pCryptoAESEngine *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) aes])) decryptWithByteArray:_data_ withInt:off withByteArray:_data_ withInt:off withNetI2pDataSessionKey:cipherKey withByteArray:_ivBuf_ withInt:len - NetI2pRouterTransportUdpUDPPacket_MAC_SIZE - NetI2pRouterTransportUdpUDPPacket_IV_SIZE];
  }
}

- (void)setEnqueueTimeWithLong:(jlong)now {
  _enqueueTime_ = now;
}

- (void)received {
  @synchronized(self) {
    _receivedTime_ = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now];
  }
}

- (jlong)getEnqueueTime {
  return _enqueueTime_;
}

- (jlong)getTimeSinceReceived {
  @synchronized(self) {
    return (_receivedTime_ > 0 ? [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now] - _receivedTime_ : 0);
  }
}

- (void)requestInboundBandwidth {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    JreStrongAssign(&_bandwidthRequest_, [((NetI2pRouterTransportFIFOBandwidthLimiter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) bandwidthLimiter])) requestInboundWithInt:[((JavaNetDatagramPacket *) nil_chk(_packet_)) getLength] withNSString:@"UDP receiver"]);
  }
}

- (void)requestOutboundBandwidth {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    JreStrongAssign(&_bandwidthRequest_, [((NetI2pRouterTransportFIFOBandwidthLimiter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) bandwidthLimiter])) requestOutboundWithInt:[((JavaNetDatagramPacket *) nil_chk(_packet_)) getLength] withInt:0 withNSString:@"UDP sender"]);
  }
}

- (id<NetI2pRouterTransportFIFOBandwidthLimiter_Request>)getBandwidthRequest {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    return JreRetainedLocalValue(_bandwidthRequest_);
  }
}

- (NSString *)description {
  NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(256);
  [buf appendWithInt:[((JavaNetDatagramPacket *) nil_chk(_packet_)) getLength]];
  [buf appendWithNSString:@" byte pkt with "];
  [buf appendWithNSString:NetI2pUtilAddresses_toStringWithByteArray_withInt_([((JavaNetInetAddress *) nil_chk([_packet_ getAddress])) getAddress], [_packet_ getPort])];
  if (_messageType_ >= 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" msgType="])) appendWithInt:_messageType_];
  if (JreLoadVolatileInt(&_markedType_) >= 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" markType="])) appendWithInt:JreLoadVolatileInt(&_markedType_)];
  if (_fragmentCount_ > 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" fragCount="])) appendWithInt:_fragmentCount_];
  if (_enqueueTime_ > 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" sinceEnqueued="])) appendWithLong:[((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now] - _enqueueTime_];
  if (_receivedTime_ > 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@" sinceReceived="])) appendWithLong:[((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) clock])) now] - _receivedTime_];
  return [buf description];
}

+ (NetI2pRouterTransportUdpUDPPacket *)acquireWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                                                withBoolean:(jboolean)inbound {
  return NetI2pRouterTransportUdpUDPPacket_acquireWithNetI2pRouterRouterContext_withBoolean_(ctx, inbound);
}

- (void)drop {
  [self release__];
}

- (void)release__ {
  @synchronized(self) {
    NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
    _released_ = true;
    if (_bandwidthRequest_ != nil) {
      @synchronized(_bandwidthRequest_) {
        if ([_bandwidthRequest_ getPendingRequested] > 0) [((id<NetI2pRouterTransportFIFOBandwidthLimiter_Request>) nil_chk(_bandwidthRequest_)) abort];
      }
      JreStrongAssign(&_bandwidthRequest_, nil);
    }
    [((NetI2pUtilTryCache *) nil_chk(NetI2pRouterTransportUdpUDPPacket__packetCache)) release__WithId:self];
  }
}

+ (void)clearCache {
  NetI2pRouterTransportUdpUDPPacket_clearCache();
}

- (void)verifyNotReleased {
  NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(self);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_packet_);
  RELEASE_(_data_);
  RELEASE_(_validateBuf_);
  RELEASE_(_ivBuf_);
  RELEASE_(_remoteHost_);
  RELEASE_(_bandwidthRequest_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x22, 1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaNetDatagramPacket;", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "S", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 3, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportUdpRemoteHostId;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x21, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 8, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, 11, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportFIFOBandwidthLimiter_Request;", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 12, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportUdpUDPPacket;", 0x9, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 15, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x22, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(init__WithNetI2pRouterRouterContext:);
  methods[2].selector = @selector(getPacket);
  methods[3].selector = @selector(getPriority);
  methods[4].selector = @selector(getBegin);
  methods[5].selector = @selector(getLifetime);
  methods[6].selector = @selector(resetBegin);
  methods[7].selector = @selector(markTypeWithInt:);
  methods[8].selector = @selector(getMarkedType);
  methods[9].selector = @selector(getMessageType);
  methods[10].selector = @selector(setMessageTypeWithInt:);
  methods[11].selector = @selector(getFragmentCount);
  methods[12].selector = @selector(setFragmentCountWithInt:);
  methods[13].selector = @selector(getRemoteHost);
  methods[14].selector = @selector(validateWithNetI2pDataSessionKey:);
  methods[15].selector = @selector(decryptWithNetI2pDataSessionKey:);
  methods[16].selector = @selector(setEnqueueTimeWithLong:);
  methods[17].selector = @selector(received);
  methods[18].selector = @selector(getEnqueueTime);
  methods[19].selector = @selector(getTimeSinceReceived);
  methods[20].selector = @selector(requestInboundBandwidth);
  methods[21].selector = @selector(requestOutboundBandwidth);
  methods[22].selector = @selector(getBandwidthRequest);
  methods[23].selector = @selector(description);
  methods[24].selector = @selector(acquireWithNetI2pRouterRouterContext:withBoolean:);
  methods[25].selector = @selector(drop);
  methods[26].selector = @selector(release__);
  methods[27].selector = @selector(clearCache);
  methods[28].selector = @selector(verifyNotReleased);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_packet_", "LJavaNetDatagramPacket;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_priority_", "S", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_initializeTime_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_data_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_validateBuf_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_ivBuf_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_markedType_", "I", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "_remoteHost_", "LNetI2pRouterTransportUdpRemoteHostId;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_released_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_enqueueTime_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_receivedTime_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_validateCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_bandwidthRequest_", "LNetI2pRouterTransportFIFOBandwidthLimiter_Request;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_packetCache", "LNetI2pUtilTryCache;", .constantValue.asLong = 0, 0x1a, -1, 16, 17, -1 },
    { "_packetFactory", "LNetI2pUtilTryCache_ObjectFactory;", .constantValue.asLong = 0, 0x1a, -1, 18, 19, -1 },
    { "CACHE", "Z", .constantValue.asBOOL = NetI2pRouterTransportUdpUDPPacket_CACHE, 0x1a, -1, -1, -1, -1 },
    { "MIN_CACHE_SIZE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_MIN_CACHE_SIZE, 0x1a, -1, -1, -1, -1 },
    { "MAX_CACHE_SIZE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_MAX_CACHE_SIZE, 0x1a, -1, -1, -1, -1 },
    { "MAX_PACKET_SIZE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_MAX_PACKET_SIZE, 0x18, -1, -1, -1, -1 },
    { "IV_SIZE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_IV_SIZE, 0x19, -1, -1, -1, -1 },
    { "MAC_SIZE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_MAC_SIZE, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_SESSION_REQUEST", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_REQUEST, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_SESSION_CREATED", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_CREATED, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_SESSION_CONFIRMED", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_CONFIRMED, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_RELAY_REQUEST", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_RELAY_REQUEST, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_RELAY_RESPONSE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_RELAY_RESPONSE, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_RELAY_INTRO", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_RELAY_INTRO, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_DATA", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_DATA, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_TEST", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_TEST, 0x19, -1, -1, -1, -1 },
    { "PAYLOAD_TYPE_SESSION_DESTROY", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_PAYLOAD_TYPE_SESSION_DESTROY, 0x19, -1, -1, -1, -1 },
    { "MAX_PAYLOAD_TYPE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_MAX_PAYLOAD_TYPE, 0x19, -1, -1, -1, -1 },
    { "HEADER_FLAG_REKEY", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_HEADER_FLAG_REKEY, 0x19, -1, -1, -1, -1 },
    { "HEADER_FLAG_EXTENDED_OPTIONS", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_HEADER_FLAG_EXTENDED_OPTIONS, 0x19, -1, -1, -1, -1 },
    { "SESS_REQ_MIN_EXT_OPTIONS_LENGTH", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_SESS_REQ_MIN_EXT_OPTIONS_LENGTH, 0x19, -1, -1, -1, -1 },
    { "SESS_REQ_EXT_FLAG_REQUEST_RELAY_TAG", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_SESS_REQ_EXT_FLAG_REQUEST_RELAY_TAG, 0x19, -1, -1, -1, -1 },
    { "DATA_FLAG_EXPLICIT_ACK", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_EXPLICIT_ACK, 0x19, -1, -1, -1, -1 },
    { "DATA_FLAG_ACK_BITFIELDS", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_ACK_BITFIELDS, 0x19, -1, -1, -1, -1 },
    { "DATA_FLAG_ECN", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_ECN, 0x19, -1, -1, -1, -1 },
    { "DATA_FLAG_WANT_ACKS", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_WANT_ACKS, 0x19, -1, -1, -1, -1 },
    { "DATA_FLAG_WANT_REPLY", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_WANT_REPLY, 0x19, -1, -1, -1, -1 },
    { "DATA_FLAG_EXTENDED", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_DATA_FLAG_EXTENDED, 0x19, -1, -1, -1, -1 },
    { "BITFIELD_CONTINUATION", "B", .constantValue.asChar = NetI2pRouterTransportUdpUDPPacket_BITFIELD_CONTINUATION, 0x19, -1, -1, -1, -1 },
    { "MAX_VALIDATE_SIZE", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPPacket_MAX_VALIDATE_SIZE, 0x1a, -1, -1, -1, -1 },
    { "_messageType_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_fragmentCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "init", "markType", "I", "setMessageType", "setFragmentCount", "validate", "LNetI2pDataSessionKey;", "decrypt", "setEnqueueTime", "J", (void *)&NetI2pRouterTransportUdpUDPPacket__Annotations$0, "toString", "acquire", "LNetI2pRouterRouterContext;Z", "release", &NetI2pRouterTransportUdpUDPPacket__packetCache, "Lnet/i2p/util/TryCache<Lnet/i2p/router/transport/udp/UDPPacket;>;", &NetI2pRouterTransportUdpUDPPacket__packetFactory, "Lnet/i2p/util/TryCache$ObjectFactory<Lnet/i2p/router/transport/udp/UDPPacket;>;", "LNetI2pRouterTransportUdpUDPPacket_PacketFactory;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportUdpUDPPacket = { "UDPPacket", "net.i2p.router.transport.udp", ptrTable, methods, fields, 7, 0x0, 29, 46, -1, 20, -1, -1, -1 };
  return &_NetI2pRouterTransportUdpUDPPacket;
}

+ (void)initialize {
  if (self == [NetI2pRouterTransportUdpUDPPacket class]) {
    {
      {
        jlong maxMemory = NetI2pUtilSystemVersion_getMaxMemory();
        jint csize = (jint) JavaLangMath_maxWithLong_withLong_(NetI2pRouterTransportUdpUDPPacket_MIN_CACHE_SIZE, JavaLangMath_minWithLong_withLong_(NetI2pRouterTransportUdpUDPPacket_MAX_CACHE_SIZE, maxMemory / (1024 * 1024)));
        JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPPacket__packetFactory, new_NetI2pRouterTransportUdpUDPPacket_PacketFactory_init());
        JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPPacket__packetCache, new_NetI2pUtilTryCache_initWithNetI2pUtilTryCache_ObjectFactory_withInt_(NetI2pRouterTransportUdpUDPPacket__packetFactory, csize));
      }
    }
    J2OBJC_SET_INITIALIZED(NetI2pRouterTransportUdpUDPPacket)
  }
}

@end

void NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterTransportUdpUDPPacket *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->_data_, [IOSByteArray newArrayWithLength:NetI2pRouterTransportUdpUDPPacket_MAX_PACKET_SIZE]);
  JreStrongAssignAndConsume(&self->_packet_, new_JavaNetDatagramPacket_initWithByteArray_withInt_(self->_data_, NetI2pRouterTransportUdpUDPPacket_MAX_PACKET_SIZE));
  JreStrongAssignAndConsume(&self->_validateBuf_, [IOSByteArray newArrayWithLength:NetI2pRouterTransportUdpUDPPacket_MAX_VALIDATE_SIZE]);
  JreStrongAssignAndConsume(&self->_ivBuf_, [IOSByteArray newArrayWithLength:NetI2pRouterTransportUdpUDPPacket_IV_SIZE]);
  NetI2pRouterTransportUdpUDPPacket_init__WithNetI2pRouterRouterContext_(self, ctx);
}

NetI2pRouterTransportUdpUDPPacket *new_NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpUDPPacket, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterTransportUdpUDPPacket *create_NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpUDPPacket, initWithNetI2pRouterRouterContext_, ctx)
}

void NetI2pRouterTransportUdpUDPPacket_init__WithNetI2pRouterRouterContext_(NetI2pRouterTransportUdpUDPPacket *self, NetI2pRouterRouterContext *ctx) {
  @synchronized(self) {
    JreStrongAssign(&self->_context_, ctx);
    JavaUtilArrays_fillWithByteArray_withByte_(self->_data_, (jbyte) 0);
    [((JavaNetDatagramPacket *) nil_chk(self->_packet_)) setDataWithByteArray:self->_data_];
    JreAssignVolatileLong(&self->_initializeTime_, [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now]);
    JreAssignVolatileInt(&self->_markedType_, -1);
    self->_validateCount_ = 0;
    JreStrongAssign(&self->_remoteHost_, nil);
    self->_released_ = false;
    self->_messageType_ = -1;
    self->_enqueueTime_ = 0;
    self->_receivedTime_ = 0;
    self->_fragmentCount_ = 0;
  }
}

NetI2pRouterTransportUdpUDPPacket *NetI2pRouterTransportUdpUDPPacket_acquireWithNetI2pRouterRouterContext_withBoolean_(NetI2pRouterRouterContext *ctx, jboolean inbound) {
  NetI2pRouterTransportUdpUDPPacket_initialize();
  NetI2pRouterTransportUdpUDPPacket *rv;
  {
    JreStrongAssign(JreLoadStaticRef(NetI2pRouterTransportUdpUDPPacket_PacketFactory, context), ctx);
    rv = [((NetI2pUtilTryCache *) nil_chk(NetI2pRouterTransportUdpUDPPacket__packetCache)) acquire];
    NetI2pRouterTransportUdpUDPPacket_init__WithNetI2pRouterRouterContext_(nil_chk(rv), ctx);
  }
  return rv;
}

void NetI2pRouterTransportUdpUDPPacket_clearCache() {
  NetI2pRouterTransportUdpUDPPacket_initialize();
  {
    JreStrongAssign(JreLoadStaticRef(NetI2pRouterTransportUdpUDPPacket_PacketFactory, context), nil);
    [((NetI2pUtilTryCache *) nil_chk(NetI2pRouterTransportUdpUDPPacket__packetCache)) clear];
  }
}

void NetI2pRouterTransportUdpUDPPacket_verifyNotReleased(NetI2pRouterTransportUdpUDPPacket *self) {
  @synchronized(self) {
    if (self->_released_) {
      NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) logManager])) getLogWithIOSClass:NetI2pRouterTransportUdpUDPPacket_class_()];
      [((NetI2pUtilLog *) nil_chk(log)) errorWithNSString:@"Already released" withJavaLangThrowable:create_JavaLangException_init()];
    }
  }
}

IOSObjectArray *NetI2pRouterTransportUdpUDPPacket__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportUdpUDPPacket)

@implementation NetI2pRouterTransportUdpUDPPacket_PacketFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTransportUdpUDPPacket_PacketFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NetI2pRouterTransportUdpUDPPacket *)newInstance {
  return create_NetI2pRouterTransportUdpUDPPacket_initWithNetI2pRouterRouterContext_(NetI2pRouterTransportUdpUDPPacket_PacketFactory_context);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pRouterTransportUdpUDPPacket;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(newInstance);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "context", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x8, -1, 0, -1, -1 },
  };
  static const void *ptrTable[] = { &NetI2pRouterTransportUdpUDPPacket_PacketFactory_context, "LNetI2pRouterTransportUdpUDPPacket;", "Ljava/lang/Object;Lnet/i2p/util/TryCache$ObjectFactory<Lnet/i2p/router/transport/udp/UDPPacket;>;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportUdpUDPPacket_PacketFactory = { "PacketFactory", "net.i2p.router.transport.udp", ptrTable, methods, fields, 7, 0xa, 2, 1, 1, -1, -1, 2, -1 };
  return &_NetI2pRouterTransportUdpUDPPacket_PacketFactory;
}

@end

void NetI2pRouterTransportUdpUDPPacket_PacketFactory_init(NetI2pRouterTransportUdpUDPPacket_PacketFactory *self) {
  NSObject_init(self);
}

NetI2pRouterTransportUdpUDPPacket_PacketFactory *new_NetI2pRouterTransportUdpUDPPacket_PacketFactory_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpUDPPacket_PacketFactory, init)
}

NetI2pRouterTransportUdpUDPPacket_PacketFactory *create_NetI2pRouterTransportUdpUDPPacket_PacketFactory_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpUDPPacket_PacketFactory, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportUdpUDPPacket_PacketFactory)