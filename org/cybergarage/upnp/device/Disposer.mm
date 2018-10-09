//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/device/Disposer.java
//

#include "J2ObjC_source.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Thread.h"
#include "org/cybergarage/upnp/ControlPoint.h"
#include "org/cybergarage/upnp/device/Disposer.h"
#include "org/cybergarage/util/ThreadCore.h"

@interface OrgCybergarageUpnpDeviceDisposer () {
 @public
  OrgCybergarageUpnpControlPoint *ctrlPoint_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageUpnpDeviceDisposer, ctrlPoint_, OrgCybergarageUpnpControlPoint *)

@implementation OrgCybergarageUpnpDeviceDisposer

- (instancetype)initWithOrgCybergarageUpnpControlPoint:(OrgCybergarageUpnpControlPoint *)ctrlp {
  OrgCybergarageUpnpDeviceDisposer_initWithOrgCybergarageUpnpControlPoint_(self, ctrlp);
  return self;
}

- (void)setControlPointWithOrgCybergarageUpnpControlPoint:(OrgCybergarageUpnpControlPoint *)ctrlp {
  JreStrongAssign(&ctrlPoint_, ctrlp);
}

- (OrgCybergarageUpnpControlPoint *)getControlPoint {
  return ctrlPoint_;
}

- (void)run {
  [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) setNameWithNSString:@"UPnP-Disposer"];
  OrgCybergarageUpnpControlPoint *ctrlp = [self getControlPoint];
  jlong monitorInterval = [((OrgCybergarageUpnpControlPoint *) nil_chk(ctrlp)) getExpiredDeviceMonitoringInterval] * 1000;
  while ([self isRunnable] == true) {
    @try {
      JavaLangThread_sleepWithLong_(monitorInterval);
    }
    @catch (JavaLangInterruptedException *e) {
    }
    [ctrlp removeExpiredDevices];
  }
}

- (void)dealloc {
  RELEASE_(ctrlPoint_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageUpnpControlPoint;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgCybergarageUpnpControlPoint:);
  methods[1].selector = @selector(setControlPointWithOrgCybergarageUpnpControlPoint:);
  methods[2].selector = @selector(getControlPoint);
  methods[3].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ctrlPoint_", "LOrgCybergarageUpnpControlPoint;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgCybergarageUpnpControlPoint;", "setControlPoint" };
  static const J2ObjcClassInfo _OrgCybergarageUpnpDeviceDisposer = { "Disposer", "org.cybergarage.upnp.device", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageUpnpDeviceDisposer;
}

@end

void OrgCybergarageUpnpDeviceDisposer_initWithOrgCybergarageUpnpControlPoint_(OrgCybergarageUpnpDeviceDisposer *self, OrgCybergarageUpnpControlPoint *ctrlp) {
  OrgCybergarageUtilThreadCore_init(self);
  [self setControlPointWithOrgCybergarageUpnpControlPoint:ctrlp];
}

OrgCybergarageUpnpDeviceDisposer *new_OrgCybergarageUpnpDeviceDisposer_initWithOrgCybergarageUpnpControlPoint_(OrgCybergarageUpnpControlPoint *ctrlp) {
  J2OBJC_NEW_IMPL(OrgCybergarageUpnpDeviceDisposer, initWithOrgCybergarageUpnpControlPoint_, ctrlp)
}

OrgCybergarageUpnpDeviceDisposer *create_OrgCybergarageUpnpDeviceDisposer_initWithOrgCybergarageUpnpControlPoint_(OrgCybergarageUpnpControlPoint *ctrlp) {
  J2OBJC_CREATE_IMPL(OrgCybergarageUpnpDeviceDisposer, initWithOrgCybergarageUpnpControlPoint_, ctrlp)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageUpnpDeviceDisposer)