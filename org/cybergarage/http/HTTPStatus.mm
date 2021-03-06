//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/http/HTTPStatus.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/util/StringTokenizer.h"
#include "org/cybergarage/http/HTTP.h"
#include "org/cybergarage/http/HTTPStatus.h"
#include "org/cybergarage/util/Debug.h"

@interface OrgCybergarageHttpHTTPStatus () {
 @public
  NSString *version__;
  jint statusCode_;
  NSString *reasonPhrase_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPStatus, version__, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageHttpHTTPStatus, reasonPhrase_, NSString *)

@implementation OrgCybergarageHttpHTTPStatus

+ (jint)CONTINUE {
  return OrgCybergarageHttpHTTPStatus_CONTINUE;
}

+ (jint)OK {
  return OrgCybergarageHttpHTTPStatus_OK;
}

+ (jint)PARTIAL_CONTENT {
  return OrgCybergarageHttpHTTPStatus_PARTIAL_CONTENT;
}

+ (jint)BAD_REQUEST {
  return OrgCybergarageHttpHTTPStatus_BAD_REQUEST;
}

+ (jint)NOT_FOUND {
  return OrgCybergarageHttpHTTPStatus_NOT_FOUND;
}

+ (jint)PRECONDITION_FAILED {
  return OrgCybergarageHttpHTTPStatus_PRECONDITION_FAILED;
}

+ (jint)INVALID_RANGE {
  return OrgCybergarageHttpHTTPStatus_INVALID_RANGE;
}

+ (jint)INTERNAL_SERVER_ERROR {
  return OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR;
}

+ (NSString *)code2StringWithInt:(jint)code {
  return OrgCybergarageHttpHTTPStatus_code2StringWithInt_(code);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageHttpHTTPStatus_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)ver
                         withInt:(jint)code
                    withNSString:(NSString *)reason {
  OrgCybergarageHttpHTTPStatus_initWithNSString_withInt_withNSString_(self, ver, code, reason);
  return self;
}

- (instancetype)initWithNSString:(NSString *)lineStr {
  OrgCybergarageHttpHTTPStatus_initWithNSString_(self, lineStr);
  return self;
}

- (void)setVersionWithNSString:(NSString *)value {
  JreStrongAssign(&version__, value);
}

- (void)setStatusCodeWithInt:(jint)value {
  statusCode_ = value;
}

- (void)setReasonPhraseWithNSString:(NSString *)value {
  JreStrongAssign(&reasonPhrase_, value);
}

- (NSString *)getVersion {
  return version__;
}

- (jint)getStatusCode {
  return statusCode_;
}

- (NSString *)getReasonPhrase {
  return reasonPhrase_;
}

+ (jboolean)isSuccessfulWithInt:(jint)statCode {
  return OrgCybergarageHttpHTTPStatus_isSuccessfulWithInt_(statCode);
}

- (jboolean)isSuccessful {
  return OrgCybergarageHttpHTTPStatus_isSuccessfulWithInt_([self getStatusCode]);
}

- (void)setWithNSString:(NSString *)lineStr {
  if (lineStr == nil) {
    [self setVersionWithNSString:OrgCybergarageHttpHTTP_VERSION];
    [self setStatusCodeWithInt:OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR];
    [self setReasonPhraseWithNSString:OrgCybergarageHttpHTTPStatus_code2StringWithInt_(OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR)];
    return;
  }
  @try {
    JavaUtilStringTokenizer *st = create_JavaUtilStringTokenizer_initWithNSString_withNSString_(lineStr, OrgCybergarageHttpHTTP_STATUS_LINE_DELIM);
    if ([st hasMoreTokens] == false) return;
    NSString *ver = [st nextToken];
    [self setVersionWithNSString:[((NSString *) nil_chk(ver)) java_trim]];
    if ([st hasMoreTokens] == false) return;
    NSString *codeStr = [st nextToken];
    jint code = 0;
    @try {
      code = JavaLangInteger_parseIntWithNSString_(codeStr);
    }
    @catch (JavaLangException *e1) {
    }
    [self setStatusCodeWithInt:code];
    NSString *reason = @"";
    while ([st hasMoreTokens] == true) {
      if (0 <= [reason java_length]) JreStrAppend(&reason, "$", @" ");
      JreStrAppend(&reason, "$", [st nextToken]);
    }
    [self setReasonPhraseWithNSString:[reason java_trim]];
  }
  @catch (JavaLangException *e) {
    OrgCybergarageUtilDebug_warningWithJavaLangException_(e);
  }
}

- (void)dealloc {
  RELEASE_(version__);
  RELEASE_(reasonPhrase_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x19, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x19, 7, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(code2StringWithInt:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithNSString:withInt:withNSString:);
  methods[3].selector = @selector(initWithNSString:);
  methods[4].selector = @selector(setVersionWithNSString:);
  methods[5].selector = @selector(setStatusCodeWithInt:);
  methods[6].selector = @selector(setReasonPhraseWithNSString:);
  methods[7].selector = @selector(getVersion);
  methods[8].selector = @selector(getStatusCode);
  methods[9].selector = @selector(getReasonPhrase);
  methods[10].selector = @selector(isSuccessfulWithInt:);
  methods[11].selector = @selector(isSuccessful);
  methods[12].selector = @selector(setWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "CONTINUE", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_CONTINUE, 0x19, -1, -1, -1, -1 },
    { "OK", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_OK, 0x19, -1, -1, -1, -1 },
    { "PARTIAL_CONTENT", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_PARTIAL_CONTENT, 0x19, -1, -1, -1, -1 },
    { "BAD_REQUEST", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_BAD_REQUEST, 0x19, -1, -1, -1, -1 },
    { "NOT_FOUND", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_NOT_FOUND, 0x19, -1, -1, -1, -1 },
    { "PRECONDITION_FAILED", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_PRECONDITION_FAILED, 0x19, -1, -1, -1, -1 },
    { "INVALID_RANGE", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_INVALID_RANGE, 0x19, -1, -1, -1, -1 },
    { "INTERNAL_SERVER_ERROR", "I", .constantValue.asInt = OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR, 0x19, -1, -1, -1, -1 },
    { "version__", "LNSString;", .constantValue.asLong = 0, 0x2, 9, -1, -1, -1 },
    { "statusCode_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "reasonPhrase_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "code2String", "I", "LNSString;ILNSString;", "LNSString;", "setVersion", "setStatusCode", "setReasonPhrase", "isSuccessful", "set", "version" };
  static const J2ObjcClassInfo _OrgCybergarageHttpHTTPStatus = { "HTTPStatus", "org.cybergarage.http", ptrTable, methods, fields, 7, 0x1, 13, 11, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageHttpHTTPStatus;
}

@end

NSString *OrgCybergarageHttpHTTPStatus_code2StringWithInt_(jint code) {
  OrgCybergarageHttpHTTPStatus_initialize();
  switch (code) {
    case OrgCybergarageHttpHTTPStatus_CONTINUE:
    return @"Continue";
    case OrgCybergarageHttpHTTPStatus_OK:
    return @"OK";
    case OrgCybergarageHttpHTTPStatus_PARTIAL_CONTENT:
    return @"Partial Content";
    case OrgCybergarageHttpHTTPStatus_BAD_REQUEST:
    return @"Bad Request";
    case OrgCybergarageHttpHTTPStatus_NOT_FOUND:
    return @"Not Found";
    case OrgCybergarageHttpHTTPStatus_PRECONDITION_FAILED:
    return @"Precondition Failed";
    case OrgCybergarageHttpHTTPStatus_INVALID_RANGE:
    return @"Invalid Range";
    case OrgCybergarageHttpHTTPStatus_INTERNAL_SERVER_ERROR:
    return @"Internal Server Error";
  }
  return @"";
}

void OrgCybergarageHttpHTTPStatus_init(OrgCybergarageHttpHTTPStatus *self) {
  NSObject_init(self);
  JreStrongAssign(&self->version__, @"");
  self->statusCode_ = 0;
  JreStrongAssign(&self->reasonPhrase_, @"");
  [self setVersionWithNSString:@""];
  [self setStatusCodeWithInt:0];
  [self setReasonPhraseWithNSString:@""];
}

OrgCybergarageHttpHTTPStatus *new_OrgCybergarageHttpHTTPStatus_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPStatus, init)
}

OrgCybergarageHttpHTTPStatus *create_OrgCybergarageHttpHTTPStatus_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPStatus, init)
}

void OrgCybergarageHttpHTTPStatus_initWithNSString_withInt_withNSString_(OrgCybergarageHttpHTTPStatus *self, NSString *ver, jint code, NSString *reason) {
  NSObject_init(self);
  JreStrongAssign(&self->version__, @"");
  self->statusCode_ = 0;
  JreStrongAssign(&self->reasonPhrase_, @"");
  [self setVersionWithNSString:ver];
  [self setStatusCodeWithInt:code];
  [self setReasonPhraseWithNSString:reason];
}

OrgCybergarageHttpHTTPStatus *new_OrgCybergarageHttpHTTPStatus_initWithNSString_withInt_withNSString_(NSString *ver, jint code, NSString *reason) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPStatus, initWithNSString_withInt_withNSString_, ver, code, reason)
}

OrgCybergarageHttpHTTPStatus *create_OrgCybergarageHttpHTTPStatus_initWithNSString_withInt_withNSString_(NSString *ver, jint code, NSString *reason) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPStatus, initWithNSString_withInt_withNSString_, ver, code, reason)
}

void OrgCybergarageHttpHTTPStatus_initWithNSString_(OrgCybergarageHttpHTTPStatus *self, NSString *lineStr) {
  NSObject_init(self);
  JreStrongAssign(&self->version__, @"");
  self->statusCode_ = 0;
  JreStrongAssign(&self->reasonPhrase_, @"");
  [self setWithNSString:lineStr];
}

OrgCybergarageHttpHTTPStatus *new_OrgCybergarageHttpHTTPStatus_initWithNSString_(NSString *lineStr) {
  J2OBJC_NEW_IMPL(OrgCybergarageHttpHTTPStatus, initWithNSString_, lineStr)
}

OrgCybergarageHttpHTTPStatus *create_OrgCybergarageHttpHTTPStatus_initWithNSString_(NSString *lineStr) {
  J2OBJC_CREATE_IMPL(OrgCybergarageHttpHTTPStatus, initWithNSString_, lineStr)
}

jboolean OrgCybergarageHttpHTTPStatus_isSuccessfulWithInt_(jint statCode) {
  OrgCybergarageHttpHTTPStatus_initialize();
  if (200 <= statCode && statCode < 300) return true;
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageHttpHTTPStatus)
