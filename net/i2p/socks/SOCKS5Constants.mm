//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/socks/SOCKS5Constants.java
//

#include "J2ObjC_source.h"
#include "net/i2p/socks/SOCKS5Constants.h"

@interface NetI2pSocksSOCKS5Constants ()

- (instancetype)init;

@end

__attribute__((unused)) static void NetI2pSocksSOCKS5Constants_init(NetI2pSocksSOCKS5Constants *self);

__attribute__((unused)) static NetI2pSocksSOCKS5Constants *new_NetI2pSocksSOCKS5Constants_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pSocksSOCKS5Constants *create_NetI2pSocksSOCKS5Constants_init(void);

@implementation NetI2pSocksSOCKS5Constants

+ (jint)SOCKS_VERSION_5 {
  return NetI2pSocksSOCKS5Constants_SOCKS_VERSION_5;
}

+ (jint)AUTH_VERSION {
  return NetI2pSocksSOCKS5Constants_AUTH_VERSION;
}

+ (jint)AUTH_SUCCESS {
  return NetI2pSocksSOCKS5Constants_AUTH_SUCCESS;
}

+ (jint)AUTH_FAILURE {
  return NetI2pSocksSOCKS5Constants_AUTH_FAILURE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS5Constants_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SOCKS_VERSION_5", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_SOCKS_VERSION_5, 0x19, -1, -1, -1, -1 },
    { "AUTH_VERSION", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_AUTH_VERSION, 0x19, -1, -1, -1, -1 },
    { "AUTH_SUCCESS", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_AUTH_SUCCESS, 0x19, -1, -1, -1, -1 },
    { "AUTH_FAILURE", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_AUTH_FAILURE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pSocksSOCKS5Constants_Method;LNetI2pSocksSOCKS5Constants_AddressType;LNetI2pSocksSOCKS5Constants_Command;LNetI2pSocksSOCKS5Constants_Reply;" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS5Constants = { "SOCKS5Constants", "net.i2p.socks", ptrTable, methods, fields, 7, 0x1, 1, 4, -1, 0, -1, -1, -1 };
  return &_NetI2pSocksSOCKS5Constants;
}

@end

void NetI2pSocksSOCKS5Constants_init(NetI2pSocksSOCKS5Constants *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS5Constants *new_NetI2pSocksSOCKS5Constants_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS5Constants, init)
}

NetI2pSocksSOCKS5Constants *create_NetI2pSocksSOCKS5Constants_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS5Constants, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS5Constants)

@implementation NetI2pSocksSOCKS5Constants_Method

+ (jint)NO_AUTH_REQUIRED {
  return NetI2pSocksSOCKS5Constants_Method_NO_AUTH_REQUIRED;
}

+ (jint)USERNAME_PASSWORD {
  return NetI2pSocksSOCKS5Constants_Method_USERNAME_PASSWORD;
}

+ (jint)NO_ACCEPTABLE_METHODS {
  return NetI2pSocksSOCKS5Constants_Method_NO_ACCEPTABLE_METHODS;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS5Constants_Method_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_AUTH_REQUIRED", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Method_NO_AUTH_REQUIRED, 0x19, -1, -1, -1, -1 },
    { "USERNAME_PASSWORD", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Method_USERNAME_PASSWORD, 0x19, -1, -1, -1, -1 },
    { "NO_ACCEPTABLE_METHODS", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Method_NO_ACCEPTABLE_METHODS, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pSocksSOCKS5Constants;" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS5Constants_Method = { "Method", "net.i2p.socks", ptrTable, methods, fields, 7, 0x9, 1, 3, 0, -1, -1, -1, -1 };
  return &_NetI2pSocksSOCKS5Constants_Method;
}

@end

void NetI2pSocksSOCKS5Constants_Method_init(NetI2pSocksSOCKS5Constants_Method *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS5Constants_Method *new_NetI2pSocksSOCKS5Constants_Method_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS5Constants_Method, init)
}

NetI2pSocksSOCKS5Constants_Method *create_NetI2pSocksSOCKS5Constants_Method_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS5Constants_Method, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS5Constants_Method)

@implementation NetI2pSocksSOCKS5Constants_AddressType

+ (jint)IPV4 {
  return NetI2pSocksSOCKS5Constants_AddressType_IPV4;
}

+ (jint)DOMAINNAME {
  return NetI2pSocksSOCKS5Constants_AddressType_DOMAINNAME;
}

+ (jint)IPV6 {
  return NetI2pSocksSOCKS5Constants_AddressType_IPV6;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS5Constants_AddressType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "IPV4", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_AddressType_IPV4, 0x19, -1, -1, -1, -1 },
    { "DOMAINNAME", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_AddressType_DOMAINNAME, 0x19, -1, -1, -1, -1 },
    { "IPV6", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_AddressType_IPV6, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pSocksSOCKS5Constants;" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS5Constants_AddressType = { "AddressType", "net.i2p.socks", ptrTable, methods, fields, 7, 0x9, 1, 3, 0, -1, -1, -1, -1 };
  return &_NetI2pSocksSOCKS5Constants_AddressType;
}

@end

void NetI2pSocksSOCKS5Constants_AddressType_init(NetI2pSocksSOCKS5Constants_AddressType *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS5Constants_AddressType *new_NetI2pSocksSOCKS5Constants_AddressType_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS5Constants_AddressType, init)
}

NetI2pSocksSOCKS5Constants_AddressType *create_NetI2pSocksSOCKS5Constants_AddressType_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS5Constants_AddressType, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS5Constants_AddressType)

@implementation NetI2pSocksSOCKS5Constants_Command

+ (jint)CONNECT {
  return NetI2pSocksSOCKS5Constants_Command_CONNECT;
}

+ (jint)BIND {
  return NetI2pSocksSOCKS5Constants_Command_BIND;
}

+ (jint)UDP_ASSOCIATE {
  return NetI2pSocksSOCKS5Constants_Command_UDP_ASSOCIATE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS5Constants_Command_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CONNECT", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Command_CONNECT, 0x19, -1, -1, -1, -1 },
    { "BIND", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Command_BIND, 0x19, -1, -1, -1, -1 },
    { "UDP_ASSOCIATE", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Command_UDP_ASSOCIATE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pSocksSOCKS5Constants;" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS5Constants_Command = { "Command", "net.i2p.socks", ptrTable, methods, fields, 7, 0x9, 1, 3, 0, -1, -1, -1, -1 };
  return &_NetI2pSocksSOCKS5Constants_Command;
}

@end

void NetI2pSocksSOCKS5Constants_Command_init(NetI2pSocksSOCKS5Constants_Command *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS5Constants_Command *new_NetI2pSocksSOCKS5Constants_Command_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS5Constants_Command, init)
}

NetI2pSocksSOCKS5Constants_Command *create_NetI2pSocksSOCKS5Constants_Command_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS5Constants_Command, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS5Constants_Command)

@implementation NetI2pSocksSOCKS5Constants_Reply

+ (jint)SUCCEEDED {
  return NetI2pSocksSOCKS5Constants_Reply_SUCCEEDED;
}

+ (jint)GENERAL_SOCKS_SERVER_FAILURE {
  return NetI2pSocksSOCKS5Constants_Reply_GENERAL_SOCKS_SERVER_FAILURE;
}

+ (jint)CONNECTION_NOT_ALLOWED_BY_RULESET {
  return NetI2pSocksSOCKS5Constants_Reply_CONNECTION_NOT_ALLOWED_BY_RULESET;
}

+ (jint)NETWORK_UNREACHABLE {
  return NetI2pSocksSOCKS5Constants_Reply_NETWORK_UNREACHABLE;
}

+ (jint)HOST_UNREACHABLE {
  return NetI2pSocksSOCKS5Constants_Reply_HOST_UNREACHABLE;
}

+ (jint)CONNECTION_REFUSED {
  return NetI2pSocksSOCKS5Constants_Reply_CONNECTION_REFUSED;
}

+ (jint)TTL_EXPIRED {
  return NetI2pSocksSOCKS5Constants_Reply_TTL_EXPIRED;
}

+ (jint)COMMAND_NOT_SUPPORTED {
  return NetI2pSocksSOCKS5Constants_Reply_COMMAND_NOT_SUPPORTED;
}

+ (jint)ADDRESS_TYPE_NOT_SUPPORTED {
  return NetI2pSocksSOCKS5Constants_Reply_ADDRESS_TYPE_NOT_SUPPORTED;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pSocksSOCKS5Constants_Reply_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SUCCEEDED", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_SUCCEEDED, 0x19, -1, -1, -1, -1 },
    { "GENERAL_SOCKS_SERVER_FAILURE", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_GENERAL_SOCKS_SERVER_FAILURE, 0x19, -1, -1, -1, -1 },
    { "CONNECTION_NOT_ALLOWED_BY_RULESET", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_CONNECTION_NOT_ALLOWED_BY_RULESET, 0x19, -1, -1, -1, -1 },
    { "NETWORK_UNREACHABLE", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_NETWORK_UNREACHABLE, 0x19, -1, -1, -1, -1 },
    { "HOST_UNREACHABLE", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_HOST_UNREACHABLE, 0x19, -1, -1, -1, -1 },
    { "CONNECTION_REFUSED", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_CONNECTION_REFUSED, 0x19, -1, -1, -1, -1 },
    { "TTL_EXPIRED", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_TTL_EXPIRED, 0x19, -1, -1, -1, -1 },
    { "COMMAND_NOT_SUPPORTED", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_COMMAND_NOT_SUPPORTED, 0x19, -1, -1, -1, -1 },
    { "ADDRESS_TYPE_NOT_SUPPORTED", "I", .constantValue.asInt = NetI2pSocksSOCKS5Constants_Reply_ADDRESS_TYPE_NOT_SUPPORTED, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pSocksSOCKS5Constants;" };
  static const J2ObjcClassInfo _NetI2pSocksSOCKS5Constants_Reply = { "Reply", "net.i2p.socks", ptrTable, methods, fields, 7, 0x9, 1, 9, 0, -1, -1, -1, -1 };
  return &_NetI2pSocksSOCKS5Constants_Reply;
}

@end

void NetI2pSocksSOCKS5Constants_Reply_init(NetI2pSocksSOCKS5Constants_Reply *self) {
  NSObject_init(self);
}

NetI2pSocksSOCKS5Constants_Reply *new_NetI2pSocksSOCKS5Constants_Reply_init() {
  J2OBJC_NEW_IMPL(NetI2pSocksSOCKS5Constants_Reply, init)
}

NetI2pSocksSOCKS5Constants_Reply *create_NetI2pSocksSOCKS5Constants_Reply_init() {
  J2OBJC_CREATE_IMPL(NetI2pSocksSOCKS5Constants_Reply, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pSocksSOCKS5Constants_Reply)