//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPSocket.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/net/InetAddress.h"
#include "java/net/Socket.h"
#include "java/util/Calendar.h"
#include "org/cybergarage/http/HTTP.h"
#include "org/cybergarage/http/HTTPResponse.h"
#include "org/cybergarage/http/HTTPSocket.h"

@interface OrgCybergarageHttpHTTPSocket () {
 @public
  JavaNetSocket *socket_;
  JavaIoInputStream *sockIn_;
  JavaIoOutputStream *sockOut_;
}

- (void)setSocketWithJavaNetSocket:(JavaNetSocket *)socket;

- (void)setInputStreamWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)setOutputStreamWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (JavaIoOutputStream *)getOutputStream;

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes
                                     withByteArray:(IOSByteArray *)content
                                          withLong:(jlong)contentOffset
                                          withLong:(jlong)contentLength
                                       withBoolean:(jboolean)isOnlyHeader;

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes
                             withJavaIoInputStream:(JavaIoInputStream *)inArg
                                          withLong:(jlong)contentOffset
                                          withLong:(jlong)contentLength
                                       withBoolean:(jboolean)isOnlyHeader;

@end

J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPSocket, socket_, JavaNetSocket *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPSocket, sockIn_, JavaIoInputStream *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPSocket, sockOut_, JavaIoOutputStream *)

__attribute__((unused)) static void OrgCybergarageHttpHTTPSocket_setSocketWithJavaNetSocket_(OrgCybergarageHttpHTTPSocket *self, JavaNetSocket *socket);

__attribute__((unused)) static void OrgCybergarageHttpHTTPSocket_setInputStreamWithJavaIoInputStream_(OrgCybergarageHttpHTTPSocket *self, JavaIoInputStream *inArg);

__attribute__((unused)) static void OrgCybergarageHttpHTTPSocket_setOutputStreamWithJavaIoOutputStream_(OrgCybergarageHttpHTTPSocket *self, JavaIoOutputStream *outArg);

__attribute__((unused)) static JavaIoOutputStream *OrgCybergarageHttpHTTPSocket_getOutputStream(OrgCybergarageHttpHTTPSocket *self);

__attribute__((unused)) static jboolean OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withByteArray_withLong_withLong_withBoolean_(OrgCybergarageHttpHTTPSocket *self, OrgCybergarageHttpHTTPResponse *httpRes, IOSByteArray *content, jlong contentOffset, jlong contentLength, jboolean isOnlyHeader);

__attribute__((unused)) static jboolean OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withJavaIoInputStream_withLong_withLong_withBoolean_(OrgCybergarageHttpHTTPSocket *self, OrgCybergarageHttpHTTPResponse *httpRes, JavaIoInputStream *inArg, jlong contentOffset, jlong contentLength, jboolean isOnlyHeader);

@implementation OrgCybergarageHttpHTTPSocket

- (instancetype)initWithJavaNetSocket:(JavaNetSocket *)socket {
  OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(self, socket);
  return self;
}

- (instancetype)initWithOrgCybergarageHttpHTTPSocket:(OrgCybergarageHttpHTTPSocket *)socket {
  OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(self, socket);
  return self;
}

- (void)java_finalize {
  [self close];
}

- (void)setSocketWithJavaNetSocket:(JavaNetSocket *)socket {
  OrgCybergarageHttpHTTPSocket_setSocketWithJavaNetSocket_(self, socket);
}

- (JavaNetSocket *)getSocket {
  return socket_;
}

- (NSString *)getLocalAddress {
  return [((JavaNetInetAddress *) nil_chk([((JavaNetSocket *) nil_chk([self getSocket])) getLocalAddress])) getHostAddress];
}

- (jint)getLocalPort {
  return [((JavaNetSocket *) nil_chk([self getSocket])) getLocalPort];
}

- (void)setInputStreamWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  OrgCybergarageHttpHTTPSocket_setInputStreamWithJavaIoInputStream_(self, inArg);
}

- (JavaIoInputStream *)getInputStream {
  return sockIn_;
}

- (void)setOutputStreamWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  OrgCybergarageHttpHTTPSocket_setOutputStreamWithJavaIoOutputStream_(self, outArg);
}

- (JavaIoOutputStream *)getOutputStream {
  return OrgCybergarageHttpHTTPSocket_getOutputStream(self);
}

- (jboolean)open {
  JavaNetSocket *sock = [self getSocket];
  @try {
    JreStrongAssign(&sockIn_, [((JavaNetSocket *) nil_chk(sock)) getInputStream]);
    JreStrongAssign(&sockOut_, [sock getOutputStream]);
  }
  @catch (JavaLangException *e) {
    return false;
  }
  return true;
}

- (jboolean)close {
  @try {
    if (sockIn_ != nil) [sockIn_ close];
    if (sockOut_ != nil) [sockOut_ close];
    [((JavaNetSocket *) nil_chk([self getSocket])) close];
  }
  @catch (JavaLangException *e) {
    return false;
  }
  return true;
}

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes
                                     withByteArray:(IOSByteArray *)content
                                          withLong:(jlong)contentOffset
                                          withLong:(jlong)contentLength
                                       withBoolean:(jboolean)isOnlyHeader {
  return OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withByteArray_withLong_withLong_withBoolean_(self, httpRes, content, contentOffset, contentLength, isOnlyHeader);
}

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes
                             withJavaIoInputStream:(JavaIoInputStream *)inArg
                                          withLong:(jlong)contentOffset
                                          withLong:(jlong)contentLength
                                       withBoolean:(jboolean)isOnlyHeader {
  return OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withJavaIoInputStream_withLong_withLong_withBoolean_(self, httpRes, inArg, contentOffset, contentLength, isOnlyHeader);
}

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes
                                          withLong:(jlong)contentOffset
                                          withLong:(jlong)contentLength
                                       withBoolean:(jboolean)isOnlyHeader {
  if ([((OrgCybergarageHttpHTTPResponse *) nil_chk(httpRes)) hasContentInputStream] == true) return OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withJavaIoInputStream_withLong_withLong_withBoolean_(self, httpRes, [httpRes getContentInputStream], contentOffset, contentLength, isOnlyHeader);
  return OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withByteArray_withLong_withLong_withBoolean_(self, httpRes, [httpRes getContent], contentOffset, contentLength, isOnlyHeader);
}

- (void)dealloc {
  JreCheckFinalize(self, [OrgCybergarageHttpHTTPSocket class]);
  RELEASE_(socket_);
  RELEASE_(sockIn_);
  RELEASE_(sockOut_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 0, -1, -1, -1, -1 },
    { NULL, "LJavaNetSocket;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaIoInputStream;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 6, 7, -1, -1, -1, -1 },
    { NULL, "LJavaIoOutputStream;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 8, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 8, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaNetSocket:);
  methods[1].selector = @selector(initWithOrgCybergarageHttpHTTPSocket:);
  methods[2].selector = @selector(java_finalize);
  methods[3].selector = @selector(setSocketWithJavaNetSocket:);
  methods[4].selector = @selector(getSocket);
  methods[5].selector = @selector(getLocalAddress);
  methods[6].selector = @selector(getLocalPort);
  methods[7].selector = @selector(setInputStreamWithJavaIoInputStream:);
  methods[8].selector = @selector(getInputStream);
  methods[9].selector = @selector(setOutputStreamWithJavaIoOutputStream:);
  methods[10].selector = @selector(getOutputStream);
  methods[11].selector = @selector(open);
  methods[12].selector = @selector(close);
  methods[13].selector = @selector(postWithOrgCybergarageHttpHTTPResponse:withByteArray:withLong:withLong:withBoolean:);
  methods[14].selector = @selector(postWithOrgCybergarageHttpHTTPResponse:withJavaIoInputStream:withLong:withLong:withBoolean:);
  methods[15].selector = @selector(postWithOrgCybergarageHttpHTTPResponse:withLong:withLong:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "socket_", "LJavaNetSocket;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sockIn_", "LJavaIoInputStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sockOut_", "LJavaIoOutputStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaNetSocket;", "LOrgCybergarageHttpHTTPSocket;", "finalize", "setSocket", "setInputStream", "LJavaIoInputStream;", "setOutputStream", "LJavaIoOutputStream;", "post", "LOrgCybergarageHttpHTTPResponse;[BJJZ", "LOrgCybergarageHttpHTTPResponse;LJavaIoInputStream;JJZ", "LOrgCybergarageHttpHTTPResponse;JJZ" };
  static const J2ObjcClassInfo _OrgCybergarageHttpHTTPSocket = { "HTTPSocket", "org.cybergarage.http", ptrTable, methods, fields, 7, 0x1, 16, 3, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageHttpHTTPSocket;
}

@end

void OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(OrgCybergarageHttpHTTPSocket *self, JavaNetSocket *socket) {
  NSObject_init(self);
  JreStrongAssign(&self->socket_, nil);
  JreStrongAssign(&self->sockIn_, nil);
  JreStrongAssign(&self->sockOut_, nil);
  OrgCybergarageHttpHTTPSocket_setSocketWithJavaNetSocket_(self, socket);
  [self open];
}

OrgCybergarageHttpHTTPSocket *new_OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(JavaNetSocket *socket) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPSocket, initWithJavaNetSocket_, socket)
}

OrgCybergarageHttpHTTPSocket *create_OrgCybergarageHttpHTTPSocket_initWithJavaNetSocket_(JavaNetSocket *socket) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPSocket, initWithJavaNetSocket_, socket)
}

void OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *self, OrgCybergarageHttpHTTPSocket *socket) {
  NSObject_init(self);
  JreStrongAssign(&self->socket_, nil);
  JreStrongAssign(&self->sockIn_, nil);
  JreStrongAssign(&self->sockOut_, nil);
  OrgCybergarageHttpHTTPSocket_setSocketWithJavaNetSocket_(self, [((OrgCybergarageHttpHTTPSocket *) nil_chk(socket)) getSocket]);
  OrgCybergarageHttpHTTPSocket_setInputStreamWithJavaIoInputStream_(self, [socket getInputStream]);
  OrgCybergarageHttpHTTPSocket_setOutputStreamWithJavaIoOutputStream_(self, OrgCybergarageHttpHTTPSocket_getOutputStream(socket));
}

OrgCybergarageHttpHTTPSocket *new_OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *socket) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPSocket, initWithOrgCybergarageHttpHTTPSocket_, socket)
}

OrgCybergarageHttpHTTPSocket *create_OrgCybergarageHttpHTTPSocket_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *socket) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPSocket, initWithOrgCybergarageHttpHTTPSocket_, socket)
}

void OrgCybergarageHttpHTTPSocket_setSocketWithJavaNetSocket_(OrgCybergarageHttpHTTPSocket *self, JavaNetSocket *socket) {
  JreStrongAssign(&self->socket_, socket);
}

void OrgCybergarageHttpHTTPSocket_setInputStreamWithJavaIoInputStream_(OrgCybergarageHttpHTTPSocket *self, JavaIoInputStream *inArg) {
  JreStrongAssign(&self->sockIn_, inArg);
}

void OrgCybergarageHttpHTTPSocket_setOutputStreamWithJavaIoOutputStream_(OrgCybergarageHttpHTTPSocket *self, JavaIoOutputStream *outArg) {
  JreStrongAssign(&self->sockOut_, outArg);
}

JavaIoOutputStream *OrgCybergarageHttpHTTPSocket_getOutputStream(OrgCybergarageHttpHTTPSocket *self) {
  return self->sockOut_;
}

jboolean OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withByteArray_withLong_withLong_withBoolean_(OrgCybergarageHttpHTTPSocket *self, OrgCybergarageHttpHTTPResponse *httpRes, IOSByteArray *content, jlong contentOffset, jlong contentLength, jboolean isOnlyHeader) {
  [((OrgCybergarageHttpHTTPResponse *) nil_chk(httpRes)) setDateWithJavaUtilCalendar:JavaUtilCalendar_getInstance()];
  JavaIoOutputStream *out = OrgCybergarageHttpHTTPSocket_getOutputStream(self);
  @try {
    [httpRes setContentLengthWithLong:contentLength];
    [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:[((NSString *) nil_chk([httpRes getHeader])) java_getBytes]];
    [out writeWithByteArray:[((NSString *) nil_chk(OrgCybergarageHttpHTTP_CRLF)) java_getBytes]];
    if (isOnlyHeader == true) {
      [out flush];
      return true;
    }
    jboolean isChunkedResponse = [httpRes isChunked];
    if (isChunkedResponse == true) {
      NSString *chunSizeBuf = JavaLangLong_toHexStringWithLong_(contentLength);
      [out writeWithByteArray:[((NSString *) nil_chk(chunSizeBuf)) java_getBytes]];
      [out writeWithByteArray:[OrgCybergarageHttpHTTP_CRLF java_getBytes]];
    }
    [out writeWithByteArray:content withInt:(jint) contentOffset withInt:(jint) contentLength];
    if (isChunkedResponse == true) {
      [out writeWithByteArray:[OrgCybergarageHttpHTTP_CRLF java_getBytes]];
      [out writeWithByteArray:[@"0" java_getBytes]];
      [out writeWithByteArray:[OrgCybergarageHttpHTTP_CRLF java_getBytes]];
    }
    [out flush];
  }
  @catch (JavaLangException *e) {
    return false;
  }
  return true;
}

jboolean OrgCybergarageHttpHTTPSocket_postWithOrgCybergarageHttpHTTPResponse_withJavaIoInputStream_withLong_withLong_withBoolean_(OrgCybergarageHttpHTTPSocket *self, OrgCybergarageHttpHTTPResponse *httpRes, JavaIoInputStream *inArg, jlong contentOffset, jlong contentLength, jboolean isOnlyHeader) {
  [((OrgCybergarageHttpHTTPResponse *) nil_chk(httpRes)) setDateWithJavaUtilCalendar:JavaUtilCalendar_getInstance()];
  JavaIoOutputStream *out = OrgCybergarageHttpHTTPSocket_getOutputStream(self);
  @try {
    [httpRes setContentLengthWithLong:contentLength];
    [((JavaIoOutputStream *) nil_chk(out)) writeWithByteArray:[((NSString *) nil_chk([httpRes getHeader])) java_getBytes]];
    [out writeWithByteArray:[((NSString *) nil_chk(OrgCybergarageHttpHTTP_CRLF)) java_getBytes]];
    if (isOnlyHeader == true) {
      [out flush];
      return true;
    }
    jboolean isChunkedResponse = [httpRes isChunked];
    if (0 < contentOffset) [((JavaIoInputStream *) nil_chk(inArg)) skipWithLong:contentOffset];
    jint chunkSize = OrgCybergarageHttpHTTP_getChunkSize();
    IOSByteArray *readBuf = [IOSByteArray arrayWithLength:chunkSize];
    jlong readCnt = 0;
    jlong readSize = (chunkSize < contentLength) ? chunkSize : contentLength;
    jint readLen = [((JavaIoInputStream *) nil_chk(inArg)) readWithByteArray:readBuf withInt:0 withInt:(jint) readSize];
    while (0 < readLen && readCnt < contentLength) {
      if (isChunkedResponse == true) {
        NSString *chunSizeBuf = JavaLangLong_toHexStringWithLong_(readLen);
        [out writeWithByteArray:[((NSString *) nil_chk(chunSizeBuf)) java_getBytes]];
        [out writeWithByteArray:[OrgCybergarageHttpHTTP_CRLF java_getBytes]];
      }
      [out writeWithByteArray:readBuf withInt:0 withInt:readLen];
      if (isChunkedResponse == true) [out writeWithByteArray:[OrgCybergarageHttpHTTP_CRLF java_getBytes]];
      readCnt += readLen;
      readSize = (chunkSize < (contentLength - readCnt)) ? chunkSize : (contentLength - readCnt);
      readLen = [inArg readWithByteArray:readBuf withInt:0 withInt:(jint) readSize];
    }
    if (isChunkedResponse == true) {
      [out writeWithByteArray:[@"0" java_getBytes]];
      [out writeWithByteArray:[OrgCybergarageHttpHTTP_CRLF java_getBytes]];
    }
    [out flush];
  }
  @catch (JavaLangException *e) {
    return false;
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageHttpHTTPSocket)
