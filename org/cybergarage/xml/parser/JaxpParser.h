//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/parser/JaxpParser.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageXmlParserJaxpParser")
#ifdef RESTRICT_OrgCybergarageXmlParserJaxpParser
#define INCLUDE_ALL_OrgCybergarageXmlParserJaxpParser 0
#else
#define INCLUDE_ALL_OrgCybergarageXmlParserJaxpParser 1
#endif
#undef RESTRICT_OrgCybergarageXmlParserJaxpParser

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageXmlParserJaxpParser_) && (INCLUDE_ALL_OrgCybergarageXmlParserJaxpParser || defined(INCLUDE_OrgCybergarageXmlParserJaxpParser))
#define OrgCybergarageXmlParserJaxpParser_

#define RESTRICT_OrgCybergarageXmlParser 1
#define INCLUDE_OrgCybergarageXmlParser 1
#include "org/cybergarage/xml/Parser.h"

@class JavaIoInputStream;
@class OrgCybergarageXmlNode;
@protocol OrgW3cDomNode;

@interface OrgCybergarageXmlParserJaxpParser : OrgCybergarageXmlParser

#pragma mark Public

- (instancetype __nonnull)init;

- (OrgCybergarageXmlNode *)parseWithJavaIoInputStream:(JavaIoInputStream *)inStream;

- (OrgCybergarageXmlNode *)parseWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)parentNode
                                        withOrgW3cDomNode:(id<OrgW3cDomNode>)domNode;

- (OrgCybergarageXmlNode *)parseWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)parentNode
                                        withOrgW3cDomNode:(id<OrgW3cDomNode>)domNode
                                                  withInt:(jint)rank;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgCybergarageXmlParserJaxpParser)

FOUNDATION_EXPORT void OrgCybergarageXmlParserJaxpParser_init(OrgCybergarageXmlParserJaxpParser *self);

FOUNDATION_EXPORT OrgCybergarageXmlParserJaxpParser *new_OrgCybergarageXmlParserJaxpParser_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageXmlParserJaxpParser *create_OrgCybergarageXmlParserJaxpParser_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageXmlParserJaxpParser)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageXmlParserJaxpParser")
