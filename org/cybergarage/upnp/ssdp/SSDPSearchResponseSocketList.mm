//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/net/InetAddress.h"
#include "java/util/Vector.h"
#include "org/cybergarage/net/HostInterface.h"
#include "org/cybergarage/upnp/ControlPoint.h"
#include "org/cybergarage/upnp/ssdp/SSDP.h"
#include "org/cybergarage/upnp/ssdp/SSDPSearchRequest.h"
#include "org/cybergarage/upnp/ssdp/SSDPSearchResponseSocket.h"
#include "org/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList () {
 @public
  IOSObjectArray *binds_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList, binds_, IOSObjectArray *)

@implementation OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaNetInetAddressArray:(IOSObjectArray *)binds {
  OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_initWithJavaNetInetAddressArray_(self, binds);
  return self;
}

- (void)setControlPointWithOrgCybergarageUpnpControlPoint:(OrgCybergarageUpnpControlPoint *)ctrlPoint {
  jint nSockets = [self size];
  for (jint n = 0; n < nSockets; n++) {
    OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *sock = [self getSSDPSearchResponseSocketWithInt:n];
    [((OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *) nil_chk(sock)) setControlPointWithOrgCybergarageUpnpControlPoint:ctrlPoint];
  }
}

- (OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *)getSSDPSearchResponseSocketWithInt:(jint)n {
  return [self getWithInt:n];
}

- (jboolean)openWithInt:(jint)port {
  IOSObjectArray *binds = self->binds_;
  IOSObjectArray *bindAddresses;
  if (binds != nil) {
    bindAddresses = [IOSObjectArray arrayWithLength:binds->size_ type:NSString_class_()];
    for (jint i = 0; i < binds->size_; i++) {
      IOSObjectArray_Set(bindAddresses, i, [((JavaNetInetAddress *) nil_chk(IOSObjectArray_Get(binds, i))) getHostAddress]);
    }
  }
  else {
    jint nHostAddrs = OrgCybergarageNetHostInterface_getNHostAddresses();
    bindAddresses = [IOSObjectArray arrayWithLength:nHostAddrs type:NSString_class_()];
    for (jint n = 0; n < nHostAddrs; n++) {
      IOSObjectArray_Set(bindAddresses, n, OrgCybergarageNetHostInterface_getHostAddressWithInt_(n));
    }
  }
  @try {
    for (jint j = 0; j < bindAddresses->size_; j++) {
      OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *socket = create_OrgCybergarageUpnpSsdpSSDPSearchResponseSocket_initWithNSString_withInt_(IOSObjectArray_Get(bindAddresses, j), port);
      [self addWithId:socket];
    }
  }
  @catch (JavaLangException *e) {
    [self stop];
    [self close];
    [self clear];
    return false;
  }
  return true;
}

- (jboolean)open {
  return [self openWithInt:OrgCybergarageUpnpSsdpSSDP_PORT];
}

- (void)close {
  jint nSockets = [self size];
  for (jint n = 0; n < nSockets; n++) {
    OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *sock = [self getSSDPSearchResponseSocketWithInt:n];
    [((OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *) nil_chk(sock)) close];
  }
  [self clear];
}

- (void)start {
  jint nSockets = [self size];
  for (jint n = 0; n < nSockets; n++) {
    OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *sock = [self getSSDPSearchResponseSocketWithInt:n];
    [((OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *) nil_chk(sock)) start];
  }
}

- (void)stop {
  jint nSockets = [self size];
  for (jint n = 0; n < nSockets; n++) {
    OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *sock = [self getSSDPSearchResponseSocketWithInt:n];
    [((OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *) nil_chk(sock)) stop];
  }
}

- (jboolean)postWithOrgCybergarageUpnpSsdpSSDPSearchRequest:(OrgCybergarageUpnpSsdpSSDPSearchRequest *)req {
  jboolean ret = true;
  jint nSockets = [self size];
  for (jint n = 0; n < nSockets; n++) {
    OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *sock = [self getSSDPSearchResponseSocketWithInt:n];
    NSString *bindAddr = [((OrgCybergarageUpnpSsdpSSDPSearchResponseSocket *) nil_chk(sock)) getLocalAddress];
    [((OrgCybergarageUpnpSsdpSSDPSearchRequest *) nil_chk(req)) setLocalAddressWithNSString:bindAddr];
    NSString *ssdpAddr = OrgCybergarageUpnpSsdpSSDP_ADDRESS;
    if (OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(bindAddr) == true) ssdpAddr = OrgCybergarageUpnpSsdpSSDP_getIPv6Address();
    if ([sock postWithNSString:ssdpAddr withInt:OrgCybergarageUpnpSsdpSSDP_PORT withOrgCybergarageUpnpSsdpSSDPSearchRequest:req] == false) ret = false;
  }
  return ret;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(binds_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpSsdpSSDPSearchResponseSocket;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaNetInetAddressArray:);
  methods[2].selector = @selector(setControlPointWithOrgCybergarageUpnpControlPoint:);
  methods[3].selector = @selector(getSSDPSearchResponseSocketWithInt:);
  methods[4].selector = @selector(openWithInt:);
  methods[5].selector = @selector(open);
  methods[6].selector = @selector(close);
  methods[7].selector = @selector(start);
  methods[8].selector = @selector(stop);
  methods[9].selector = @selector(postWithOrgCybergarageUpnpSsdpSSDPSearchRequest:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "binds_", "[LJavaNetInetAddress;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LJavaNetInetAddress;", "setControlPoint", "LOrgCybergarageUpnpControlPoint;", "getSSDPSearchResponseSocket", "I", "open", "post", "LOrgCybergarageUpnpSsdpSSDPSearchRequest;", "Ljava/util/Vector<Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;>;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList = { "SSDPSearchResponseSocketList", "org.cybergarage.upnp.ssdp", ptrTable, methods, fields, 7, 0x1, 10, 1, -1, -1, -1, 8, -1 };
  return &_OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList;
}

@end

void OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_init(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList *self) {
  JavaUtilVector_init(self);
  JreStrongAssign(&self->binds_, nil);
}

OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList *new_OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList, init)
}

OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList *create_OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList, init)
}

void OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_initWithJavaNetInetAddressArray_(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList *self, IOSObjectArray *binds) {
  JavaUtilVector_init(self);
  JreStrongAssign(&self->binds_, nil);
  JreStrongAssign(&self->binds_, binds);
}

OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList *new_OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_initWithJavaNetInetAddressArray_(IOSObjectArray *binds) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList, initWithJavaNetInetAddressArray_, binds)
}

OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList *create_OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList_initWithJavaNetInetAddressArray_(IOSObjectArray *binds) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList, initWithJavaNetInetAddressArray_, binds)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpSsdpSSDPSearchResponseSocketList)
