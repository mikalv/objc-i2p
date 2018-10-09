//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/I2NPMessageHandler.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/i2np/I2NPMessage.h"
#include "net/i2p/data/i2np/I2NPMessageException.h"
#include "net/i2p/data/i2np/I2NPMessageHandler.h"
#include "net/i2p/data/i2np/I2NPMessageImpl.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pDataI2npI2NPMessageHandler () {
 @public
  NetI2pUtilLog *_log_;
  NetI2pI2PAppContext *_context_;
  jlong _lastReadBegin_;
  jlong _lastReadEnd_;
  jint _lastSize_;
  IOSByteArray *_messageBuffer_;
  id<NetI2pDataI2npI2NPMessage> _lastRead_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataI2npI2NPMessageHandler, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pDataI2npI2NPMessageHandler, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pDataI2npI2NPMessageHandler, _messageBuffer_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pDataI2npI2NPMessageHandler, _lastRead_, id<NetI2pDataI2npI2NPMessage>)

@implementation NetI2pDataI2npI2NPMessageHandler

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pDataI2npI2NPMessageHandler_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (id<NetI2pDataI2npI2NPMessage>)lastRead {
  id<NetI2pDataI2npI2NPMessage> rv = _lastRead_;
  JreStrongAssign(&_lastRead_, nil);
  return rv;
}

- (id<NetI2pDataI2npI2NPMessage>)readMessageWithByteArray:(IOSByteArray *)data {
  [self readMessageWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_];
  return [self lastRead];
}

- (jint)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset {
  return [self readMessageWithByteArray:data withInt:offset withInt:((IOSByteArray *) nil_chk(data))->size_ - offset];
}

- (jint)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)maxLen {
  jint cur = offset;
  jint type = IOSByteArray_Get(nil_chk(data), cur) & (jint) 0xff;
  cur++;
  _lastReadBegin_ = JavaLangSystem_currentTimeMillis();
  id<NetI2pDataI2npI2NPMessage> msg = NetI2pDataI2npI2NPMessageImpl_createMessageWithNetI2pI2PAppContext_withInt_(_context_, type);
  @try {
    _lastSize_ = [((id<NetI2pDataI2npI2NPMessage>) nil_chk(msg)) readBytesWithByteArray:data withInt:type withInt:cur withInt:maxLen - 1];
    cur += _lastSize_;
  }
  @catch (NetI2pDataI2npI2NPMessageException *ime) {
    @throw ime;
  }
  @catch (JavaLangRuntimeException *e) {
    if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:@"Error reading the stream" withJavaLangThrowable:e];
    @throw create_NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Unknown error reading the ", [[msg java_getClass] getSimpleName]), e);
  }
  _lastReadEnd_ = JavaLangSystem_currentTimeMillis();
  JreStrongAssign(&_lastRead_, msg);
  return cur - offset;
}

- (jlong)getLastReadTime {
  return _lastReadEnd_ - _lastReadBegin_;
}

- (jint)getLastSize {
  return _lastSize_;
}

- (void)dealloc {
  RELEASE_(_log_);
  RELEASE_(_context_);
  RELEASE_(_messageBuffer_);
  RELEASE_(_lastRead_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npI2NPMessage;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2npI2NPMessage;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 5, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(lastRead);
  methods[2].selector = @selector(readMessageWithByteArray:);
  methods[3].selector = @selector(readMessageWithByteArray:withInt:);
  methods[4].selector = @selector(readMessageWithByteArray:withInt:withInt:);
  methods[5].selector = @selector(getLastReadTime);
  methods[6].selector = @selector(getLastSize);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_context_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_lastReadBegin_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastReadEnd_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_messageBuffer_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastRead_", "LNetI2pDataI2npI2NPMessage;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "readMessage", "[B", "LNetI2pDataI2npI2NPMessageException;", "[BI", "[BII" };
  static const J2ObjcClassInfo _NetI2pDataI2npI2NPMessageHandler = { "I2NPMessageHandler", "net.i2p.data.i2np", ptrTable, methods, fields, 7, 0x1, 7, 7, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2npI2NPMessageHandler;
}

@end

void NetI2pDataI2npI2NPMessageHandler_initWithNetI2pI2PAppContext_(NetI2pDataI2npI2NPMessageHandler *self, NetI2pI2PAppContext *context) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, context);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pDataI2npI2NPMessageHandler_class_()]);
  self->_lastSize_ = -1;
}

NetI2pDataI2npI2NPMessageHandler *new_NetI2pDataI2npI2NPMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pDataI2npI2NPMessageHandler, initWithNetI2pI2PAppContext_, context)
}

NetI2pDataI2npI2NPMessageHandler *create_NetI2pDataI2npI2NPMessageHandler_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pDataI2npI2NPMessageHandler, initWithNetI2pI2PAppContext_, context)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2npI2NPMessageHandler)
