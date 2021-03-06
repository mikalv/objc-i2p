//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/parser/ParseException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonParserParseException")
#ifdef RESTRICT_NetMinidevJsonParserParseException
#define INCLUDE_ALL_NetMinidevJsonParserParseException 0
#else
#define INCLUDE_ALL_NetMinidevJsonParserParseException 1
#endif
#undef RESTRICT_NetMinidevJsonParserParseException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonParserParseException_) && (INCLUDE_ALL_NetMinidevJsonParserParseException || defined(INCLUDE_NetMinidevJsonParserParseException))
#define NetMinidevJsonParserParseException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class JavaLangThrowable;

@interface NetMinidevJsonParserParseException : JavaLangException
@property (readonly, class) jint ERROR_UNEXPECTED_CHAR NS_SWIFT_NAME(ERROR_UNEXPECTED_CHAR);
@property (readonly, class) jint ERROR_UNEXPECTED_TOKEN NS_SWIFT_NAME(ERROR_UNEXPECTED_TOKEN);
@property (readonly, class) jint ERROR_UNEXPECTED_EXCEPTION NS_SWIFT_NAME(ERROR_UNEXPECTED_EXCEPTION);
@property (readonly, class) jint ERROR_UNEXPECTED_EOF NS_SWIFT_NAME(ERROR_UNEXPECTED_EOF);
@property (readonly, class) jint ERROR_UNEXPECTED_UNICODE NS_SWIFT_NAME(ERROR_UNEXPECTED_UNICODE);
@property (readonly, class) jint ERROR_UNEXPECTED_DUPLICATE_KEY NS_SWIFT_NAME(ERROR_UNEXPECTED_DUPLICATE_KEY);
@property (readonly, class) jint ERROR_UNEXPECTED_LEADING_0 NS_SWIFT_NAME(ERROR_UNEXPECTED_LEADING_0);

+ (jint)ERROR_UNEXPECTED_CHAR;

+ (jint)ERROR_UNEXPECTED_TOKEN;

+ (jint)ERROR_UNEXPECTED_EXCEPTION;

+ (jint)ERROR_UNEXPECTED_EOF;

+ (jint)ERROR_UNEXPECTED_UNICODE;

+ (jint)ERROR_UNEXPECTED_DUPLICATE_KEY;

+ (jint)ERROR_UNEXPECTED_LEADING_0;

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)position
                              withInt:(jint)errorType
                               withId:(id)unexpectedObject;

- (instancetype __nonnull)initWithInt:(jint)position
                withJavaLangThrowable:(JavaLangThrowable *)cause;

- (jint)getErrorType;

- (jint)getPosition;

- (id)getUnexpectedObject;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetMinidevJsonParserParseException)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_CHAR(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_CHAR 0
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_CHAR, jint)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_TOKEN(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_TOKEN 1
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_TOKEN, jint)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_EXCEPTION(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_EXCEPTION 2
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_EXCEPTION, jint)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_EOF(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_EOF 3
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_EOF, jint)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_UNICODE(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_UNICODE 4
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_UNICODE, jint)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_DUPLICATE_KEY(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_DUPLICATE_KEY 5
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_DUPLICATE_KEY, jint)

inline jint NetMinidevJsonParserParseException_get_ERROR_UNEXPECTED_LEADING_0(void);
#define NetMinidevJsonParserParseException_ERROR_UNEXPECTED_LEADING_0 6
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserParseException, ERROR_UNEXPECTED_LEADING_0, jint)

FOUNDATION_EXPORT void NetMinidevJsonParserParseException_initWithInt_withInt_withId_(NetMinidevJsonParserParseException *self, jint position, jint errorType, id unexpectedObject);

FOUNDATION_EXPORT NetMinidevJsonParserParseException *new_NetMinidevJsonParserParseException_initWithInt_withInt_withId_(jint position, jint errorType, id unexpectedObject) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonParserParseException *create_NetMinidevJsonParserParseException_initWithInt_withInt_withId_(jint position, jint errorType, id unexpectedObject);

FOUNDATION_EXPORT void NetMinidevJsonParserParseException_initWithInt_withJavaLangThrowable_(NetMinidevJsonParserParseException *self, jint position, JavaLangThrowable *cause);

FOUNDATION_EXPORT NetMinidevJsonParserParseException *new_NetMinidevJsonParserParseException_initWithInt_withJavaLangThrowable_(jint position, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonParserParseException *create_NetMinidevJsonParserParseException_initWithInt_withJavaLangThrowable_(jint position, JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonParserParseException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonParserParseException")
