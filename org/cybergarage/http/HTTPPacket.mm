//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPPacket.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InterruptedIOException.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuffer.h"
#include "java/util/Calendar.h"
#include "java/util/StringTokenizer.h"
#include "java/util/Vector.h"
#include "org/cybergarage/http/Date.h"
#include "org/cybergarage/http/HTTP.h"
#include "org/cybergarage/http/HTTPHeader.h"
#include "org/cybergarage/http/HTTPPacket.h"
#include "org/cybergarage/http/HTTPSocket.h"
#include "org/cybergarage/http/HTTPStatus.h"
#include "org/cybergarage/net/HostInterface.h"
#include "org/cybergarage/util/Debug.h"
#include "org/cybergarage/util/StringUtil.h"

@interface OrgCybergarageHttpHTTPPacket () {
 @public
  NSString *version__;
  NSString *firstLine_;
  JavaUtilVector *httpHeaderList_;
  IOSByteArray *content_;
  JavaIoInputStream *contentInput_;
}

- (NSString *)readLineWithJavaIoBufferedInputStream:(JavaIoBufferedInputStream *)inArg;

- (void)setFirstLineWithNSString:(NSString *)value;

@end

J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPPacket, version__, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPPacket, firstLine_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPPacket, httpHeaderList_, JavaUtilVector *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPPacket, content_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPPacket, contentInput_, JavaIoInputStream *)

__attribute__((unused)) static NSString *OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(OrgCybergarageHttpHTTPPacket *self, JavaIoBufferedInputStream *inArg);

__attribute__((unused)) static void OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(OrgCybergarageHttpHTTPPacket *self, NSString *value);

@implementation OrgCybergarageHttpHTTPPacket

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageHttpHTTPPacket_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgCybergarageHttpHTTPPacket:(OrgCybergarageHttpHTTPPacket *)httpPacket {
  OrgCybergarageHttpHTTPPacket_initWithOrgCybergarageHttpHTTPPacket_(self, httpPacket);
  return self;
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  OrgCybergarageHttpHTTPPacket_initWithJavaIoInputStream_(self, inArg);
  return self;
}

- (void)init__ {
  OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(self, @"");
  [self clearHeaders];
  [self setContentWithByteArray:[IOSByteArray arrayWithLength:0] withBoolean:false];
  [self setContentInputStreamWithJavaIoInputStream:nil];
}

- (void)setVersionWithNSString:(NSString *)ver {
  JreStrongAssign(&version__, ver);
}

- (NSString *)getVersion {
  return version__;
}

- (NSString *)readLineWithJavaIoBufferedInputStream:(JavaIoBufferedInputStream *)inArg {
  return OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, inArg);
}

- (jboolean)setWithJavaIoInputStream:(JavaIoInputStream *)inArg
                         withBoolean:(jboolean)onlyHeaders {
  @try {
    JavaIoBufferedInputStream *reader = create_JavaIoBufferedInputStream_initWithJavaIoInputStream_(inArg);
    NSString *firstLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
    if (firstLine == nil || [firstLine java_length] <= 0) return false;
    OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(self, firstLine);
    OrgCybergarageHttpHTTPStatus *httpStatus = create_OrgCybergarageHttpHTTPStatus_initWithNSString_(firstLine);
    jint statCode = [httpStatus getStatusCode];
    if (statCode == OrgCybergarageHttpHTTPStatus_CONTINUE) {
      NSString *headerLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
      while ((headerLine != nil) && (0 < [((NSString *) nil_chk(headerLine)) java_length])) {
        OrgCybergarageHttpHTTPHeader *header = create_OrgCybergarageHttpHTTPHeader_initWithNSString_(headerLine);
        if ([header hasName] == true) [self setHeaderWithOrgCybergarageHttpHTTPHeader:header];
        headerLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
      }
      NSString *actualFirstLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
      if ((actualFirstLine != nil) && (0 < [((NSString *) nil_chk(actualFirstLine)) java_length])) {
        OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(self, actualFirstLine);
      }
      else {
        return true;
      }
    }
    NSString *headerLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
    while ((headerLine != nil) && (0 < [((NSString *) nil_chk(headerLine)) java_length])) {
      OrgCybergarageHttpHTTPHeader *header = create_OrgCybergarageHttpHTTPHeader_initWithNSString_(headerLine);
      if ([header hasName] == true) [self setHeaderWithOrgCybergarageHttpHTTPHeader:header];
      headerLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
    }
    if (onlyHeaders == true) {
      [self setContentWithNSString:@"" withBoolean:false];
      return true;
    }
    jboolean isChunkedRequest = [self isChunked];
    jlong contentLen = 0;
    if (isChunkedRequest == true) {
      @try {
        NSString *chunkSizeLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
        contentLen = (chunkSizeLine != nil) ? JavaLangLong_parseLongWithNSString_withInt_([((NSString *) nil_chk(chunkSizeLine)) java_trim], 16) : 0;
      }
      @catch (JavaLangException *e) {
      }
      
      ;
    }
    else contentLen = [self getContentLength];
    JavaIoByteArrayOutputStream *contentBuf = create_JavaIoByteArrayOutputStream_init();
    while (0 < contentLen) {
      jint chunkSize = OrgCybergarageHttpHTTP_getChunkSize();
      IOSByteArray *readBuf = [IOSByteArray arrayWithLength:(jint) (contentLen > chunkSize ? chunkSize : contentLen)];
      jlong readCnt = 0;
      while (readCnt < contentLen) {
        @try {
          jlong bufReadLen = contentLen - readCnt;
          if (chunkSize < bufReadLen) bufReadLen = chunkSize;
          jint readLen = [reader readWithByteArray:readBuf withInt:0 withInt:(jint) bufReadLen];
          if (readLen < 0) break;
          [contentBuf writeWithByteArray:readBuf withInt:0 withInt:readLen];
          readCnt += readLen;
        }
        @catch (JavaLangException *e) {
          OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
          break;
        }
      }
      if (isChunkedRequest == true) {
        jlong skipLen = 0;
        do {
          jlong skipCnt = [reader skipWithLong:[((NSString *) nil_chk(OrgCybergarageHttpHTTP_CRLF)) java_length] - skipLen];
          if (skipCnt < 0) break;
          skipLen += skipCnt;
        }
        while (skipLen < [OrgCybergarageHttpHTTP_CRLF java_length]);
        @try {
          NSString *chunkSizeLine = OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(self, reader);
          contentLen = JavaLangLong_parseLongWithNSString_withInt_([NSString java_stringWithBytes:[((NSString *) nil_chk(chunkSizeLine)) java_getBytes] offset:0 length:[chunkSizeLine java_length] - 2], 16);
        }
        @catch (JavaLangException *e) {
          contentLen = 0;
        }
        
        ;
      }
      else contentLen = 0;
    }
    [self setContentWithByteArray:[contentBuf toByteArray] withBoolean:false];
  }
  @catch (JavaLangException *e) {
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
    return false;
  }
  return true;
}

- (jboolean)setWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  return [self setWithJavaIoInputStream:inArg withBoolean:false];
}

- (jboolean)setWithOrgCybergarageHttpHTTPSocket:(OrgCybergarageHttpHTTPSocket *)httpSock {
  return [self setWithJavaIoInputStream:[((OrgCybergarageHttpHTTPSocket *) nil_chk(httpSock)) getInputStream]];
}

- (void)setWithOrgCybergarageHttpHTTPPacket:(OrgCybergarageHttpHTTPPacket *)httpPacket {
  OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(self, [((OrgCybergarageHttpHTTPPacket *) nil_chk(httpPacket)) getFirstLine]);
  [self clearHeaders];
  jint nHeaders = [httpPacket getNHeaders];
  for (jint n = 0; n < nHeaders; n++) {
    OrgCybergarageHttpHTTPHeader *header = [httpPacket getHeaderWithInt:n];
    [self addHeaderWithOrgCybergarageHttpHTTPHeader:header];
  }
  [self setContentWithByteArray:[httpPacket getContent]];
}

- (jboolean)readWithOrgCybergarageHttpHTTPSocket:(OrgCybergarageHttpHTTPSocket *)httpSock {
  [self init__];
  return [self setWithOrgCybergarageHttpHTTPSocket:httpSock];
}

- (void)setFirstLineWithNSString:(NSString *)value {
  OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(self, value);
}

- (NSString *)getFirstLine {
  return firstLine_;
}

- (NSString *)getFirstLineTokenWithInt:(jint)num {
  JavaUtilStringTokenizer *st = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(firstLine_, OrgCybergarageHttpHTTP_REQEST_LINE_DELIM);
  NSString *lastToken = @"";
  for (jint n = 0; n <= num; n++) {
    if ([st hasMoreTokens] == false) return @"";
    lastToken = [st nextToken];
  }
  return lastToken;
}

- (jboolean)hasFirstLine {
  return (0 < [((NSString *) nil_chk(firstLine_)) java_length]) ? true : false;
}

- (jint)getNHeaders {
  return [((JavaUtilVector *) nil_chk(httpHeaderList_)) size];
}

- (void)addHeaderWithOrgCybergarageHttpHTTPHeader:(OrgCybergarageHttpHTTPHeader *)header {
  [((JavaUtilVector *) nil_chk(httpHeaderList_)) addWithId:header];
}

- (void)addHeaderWithNSString:(NSString *)name
                 withNSString:(NSString *)value {
  OrgCybergarageHttpHTTPHeader *header = create_OrgCybergarageHttpHTTPHeader_initWithNSString_withNSString_(name, value);
  [((JavaUtilVector *) nil_chk(httpHeaderList_)) addWithId:header];
}

- (OrgCybergarageHttpHTTPHeader *)getHeaderWithInt:(jint)n {
  return [((JavaUtilVector *) nil_chk(httpHeaderList_)) getWithInt:n];
}

- (OrgCybergarageHttpHTTPHeader *)getHeaderWithNSString:(NSString *)name {
  jint nHeaders = [self getNHeaders];
  for (jint n = 0; n < nHeaders; n++) {
    OrgCybergarageHttpHTTPHeader *header = [self getHeaderWithInt:n];
    NSString *headerName = [((OrgCybergarageHttpHTTPHeader *) nil_chk(header)) getName];
    if ([((NSString *) nil_chk(headerName)) java_equalsIgnoreCase:name] == true) return header;
  }
  return nil;
}

- (void)clearHeaders {
  [((JavaUtilVector *) nil_chk(httpHeaderList_)) clear];
  JreStrongAssignAndConsume(&httpHeaderList_, new_JavaUtilVector_init());
}

- (jboolean)hasHeaderWithNSString:(NSString *)name {
  return ([self getHeaderWithNSString:name] != nil) ? true : false;
}

- (void)setHeaderWithNSString:(NSString *)name
                 withNSString:(NSString *)value {
  OrgCybergarageHttpHTTPHeader *header = [self getHeaderWithNSString:name];
  if (header != nil) {
    [header setValueWithNSString:value];
    return;
  }
  [self addHeaderWithNSString:name withNSString:value];
}

- (void)setHeaderWithNSString:(NSString *)name
                      withInt:(jint)value {
  [self setHeaderWithNSString:name withNSString:JavaLangInteger_toStringWithInt_(value)];
}

- (void)setHeaderWithNSString:(NSString *)name
                     withLong:(jlong)value {
  [self setHeaderWithNSString:name withNSString:JavaLangLong_toStringWithLong_(value)];
}

- (void)setHeaderWithOrgCybergarageHttpHTTPHeader:(OrgCybergarageHttpHTTPHeader *)header {
  [self setHeaderWithNSString:[((OrgCybergarageHttpHTTPHeader *) nil_chk(header)) getName] withNSString:[header getValue]];
}

- (NSString *)getHeaderValueWithNSString:(NSString *)name {
  OrgCybergarageHttpHTTPHeader *header = [self getHeaderWithNSString:name];
  if (header == nil) return @"";
  return [header getValue];
}

- (void)setStringHeaderWithNSString:(NSString *)name
                       withNSString:(NSString *)value
                       withNSString:(NSString *)startWidth
                       withNSString:(NSString *)endWidth {
  NSString *headerValue = value;
  if ([((NSString *) nil_chk(headerValue)) java_hasPrefix:startWidth] == false) headerValue = JreStrcat("$$", startWidth, headerValue);
  if ([headerValue java_hasSuffix:endWidth] == false) headerValue = JreStrcat("$$", headerValue, endWidth);
  [self setHeaderWithNSString:name withNSString:headerValue];
}

- (void)setStringHeaderWithNSString:(NSString *)name
                       withNSString:(NSString *)value {
  [self setStringHeaderWithNSString:name withNSString:value withNSString:@"\"" withNSString:@"\""];
}

- (NSString *)getStringHeaderValueWithNSString:(NSString *)name
                                  withNSString:(NSString *)startWidth
                                  withNSString:(NSString *)endWidth {
  NSString *headerValue = [self getHeaderValueWithNSString:name];
  if ([((NSString *) nil_chk(headerValue)) java_hasPrefix:startWidth] == true) headerValue = [headerValue java_substring:1 endIndex:[headerValue java_length]];
  if ([((NSString *) nil_chk(headerValue)) java_hasSuffix:endWidth] == true) headerValue = [headerValue java_substring:0 endIndex:[headerValue java_length] - 1];
  return headerValue;
}

- (NSString *)getStringHeaderValueWithNSString:(NSString *)name {
  return [self getStringHeaderValueWithNSString:name withNSString:@"\"" withNSString:@"\""];
}

- (void)setIntegerHeaderWithNSString:(NSString *)name
                             withInt:(jint)value {
  [self setHeaderWithNSString:name withNSString:JavaLangInteger_toStringWithInt_(value)];
}

- (void)setLongHeaderWithNSString:(NSString *)name
                         withLong:(jlong)value {
  [self setHeaderWithNSString:name withNSString:JavaLangLong_toStringWithLong_(value)];
}

- (jint)getIntegerHeaderValueWithNSString:(NSString *)name {
  OrgCybergarageHttpHTTPHeader *header = [self getHeaderWithNSString:name];
  if (header == nil) return 0;
  return OrgCybergarageUtilStringUtil_toIntegerWithNSString_([header getValue]);
}

- (jlong)getLongHeaderValueWithNSString:(NSString *)name {
  OrgCybergarageHttpHTTPHeader *header = [self getHeaderWithNSString:name];
  if (header == nil) return 0;
  return OrgCybergarageUtilStringUtil_toLongWithNSString_([header getValue]);
}

- (NSString *)getHeaderString {
  JavaLangStringBuffer *str = create_JavaLangStringBuffer_init();
  jint nHeaders = [self getNHeaders];
  for (jint n = 0; n < nHeaders; n++) {
    OrgCybergarageHttpHTTPHeader *header = [self getHeaderWithInt:n];
    [str appendWithNSString:JreStrcat("$$$$", [((OrgCybergarageHttpHTTPHeader *) nil_chk(header)) getName], @": ", [header getValue], OrgCybergarageHttpHTTP_CRLF)];
  }
  return [str description];
}

- (void)setContentWithByteArray:(IOSByteArray *)data
                    withBoolean:(jboolean)updateWithContentLength {
  JreStrongAssign(&content_, data);
  if (updateWithContentLength == true) [self setContentLengthWithLong:((IOSByteArray *) nil_chk(data))->size_];
}

- (void)setContentWithByteArray:(IOSByteArray *)data {
  [self setContentWithByteArray:data withBoolean:true];
}

- (void)setContentWithNSString:(NSString *)data
                   withBoolean:(jboolean)updateWithContentLength {
  [self setContentWithByteArray:[((NSString *) nil_chk(data)) java_getBytes] withBoolean:updateWithContentLength];
}

- (void)setContentWithNSString:(NSString *)data {
  [self setContentWithNSString:data withBoolean:true];
}

- (IOSByteArray *)getContent {
  return content_;
}

- (NSString *)getContentString {
  NSString *charSet = [self getCharSet];
  if (charSet == nil || [charSet java_length] <= 0) return [NSString java_stringWithBytes:content_];
  @try {
    return [NSString java_stringWithBytes:content_ charsetName:charSet];
  }
  @catch (JavaLangException *e) {
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
  }
  return [NSString java_stringWithBytes:content_];
}

- (jboolean)hasContent {
  return (((IOSByteArray *) nil_chk(content_))->size_ > 0) ? true : false;
}

- (void)setContentInputStreamWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  JreStrongAssign(&contentInput_, inArg);
}

- (JavaIoInputStream *)getContentInputStream {
  return contentInput_;
}

- (jboolean)hasContentInputStream {
  return (contentInput_ != nil) ? true : false;
}

- (void)setContentTypeWithNSString:(NSString *)type {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CONTENT_TYPE withNSString:type];
}

- (NSString *)getContentType {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_CONTENT_TYPE];
}

- (void)setContentLanguageWithNSString:(NSString *)code {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CONTENT_LANGUAGE withNSString:code];
}

- (NSString *)getContentLanguage {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_CONTENT_LANGUAGE];
}

- (NSString *)getCharSet {
  NSString *contentType = [self getContentType];
  if (contentType == nil) return @"";
  contentType = [contentType lowercaseString];
  jint charSetIdx = [((NSString *) nil_chk(contentType)) java_indexOfString:OrgCybergarageHttpHTTP_CHARSET];
  if (charSetIdx < 0) return @"";
  jint charSetEndIdx = charSetIdx + [((NSString *) nil_chk(OrgCybergarageHttpHTTP_CHARSET)) java_length] + 1;
  NSString *charSet = [NSString java_stringWithBytes:[contentType java_getBytes] offset:charSetEndIdx length:([contentType java_length] - charSetEndIdx)];
  if ([charSet java_length] < 0) return @"";
  if ([charSet charAtWithInt:0] == '"') charSet = [charSet java_substring:1 endIndex:([charSet java_length] - 1)];
  if ([((NSString *) nil_chk(charSet)) java_length] < 0) return @"";
  if ([charSet charAtWithInt:([charSet java_length] - 1)] == '"') charSet = [charSet java_substring:0 endIndex:([charSet java_length] - 1)];
  return charSet;
}

- (void)setContentLengthWithLong:(jlong)len {
  [self setLongHeaderWithNSString:OrgCybergarageHttpHTTP_CONTENT_LENGTH withLong:len];
}

- (jlong)getContentLength {
  return [self getLongHeaderValueWithNSString:OrgCybergarageHttpHTTP_CONTENT_LENGTH];
}

- (jboolean)hasConnection {
  return [self hasHeaderWithNSString:OrgCybergarageHttpHTTP_CONNECTION];
}

- (void)setConnectionWithNSString:(NSString *)value {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CONNECTION withNSString:value];
}

- (NSString *)getConnection {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_CONNECTION];
}

- (jboolean)isCloseConnection {
  if ([self hasConnection] == false) return false;
  NSString *connection = [self getConnection];
  if (connection == nil) return false;
  return [connection java_equalsIgnoreCase:OrgCybergarageHttpHTTP_CLOSE];
}

- (jboolean)isKeepAliveConnection {
  if ([self hasConnection] == false) return false;
  NSString *connection = [self getConnection];
  if (connection == nil) return false;
  return [connection java_equalsIgnoreCase:OrgCybergarageHttpHTTP_KEEP_ALIVE];
}

- (jboolean)hasContentRange {
  return ([self hasHeaderWithNSString:OrgCybergarageHttpHTTP_CONTENT_RANGE] || [self hasHeaderWithNSString:OrgCybergarageHttpHTTP_RANGE]);
}

- (void)setContentRangeWithLong:(jlong)firstPos
                       withLong:(jlong)lastPos
                       withLong:(jlong)length {
  NSString *rangeStr = @"";
  JreStrAppend(&rangeStr, "$C", OrgCybergarageHttpHTTP_CONTENT_RANGE_BYTES, ' ');
  JreStrAppend(&rangeStr, "$C", JavaLangLong_toStringWithLong_(firstPos), '-');
  JreStrAppend(&rangeStr, "$C", JavaLangLong_toStringWithLong_(lastPos), '/');
  JreStrAppend(&rangeStr, "$", ((0 < length) ? JavaLangLong_toStringWithLong_(length) : @"*"));
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CONTENT_RANGE withNSString:rangeStr];
}

- (IOSLongArray *)getContentRange {
  IOSLongArray *range = [IOSLongArray arrayWithLength:3];
  *IOSLongArray_GetRef(range, 0) = *IOSLongArray_GetRef(range, 1) = *IOSLongArray_GetRef(range, 2) = 0;
  if ([self hasContentRange] == false) return range;
  NSString *rangeLine = [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_CONTENT_RANGE];
  if ([((NSString *) nil_chk(rangeLine)) java_length] <= 0) rangeLine = [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_RANGE];
  if ([((NSString *) nil_chk(rangeLine)) java_length] <= 0) return range;
  JavaUtilStringTokenizer *strToken = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(rangeLine, @" =");
  if ([strToken hasMoreTokens] == false) return range;
  NSString *bytesStr = [strToken nextTokenWithNSString:@" "];
  if ([strToken hasMoreTokens] == false) return range;
  NSString *firstPosStr = [strToken nextTokenWithNSString:@" -"];
  @try {
    *IOSLongArray_GetRef(range, 0) = JavaLangLong_parseLongWithNSString_(firstPosStr);
  }
  @catch (JavaLangNumberFormatException *e) {
  }
  
  ;
  if ([strToken hasMoreTokens] == false) return range;
  NSString *lastPosStr = [strToken nextTokenWithNSString:@"-/"];
  @try {
    *IOSLongArray_GetRef(range, 1) = JavaLangLong_parseLongWithNSString_(lastPosStr);
  }
  @catch (JavaLangNumberFormatException *e) {
  }
  
  ;
  if ([strToken hasMoreTokens] == false) return range;
  NSString *lengthStr = [strToken nextTokenWithNSString:@"/"];
  @try {
    *IOSLongArray_GetRef(range, 2) = JavaLangLong_parseLongWithNSString_(lengthStr);
  }
  @catch (JavaLangNumberFormatException *e) {
  }
  
  ;
  return range;
}

- (jlong)getContentRangeFirstPosition {
  IOSLongArray *range = [self getContentRange];
  return IOSLongArray_Get(nil_chk(range), 0);
}

- (jlong)getContentRangeLastPosition {
  IOSLongArray *range = [self getContentRange];
  return IOSLongArray_Get(nil_chk(range), 1);
}

- (jlong)getContentRangeInstanceLength {
  IOSLongArray *range = [self getContentRange];
  return IOSLongArray_Get(nil_chk(range), 2);
}

- (void)setCacheControlWithNSString:(NSString *)directive {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CACHE_CONTROL withNSString:directive];
}

- (void)setCacheControlWithNSString:(NSString *)directive
                            withInt:(jint)value {
  NSString *strVal = JreStrcat("$C$", directive, '=', JavaLangInteger_toStringWithInt_(value));
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_CACHE_CONTROL withNSString:strVal];
}

- (void)setCacheControlWithInt:(jint)value {
  [self setCacheControlWithNSString:OrgCybergarageHttpHTTP_MAX_AGE withInt:value];
}

- (NSString *)getCacheControl {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_CACHE_CONTROL];
}

- (void)setServerWithNSString:(NSString *)name {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_SERVER withNSString:name];
}

- (NSString *)getServer {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_SERVER];
}

- (void)setHostWithNSString:(NSString *)host
                    withInt:(jint)port {
  NSString *hostAddr = host;
  if (OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(host) == true) hostAddr = JreStrcat("C$C", '[', host, ']');
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_HOST withNSString:JreStrcat("$C$", hostAddr, ':', JavaLangInteger_toStringWithInt_(port))];
}

- (void)setHostWithNSString:(NSString *)host {
  NSString *hostAddr = host;
  if (OrgCybergarageNetHostInterface_isIPv6AddressWithNSString_(host) == true) hostAddr = JreStrcat("C$C", '[', host, ']');
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_HOST withNSString:hostAddr];
}

- (NSString *)getHost {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_HOST];
}

- (void)setDateWithJavaUtilCalendar:(JavaUtilCalendar *)cal {
  OrgCybergarageHttpDate *date = create_OrgCybergarageHttpDate_initWithJavaUtilCalendar_(cal);
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_DATE withNSString:[date getDateString]];
}

- (NSString *)getDate {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_DATE];
}

- (jboolean)hasTransferEncoding {
  return [self hasHeaderWithNSString:OrgCybergarageHttpHTTP_TRANSFER_ENCODING];
}

- (void)setTransferEncodingWithNSString:(NSString *)value {
  [self setHeaderWithNSString:OrgCybergarageHttpHTTP_TRANSFER_ENCODING withNSString:value];
}

- (NSString *)getTransferEncoding {
  return [self getHeaderValueWithNSString:OrgCybergarageHttpHTTP_TRANSFER_ENCODING];
}

- (jboolean)isChunked {
  if ([self hasTransferEncoding] == false) return false;
  NSString *transEnc = [self getTransferEncoding];
  if (transEnc == nil) return false;
  return [transEnc java_equalsIgnoreCase:OrgCybergarageHttpHTTP_CHUNKED];
}

- (void)dealloc {
  RELEASE_(version__);
  RELEASE_(firstLine_);
  RELEASE_(httpHeaderList_);
  RELEASE_(content_);
  RELEASE_(contentInput_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 7, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 7, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 11, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, 12, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 16, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageHttpHTTPHeader;", 0x1, 17, 13, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageHttpHTTPHeader;", 0x1, 17, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 22, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 24, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 16, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 25, 26, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 25, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 27, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 28, 21, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 29, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 30, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 32, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 33, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 34, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 4, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 35, 1, -1, -1, -1, -1 },
    { NULL, "LJavaIoInputStream;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 36, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 37, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 38, 39, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 40, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 41, 42, -1, -1, -1, -1 },
    { NULL, "[J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 43, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 43, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 43, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 44, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 45, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 45, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 46, 47, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 48, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgCybergarageHttpHTTPPacket:);
  methods[2].selector = @selector(initWithJavaIoInputStream:);
  methods[3].selector = @selector(init__);
  methods[4].selector = @selector(setVersionWithNSString:);
  methods[5].selector = @selector(getVersion);
  methods[6].selector = @selector(readLineWithJavaIoBufferedInputStream:);
  methods[7].selector = @selector(setWithJavaIoInputStream:withBoolean:);
  methods[8].selector = @selector(setWithJavaIoInputStream:);
  methods[9].selector = @selector(setWithOrgCybergarageHttpHTTPSocket:);
  methods[10].selector = @selector(setWithOrgCybergarageHttpHTTPPacket:);
  methods[11].selector = @selector(readWithOrgCybergarageHttpHTTPSocket:);
  methods[12].selector = @selector(setFirstLineWithNSString:);
  methods[13].selector = @selector(getFirstLine);
  methods[14].selector = @selector(getFirstLineTokenWithInt:);
  methods[15].selector = @selector(hasFirstLine);
  methods[16].selector = @selector(getNHeaders);
  methods[17].selector = @selector(addHeaderWithOrgCybergarageHttpHTTPHeader:);
  methods[18].selector = @selector(addHeaderWithNSString:withNSString:);
  methods[19].selector = @selector(getHeaderWithInt:);
  methods[20].selector = @selector(getHeaderWithNSString:);
  methods[21].selector = @selector(clearHeaders);
  methods[22].selector = @selector(hasHeaderWithNSString:);
  methods[23].selector = @selector(setHeaderWithNSString:withNSString:);
  methods[24].selector = @selector(setHeaderWithNSString:withInt:);
  methods[25].selector = @selector(setHeaderWithNSString:withLong:);
  methods[26].selector = @selector(setHeaderWithOrgCybergarageHttpHTTPHeader:);
  methods[27].selector = @selector(getHeaderValueWithNSString:);
  methods[28].selector = @selector(setStringHeaderWithNSString:withNSString:withNSString:withNSString:);
  methods[29].selector = @selector(setStringHeaderWithNSString:withNSString:);
  methods[30].selector = @selector(getStringHeaderValueWithNSString:withNSString:withNSString:);
  methods[31].selector = @selector(getStringHeaderValueWithNSString:);
  methods[32].selector = @selector(setIntegerHeaderWithNSString:withInt:);
  methods[33].selector = @selector(setLongHeaderWithNSString:withLong:);
  methods[34].selector = @selector(getIntegerHeaderValueWithNSString:);
  methods[35].selector = @selector(getLongHeaderValueWithNSString:);
  methods[36].selector = @selector(getHeaderString);
  methods[37].selector = @selector(setContentWithByteArray:withBoolean:);
  methods[38].selector = @selector(setContentWithByteArray:);
  methods[39].selector = @selector(setContentWithNSString:withBoolean:);
  methods[40].selector = @selector(setContentWithNSString:);
  methods[41].selector = @selector(getContent);
  methods[42].selector = @selector(getContentString);
  methods[43].selector = @selector(hasContent);
  methods[44].selector = @selector(setContentInputStreamWithJavaIoInputStream:);
  methods[45].selector = @selector(getContentInputStream);
  methods[46].selector = @selector(hasContentInputStream);
  methods[47].selector = @selector(setContentTypeWithNSString:);
  methods[48].selector = @selector(getContentType);
  methods[49].selector = @selector(setContentLanguageWithNSString:);
  methods[50].selector = @selector(getContentLanguage);
  methods[51].selector = @selector(getCharSet);
  methods[52].selector = @selector(setContentLengthWithLong:);
  methods[53].selector = @selector(getContentLength);
  methods[54].selector = @selector(hasConnection);
  methods[55].selector = @selector(setConnectionWithNSString:);
  methods[56].selector = @selector(getConnection);
  methods[57].selector = @selector(isCloseConnection);
  methods[58].selector = @selector(isKeepAliveConnection);
  methods[59].selector = @selector(hasContentRange);
  methods[60].selector = @selector(setContentRangeWithLong:withLong:withLong:);
  methods[61].selector = @selector(getContentRange);
  methods[62].selector = @selector(getContentRangeFirstPosition);
  methods[63].selector = @selector(getContentRangeLastPosition);
  methods[64].selector = @selector(getContentRangeInstanceLength);
  methods[65].selector = @selector(setCacheControlWithNSString:);
  methods[66].selector = @selector(setCacheControlWithNSString:withInt:);
  methods[67].selector = @selector(setCacheControlWithInt:);
  methods[68].selector = @selector(getCacheControl);
  methods[69].selector = @selector(setServerWithNSString:);
  methods[70].selector = @selector(getServer);
  methods[71].selector = @selector(setHostWithNSString:withInt:);
  methods[72].selector = @selector(setHostWithNSString:);
  methods[73].selector = @selector(getHost);
  methods[74].selector = @selector(setDateWithJavaUtilCalendar:);
  methods[75].selector = @selector(getDate);
  methods[76].selector = @selector(hasTransferEncoding);
  methods[77].selector = @selector(setTransferEncodingWithNSString:);
  methods[78].selector = @selector(getTransferEncoding);
  methods[79].selector = @selector(isChunked);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "version__", "LNSString;", .constantValue.asLong = 0, 0x2, 49, -1, -1, -1 },
    { "firstLine_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "httpHeaderList_", "LJavaUtilVector;", .constantValue.asLong = 0, 0x2, -1, -1, 50, -1 },
    { "content_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "contentInput_", "LJavaIoInputStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgCybergarageHttpHTTPPacket;", "LJavaIoInputStream;", "init", "setVersion", "LNSString;", "readLine", "LJavaIoBufferedInputStream;", "set", "LJavaIoInputStream;Z", "LOrgCybergarageHttpHTTPSocket;", "read", "setFirstLine", "getFirstLineToken", "I", "addHeader", "LOrgCybergarageHttpHTTPHeader;", "LNSString;LNSString;", "getHeader", "hasHeader", "setHeader", "LNSString;I", "LNSString;J", "getHeaderValue", "setStringHeader", "LNSString;LNSString;LNSString;LNSString;", "getStringHeaderValue", "LNSString;LNSString;LNSString;", "setIntegerHeader", "setLongHeader", "getIntegerHeaderValue", "getLongHeaderValue", "setContent", "[BZ", "[B", "LNSString;Z", "setContentInputStream", "setContentType", "setContentLanguage", "setContentLength", "J", "setConnection", "setContentRange", "JJJ", "setCacheControl", "setServer", "setHost", "setDate", "LJavaUtilCalendar;", "setTransferEncoding", "version", "Ljava/util/Vector<Lorg/cybergarage/http/HTTPHeader;>;" };
  static const J2ObjcClassInfo _OrgCybergarageHttpHTTPPacket = { "HTTPPacket", "org.cybergarage.http", ptrTable, methods, fields, 7, 0x1, 80, 5, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageHttpHTTPPacket;
}

@end

void OrgCybergarageHttpHTTPPacket_init(OrgCybergarageHttpHTTPPacket *self) {
  NSObject_init(self);
  JreStrongAssign(&self->firstLine_, @"");
  JreStrongAssignAndConsume(&self->httpHeaderList_, new_JavaUtilVector_init());
  JreStrongAssignAndConsume(&self->content_, [IOSByteArray newArrayWithLength:0]);
  JreStrongAssign(&self->contentInput_, nil);
  [self setVersionWithNSString:OrgCybergarageHttpHTTP_VERSION];
  [self setContentInputStreamWithJavaIoInputStream:nil];
}

OrgCybergarageHttpHTTPPacket *new_OrgCybergarageHttpHTTPPacket_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPPacket, init)
}

OrgCybergarageHttpHTTPPacket *create_OrgCybergarageHttpHTTPPacket_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPPacket, init)
}

void OrgCybergarageHttpHTTPPacket_initWithOrgCybergarageHttpHTTPPacket_(OrgCybergarageHttpHTTPPacket *self, OrgCybergarageHttpHTTPPacket *httpPacket) {
  NSObject_init(self);
  JreStrongAssign(&self->firstLine_, @"");
  JreStrongAssignAndConsume(&self->httpHeaderList_, new_JavaUtilVector_init());
  JreStrongAssignAndConsume(&self->content_, [IOSByteArray newArrayWithLength:0]);
  JreStrongAssign(&self->contentInput_, nil);
  [self setVersionWithNSString:OrgCybergarageHttpHTTP_VERSION];
  [self setWithOrgCybergarageHttpHTTPPacket:httpPacket];
  [self setContentInputStreamWithJavaIoInputStream:nil];
}

OrgCybergarageHttpHTTPPacket *new_OrgCybergarageHttpHTTPPacket_initWithOrgCybergarageHttpHTTPPacket_(OrgCybergarageHttpHTTPPacket *httpPacket) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPPacket, initWithOrgCybergarageHttpHTTPPacket_, httpPacket)
}

OrgCybergarageHttpHTTPPacket *create_OrgCybergarageHttpHTTPPacket_initWithOrgCybergarageHttpHTTPPacket_(OrgCybergarageHttpHTTPPacket *httpPacket) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPPacket, initWithOrgCybergarageHttpHTTPPacket_, httpPacket)
}

void OrgCybergarageHttpHTTPPacket_initWithJavaIoInputStream_(OrgCybergarageHttpHTTPPacket *self, JavaIoInputStream *inArg) {
  NSObject_init(self);
  JreStrongAssign(&self->firstLine_, @"");
  JreStrongAssignAndConsume(&self->httpHeaderList_, new_JavaUtilVector_init());
  JreStrongAssignAndConsume(&self->content_, [IOSByteArray newArrayWithLength:0]);
  JreStrongAssign(&self->contentInput_, nil);
  [self setVersionWithNSString:OrgCybergarageHttpHTTP_VERSION];
  [self setWithJavaIoInputStream:inArg];
  [self setContentInputStreamWithJavaIoInputStream:nil];
}

OrgCybergarageHttpHTTPPacket *new_OrgCybergarageHttpHTTPPacket_initWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPPacket, initWithJavaIoInputStream_, inArg)
}

OrgCybergarageHttpHTTPPacket *create_OrgCybergarageHttpHTTPPacket_initWithJavaIoInputStream_(JavaIoInputStream *inArg) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPPacket, initWithJavaIoInputStream_, inArg)
}

NSString *OrgCybergarageHttpHTTPPacket_readLineWithJavaIoBufferedInputStream_(OrgCybergarageHttpHTTPPacket *self, JavaIoBufferedInputStream *inArg) {
  JavaIoByteArrayOutputStream *lineBuf = create_JavaIoByteArrayOutputStream_init();
  IOSByteArray *readBuf = [IOSByteArray arrayWithLength:1];
  @try {
    jint readLen = [((JavaIoBufferedInputStream *) nil_chk(inArg)) readWithByteArray:readBuf];
    while (0 < readLen) {
      if (IOSByteArray_Get(readBuf, 0) == OrgCybergarageHttpHTTP_LF) break;
      if (IOSByteArray_Get(readBuf, 0) != OrgCybergarageHttpHTTP_CR) [lineBuf writeWithInt:IOSByteArray_Get(readBuf, 0)];
      readLen = [inArg readWithByteArray:readBuf];
    }
  }
  @catch (JavaIoInterruptedIOException *e) {
  }
  @catch (JavaIoIOException *e) {
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
  }
  return [lineBuf description];
}

void OrgCybergarageHttpHTTPPacket_setFirstLineWithNSString_(OrgCybergarageHttpHTTPPacket *self, NSString *value) {
  JreStrongAssign(&self->firstLine_, value);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageHttpHTTPPacket)
