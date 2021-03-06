//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ssdp/SSDPNotifySocket.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/Thread.h"
#include "java/net/InetAddress.h"
#include "org/cybergarage/net/HostInterface.h"
#include "org/cybergarage/upnp/ControlPoint.h"
#include "org/cybergarage/upnp/ssdp/HTTPMUSocket.h"
#include "org/cybergarage/upnp/ssdp/SSDP.h"
#include "org/cybergarage/upnp/ssdp/SSDPNotifyRequest.h"
#include "org/cybergarage/upnp/ssdp/SSDPNotifySocket.h"
#include "org/cybergarage/upnp/ssdp/SSDPPacket.h"
#include "org/cybergarage/util/Debug.h"

@interface OrgCybergarageUpnpSsdpSSDPNotifySocket () {
 @public
  jboolean useIPv6Address_;
  OrgCybergarageUpnpControlPoint *controlPoint_;
  JavaLangThread *deviceNotifyThread_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpSsdpSSDPNotifySocket, controlPoint_, OrgCybergarageUpnpControlPoint *)
J2OBJC_FIELD_SETTER(OrgCybergarageUpnpSsdpSSDPNotifySocket, deviceNotifyThread_, JavaLangThread *)

@implementation OrgCybergarageUpnpSsdpSSDPNotifySocket

- (instancetype)initWithNSString:(NSString *)bindAddr {
  OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(self, bindAddr);
  return self;
}

- (void)setControlPointWithOrgCybergarageUpnpControlPoint:(OrgCybergarageUpnpControlPoint *)ctrlp {
  JreStrongAssign(&self->controlPoint_, ctrlp);
}

- (OrgCybergarageUpnpControlPoint *)getControlPoint {
  return controlPoint_;
}

- (jboolean)postWithOrgCybergarageUpnpSsdpSSDPNotifyRequest:(OrgCybergarageUpnpSsdpSSDPNotifyRequest *)req {
  NSString *ssdpAddr = OrgCybergarageUpnpSsdpSSDP_ADDRESS;
  if (useIPv6Address_ == true) ssdpAddr = OrgCybergarageUpnpSsdpSSDP_getIPv6Address();
  [((OrgCybergarageUpnpSsdpSSDPNotifyRequest *) nil_chk(req)) setHostWithNSString:ssdpAddr withInt:OrgCybergarageUpnpSsdpSSDP_PORT];
  return [self postWithOrgCybergarageHttpHTTPRequest:req];
}

- (void)run {
  JavaLangThread *thisThread = JavaLangThread_currentThread();
  OrgCybergarageUpnpControlPoint *ctrlPoint = [self getControlPoint];
  while (deviceNotifyThread_ == thisThread) {
    JavaLangThread_yield();
    OrgCybergarageUpnpSsdpSSDPPacket *packet = nil;
    @try {
      packet = [self receive];
    }
    @catch (JavaIoIOException *e) {
      break;
    }
    if (packet == nil) continue;
    JavaNetInetAddress *maddr = [self getMulticastInetAddress];
    JavaNetInetAddress *pmaddr = [packet getHostInetAddress];
    if ([((JavaNetInetAddress *) nil_chk(maddr)) isEqual:pmaddr] == false) {
      continue;
    }
    if (ctrlPoint != nil) [ctrlPoint notifyReceivedWithOrgCybergarageUpnpSsdpSSDPPacket:packet];
  }
}

- (void)start {
  JavaLangStringBuffer *name = create_JavaLangStringBuffer_initWithNSString_(@"Cyber.SSDPNotifySocket/");
  NSString *localAddr = [self getLocalAddress];
  if (localAddr != nil && 0 < [localAddr java_length]) {
    [((JavaLangStringBuffer *) nil_chk([name appendWithNSString:[self getMulticastAddress]])) appendWithChar:':'];
    [name appendWithInt:[self getMulticastPort]];
  }
  JreStrongAssignAndConsume(&deviceNotifyThread_, new_JavaLangThread_initWithJavaLangRunnable_withNSString_(self, [name description]));
  [deviceNotifyThread_ start];
}

- (void)stop {
  [self close];
  JreStrongAssign(&deviceNotifyThread_, nil);
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgCybergarageUpnpSsdpSSDPNotifySocket class]);
  RELEASE_(controlPoint_);
  RELEASE_(deviceNotifyThread_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpControlPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(setControlPointWithOrgCybergarageUpnpControlPoint:);
  methods[2].selector = @selector(getControlPoint);
  methods[3].selector = @selector(postWithOrgCybergarageUpnpSsdpSSDPNotifyRequest:);
  methods[4].selector = @selector(run);
  methods[5].selector = @selector(start);
  methods[6].selector = @selector(stop);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "useIPv6Address_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "controlPoint_", "LOrgCybergarageUpnpControlPoint;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "deviceNotifyThread_", "LJavaLangThread;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "setControlPoint", "LOrgCybergarageUpnpControlPoint;", "post", "LOrgCybergarageUpnpSsdpSSDPNotifyRequest;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpSsdpSSDPNotifySocket = { "SSDPNotifySocket", "org.cybergarage.upnp.ssdp", ptrTable, methods, fields, 7, 0x1, 7, 3, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpSsdpSSDPNotifySocket;
}

@end

void OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(OrgCybergarageUpnpSsdpSSDPNotifySocket *self, NSString *bindAddr) {
  OrgCybergarageUpnpSsdpHTTPMUSocket_init(self);
  JreStrongAssign(&self->controlPoint_, nil);
  JreStrongAssign(&self->deviceNotifyThread_, nil);
  NSString *addr = OrgCybergarageUpnpSsdpSSDP_ADDRESS;
  self->useIPv6Address_ = false;
  if (OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(bindAddr) == true) {
    addr = OrgCybergarageUpnpSsdpSSDP_getIPv6Address();
    self->useIPv6Address_ = true;
  }
  [self openWithNSString:addr withInt:OrgCybergarageUpnpSsdpSSDP_PORT withNSString:bindAddr];
  OrgCybergarageUtilDebug_messageWithNSString_(JreStrcat("$$CI", @"Opened SSDP notify socket at ", bindAddr, ':', OrgCybergarageUpnpSsdpSSDP_PORT));
  [self setControlPointWithOrgCybergarageUpnpControlPoint:nil];
}

OrgCybergarageUpnpSsdpSSDPNotifySocket *new_OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(NSString *bindAddr) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPNotifySocket, initWithNSString_, bindAddr)
}

OrgCybergarageUpnpSsdpSSDPNotifySocket *create_OrgCybergarageUpnpSsdpSSDPNotifySocket_initWithNSString_(NSString *bindAddr) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPNotifySocket, initWithNSString_, bindAddr)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpSsdpSSDPNotifySocket)
