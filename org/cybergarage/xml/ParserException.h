//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/ParserException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageXmlParserException")
#ifdef RESTRICT_OrgCybergarageXmlParserException
#define INCLUDE_ALL_OrgCybergarageXmlParserException 0
#else
#define INCLUDE_ALL_OrgCybergarageXmlParserException 1
#endif
#undef RESTRICT_OrgCybergarageXmlParserException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageXmlParserException_) && (INCLUDE_ALL_OrgCybergarageXmlParserException || defined(INCLUDE_OrgCybergarageXmlParserException))
#define OrgCybergarageXmlParserException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class JavaLangThrowable;

@interface OrgCybergarageXmlParserException : JavaLangException

#pragma mark Public

- (instancetype __nonnull)initWithJavaLangException:(JavaLangException *)e;

- (instancetype __nonnull)initWithNSString:(NSString *)s;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageXmlParserException)

FOUNDATION_EXPORT void OrgCybergarageXmlParserException_initWithJavaLangException_(OrgCybergarageXmlParserException *self, JavaLangException *e);

FOUNDATION_EXPORT OrgCybergarageXmlParserException *new_OrgCybergarageXmlParserException_initWithJavaLangException_(JavaLangException *e) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlParserException *create_OrgCybergarageXmlParserException_initWithJavaLangException_(JavaLangException *e);

FOUNDATION_EXPORT void OrgCybergarageXmlParserException_initWithNSString_(OrgCybergarageXmlParserException *self, NSString *s);

FOUNDATION_EXPORT OrgCybergarageXmlParserException *new_OrgCybergarageXmlParserException_initWithNSString_(NSString *s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlParserException *create_OrgCybergarageXmlParserException_initWithNSString_(NSString *s);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageXmlParserException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageXmlParserException")
