//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/udp/UDPAddress.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/net/InetAddress.h"
#include "java/net/UnknownHostException.h"
#include "java/util/Map.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/SessionKey.h"
#include "net/i2p/data/router/RouterAddress.h"
#include "net/i2p/router/transport/TransportUtil.h"
#include "net/i2p/router/transport/udp/MTU.h"
#include "net/i2p/router/transport/udp/UDPAddress.h"
#include "net/i2p/util/Addresses.h"
#include "net/i2p/util/LHMCache.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterTransportUdpUDPAddress () {
 @public
  NSString *_host_;
  JavaNetInetAddress *_hostAddress_;
  jint _port_;
  IOSByteArray *_introKey_;
  IOSObjectArray *_introHosts_;
  IOSObjectArray *_introAddresses_;
  IOSIntArray *_introPorts_;
  IOSObjectArray *_introKeys_;
  IOSLongArray *_introTags_;
  IOSLongArray *_introExps_;
  jint _mtu_;
}

+ (JavaNetInetAddress *)getByNameWithNSString:(NSString *)host;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _host_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _hostAddress_, JavaNetInetAddress *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introKey_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introHosts_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introAddresses_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introPorts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introKeys_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introTags_, IOSLongArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportUdpUDPAddress, _introExps_, IOSLongArray *)

inline IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_get_PROP_INTRO_HOST(void);
static IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPAddress, PROP_INTRO_HOST, IOSObjectArray *)

inline IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_get_PROP_INTRO_PORT(void);
static IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPAddress, PROP_INTRO_PORT, IOSObjectArray *)

inline IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_get_PROP_INTRO_IKEY(void);
static IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_IKEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPAddress, PROP_INTRO_IKEY, IOSObjectArray *)

inline IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_get_PROP_INTRO_TAG(void);
static IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPAddress, PROP_INTRO_TAG, IOSObjectArray *)

inline IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_get_PROP_INTRO_EXP(void);
static IOSObjectArray *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPAddress, PROP_INTRO_EXP, IOSObjectArray *)

inline id<JavaUtilMap> NetI2pRouterTransportUdpUDPAddress_get__inetAddressCache(void);
static id<JavaUtilMap> NetI2pRouterTransportUdpUDPAddress__inetAddressCache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportUdpUDPAddress, _inetAddressCache, id<JavaUtilMap>)

__attribute__((unused)) static JavaNetInetAddress *NetI2pRouterTransportUdpUDPAddress_getByNameWithNSString_(NSString *host);

J2OBJC_INITIALIZED_DEFN(NetI2pRouterTransportUdpUDPAddress)

NSString *NetI2pRouterTransportUdpUDPAddress_PROP_PORT = @"port";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_HOST = @"host";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY = @"key";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_MTU = @"mtu";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_CAPACITY = @"caps";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST_PREFIX = @"ihost";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT_PREFIX = @"iport";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY_PREFIX = @"ikey";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG_PREFIX = @"itag";
NSString *NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP_PREFIX = @"iexp";

@implementation NetI2pRouterTransportUdpUDPAddress

+ (NSString *)PROP_PORT {
  return NetI2pRouterTransportUdpUDPAddress_PROP_PORT;
}

+ (NSString *)PROP_HOST {
  return NetI2pRouterTransportUdpUDPAddress_PROP_HOST;
}

+ (NSString *)PROP_INTRO_KEY {
  return NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY;
}

+ (NSString *)PROP_MTU {
  return NetI2pRouterTransportUdpUDPAddress_PROP_MTU;
}

+ (NSString *)PROP_CAPACITY {
  return NetI2pRouterTransportUdpUDPAddress_PROP_CAPACITY;
}

+ (jchar)CAPACITY_TESTING {
  return NetI2pRouterTransportUdpUDPAddress_CAPACITY_TESTING;
}

+ (jchar)CAPACITY_INTRODUCER {
  return NetI2pRouterTransportUdpUDPAddress_CAPACITY_INTRODUCER;
}

+ (NSString *)PROP_INTRO_HOST_PREFIX {
  return NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST_PREFIX;
}

+ (NSString *)PROP_INTRO_PORT_PREFIX {
  return NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT_PREFIX;
}

+ (NSString *)PROP_INTRO_KEY_PREFIX {
  return NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY_PREFIX;
}

+ (NSString *)PROP_INTRO_TAG_PREFIX {
  return NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG_PREFIX;
}

+ (NSString *)PROP_INTRO_EXP_PREFIX {
  return NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP_PREFIX;
}

+ (jint)MAX_INTRODUCERS {
  return NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS;
}

- (instancetype)initWithNetI2pDataRouterRouterAddress:(NetI2pDataRouterRouterAddress *)addr {
  NetI2pRouterTransportUdpUDPAddress_initWithNetI2pDataRouterRouterAddress_(self, addr);
  return self;
}

- (NSString *)getHost {
  return _host_;
}

- (JavaNetInetAddress *)getHostAddress {
  if (_hostAddress_ == nil) JreStrongAssign(&_hostAddress_, NetI2pRouterTransportUdpUDPAddress_getByNameWithNSString_(_host_));
  return _hostAddress_;
}

- (jint)getPort {
  return _port_;
}

- (IOSByteArray *)getIntroKey {
  return _introKey_;
}

- (jint)getIntroducerCount {
  return (_introAddresses_ == nil ? 0 : _introAddresses_->size_);
}

- (JavaNetInetAddress *)getIntroducerHostWithInt:(jint)i {
  if (IOSObjectArray_Get(nil_chk(_introAddresses_), i) == nil) IOSObjectArray_Set(_introAddresses_, i, NetI2pRouterTransportUdpUDPAddress_getByNameWithNSString_(IOSObjectArray_Get(nil_chk(_introHosts_), i)));
  return IOSObjectArray_Get(_introAddresses_, i);
}

- (jint)getIntroducerPortWithInt:(jint)i {
  return IOSIntArray_Get(nil_chk(_introPorts_), i);
}

- (IOSByteArray *)getIntroducerKeyWithInt:(jint)i {
  return IOSObjectArray_Get(nil_chk(_introKeys_), i);
}

- (jlong)getIntroducerTagWithInt:(jint)i {
  return IOSLongArray_Get(nil_chk(_introTags_), i);
}

- (jlong)getIntroducerExpirationWithInt:(jint)i {
  return IOSLongArray_Get(nil_chk(_introExps_), i);
}

- (jint)getMTU {
  return _mtu_;
}

- (NSString *)description {
  JavaLangStringBuilder *rv = create_JavaLangStringBuilder_initWithInt_(64);
  if (_introHosts_ != nil) {
    for (jint i = 0; i < _introHosts_->size_; i++) {
      [rv appendWithNSString:@"ssu://"];
      [((JavaLangStringBuilder *) nil_chk([rv appendWithLong:IOSLongArray_Get(nil_chk(_introTags_), i)])) appendWithChar:'@'];
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([rv appendWithNSString:IOSObjectArray_Get(_introHosts_, i)])) appendWithChar:':'])) appendWithInt:IOSIntArray_Get(nil_chk(_introPorts_), i)];
      if (i + 1 < ((IOSObjectArray *) nil_chk(_introKeys_))->size_) [rv appendWithNSString:@", "];
    }
  }
  else {
    if ((_host_ != nil) && (_port_ > 0)) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([rv appendWithNSString:@"ssu://"])) appendWithNSString:_host_])) appendWithChar:':'])) appendWithInt:_port_];
    else [((JavaLangStringBuilder *) nil_chk([rv appendWithNSString:@"ssu://autodetect.not.yet.complete:"])) appendWithInt:_port_];
  }
  return [rv description];
}

+ (JavaNetInetAddress *)getByNameWithNSString:(NSString *)host {
  return NetI2pRouterTransportUdpUDPAddress_getByNameWithNSString_(host);
}

+ (void)clearCache {
  NetI2pRouterTransportUdpUDPAddress_clearCache();
}

- (void)dealloc {
  RELEASE_(_host_);
  RELEASE_(_hostAddress_);
  RELEASE_(_introKey_);
  RELEASE_(_introHosts_);
  RELEASE_(_introAddresses_);
  RELEASE_(_introPorts_);
  RELEASE_(_introKeys_);
  RELEASE_(_introTags_);
  RELEASE_(_introExps_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaNetInetAddress;", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaNetInetAddress;", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x0, 3, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x0, 4, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 5, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x0, 6, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "LJavaNetInetAddress;", 0xa, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x8, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pDataRouterRouterAddress:);
  methods[1].selector = @selector(getHost);
  methods[2].selector = @selector(getHostAddress);
  methods[3].selector = @selector(getPort);
  methods[4].selector = @selector(getIntroKey);
  methods[5].selector = @selector(getIntroducerCount);
  methods[6].selector = @selector(getIntroducerHostWithInt:);
  methods[7].selector = @selector(getIntroducerPortWithInt:);
  methods[8].selector = @selector(getIntroducerKeyWithInt:);
  methods[9].selector = @selector(getIntroducerTagWithInt:);
  methods[10].selector = @selector(getIntroducerExpirationWithInt:);
  methods[11].selector = @selector(getMTU);
  methods[12].selector = @selector(description);
  methods[13].selector = @selector(getByNameWithNSString:);
  methods[14].selector = @selector(clearCache);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_host_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_hostAddress_", "LJavaNetInetAddress;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_port_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introKey_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introHosts_", "[LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introAddresses_", "[LJavaNetInetAddress;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introPorts_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introKeys_", "[[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introTags_", "[J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_introExps_", "[J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_mtu_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "PROP_PORT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "PROP_HOST", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "PROP_INTRO_KEY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "PROP_MTU", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "PROP_CAPACITY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "CAPACITY_TESTING", "C", .constantValue.asUnichar = NetI2pRouterTransportUdpUDPAddress_CAPACITY_TESTING, 0x19, -1, -1, -1, -1 },
    { "CAPACITY_INTRODUCER", "C", .constantValue.asUnichar = NetI2pRouterTransportUdpUDPAddress_CAPACITY_INTRODUCER, 0x19, -1, -1, -1, -1 },
    { "PROP_INTRO_HOST_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "PROP_INTRO_PORT_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "PROP_INTRO_KEY_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "PROP_INTRO_TAG_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 18, -1, -1 },
    { "PROP_INTRO_EXP_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "MAX_INTRODUCERS", "I", .constantValue.asInt = NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS, 0x18, -1, -1, -1, -1 },
    { "PROP_INTRO_HOST", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "PROP_INTRO_PORT", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
    { "PROP_INTRO_IKEY", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 22, -1, -1 },
    { "PROP_INTRO_TAG", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "PROP_INTRO_EXP", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 24, -1, -1 },
    { "_inetAddressCache", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 25, 26, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pDataRouterRouterAddress;", "getIntroducerHost", "I", "getIntroducerPort", "getIntroducerKey", "getIntroducerTag", "getIntroducerExpiration", "toString", "getByName", "LNSString;", &NetI2pRouterTransportUdpUDPAddress_PROP_PORT, &NetI2pRouterTransportUdpUDPAddress_PROP_HOST, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY, &NetI2pRouterTransportUdpUDPAddress_PROP_MTU, &NetI2pRouterTransportUdpUDPAddress_PROP_CAPACITY, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST_PREFIX, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT_PREFIX, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY_PREFIX, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG_PREFIX, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP_PREFIX, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_IKEY, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG, &NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP, &NetI2pRouterTransportUdpUDPAddress__inetAddressCache, "Ljava/util/Map<Ljava/lang/String;Ljava/net/InetAddress;>;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportUdpUDPAddress = { "UDPAddress", "net.i2p.router.transport.udp", ptrTable, methods, fields, 7, 0x0, 15, 30, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTransportUdpUDPAddress;
}

+ (void)initialize {
  if (self == [NetI2pRouterTransportUdpUDPAddress class]) {
    {
      JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST, [IOSObjectArray newArrayWithLength:NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS type:NSString_class_()]);
      JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT, [IOSObjectArray newArrayWithLength:NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS type:NSString_class_()]);
      JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_IKEY, [IOSObjectArray newArrayWithLength:NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS type:NSString_class_()]);
      JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG, [IOSObjectArray newArrayWithLength:NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS type:NSString_class_()]);
      JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP, [IOSObjectArray newArrayWithLength:NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS type:NSString_class_()]);
      for (jint i = 0; i < NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS; i++) {
        IOSObjectArray_Set(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST, i, JreStrcat("$I", NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST_PREFIX, i));
        IOSObjectArray_Set(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT, i, JreStrcat("$I", NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT_PREFIX, i));
        IOSObjectArray_Set(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_IKEY, i, JreStrcat("$I", NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY_PREFIX, i));
        IOSObjectArray_Set(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG, i, JreStrcat("$I", NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG_PREFIX, i));
        IOSObjectArray_Set(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP, i, JreStrcat("$I", NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP_PREFIX, i));
      }
    }
    {
      jlong maxMemory = NetI2pUtilSystemVersion_getMaxMemory();
      jlong min = 128;
      jlong max = 2048;
      jint size = (jint) JavaLangMath_maxWithLong_withLong_(min, JavaLangMath_minWithLong_withLong_(max, 1 + (maxMemory / (256 * 1024))));
      JreStrongAssignAndConsume(&NetI2pRouterTransportUdpUDPAddress__inetAddressCache, new_NetI2pUtilLHMCache_initWithInt_(size));
    }
    J2OBJC_SET_INITIALIZED(NetI2pRouterTransportUdpUDPAddress)
  }
}

@end

void NetI2pRouterTransportUdpUDPAddress_initWithNetI2pDataRouterRouterAddress_(NetI2pRouterTransportUdpUDPAddress *self, NetI2pDataRouterRouterAddress *addr) {
  NSObject_init(self);
  if (addr == nil) {
    JreStrongAssign(&self->_host_, nil);
    self->_port_ = 0;
    JreStrongAssign(&self->_introKey_, nil);
    JreStrongAssign(&self->_introHosts_, nil);
    JreStrongAssign(&self->_introAddresses_, nil);
    JreStrongAssign(&self->_introPorts_, nil);
    JreStrongAssign(&self->_introKeys_, nil);
    JreStrongAssign(&self->_introTags_, nil);
    JreStrongAssign(&self->_introExps_, nil);
    self->_mtu_ = 0;
    return;
  }
  JreStrongAssign(&self->_host_, [addr getHost]);
  self->_port_ = [addr getPort];
  jint cmtu = 0;
  @try {
    NSString *mtu = [addr getOptionWithNSString:NetI2pRouterTransportUdpUDPAddress_PROP_MTU];
    if (mtu != nil) {
      jboolean isIPv6 = self->_host_ != nil && [self->_host_ java_contains:@":"];
      cmtu = NetI2pRouterTransportUdpMTU_rectifyWithBoolean_withInt_(isIPv6, JavaLangInteger_parseIntWithNSString_(mtu));
    }
  }
  @catch (JavaLangNumberFormatException *nfe) {
  }
  self->_mtu_ = cmtu;
  NSString *key = [addr getOptionWithNSString:NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_KEY];
  if (key != nil) {
    IOSByteArray *ik = NetI2pDataBase64_decodeWithNSString_([key java_trim]);
    if (ik != nil && ik->size_ == NetI2pDataSessionKey_KEYSIZE_BYTES) JreStrongAssign(&self->_introKey_, ik);
    else JreStrongAssign(&self->_introKey_, nil);
  }
  else {
    JreStrongAssign(&self->_introKey_, nil);
  }
  IOSObjectArray *cintroKeys = nil;
  IOSLongArray *cintroTags = nil;
  IOSIntArray *cintroPorts = nil;
  IOSObjectArray *cintroHosts = nil;
  IOSObjectArray *cintroAddresses = nil;
  IOSLongArray *cintroExps = nil;
  for (jint i = NetI2pRouterTransportUdpUDPAddress_MAX_INTRODUCERS - 1; i >= 0; i--) {
    NSString *host = [addr getOptionWithNSString:IOSObjectArray_Get(nil_chk(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_HOST), i)];
    if (host == nil) continue;
    NSString *port = [addr getOptionWithNSString:IOSObjectArray_Get(nil_chk(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_PORT), i)];
    if (port == nil) continue;
    NSString *k = [addr getOptionWithNSString:IOSObjectArray_Get(nil_chk(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_IKEY), i)];
    if (k == nil) continue;
    IOSByteArray *ikey = NetI2pDataBase64_decodeWithNSString_(k);
    if ((ikey == nil) || (((IOSByteArray *) nil_chk(ikey))->size_ != NetI2pDataSessionKey_KEYSIZE_BYTES)) continue;
    NSString *t = [addr getOptionWithNSString:IOSObjectArray_Get(nil_chk(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_TAG), i)];
    if (t == nil) continue;
    jint p;
    @try {
      p = JavaLangInteger_parseIntWithNSString_(port);
      if (!NetI2pRouterTransportTransportUtil_isValidPortWithInt_(p)) continue;
    }
    @catch (JavaLangNumberFormatException *nfe) {
      continue;
    }
    jlong tag;
    @try {
      tag = JavaLangLong_parseLongWithNSString_(t);
      if (tag <= 0) continue;
    }
    @catch (JavaLangNumberFormatException *nfe) {
      continue;
    }
    jlong exp = 0;
    t = [addr getOptionWithNSString:IOSObjectArray_Get(nil_chk(NetI2pRouterTransportUdpUDPAddress_PROP_INTRO_EXP), i)];
    if (t != nil) {
      @try {
        exp = JavaLangLong_parseLongWithNSString_(t) * 1000LL;
      }
      @catch (JavaLangNumberFormatException *nfe) {
      }
    }
    if (cintroHosts == nil) {
      cintroHosts = [IOSObjectArray arrayWithLength:i + 1 type:NSString_class_()];
      cintroPorts = [IOSIntArray arrayWithLength:i + 1];
      cintroAddresses = [IOSObjectArray arrayWithLength:i + 1 type:JavaNetInetAddress_class_()];
      cintroKeys = [IOSObjectArray arrayWithLength:i + 1 type:IOSClass_byteArray(1)];
      cintroTags = [IOSLongArray arrayWithLength:i + 1];
      cintroExps = [IOSLongArray arrayWithLength:i + 1];
    }
    IOSObjectArray_Set(cintroHosts, i, host);
    *IOSIntArray_GetRef(nil_chk(cintroPorts), i) = p;
    IOSObjectArray_Set(nil_chk(cintroKeys), i, ikey);
    *IOSLongArray_GetRef(nil_chk(cintroTags), i) = tag;
    *IOSLongArray_GetRef(nil_chk(cintroExps), i) = exp;
  }
  jint numOK = 0;
  if (cintroHosts != nil) {
    for (jint i = 0; i < cintroHosts->size_; i++) {
      if ((IOSObjectArray_Get(nil_chk(cintroKeys), i) != nil) && (IOSIntArray_Get(nil_chk(cintroPorts), i) > 0) && (IOSLongArray_Get(nil_chk(cintroTags), i) > 0) && (IOSObjectArray_Get(cintroHosts, i) != nil)) numOK++;
    }
    if (numOK != cintroHosts->size_) {
      jint cur = 0;
      for (jint i = 0; i < cintroHosts->size_; i++) {
        if ((IOSObjectArray_Get(nil_chk(cintroKeys), i) != nil) && (IOSIntArray_Get(nil_chk(cintroPorts), i) > 0) && (IOSLongArray_Get(nil_chk(cintroTags), i) > 0) && (IOSObjectArray_Get(cintroHosts, i) != nil)) {
          if (cur != i) {
            IOSObjectArray_Set(cintroHosts, cur, IOSObjectArray_Get(cintroHosts, i));
            *IOSIntArray_GetRef(nil_chk(cintroPorts), cur) = IOSIntArray_Get(cintroPorts, i);
            *IOSLongArray_GetRef(nil_chk(cintroTags), cur) = IOSLongArray_Get(cintroTags, i);
            IOSObjectArray_Set(cintroKeys, cur, IOSObjectArray_Get(cintroKeys, i));
            *IOSLongArray_GetRef(nil_chk(cintroExps), cur) = IOSLongArray_Get(cintroExps, i);
          }
          cur++;
        }
      }
      cintroAddresses = [IOSObjectArray arrayWithLength:numOK type:JavaNetInetAddress_class_()];
    }
  }
  JreStrongAssign(&self->_introKeys_, cintroKeys);
  JreStrongAssign(&self->_introTags_, cintroTags);
  JreStrongAssign(&self->_introPorts_, cintroPorts);
  JreStrongAssign(&self->_introHosts_, cintroHosts);
  JreStrongAssign(&self->_introAddresses_, cintroAddresses);
  JreStrongAssign(&self->_introExps_, cintroExps);
}

NetI2pRouterTransportUdpUDPAddress *new_NetI2pRouterTransportUdpUDPAddress_initWithNetI2pDataRouterRouterAddress_(NetI2pDataRouterRouterAddress *addr) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportUdpUDPAddress, initWithNetI2pDataRouterRouterAddress_, addr)
}

NetI2pRouterTransportUdpUDPAddress *create_NetI2pRouterTransportUdpUDPAddress_initWithNetI2pDataRouterRouterAddress_(NetI2pDataRouterRouterAddress *addr) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportUdpUDPAddress, initWithNetI2pDataRouterRouterAddress_, addr)
}

JavaNetInetAddress *NetI2pRouterTransportUdpUDPAddress_getByNameWithNSString_(NSString *host) {
  NetI2pRouterTransportUdpUDPAddress_initialize();
  if (host == nil) return nil;
  JavaNetInetAddress *rv;
  @synchronized(NetI2pRouterTransportUdpUDPAddress__inetAddressCache) {
    rv = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(NetI2pRouterTransportUdpUDPAddress__inetAddressCache)) getWithId:host]);
  }
  if (rv == nil) {
    if (NetI2pUtilAddresses_isIPAddressWithNSString_(host)) {
      @try {
        rv = JavaNetInetAddress_getByNameWithNSString_(host);
        @synchronized(NetI2pRouterTransportUdpUDPAddress__inetAddressCache) {
          [NetI2pRouterTransportUdpUDPAddress__inetAddressCache putWithId:host withId:rv];
        }
      }
      @catch (JavaNetUnknownHostException *uhe) {
      }
    }
  }
  return rv;
}

void NetI2pRouterTransportUdpUDPAddress_clearCache() {
  NetI2pRouterTransportUdpUDPAddress_initialize();
  @synchronized(NetI2pRouterTransportUdpUDPAddress__inetAddressCache) {
    [((id<JavaUtilMap>) nil_chk(NetI2pRouterTransportUdpUDPAddress__inetAddressCache)) clear];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportUdpUDPAddress)
