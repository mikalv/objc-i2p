//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/TimeoutPipedOutputStream.java
//

#include "J2ObjC_source.h"
#include "java/io/PipedOutputStream.h"
#include "net/i2p/util/TimeoutPipedInputStream.h"
#include "net/i2p/util/TimeoutPipedOutputStream.h"

@interface NetI2pUtilTimeoutPipedOutputStream () {
 @public
  NetI2pUtilTimeoutPipedInputStream *sink_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pUtilTimeoutPipedOutputStream, sink_, NetI2pUtilTimeoutPipedInputStream *)

@implementation NetI2pUtilTimeoutPipedOutputStream

- (instancetype)initWithNetI2pUtilTimeoutPipedInputStream:(NetI2pUtilTimeoutPipedInputStream *)snk {
  NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(self, snk);
  return self;
}

- (void)close {
  [((NetI2pUtilTimeoutPipedInputStream *) nil_chk(sink_)) x_receivedLast];
  [super close];
}

- (void)dealloc {
  RELEASE_(sink_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pUtilTimeoutPipedInputStream:);
  methods[1].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sink_", "LNetI2pUtilTimeoutPipedInputStream;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pUtilTimeoutPipedInputStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _NetI2pUtilTimeoutPipedOutputStream = { "TimeoutPipedOutputStream", "net.i2p.util", ptrTable, methods, fields, 7, 0x0, 2, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilTimeoutPipedOutputStream;
}

@end

void NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(NetI2pUtilTimeoutPipedOutputStream *self, NetI2pUtilTimeoutPipedInputStream *snk) {
  JavaIoPipedOutputStream_initWithJavaIoPipedInputStream_(self, snk);
  JreStrongAssign(&self->sink_, snk);
}

NetI2pUtilTimeoutPipedOutputStream *new_NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(NetI2pUtilTimeoutPipedInputStream *snk) {
  J2OBJC_NEW_IMPL(NetI2pUtilTimeoutPipedOutputStream, initWithNetI2pUtilTimeoutPipedInputStream_, snk)
}

NetI2pUtilTimeoutPipedOutputStream *create_NetI2pUtilTimeoutPipedOutputStream_initWithNetI2pUtilTimeoutPipedInputStream_(NetI2pUtilTimeoutPipedInputStream *snk) {
  J2OBJC_CREATE_IMPL(NetI2pUtilTimeoutPipedOutputStream, initWithNetI2pUtilTimeoutPipedInputStream_, snk)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilTimeoutPipedOutputStream)