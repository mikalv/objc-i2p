//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/ssdp/SSDPSearchSocket.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/Thread.h"
#include "java/net/Inet4Address.h"
#include "java/net/Inet6Address.h"
#include "java/net/InetAddress.h"
#include "org/cybergarage/net/HostInterface.h"
#include "org/cybergarage/upnp/device/SearchListener.h"
#include "org/cybergarage/upnp/ssdp/HTTPMUSocket.h"
#include "org/cybergarage/upnp/ssdp/SSDP.h"
#include "org/cybergarage/upnp/ssdp/SSDPPacket.h"
#include "org/cybergarage/upnp/ssdp/SSDPSearchSocket.h"
#include "org/cybergarage/util/ListenerList.h"

@interface OrgCybergarageUpnpSsdpSSDPSearchSocket () {
 @public
  jboolean useIPv6Address_;
  OrgCybergarageUtilListenerList *deviceSearchListenerList_;
  JavaLangThread *deviceSearchThread_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpSsdpSSDPSearchSocket, deviceSearchListenerList_, OrgCybergarageUtilListenerList *)
J2OBJC_FIELD_SETTER(OrgCybergarageUpnpSsdpSSDPSearchSocket, deviceSearchThread_, JavaLangThread *)

@implementation OrgCybergarageUpnpSsdpSSDPSearchSocket

- (instancetype)initWithNSString:(NSString *)bindAddr
                         withInt:(jint)port
                    withNSString:(NSString *)multicast {
  OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithNSString_withInt_withNSString_(self, bindAddr, port, multicast);
  return self;
}

- (instancetype)initWithJavaNetInetAddress:(JavaNetInetAddress *)bindAddr {
  OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithJavaNetInetAddress_(self, bindAddr);
  return self;
}

- (jboolean)openWithJavaNetInet4Address:(JavaNetInet4Address *)bindAddr {
  useIPv6Address_ = false;
  return [self openWithNSString:OrgCybergarageUpnpSsdpSSDP_ADDRESS withInt:OrgCybergarageUpnpSsdpSSDP_PORT withJavaNetInetAddress:bindAddr];
}

- (jboolean)openWithJavaNetInet6Address:(JavaNetInet6Address *)bindAddr {
  useIPv6Address_ = true;
  return [self openWithNSString:OrgCybergarageUpnpSsdpSSDP_getIPv6Address() withInt:OrgCybergarageUpnpSsdpSSDP_PORT withJavaNetInetAddress:bindAddr];
}

- (jboolean)openWithNSString:(NSString *)bind
                withNSString:(NSString *)multicast {
  if ((OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(bind)) && (OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(multicast))) {
    useIPv6Address_ = true;
  }
  else if (OrgCybergarageNetHostInterface_isIPv4AddressWithNSString_(bind) && (OrgCybergarageNetHostInterface_isIPv4AddressWithNSString_(multicast))) {
    useIPv6Address_ = false;
  }
  else {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Cannot open a UDP Socket for IPv6 address on IPv4 interface or viceversa");
  }
  return [self openWithNSString:multicast withInt:OrgCybergarageUpnpSsdpSSDP_PORT withNSString:bind];
}

- (jboolean)openWithNSString:(NSString *)bindAddr {
  NSString *addr = OrgCybergarageUpnpSsdpSSDP_ADDRESS;
  useIPv6Address_ = false;
  if (OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(bindAddr) == true) {
    addr = OrgCybergarageUpnpSsdpSSDP_getIPv6Address();
    useIPv6Address_ = true;
  }
  return [self openWithNSString:addr withInt:OrgCybergarageUpnpSsdpSSDP_PORT withNSString:bindAddr];
}

- (void)addSearchListenerWithOrgCybergarageUpnpDeviceSearchListener:(id<OrgCybergarageUpnpDeviceSearchListener>)listener {
  [((OrgCybergarageUtilListenerList *) nil_chk(deviceSearchListenerList_)) addWithId:listener];
}

- (void)removeSearchListenerWithOrgCybergarageUpnpDeviceSearchListener:(id<OrgCybergarageUpnpDeviceSearchListener>)listener {
  [((OrgCybergarageUtilListenerList *) nil_chk(deviceSearchListenerList_)) removeWithId:listener];
}

- (void)performSearchListenerWithOrgCybergarageUpnpSsdpSSDPPacket:(OrgCybergarageUpnpSsdpSSDPPacket *)ssdpPacket {
  jint listenerSize = [((OrgCybergarageUtilListenerList *) nil_chk(deviceSearchListenerList_)) size];
  for (jint n = 0; n < listenerSize; n++) {
    id<OrgCybergarageUpnpDeviceSearchListener> listener = (id<OrgCybergarageUpnpDeviceSearchListener>) cast_check([((OrgCybergarageUtilListenerList *) nil_chk(deviceSearchListenerList_)) getWithInt:n], OrgCybergarageUpnpDeviceSearchListener_class_());
    [((id<OrgCybergarageUpnpDeviceSearchListener>) nil_chk(listener)) deviceSearchReceivedWithOrgCybergarageUpnpSsdpSSDPPacket:ssdpPacket];
  }
}

- (void)run {
  JavaLangThread *thisThread = JavaLangThread_currentThread();
  while (deviceSearchThread_ == thisThread) {
    JavaLangThread_yield();
    OrgCybergarageUpnpSsdpSSDPPacket *packet = nil;
    @try {
      packet = [self receive];
    }
    @catch (JavaIoIOException *e) {
      break;
    }
    if (packet == nil) continue;
    if ([packet isDiscover] == true) [self performSearchListenerWithOrgCybergarageUpnpSsdpSSDPPacket:packet];
  }
}

- (void)start {
  JavaLangStringBuffer *name = create_JavaLangStringBuffer_initWithNSString_(@"Cyber.SSDPSearchSocket/");
  NSString *localAddr = [self getLocalAddress];
  if (localAddr != nil && 0 < [localAddr java_length]) {
    [((JavaLangStringBuffer *) nil_chk([name appendWithNSString:[self getMulticastAddress]])) appendWithChar:':'];
    [name appendWithInt:[self getMulticastPort]];
  }
  JreStrongAssignAndConsume(&deviceSearchThread_, new_JavaLangThread_initWithJavaLangRunnable_withNSString_(self, [name description]));
  [deviceSearchThread_ start];
}

- (void)stop {
  [self close];
  JreStrongAssign(&deviceSearchThread_, nil);
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgCybergarageUpnpSsdpSSDPSearchSocket class]);
  RELEASE_(deviceSearchListenerList_);
  RELEASE_(deviceSearchThread_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withInt:withNSString:);
  methods[1].selector = @selector(initWithJavaNetInetAddress:);
  methods[2].selector = @selector(openWithJavaNetInet4Address:);
  methods[3].selector = @selector(openWithJavaNetInet6Address:);
  methods[4].selector = @selector(openWithNSString:withNSString:);
  methods[5].selector = @selector(openWithNSString:);
  methods[6].selector = @selector(addSearchListenerWithOrgCybergarageUpnpDeviceSearchListener:);
  methods[7].selector = @selector(removeSearchListenerWithOrgCybergarageUpnpDeviceSearchListener:);
  methods[8].selector = @selector(performSearchListenerWithOrgCybergarageUpnpSsdpSSDPPacket:);
  methods[9].selector = @selector(run);
  methods[10].selector = @selector(start);
  methods[11].selector = @selector(stop);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "useIPv6Address_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "deviceSearchListenerList_", "LOrgCybergarageUtilListenerList;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "deviceSearchThread_", "LJavaLangThread;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;ILNSString;", "LJavaNetInetAddress;", "open", "LJavaNetInet4Address;", "LJavaNetInet6Address;", "LNSString;LNSString;", "LNSString;", "addSearchListener", "LOrgCybergarageUpnpDeviceSearchListener;", "removeSearchListener", "performSearchListener", "LOrgCybergarageUpnpSsdpSSDPPacket;" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpSsdpSSDPSearchSocket = { "SSDPSearchSocket", "org.cybergarage.upnp.ssdp", ptrTable, methods, fields, 7, 0x1, 12, 3, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpSsdpSSDPSearchSocket;
}

@end

void OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithNSString_withInt_withNSString_(OrgCybergarageUpnpSsdpSSDPSearchSocket *self, NSString *bindAddr, jint port, NSString *multicast) {
  OrgCybergarageUpnpSsdpHTTPMUSocket_init(self);
  JreStrongAssignAndConsume(&self->deviceSearchListenerList_, new_OrgCybergarageUtilListenerList_init());
  JreStrongAssign(&self->deviceSearchThread_, nil);
  [self openWithNSString:bindAddr withNSString:multicast];
}

OrgCybergarageUpnpSsdpSSDPSearchSocket *new_OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithNSString_withInt_withNSString_(NSString *bindAddr, jint port, NSString *multicast) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPSearchSocket, initWithNSString_withInt_withNSString_, bindAddr, port, multicast)
}

OrgCybergarageUpnpSsdpSSDPSearchSocket *create_OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithNSString_withInt_withNSString_(NSString *bindAddr, jint port, NSString *multicast) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPSearchSocket, initWithNSString_withInt_withNSString_, bindAddr, port, multicast)
}

void OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithJavaNetInetAddress_(OrgCybergarageUpnpSsdpSSDPSearchSocket *self, JavaNetInetAddress *bindAddr) {
  OrgCybergarageUpnpSsdpHTTPMUSocket_init(self);
  JreStrongAssignAndConsume(&self->deviceSearchListenerList_, new_OrgCybergarageUtilListenerList_init());
  JreStrongAssign(&self->deviceSearchThread_, nil);
  if (((IOSByteArray *) nil_chk([((JavaNetInetAddress *) nil_chk(bindAddr)) getAddress]))->size_ != 4) {
    [self openWithJavaNetInet6Address:(JavaNetInet6Address *) cast_chk(bindAddr, [JavaNetInet6Address class])];
  }
  else {
    [self openWithJavaNetInet4Address:(JavaNetInet4Address *) cast_chk(bindAddr, [JavaNetInet4Address class])];
  }
}

OrgCybergarageUpnpSsdpSSDPSearchSocket *new_OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithJavaNetInetAddress_(JavaNetInetAddress *bindAddr) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpSsdpSSDPSearchSocket, initWithJavaNetInetAddress_, bindAddr)
}

OrgCybergarageUpnpSsdpSSDPSearchSocket *create_OrgCybergarageUpnpSsdpSSDPSearchSocket_initWithJavaNetInetAddress_(JavaNetInetAddress *bindAddr) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpSsdpSSDPSearchSocket, initWithJavaNetInetAddress_, bindAddr)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpSsdpSSDPSearchSocket)
