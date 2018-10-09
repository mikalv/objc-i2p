//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPRequest.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuffer.h"
#include "java/net/InetSocketAddress.h"
#include "java/net/Socket.h"
#include "java/net/SocketAddress.h"
#include "java/net/SocketException.h"
#include "java/util/StringTokenizer.h"
#include "org/cybergarage/http/HTTP.h"
#include "org/cybergarage/http/HTTPPacket.h"
#include "org/cybergarage/http/HTTPRequest.h"
#include "org/cybergarage/http/HTTPResponse.h"
#include "org/cybergarage/http/HTTPSocket.h"
#include "org/cybergarage/http/HTTPStatus.h"
#include "org/cybergarage/http/Parameter.h"
#include "org/cybergarage/http/ParameterList.h"
#include "org/cybergarage/util/Debug.h"

@interface OrgCybergarageHttpHTTPRequest () {
 @public
  NSString *method_;
  NSString *uri_;
  NSString *requestHost_;
  jint requestPort_;
  OrgCybergarageHttpHTTPSocket *httpSocket_;
  JavaNetSocket *postSocket_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPRequest, method_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPRequest, uri_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPRequest, requestHost_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPRequest, httpSocket_, OrgCybergarageHttpHTTPSocket *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPRequest, postSocket_, JavaNetSocket *)

@implementation OrgCybergarageHttpHTTPRequest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageHttpHTTPRequest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  OrgCybergarageHttpHTTPRequest_initWithJavaIoInputStream_(self, inArg);
  return self;
}

- (instancetype)initWithOrgCybergarageHttpHTTPSocket:(OrgCybergarageHttpHTTPSocket *)httpSock {
  OrgCybergarageHttpHTTPRequest_initWithOrgCybergarageHttpHTTPSocket_(self, httpSock);
  return self;
}

- (void)setMethodWithNSString:(NSString *)value {
  JreStrongAssign(&method_, value);
}

- (NSString *)getMethod {
  if (method_ != nil) return method_;
  return [self getFirstLineTokenWithInt:0];
}

- (jboolean)isMethodWithNSString:(NSString *)method {
  NSString *headerMethod = [self getMethod];
  if (headerMethod == nil) return false;
  return [headerMethod java_equalsIgnoreCase:method];
}

- (jboolean)isGetRequest {
  return [self isMethodWithNSString:OrgCybergarageHttpHTTP_GET];
}

- (jboolean)isPostRequest {
  return [self isMethodWithNSString:OrgCybergarageHttpHTTP_POST];
}

- (jboolean)isHeadRequest {
  return [self isMethodWithNSString:OrgCybergarageHttpHTTP_HEAD];
}

- (jboolean)isSubscribeRequest {
  return [self isMethodWithNSString:OrgCybergarageHttpHTTP_SUBSCRIBE];
}

- (jboolean)isUnsubscribeRequest {
  return [self isMethodWithNSString:OrgCybergarageHttpHTTP_UNSUBSCRIBE];
}

- (jboolean)isNotifyRequest {
  return [self isMethodWithNSString:OrgCybergarageHttpHTTP_NOTIFY];
}

- (void)setURIWithNSString:(NSString *)value
               withBoolean:(jboolean)isCheckRelativeURL {
  JreStrongAssign(&uri_, value);
  if (isCheckRelativeURL == false) return;
  JreStrongAssign(&uri_, OrgCybergarageHttpHTTP_toRelativeURLWithNSString_(uri_));
}

- (void)setURIWithNSString:(NSString *)value {
  [self setURIWithNSString:value withBoolean:false];
}

- (NSString *)getURI {
  if (uri_ != nil) return uri_;
  return [self getFirstLineTokenWithInt:1];
}

- (OrgCybergarageHttpParameterList *)getParameterList {
  OrgCybergarageHttpParameterList *paramList = create_OrgCybergarageHttpParameterList_init();
  NSString *uri = [self getURI];
  if (uri == nil) return paramList;
  jint paramIdx = [uri java_indexOf:'?'];
  if (paramIdx < 0) return paramList;
  while (0 < paramIdx) {
    jint eqIdx = [uri java_indexOf:'=' fromIndex:(paramIdx + 1)];
    NSString *name = [uri java_substring:paramIdx + 1 endIndex:eqIdx];
    jint nextParamIdx = [uri java_indexOf:'&' fromIndex:(eqIdx + 1)];
    NSString *value = [uri java_substring:eqIdx + 1 endIndex:(0 < nextParamIdx) ? nextParamIdx : [uri java_length]];
    OrgCybergarageHttpParameter *param = create_OrgCybergarageHttpParameter_initWithNSString_withNSString_(name, value);
    [paramList addWithId:param];
    paramIdx = nextParamIdx;
  }
  return paramList;
}

- (NSString *)getParameterValueWithNSString:(NSString *)name {
  OrgCybergarageHttpParameterList *paramList = [self getParameterList];
  return [((OrgCybergarageHttpParameterList *) nil_chk(paramList)) getValueWithNSString:name];
}

- (jboolean)isSOAPAction {
  return [self hasHeaderWithNSString:OrgCybergarageHttpHTTP_SOAP_ACTION];
}

- (void)setRequestHostWithNSString:(NSString *)host {
  JreStrongAssign(&requestHost_, host);
}

- (NSString *)getRequestHost {
  return requestHost_;
}

- (void)setRequestPortWithInt:(jint)host {
  requestPort_ = host;
}

- (jint)getRequestPort {
  return requestPort_;
}

- (void)setSocketWithOrgCybergarageHttpHTTPSocket:(OrgCybergarageHttpHTTPSocket *)value {
  JreStrongAssign(&httpSocket_, value);
}

- (OrgCybergarageHttpHTTPSocket *)getSocket {
  return httpSocket_;
}

- (NSString *)getLocalAddress {
  return [((OrgCybergarageHttpHTTPSocket *) nil_chk([self getSocket])) getLocalAddress];
}

- (jint)getLocalPort {
  return [((OrgCybergarageHttpHTTPSocket *) nil_chk([self getSocket])) getLocalPort];
}

- (jboolean)parseRequestLineWithNSString:(NSString *)lineStr {
  JavaUtilStringTokenizer *st = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(lineStr, OrgCybergarageHttpHTTP_REQEST_LINE_DELIM);
  if ([st hasMoreTokens] == false) return false;
  [self setMethodWithNSString:[st nextToken]];
  if ([st hasMoreTokens] == false) return false;
  [self setURIWithNSString:[st nextToken]];
  if ([st hasMoreTokens] == false) return false;
  [self setVersionWithNSString:[st nextToken]];
  return true;
}

- (NSString *)getHTTPVersion {
  if ([self hasFirstLine] == true) return [self getFirstLineTokenWithInt:2];
  return JreStrcat("$$", @"HTTP/", [super getVersion]);
}

- (NSString *)getFirstLineString {
  return JreStrcat("$C$C$$", [self getMethod], ' ', [self getURI], ' ', [self getHTTPVersion], OrgCybergarageHttpHTTP_CRLF);
}

- (NSString *)getHeader {
  JavaLangStringBuffer *str = create_JavaLangStringBuffer_init();
  [str appendWithNSString:[self getFirstLineString]];
  NSString *headerString = [self getHeaderString];
  [str appendWithNSString:headerString];
  return [str description];
}

- (jboolean)isKeepAlive {
  if ([self isCloseConnection] == true) return false;
  if ([self isKeepAliveConnection] == true) return true;
  NSString *httpVer = [self getHTTPVersion];
  jboolean isHTTP10 = (0 < [((NSString *) nil_chk(httpVer)) java_indexOfString:@"1.0"]) ? true : false;
  if (isHTTP10 == true) return false;
  return true;
}

- (jboolean)read {
  return [super readWithOrgCybergarageHttpHTTPSocket:[self getSocket]];
}

- (jboolean)postWithOrgCybergarageHttpHTTPResponse:(OrgCybergarageHttpHTTPResponse *)httpRes {
  OrgCybergarageHttpHTTPSocket *httpSock = [self getSocket];
  jlong offset = 0;
  jlong length = [((OrgCybergarageHttpHTTPResponse *) nil_chk(httpRes)) getContentLength];
  if ([self hasContentRange] == true) {
    jlong firstPos = [self getContentRangeFirstPosition];
    jlong lastPos = [self getContentRangeLastPosition];
    if (lastPos <= 0) lastPos = length - 1;
    if ((firstPos > length) || (lastPos > length)) return [self returnResponseWithInt:OrgCybergarageHttpHTTPStatus_INVALID_RANGE];
    [httpRes setContentRangeWithLong:firstPos withLong:lastPos withLong:length];
    [httpRes setStatusCodeWithInt:OrgCybergarageHttpHTTPStatus_PARTIAL_CONTENT];
    offset = firstPos;
    length = lastPos - firstPos + 1;
  }
  return [((OrgCybergarageHttpHTTPSocket *) nil_chk(httpSock)) postWithOrgCybergarageHttpHTTPResponse:httpRes withLong:offset withLong:length withBoolean:[self isHeadRequest]];
}

- (OrgCybergarageHttpHTTPResponse *)postWithNSString:(NSString *)host
                                             withInt:(jint)port
                                         withBoolean:(jboolean)isKeepAlive {
  OrgCybergarageHttpHTTPResponse *httpRes = create_OrgCybergarageHttpHTTPResponse_init();
  [self setHostWithNSString:host];
  [self setConnectionWithNSString:(isKeepAlive == true) ? OrgCybergarageHttpHTTP_KEEP_ALIVE : OrgCybergarageHttpHTTP_CLOSE];
  jboolean isHeaderRequest = [self isHeadRequest];
  JavaIoOutputStream *out = nil;
  JavaIoInputStream *in = nil;
  @try {
    if (postSocket_ == nil) {
      JreStrongAssignAndConsume(&postSocket_, new_JavaNetSocket_init());
      [postSocket_ setSoTimeoutWithInt:2000];
      JavaNetSocketAddress *sa = create_JavaNetInetSocketAddress_initWithNSString_withInt_(host, port);
      [((JavaNetSocket *) nil_chk(postSocket_)) connectWithJavaNetSocketAddress:sa withInt:3000];
    }
    out = [((JavaNetSocket *) nil_chk(postSocket_)) getOutputStream];
    JavaIoPrintStream *pout = create_JavaIoPrintStream_initWithJavaIoOutputStream_(out);
    [pout printWithNSString:[self getHeader]];
    [pout printWithNSString:OrgCybergarageHttpHTTP_CRLF];
    jboolean isChunkedRequest = [self isChunked];
    NSString *content = [self getContentString];
    jint contentLength = 0;
    if (content != nil) contentLength = [content java_length];
    if (0 < contentLength) {
      if (isChunkedRequest == true) {
        NSString *chunSizeBuf = JavaLangLong_toHexStringWithLong_(contentLength);
        [pout printWithNSString:chunSizeBuf];
        [pout printWithNSString:OrgCybergarageHttpHTTP_CRLF];
      }
      [pout printWithNSString:content];
      if (isChunkedRequest == true) [pout printWithNSString:OrgCybergarageHttpHTTP_CRLF];
    }
    if (isChunkedRequest == true) {
      [pout printWithNSString:@"0"];
      [pout printWithNSString:OrgCybergarageHttpHTTP_CRLF];
    }
    [pout flush];
    in = [((JavaNetSocket *) nil_chk(postSocket_)) getInputStream];
    [httpRes setWithJavaIoInputStream:in withBoolean:isHeaderRequest];
  }
  @catch (JavaNetSocketException *e) {
    [httpRes setStatusCodeWithInt:OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR];
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
  }
  @catch (JavaIoIOException *e) {
    [httpRes setStatusCodeWithInt:OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR];
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
  }
  @finally {
    if (isKeepAlive == false) {
      @try {
        [((JavaIoInputStream *) nil_chk(in)) close];
      }
      @catch (JavaLangException *e) {
      }
      
      ;
      if (in != nil) @try {
        [((JavaIoOutputStream *) nil_chk(out)) close];
      }
      @catch (JavaLangException *e) {
      }
      
      ;
      if (out != nil) @try {
        [((JavaNetSocket *) nil_chk(postSocket_)) close];
      }
      @catch (JavaLangException *e) {
      }
      
      ;
      JreStrongAssign(&postSocket_, nil);
    }
  }
  return httpRes;
}

- (OrgCybergarageHttpHTTPResponse *)postWithNSString:(NSString *)host
                                             withInt:(jint)port {
  return [self postWithNSString:host withInt:port withBoolean:false];
}

- (void)setWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq {
  [self setWithOrgCybergarageHttpHTTPPacket:httpReq];
  [self setSocketWithOrgCybergarageHttpHTTPSocket:[((OrgCybergarageHttpHTTPRequest *) nil_chk(httpReq)) getSocket]];
}

- (jboolean)returnResponseWithInt:(jint)statusCode {
  OrgCybergarageHttpHTTPResponse *httpRes = create_OrgCybergarageHttpHTTPResponse_init();
  [httpRes setStatusCodeWithInt:statusCode];
  [httpRes setContentLengthWithLong:0];
  return [self postWithOrgCybergarageHttpHTTPResponse:httpRes];
}

- (jboolean)returnOK {
  return [self returnResponseWithInt:OrgCybergarageHttpHTTPStatus_OK];
}

- (jboolean)returnBadRequest {
  return [self returnResponseWithInt:OrgCybergarageHttpHTTPStatus_BAD_REQUEST];
}

- (NSString *)description {
  JavaLangStringBuffer *str = create_JavaLangStringBuffer_init();
  [str appendWithNSString:[self getHeader]];
  [str appendWithNSString:OrgCybergarageHttpHTTP_CRLF];
  [str appendWithNSString:[self getContentString]];
  return [str description];
}

- (void)print {
  OrgCybergarageUtilDebug_messageWithNSString_([self description]);
}

- (void)dealloc {
  RELEASE_(method_);
  RELEASE_(uri_);
  RELEASE_(requestHost_);
  RELEASE_(httpSocket_);
  RELEASE_(postSocket_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageHttpParameterList;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageHttpHTTPSocket;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageHttpHTTPResponse;", 0x1, 13, 15, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageHttpHTTPResponse;", 0x1, 13, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 19, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 20, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaIoInputStream:);
  methods[2].selector = @selector(initWithOrgCybergarageHttpHTTPSocket:);
  methods[3].selector = @selector(setMethodWithNSString:);
  methods[4].selector = @selector(getMethod);
  methods[5].selector = @selector(isMethodWithNSString:);
  methods[6].selector = @selector(isGetRequest);
  methods[7].selector = @selector(isPostRequest);
  methods[8].selector = @selector(isHeadRequest);
  methods[9].selector = @selector(isSubscribeRequest);
  methods[10].selector = @selector(isUnsubscribeRequest);
  methods[11].selector = @selector(isNotifyRequest);
  methods[12].selector = @selector(setURIWithNSString:withBoolean:);
  methods[13].selector = @selector(setURIWithNSString:);
  methods[14].selector = @selector(getURI);
  methods[15].selector = @selector(getParameterList);
  methods[16].selector = @selector(getParameterValueWithNSString:);
  methods[17].selector = @selector(isSOAPAction);
  methods[18].selector = @selector(setRequestHostWithNSString:);
  methods[19].selector = @selector(getRequestHost);
  methods[20].selector = @selector(setRequestPortWithInt:);
  methods[21].selector = @selector(getRequestPort);
  methods[22].selector = @selector(setSocketWithOrgCybergarageHttpHTTPSocket:);
  methods[23].selector = @selector(getSocket);
  methods[24].selector = @selector(getLocalAddress);
  methods[25].selector = @selector(getLocalPort);
  methods[26].selector = @selector(parseRequestLineWithNSString:);
  methods[27].selector = @selector(getHTTPVersion);
  methods[28].selector = @selector(getFirstLineString);
  methods[29].selector = @selector(getHeader);
  methods[30].selector = @selector(isKeepAlive);
  methods[31].selector = @selector(read);
  methods[32].selector = @selector(postWithOrgCybergarageHttpHTTPResponse:);
  methods[33].selector = @selector(postWithNSString:withInt:withBoolean:);
  methods[34].selector = @selector(postWithNSString:withInt:);
  methods[35].selector = @selector(setWithOrgCybergarageHttpHTTPRequest:);
  methods[36].selector = @selector(returnResponseWithInt:);
  methods[37].selector = @selector(returnOK);
  methods[38].selector = @selector(returnBadRequest);
  methods[39].selector = @selector(description);
  methods[40].selector = @selector(print);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "method_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "uri_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "requestHost_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "requestPort_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "httpSocket_", "LOrgCybergarageHttpHTTPSocket;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "postSocket_", "LJavaNetSocket;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaIoInputStream;", "LOrgCybergarageHttpHTTPSocket;", "setMethod", "LNSString;", "isMethod", "setURI", "LNSString;Z", "getParameterValue", "setRequestHost", "setRequestPort", "I", "setSocket", "parseRequestLine", "post", "LOrgCybergarageHttpHTTPResponse;", "LNSString;IZ", "LNSString;I", "set", "LOrgCybergarageHttpHTTPRequest;", "returnResponse", "toString" };
  static const J2ObjcClassInfo _OrgCybergarageHttpHTTPRequest = { "HTTPRequest", "org.cybergarage.http", ptrTable, methods, fields, 7, 0x1, 41, 6, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageHttpHTTPRequest;
}

@end

void OrgCybergarageHttpHTTPRequest_init(OrgCybergarageHttpHTTPRequest *self) {
  OrgCybergarageHttpHTTPPacket_init(self);
  JreStrongAssign(&self->method_, nil);
  JreStrongAssign(&self->uri_, nil);
  JreStrongAssign(&self->requestHost_, @"");
  self->requestPort_ = -1;
  JreStrongAssign(&self->httpSocket_, nil);
  JreStrongAssign(&self->postSocket_, nil);
  [self setVersionWithNSString:OrgCybergarageHttpHTTP_VERSION_10];
}

OrgCybergarageHttpHTTPRequest *new_OrgCybergarageHttpHTTPRequest_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPRequest, init)
}

OrgCybergarageHttpHTTPRequest *create_OrgCybergarageHttpHTTPRequest_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPRequest, init)
}

void OrgCybergarageHttpHTTPRequest_initWithJavaIoInputStream_(OrgCybergarageHttpHTTPRequest *self, JavaIoInputStream *inArg) {
  OrgCybergarageHttpHTTPPacket_initWithJavaIoInputStream_(self, inArg);
  JreStrongAssign(&self->method_, nil);
  JreStrongAssign(&self->uri_, nil);
  JreStrongAssign(&self->requestHost_, @"");
  self->requestPort_ = -1;
  JreStrongAssign(&self->httpSocket_, nil);
  JreStrongAssign(&self->postSocket_, nil);
}

OrgCybergarageHttpHTTPRequest *new_OrgCybergarageHttpHTTPRequest_initWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPRequest, initWithJavaIoInputStream_, inArg)
}

OrgCybergarageHttpHTTPRequest *create_OrgCybergarageHttpHTTPRequest_initWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPRequest, initWithJavaIoInputStream_, inArg)
}

void OrgCybergarageHttpHTTPRequest_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPRequest *self, OrgCybergarageHttpHTTPSocket *httpSock) {
  OrgCybergarageHttpHTTPRequest_initWithJavaIoInputStream_(self, [((OrgCybergarageHttpHTTPSocket *) nil_chk(httpSock)) getInputStream]);
  [self setSocketWithOrgCybergarageHttpHTTPSocket:httpSock];
}

OrgCybergarageHttpHTTPRequest *new_OrgCybergarageHttpHTTPRequest_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *httpSock) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPRequest, initWithOrgCybergarageHttpHTTPSocket_, httpSock)
}

OrgCybergarageHttpHTTPRequest *create_OrgCybergarageHttpHTTPRequest_initWithOrgCybergarageHttpHTTPSocket_(OrgCybergarageHttpHTTPSocket *httpSock) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPRequest, initWithOrgCybergarageHttpHTTPSocket_, httpSock)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageHttpHTTPRequest)