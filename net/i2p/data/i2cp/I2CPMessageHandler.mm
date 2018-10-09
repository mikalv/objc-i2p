//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/i2cp/I2CPMessageHandler.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/i2cp/BandwidthLimitsMessage.h"
#include "net/i2p/data/i2cp/CreateLeaseSetMessage.h"
#include "net/i2p/data/i2cp/CreateSessionMessage.h"
#include "net/i2p/data/i2cp/DestLookupMessage.h"
#include "net/i2p/data/i2cp/DestReplyMessage.h"
#include "net/i2p/data/i2cp/DestroySessionMessage.h"
#include "net/i2p/data/i2cp/DisconnectMessage.h"
#include "net/i2p/data/i2cp/GetBandwidthLimitsMessage.h"
#include "net/i2p/data/i2cp/GetDateMessage.h"
#include "net/i2p/data/i2cp/HostLookupMessage.h"
#include "net/i2p/data/i2cp/HostReplyMessage.h"
#include "net/i2p/data/i2cp/I2CPMessage.h"
#include "net/i2p/data/i2cp/I2CPMessageException.h"
#include "net/i2p/data/i2cp/I2CPMessageHandler.h"
#include "net/i2p/data/i2cp/MessagePayloadMessage.h"
#include "net/i2p/data/i2cp/MessageStatusMessage.h"
#include "net/i2p/data/i2cp/ReceiveMessageBeginMessage.h"
#include "net/i2p/data/i2cp/ReceiveMessageEndMessage.h"
#include "net/i2p/data/i2cp/ReconfigureSessionMessage.h"
#include "net/i2p/data/i2cp/ReportAbuseMessage.h"
#include "net/i2p/data/i2cp/RequestLeaseSetMessage.h"
#include "net/i2p/data/i2cp/RequestVariableLeaseSetMessage.h"
#include "net/i2p/data/i2cp/SendMessageExpiresMessage.h"
#include "net/i2p/data/i2cp/SendMessageMessage.h"
#include "net/i2p/data/i2cp/SessionStatusMessage.h"
#include "net/i2p/data/i2cp/SetDateMessage.h"

@interface NetI2pDataI2cpI2CPMessageHandler ()

+ (id<NetI2pDataI2cpI2CPMessage>)createMessageWithInt:(jint)type;

@end

__attribute__((unused)) static id<NetI2pDataI2cpI2CPMessage> NetI2pDataI2cpI2CPMessageHandler_createMessageWithInt_(jint type);

@implementation NetI2pDataI2cpI2CPMessageHandler

+ (jint)MAX_LENGTH {
  return NetI2pDataI2cpI2CPMessageHandler_MAX_LENGTH;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataI2cpI2CPMessageHandler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<NetI2pDataI2cpI2CPMessage>)readMessageWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  return NetI2pDataI2cpI2CPMessageHandler_readMessageWithJavaIoInputStream_(inArg);
}

+ (id<NetI2pDataI2cpI2CPMessage>)createMessageWithInt:(jint)type {
  return NetI2pDataI2cpI2CPMessageHandler_createMessageWithInt_(type);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpI2CPMessage;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNetI2pDataI2cpI2CPMessage;", 0xa, 3, 4, 5, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readMessageWithJavaIoInputStream:);
  methods[2].selector = @selector(createMessageWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_LENGTH", "I", .constantValue.asInt = NetI2pDataI2cpI2CPMessageHandler_MAX_LENGTH, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "readMessage", "LJavaIoInputStream;", "LJavaIoIOException;LNetI2pDataI2cpI2CPMessageException;", "createMessage", "I", "LNetI2pDataI2cpI2CPMessageException;" };
  static const J2ObjcClassInfo _NetI2pDataI2cpI2CPMessageHandler = { "I2CPMessageHandler", "net.i2p.data.i2cp", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pDataI2cpI2CPMessageHandler;
}

@end

void NetI2pDataI2cpI2CPMessageHandler_init(NetI2pDataI2cpI2CPMessageHandler *self) {
  NSObject_init(self);
}

NetI2pDataI2cpI2CPMessageHandler *new_NetI2pDataI2cpI2CPMessageHandler_init() {
  J2OBJC_NEW_IMPL(NetI2pDataI2cpI2CPMessageHandler, init)
}

NetI2pDataI2cpI2CPMessageHandler *create_NetI2pDataI2cpI2CPMessageHandler_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataI2cpI2CPMessageHandler, init)
}

id<NetI2pDataI2cpI2CPMessage> NetI2pDataI2cpI2CPMessageHandler_readMessageWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  NetI2pDataI2cpI2CPMessageHandler_initialize();
  jint length;
  @try {
    length = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 4);
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_JavaIoIOException_initWithNSString_(@"Connection closed");
  }
  if (length > NetI2pDataI2cpI2CPMessageHandler_MAX_LENGTH) @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(@"Invalid message length specified");
  @try {
    jint type = (jint) NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 1);
    id<NetI2pDataI2cpI2CPMessage> msg = NetI2pDataI2cpI2CPMessageHandler_createMessageWithInt_(type);
    [((id<NetI2pDataI2cpI2CPMessage>) nil_chk(msg)) readMessageWithJavaIoInputStream:inArg withInt:length withInt:type];
    return msg;
  }
  @catch (NetI2pDataDataFormatException *dfe) {
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_withJavaLangThrowable_(@"Error reading the message", dfe);
  }
}

id<NetI2pDataI2cpI2CPMessage> NetI2pDataI2cpI2CPMessageHandler_createMessageWithInt_(jint type) {
  NetI2pDataI2cpI2CPMessageHandler_initialize();
  switch (type) {
    case NetI2pDataI2cpCreateLeaseSetMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpCreateLeaseSetMessage_init();
    case NetI2pDataI2cpCreateSessionMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpCreateSessionMessage_init();
    case NetI2pDataI2cpDestroySessionMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpDestroySessionMessage_init();
    case NetI2pDataI2cpDisconnectMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpDisconnectMessage_init();
    case NetI2pDataI2cpMessageStatusMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpMessageStatusMessage_init();
    case NetI2pDataI2cpMessagePayloadMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpMessagePayloadMessage_init();
    case NetI2pDataI2cpReceiveMessageBeginMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpReceiveMessageBeginMessage_init();
    case NetI2pDataI2cpReceiveMessageEndMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpReceiveMessageEndMessage_init();
    case NetI2pDataI2cpReconfigureSessionMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpReconfigureSessionMessage_init();
    case NetI2pDataI2cpReportAbuseMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpReportAbuseMessage_init();
    case NetI2pDataI2cpRequestLeaseSetMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpRequestLeaseSetMessage_init();
    case NetI2pDataI2cpRequestVariableLeaseSetMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpRequestVariableLeaseSetMessage_init();
    case NetI2pDataI2cpSendMessageMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpSendMessageMessage_init();
    case NetI2pDataI2cpSendMessageExpiresMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpSendMessageExpiresMessage_init();
    case NetI2pDataI2cpSessionStatusMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpSessionStatusMessage_init();
    case NetI2pDataI2cpGetDateMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpGetDateMessage_init();
    case NetI2pDataI2cpSetDateMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpSetDateMessage_init();
    case NetI2pDataI2cpDestLookupMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpDestLookupMessage_init();
    case NetI2pDataI2cpDestReplyMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpDestReplyMessage_init();
    case NetI2pDataI2cpGetBandwidthLimitsMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpGetBandwidthLimitsMessage_init();
    case NetI2pDataI2cpBandwidthLimitsMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpBandwidthLimitsMessage_init();
    case NetI2pDataI2cpHostLookupMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpHostLookupMessage_init();
    case NetI2pDataI2cpHostReplyMessage_MESSAGE_TYPE:
    return create_NetI2pDataI2cpHostReplyMessage_init();
    default:
    @throw create_NetI2pDataI2cpI2CPMessageException_initWithNSString_(JreStrcat("$I$", @"The type ", type, @" is an unknown I2CP message"));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataI2cpI2CPMessageHandler)
