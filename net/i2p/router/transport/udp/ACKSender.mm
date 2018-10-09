//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/ACKSender.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Thread.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Set.h"
#include "java/util/concurrent/BlockingQueue.h"
#include "java/util/concurrent/LinkedBlockingQueue.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/transport/udp/ACKSender.h"
#include "net/i2p/router/transport/udp/PacketBuilder.h"
#include "net/i2p/router/transport/udp/PeerState.h"
#include "net/i2p/router/transport/udp/UDPPacket.h"
#include "net/i2p/router/transport/udp/UDPTransport.h"
#include "net/i2p/stat/StatManager.h"
#include "net/i2p/util/Clock.h"
#include "net/i2p/util/I2PThread.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterTransportUdpACKSender () {
 @public
  NetI2pRouterRouterContext *_context_;
  NetI2pUtilLog *_log_;
  NetI2pRouterTransportUdpUDPTransport *_transport_;
  NetI2pRouterTransportUdpPacketBuilder *_builder_;
  id<JavaUtilConcurrentBlockingQueue> _peersToACK_;
  volatile_jboolean _alive_;
}

+ (jlong)ackFrequencyWithLong:(jlong)timeSinceACK
                     withLong:(jlong)rtt;

- (void)run2;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpACKSender, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpACKSender, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpACKSender, _transport_, NetI2pRouterTransportUdpUDPTransport *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpACKSender, _builder_, NetI2pRouterTransportUdpPacketBuilder *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpACKSender, _peersToACK_, id<JavaUtilConcurrentBlockingQueue>)

inline jlong NetI2pRouterTransportUdpACKSender_get_POISON_PS(void);
#define NetI2pRouterTransportUdpACKSender_POISON_PS -9999999999LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportUdpACKSender, POISON_PS, jlong)

__attribute__((unused)) static jlong NetI2pRouterTransportUdpACKSender_ackFrequencyWithLong_withLong_(jlong timeSinceACK, jlong rtt);

__attribute__((unused)) static void NetI2pRouterTransportUdpACKSender_run2(NetI2pRouterTransportUdpACKSender *self);

@implementation NetI2pRouterTransportUdpACKSender

+ (jint)ACK_FREQUENCY {
  return NetI2pRouterTransportUdpACKSender_ACK_FREQUENCY;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
         withNetI2pRouterTransportUdpUDPTransport:(NetI2pRouterTransportUdpUDPTransport *)transport {
  NetI2pRouterTransportUdpACKSender_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(self, ctx, transport);
  return self;
}

- (void)ackPeerWithNetI2pRouterTransportUdpPeerState:(NetI2pRouterTransportUdpPeerState *)peer {
  if (JreLoadVolatileBoolean(&_alive_)) [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_peersToACK_)) offerWithId:peer];
}

- (void)startup {
  @synchronized(self) {
    JreAssignVolatileBoolean(&_alive_, true);
    [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_peersToACK_)) clear];
    NetI2pUtilI2PThread *t = create_NetI2pUtilI2PThread_initWithJavaLangRunnable_withNSString_withBoolean_(self, @"UDP ACK sender", true);
    [t start];
  }
}

- (void)shutdown {
  @synchronized(self) {
    JreAssignVolatileBoolean(&_alive_, false);
    NetI2pRouterTransportUdpPeerState *poison = create_NetI2pRouterTransportUdpPeerState_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_withByteArray_withInt_withNetI2pDataHash_withBoolean_(_context_, _transport_, [IOSByteArray arrayWithLength:4], 0, nil, false);
    [poison setTheyRelayToUsAsWithLong:NetI2pRouterTransportUdpACKSender_POISON_PS];
    [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(_peersToACK_)) offerWithId:poison];
    for (jint i = 1; i <= 5 && ![_peersToACK_ isEmpty]; i++) {
      @try {
        JavaLangThread_sleepWithLong_(i * 50);
      }
      @catch (JavaLangInterruptedException *ie) {
      }
    }
    [_peersToACK_ clear];
  }
}

+ (jlong)ackFrequencyWithLong:(jlong)timeSinceACK
                     withLong:(jlong)rtt {
  return NetI2pRouterTransportUdpACKSender_ackFrequencyWithLong_withLong_(timeSinceACK, rtt);
}

- (void)run {
  @try {
    NetI2pRouterTransportUdpACKSender_run2(self);
  }
  @finally {
    if (JreLoadVolatileBoolean(&_alive_)) {
      JreAssignVolatileBoolean(&_alive_, false);
      [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"ACK Sender died"];
    }
  }
}

- (void)run2 {
  NetI2pRouterTransportUdpACKSender_run2(self);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  RELEASE_(_transport_);
  RELEASE_(_builder_);
  RELEASE_(_peersToACK_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0xa, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:withNetI2pRouterTransportUdpUDPTransport:);
  methods[1].selector = @selector(ackPeerWithNetI2pRouterTransportUdpPeerState:);
  methods[2].selector = @selector(startup);
  methods[3].selector = @selector(shutdown);
  methods[4].selector = @selector(ackFrequencyWithLong:withLong:);
  methods[5].selector = @selector(run);
  methods[6].selector = @selector(run2);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_transport_", "LNetI2pRouterTransportUdpUDPTransport;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_builder_", "LNetI2pRouterTransportUdpPacketBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_peersToACK_", "LJavaUtilConcurrentBlockingQueue;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
    { "_alive_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "POISON_PS", "J", .constantValue.asLong = NetI2pRouterTransportUdpACKSender_POISON_PS, 0x1a, -1, -1, -1, -1 },
    { "ACK_FREQUENCY", "I", .constantValue.asInt = NetI2pRouterTransportUdpACKSender_ACK_FREQUENCY, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;LNetI2pRouterTransportUdpUDPTransport;", "ackPeer", "LNetI2pRouterTransportUdpPeerState;", "ackFrequency", "JJ", "Ljava/util/concurrent/BlockingQueue<Lnet/i2p/router/transport/udp/PeerState;>;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportUdpACKSender = { "ACKSender", "net.i2p.router.transport.udp", ptrTable, methods, fields, 7, 0x0, 7, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportUdpACKSender;
}

@end

void NetI2pRouterTransportUdpACKSender_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(NetI2pRouterTransportUdpACKSender *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:NetI2pRouterTransportUdpACKSender_class_()]);
  JreStrongAssign(&self->_transport_, transport);
  JreStrongAssignAndConsume(&self->_peersToACK_, new_JavaUtilConcurrentLinkedBlockingQueue_init());
  JreStrongAssignAndConsume(&self->_builder_, new_NetI2pRouterTransportUdpPacketBuilder_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(self->_context_, transport));
  JreAssignVolatileBoolean(&self->_alive_, true);
  [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) createRateStatWithNSString:@"udp.sendACKCount" withNSString:@"how many ack messages were sent to a peer" withNSString:@"udp" withLongArray:JreLoadStatic(NetI2pRouterTransportUdpUDPTransport, RATES)];
  [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) createRateStatWithNSString:@"udp.ackFrequency" withNSString:@"how long ago did we send an ACK to this peer?" withNSString:@"udp" withLongArray:JreLoadStatic(NetI2pRouterTransportUdpUDPTransport, RATES)];
  [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) createRateStatWithNSString:@"udp.sendACKRemaining" withNSString:@"when we ack a peer, how many peers are left waiting to ack?" withNSString:@"udp" withLongArray:JreLoadStatic(NetI2pRouterTransportUdpUDPTransport, RATES)];
  [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) createRateStatWithNSString:@"udp.abortACK" withNSString:@"How often do we schedule up an ACK send only to find it had already been sent (through piggyback)?" withNSString:@"udp" withLongArray:JreLoadStatic(NetI2pRouterTransportUdpUDPTransport, RATES)];
}

NetI2pRouterTransportUdpACKSender *new_NetI2pRouterTransportUdpACKSender_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpACKSender, initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_, ctx, transport)
}

NetI2pRouterTransportUdpACKSender *create_NetI2pRouterTransportUdpACKSender_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_(NetI2pRouterRouterContext *ctx, NetI2pRouterTransportUdpUDPTransport *transport) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpACKSender, initWithNetI2pRouterRouterContext_withNetI2pRouterTransportUdpUDPTransport_, ctx, transport)
}

jlong NetI2pRouterTransportUdpACKSender_ackFrequencyWithLong_withLong_(jlong timeSinceACK, jlong rtt) {
  NetI2pRouterTransportUdpACKSender_initialize();
  if (timeSinceACK < 2 * 1000) return JavaLangMath_maxWithLong_withLong_(rtt / 2, NetI2pRouterTransportUdpACKSender_ACK_FREQUENCY);
  else return NetI2pRouterTransportUdpACKSender_ACK_FREQUENCY;
}

void NetI2pRouterTransportUdpACKSender_run2(NetI2pRouterTransportUdpACKSender *self) {
  id<JavaUtilSet> notYet = create_JavaUtilHashSet_init();
  while (JreLoadVolatileBoolean(&self->_alive_)) {
    NetI2pRouterTransportUdpPeerState *peer = nil;
    jlong now = 0;
    jlong remaining = -1;
    jlong wanted = 0;
    while (JreLoadVolatileBoolean(&self->_alive_)) {
      NetI2pRouterTransportUdpPeerState *cur = nil;
      @try {
        if ([notYet isEmpty]) cur = [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(self->_peersToACK_)) take];
        else cur = [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(self->_peersToACK_)) poll];
      }
      @catch (JavaLangInterruptedException *ie) {
      }
      if (cur != nil) {
        if ([cur getTheyRelayToUsAs] == NetI2pRouterTransportUdpACKSender_POISON_PS) return;
        wanted = [cur getWantedACKSendSince];
        now = [((NetI2pUtilClock *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) clock])) now];
        jlong delta = wanted + NetI2pRouterTransportUdpACKSender_ackFrequencyWithLong_withLong_(now - [cur getLastACKSend], [cur getRTT]) - now;
        if (wanted <= 0) {
          [notYet removeWithId:cur];
        }
        else if ((delta <= 0) || ([cur unsentACKThresholdReached])) {
          peer = cur;
          [notYet removeWithId:cur];
          @try {
            [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(self->_peersToACK_)) addAllWithJavaUtilCollection:notYet];
          }
          @catch (JavaUtilNoSuchElementException *nsee) {
          }
          [notYet clear];
          break;
        }
        else {
          jboolean added = [notYet addWithId:cur];
          if (added && [((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [((NetI2pUtilLog *) nil_chk(self->_log_)) debugWithNSString:JreStrcat("$J$@", @"Pending ACK (delta = ", delta, @") for ", cur)];
        }
      }
      else if (![notYet isEmpty]) {
        @try {
          [((id<JavaUtilConcurrentBlockingQueue>) nil_chk(self->_peersToACK_)) addAllWithJavaUtilCollection:notYet];
        }
        @catch (JavaLangRuntimeException *e) {
        }
        if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [self->_log_ debugWithNSString:JreStrcat("$I", @"sleeping, pending size = ", [notYet size])];
        [notYet clear];
        @try {
          JavaLangThread_sleepWithLong_(5 + (NetI2pRouterTransportUdpACKSender_ACK_FREQUENCY / 3));
        }
        @catch (JavaLangInterruptedException *ie) {
        }
      }
    }
    if (peer != nil) {
      jlong lastSend = [peer getLastACKSend];
      id<JavaUtilList> ackBitfields = [peer retrieveACKBitfieldsWithBoolean:false];
      if (wanted < 0) {
        if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [self->_log_ warnWithNSString:JreStrcat("$J$@$@", @"why are we acking something they dont want?  remaining=", remaining, @", peer=", peer, @", bitfields=", ackBitfields)];
        continue;
      }
      if (![((id<JavaUtilList>) nil_chk(ackBitfields)) isEmpty]) {
        [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) addRateDataWithNSString:@"udp.sendACKCount" withLong:[ackBitfields size]];
        if (remaining > 0) [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) addRateDataWithNSString:@"udp.sendACKRemaining" withLong:remaining];
        if (lastSend < 0) lastSend = now - 1;
        [((NetI2pStatStatManager *) nil_chk([self->_context_ statManager])) addRateDataWithNSString:@"udp.ackFrequency" withLong:now - lastSend withLong:now - wanted];
        NetI2pRouterTransportUdpUDPPacket *ack = [((NetI2pRouterTransportUdpPacketBuilder *) nil_chk(self->_builder_)) buildACKWithNetI2pRouterTransportUdpPeerState:peer withJavaUtilList:ackBitfields];
        [((NetI2pRouterTransportUdpUDPPacket *) nil_chk(ack)) markTypeWithInt:1];
        [ack setFragmentCountWithInt:-1];
        [ack setMessageTypeWithInt:NetI2pRouterTransportUdpPacketBuilder_TYPE_ACK];
        if ([((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_INFO]) [self->_log_ infoWithNSString:JreStrcat("$@$@", @"Sending ", ackBitfields, @" to ", peer)];
        [((NetI2pRouterTransportUdpUDPTransport *) nil_chk(self->_transport_)) sendWithNetI2pRouterTransportUdpUDPPacket:ack];
        if ((wanted > 0) && (wanted <= [peer getWantedACKSendSince])) {
          if ([self->_log_ shouldLogWithInt:NetI2pUtilLog_WARN]) [self->_log_ warnWithNSString:JreStrcat("$@", @"Rerequesting ACK for peer ", peer)];
          [self ackPeerWithNetI2pRouterTransportUdpPeerState:peer];
        }
      }
      else {
        [((NetI2pStatStatManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) statManager])) addRateDataWithNSString:@"udp.abortACK" withLong:1];
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportUdpACKSender)