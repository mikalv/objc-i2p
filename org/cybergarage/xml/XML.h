//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/XML.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageXmlXML")
#ifdef RESTRICT_OrgCybergarageXmlXML
#define INCLUDE_ALL_OrgCybergarageXmlXML 0
#else
#define INCLUDE_ALL_OrgCybergarageXmlXML 1
#endif
#undef RESTRICT_OrgCybergarageXmlXML

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageXmlXML_) && (INCLUDE_ALL_OrgCybergarageXmlXML || defined(INCLUDE_OrgCybergarageXmlXML))
#define OrgCybergarageXmlXML_

@interface OrgCybergarageXmlXML : NSObject
@property (readonly, copy, class) NSString *DEFAULT_CONTENT_TYPE NS_SWIFT_NAME(DEFAULT_CONTENT_TYPE);
@property (readonly, copy, class) NSString *DEFAULT_CONTENT_LANGUAGE NS_SWIFT_NAME(DEFAULT_CONTENT_LANGUAGE);
@property (readonly, copy, class) NSString *CHARSET_UTF8 NS_SWIFT_NAME(CHARSET_UTF8);

+ (NSString *)DEFAULT_CONTENT_TYPE;

+ (NSString *)DEFAULT_CONTENT_LANGUAGE;

+ (NSString *)CHARSET_UTF8;

#pragma mark Public

- (instancetype __nonnull)init;

+ (NSString *)escapeXMLCharsWithNSString:(NSString *)input;

+ (NSString *)unescapeXMLCharsWithNSString:(NSString *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageXmlXML)

inline NSString *OrgCybergarageXmlXML_get_DEFAULT_CONTENT_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageXmlXML_DEFAULT_CONTENT_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageXmlXML, DEFAULT_CONTENT_TYPE, NSString *)

inline NSString *OrgCybergarageXmlXML_get_DEFAULT_CONTENT_LANGUAGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageXmlXML_DEFAULT_CONTENT_LANGUAGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageXmlXML, DEFAULT_CONTENT_LANGUAGE, NSString *)

inline NSString *OrgCybergarageXmlXML_get_CHARSET_UTF8(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageXmlXML_CHARSET_UTF8;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageXmlXML, CHARSET_UTF8, NSString *)

FOUNDATION_EXPORT void OrgCybergarageXmlXML_init(OrgCybergarageXmlXML *self);

FOUNDATION_EXPORT OrgCybergarageXmlXML *new_OrgCybergarageXmlXML_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlXML *create_OrgCybergarageXmlXML_init(void);

FOUNDATION_EXPORT NSString *OrgCybergarageXmlXML_escapeXMLCharsWithNSString_(NSString *input);

FOUNDATION_EXPORT NSString *OrgCybergarageXmlXML_unescapeXMLCharsWithNSString_(NSString *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageXmlXML)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageXmlXML")
