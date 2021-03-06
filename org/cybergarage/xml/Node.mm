//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/xml/Node.java
//

#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/PrintStream.h"
#include "java/io/PrintWriter.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/System.h"
#include "java/util/Iterator.h"
#include "org/cybergarage/xml/Attribute.h"
#include "org/cybergarage/xml/AttributeList.h"
#include "org/cybergarage/xml/Node.h"
#include "org/cybergarage/xml/NodeList.h"
#include "org/cybergarage/xml/XML.h"

@interface OrgCybergarageXmlNode () {
 @public
  OrgCybergarageXmlNode *parentNode_;
  NSString *name_;
  NSString *value_;
  OrgCybergarageXmlAttributeList *attrList_;
  OrgCybergarageXmlNodeList *nodeList_;
  id userData_;
}

@end

J2OBJC_FIELD_SETTER(OrgCybergarageXmlNode, parentNode_, OrgCybergarageXmlNode *)
J2OBJC_FIELD_SETTER(OrgCybergarageXmlNode, name_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageXmlNode, value_, NSString *)
J2OBJC_FIELD_SETTER(OrgCybergarageXmlNode, attrList_, OrgCybergarageXmlAttributeList *)
J2OBJC_FIELD_SETTER(OrgCybergarageXmlNode, nodeList_, OrgCybergarageXmlNodeList *)
J2OBJC_FIELD_SETTER(OrgCybergarageXmlNode, userData_, id)

@implementation OrgCybergarageXmlNode

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgCybergarageXmlNode_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)name {
  OrgCybergarageXmlNode_initWithNSString_(self, name);
  return self;
}

- (instancetype)initWithNSString:(NSString *)ns
                    withNSString:(NSString *)name {
  OrgCybergarageXmlNode_initWithNSString_withNSString_(self, ns, name);
  return self;
}

- (instancetype)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)otherNode {
  OrgCybergarageXmlNode_initWithOrgCybergarageXmlNode_(self, otherNode);
  return self;
}

- (void)setParentNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  JreStrongAssign(&parentNode_, node);
}

- (OrgCybergarageXmlNode *)getParentNode {
  return parentNode_;
}

- (OrgCybergarageXmlNode *)getRootNode {
  OrgCybergarageXmlNode *rootNode = nil;
  OrgCybergarageXmlNode *parentNode = [self getParentNode];
  while (parentNode != nil) {
    rootNode = parentNode;
    parentNode = [rootNode getParentNode];
  }
  return rootNode;
}

- (void)setNameWithNSString:(NSString *)name {
  JreStrongAssign(&self->name_, name);
}

- (void)setNameWithNSString:(NSString *)ns
               withNSString:(NSString *)name {
  JreStrongAssign(&self->name_, JreStrcat("$C$", ns, ':', name));
}

- (NSString *)getName {
  return name_;
}

- (jboolean)isNameWithNSString:(NSString *)value {
  return [((NSString *) nil_chk(name_)) isEqual:value];
}

- (void)setValueWithNSString:(NSString *)value {
  JreStrongAssign(&self->value_, value);
}

- (void)setValueWithInt:(jint)value {
  [self setValueWithNSString:JavaLangInteger_toStringWithInt_(value)];
}

- (void)addValueWithNSString:(NSString *)value {
  if (self->value_ == nil) {
    JreStrongAssign(&self->value_, value);
    return;
  }
  if (value != nil) JreStrAppendStrong(&self->value_, "$", value);
}

- (NSString *)getValue {
  return value_;
}

- (jint)getNAttributes {
  return [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) size];
}

- (OrgCybergarageXmlAttribute *)getAttributeWithInt:(jint)index {
  return [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) getAttributeWithInt:index];
}

- (OrgCybergarageXmlAttribute *)getAttributeWithNSString:(NSString *)name {
  return [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) getAttributeWithNSString:name];
}

- (void)addAttributeWithOrgCybergarageXmlAttribute:(OrgCybergarageXmlAttribute *)attr {
  [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) addWithId:attr];
}

- (void)insertAttributeAtWithOrgCybergarageXmlAttribute:(OrgCybergarageXmlAttribute *)attr
                                                withInt:(jint)index {
  [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) insertElementAtWithId:attr withInt:index];
}

- (void)addAttributeWithNSString:(NSString *)name
                    withNSString:(NSString *)value {
  OrgCybergarageXmlAttribute *attr = create_OrgCybergarageXmlAttribute_initWithNSString_withNSString_(name, value);
  [self addAttributeWithOrgCybergarageXmlAttribute:attr];
}

- (jboolean)removeAttributeWithOrgCybergarageXmlAttribute:(OrgCybergarageXmlAttribute *)attr {
  return [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) removeWithId:attr];
}

- (jboolean)removeAttributeWithNSString:(NSString *)name {
  return [self removeAttributeWithOrgCybergarageXmlAttribute:[self getAttributeWithNSString:name]];
}

- (void)removeAllAttributes {
  [((OrgCybergarageXmlAttributeList *) nil_chk(attrList_)) clear];
}

- (jboolean)hasAttributes {
  if (0 < [self getNAttributes]) return true;
  return false;
}

- (void)setAttributeWithNSString:(NSString *)name
                    withNSString:(NSString *)value {
  OrgCybergarageXmlAttribute *attr = [self getAttributeWithNSString:name];
  if (attr != nil) {
    [attr setValueWithNSString:value];
    return;
  }
  attr = create_OrgCybergarageXmlAttribute_initWithNSString_withNSString_(name, value);
  [self addAttributeWithOrgCybergarageXmlAttribute:attr];
}

- (void)setAttributeWithNSString:(NSString *)name
                         withInt:(jint)value {
  [self setAttributeWithNSString:name withNSString:JavaLangInteger_toStringWithInt_(value)];
}

- (NSString *)getAttributeValueWithNSString:(NSString *)name {
  OrgCybergarageXmlAttribute *attr = [self getAttributeWithNSString:name];
  if (attr != nil) return [attr getValue];
  return @"";
}

- (jint)getAttributeIntegerValueWithNSString:(NSString *)name {
  NSString *val = [self getAttributeValueWithNSString:name];
  @try {
    return JavaLangInteger_parseIntWithNSString_(val);
  }
  @catch (JavaLangException *e) {
  }
  return 0;
}

- (void)setNameSpaceWithNSString:(NSString *)ns
                    withNSString:(NSString *)value {
  [self setAttributeWithNSString:JreStrcat("$$", @"xmlns:", ns) withNSString:value];
}

- (jboolean)setWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)otherNode {
  if (otherNode == nil) return false;
  [self setNameWithNSString:[otherNode getName]];
  [self setValueWithNSString:[otherNode getValue]];
  [self removeAllAttributes];
  jint nOtherAttributes = [otherNode getNAttributes];
  for (jint n = 0; n < nOtherAttributes; n++) {
    OrgCybergarageXmlAttribute *otherAttr = [otherNode getAttributeWithInt:n];
    OrgCybergarageXmlAttribute *thisAttr = create_OrgCybergarageXmlAttribute_initWithOrgCybergarageXmlAttribute_(otherAttr);
    [self addAttributeWithOrgCybergarageXmlAttribute:thisAttr];
  }
  [self removeAllNodes];
  jint nOtherChildNodes = [otherNode getNNodes];
  for (jint n = 0; n < nOtherChildNodes; n++) {
    OrgCybergarageXmlNode *otherChildNode = [otherNode getNodeWithInt:n];
    OrgCybergarageXmlNode *thisChildNode = create_OrgCybergarageXmlNode_init();
    [thisChildNode setWithOrgCybergarageXmlNode:otherChildNode];
    [self addNodeWithOrgCybergarageXmlNode:thisChildNode];
  }
  return true;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil) return false;
  if (!([o isKindOfClass:[OrgCybergarageXmlNode class]])) return false;
  OrgCybergarageXmlNode *otherNode = (OrgCybergarageXmlNode *) cast_chk(o, [OrgCybergarageXmlNode class]);
  NSString *thisNodeString = [self description];
  NSString *otherNodeString = [otherNode description];
  return [((NSString *) nil_chk(thisNodeString)) isEqual:otherNodeString];
}

- (jint)getNNodes {
  return [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) size];
}

- (OrgCybergarageXmlNode *)getNodeWithInt:(jint)index {
  return [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) getNodeWithInt:index];
}

- (OrgCybergarageXmlNode *)getNodeWithNSString:(NSString *)name {
  return [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) getNodeWithNSString:name];
}

- (OrgCybergarageXmlNode *)getNodeEndsWithWithNSString:(NSString *)name {
  return [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) getEndsWithWithNSString:name];
}

- (void)addNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  [((OrgCybergarageXmlNode *) nil_chk(node)) setParentNodeWithOrgCybergarageXmlNode:self];
  [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) addWithId:node];
}

- (void)insertNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node
                                    withInt:(jint)index {
  [((OrgCybergarageXmlNode *) nil_chk(node)) setParentNodeWithOrgCybergarageXmlNode:self];
  [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) insertElementAtWithId:node withInt:index];
}

- (jint)getIndexWithNSString:(NSString *)name {
  jint index = -1;
  for (id<JavaUtilIterator> i = [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) iterator]; [((id<JavaUtilIterator>) nil_chk(i)) hasNext]; ) {
    index++;
    OrgCybergarageXmlNode *n = [i next];
    if ([((NSString *) nil_chk([((OrgCybergarageXmlNode *) nil_chk(n)) getName])) isEqual:name]) return index;
  }
  return index;
}

- (jboolean)removeNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node {
  [((OrgCybergarageXmlNode *) nil_chk(node)) setParentNodeWithOrgCybergarageXmlNode:nil];
  return [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) removeWithId:node];
}

- (jboolean)removeNodeWithNSString:(NSString *)name {
  return [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) removeWithId:[self getNodeWithNSString:name]];
}

- (void)removeAllNodes {
  [((OrgCybergarageXmlNodeList *) nil_chk(nodeList_)) clear];
}

- (jboolean)hasNodes {
  if (0 < [self getNNodes]) return true;
  return false;
}

- (jboolean)hasNodeWithNSString:(NSString *)name {
  OrgCybergarageXmlNode *node = [self getNodeWithNSString:name];
  if (node != nil) {
    return true;
  }
  return false;
}

- (void)setNodeWithNSString:(NSString *)name {
  if ([self hasNodeWithNSString:name]) {
    return;
  }
  OrgCybergarageXmlNode *node = create_OrgCybergarageXmlNode_initWithNSString_(name);
  [self addNodeWithOrgCybergarageXmlNode:node];
}

- (void)setNodeWithNSString:(NSString *)name
               withNSString:(NSString *)value {
  OrgCybergarageXmlNode *node = [self getNodeWithNSString:name];
  if (node == nil) {
    node = create_OrgCybergarageXmlNode_initWithNSString_(name);
    [self addNodeWithOrgCybergarageXmlNode:node];
  }
  [node setValueWithNSString:value];
}

- (NSString *)getNodeValueWithNSString:(NSString *)name {
  OrgCybergarageXmlNode *node = [self getNodeWithNSString:name];
  if (node != nil) return [node getValue];
  return @"";
}

- (void)setUserDataWithId:(id)data {
  JreStrongAssign(&userData_, data);
}

- (id)getUserData {
  return userData_;
}

- (NSString *)getIndentLevelStringWithInt:(jint)nIndentLevel {
  return [self getIndentLevelStringWithInt:nIndentLevel withNSString:@"   "];
}

- (NSString *)getIndentLevelStringWithInt:(jint)nIndentLevel
                             withNSString:(NSString *)space {
  JavaLangStringBuffer *indentString = create_JavaLangStringBuffer_initWithInt_(nIndentLevel * [((NSString *) nil_chk(space)) java_length]);
  for (jint n = 0; n < nIndentLevel; n++) {
    [indentString appendWithNSString:space];
  }
  return [indentString description];
}

- (void)outputAttributesWithJavaIoPrintWriter:(JavaIoPrintWriter *)ps {
  jint nAttributes = [self getNAttributes];
  for (jint n = 0; n < nAttributes; n++) {
    OrgCybergarageXmlAttribute *attr = [self getAttributeWithInt:n];
    [((JavaIoPrintWriter *) nil_chk(ps)) printWithNSString:JreStrcat("C$$$C", ' ', [((OrgCybergarageXmlAttribute *) nil_chk(attr)) getName], @"=\"", OrgCybergarageXmlXML_escapeXMLCharsWithNSString_([attr getValue]), '"')];
  }
}

- (void)outputWithJavaIoPrintWriter:(JavaIoPrintWriter *)ps
                            withInt:(jint)indentLevel
                        withBoolean:(jboolean)hasChildNode {
  NSString *indentString = [self getIndentLevelStringWithInt:indentLevel];
  NSString *name = [self getName];
  NSString *value = [self getValue];
  if ([self hasNodes] == false || hasChildNode == false) {
    [((JavaIoPrintWriter *) nil_chk(ps)) printWithNSString:JreStrcat("$C$", indentString, '<', name)];
    [self outputAttributesWithJavaIoPrintWriter:ps];
    if (value == nil || [value java_length] == 0) {
      [ps printlnWithNSString:JreStrcat("$$C", @"></", name, '>')];
    }
    else {
      [ps printlnWithNSString:JreStrcat("C$$$C", '>', OrgCybergarageXmlXML_escapeXMLCharsWithNSString_(value), @"</", name, '>')];
    }
    return;
  }
  [((JavaIoPrintWriter *) nil_chk(ps)) printWithNSString:JreStrcat("$C$", indentString, '<', name)];
  [self outputAttributesWithJavaIoPrintWriter:ps];
  [ps printlnWithNSString:@">"];
  jint nChildNodes = [self getNNodes];
  for (jint n = 0; n < nChildNodes; n++) {
    OrgCybergarageXmlNode *cnode = [self getNodeWithInt:n];
    [((OrgCybergarageXmlNode *) nil_chk(cnode)) outputWithJavaIoPrintWriter:ps withInt:indentLevel + 1 withBoolean:true];
  }
  [ps printlnWithNSString:JreStrcat("$$$C", indentString, @"</", name, '>')];
}

- (NSString *)toStringWithNSString:(NSString *)enc
                       withBoolean:(jboolean)hasChildNode {
  JavaIoByteArrayOutputStream *byteOut = create_JavaIoByteArrayOutputStream_init();
  JavaIoPrintWriter *pr = create_JavaIoPrintWriter_initWithJavaIoOutputStream_(byteOut);
  [self outputWithJavaIoPrintWriter:pr withInt:0 withBoolean:hasChildNode];
  [pr flush];
  @try {
    if (enc != nil && 0 < [enc java_length]) return [byteOut toStringWithNSString:enc];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
  }
  return [byteOut description];
}

- (NSString *)description {
  return [self toStringWithNSString:OrgCybergarageXmlXML_CHARSET_UTF8 withBoolean:true];
}

- (NSString *)toXMLStringWithBoolean:(jboolean)hasChildNode {
  NSString *xmlStr = [self description];
  xmlStr = [((NSString *) nil_chk(xmlStr)) java_replaceAll:@"<" withReplacement:@"&lt;"];
  xmlStr = [((NSString *) nil_chk(xmlStr)) java_replaceAll:@">" withReplacement:@"&gt;"];
  xmlStr = [((NSString *) nil_chk(xmlStr)) java_replaceAll:@"&" withReplacement:@"&amp;"];
  xmlStr = [((NSString *) nil_chk(xmlStr)) java_replaceAll:@"\"" withReplacement:@"&quot;"];
  xmlStr = [((NSString *) nil_chk(xmlStr)) java_replaceAll:@"'" withReplacement:@"&apos;"];
  return xmlStr;
}

- (NSString *)toXMLString {
  return [self toXMLStringWithBoolean:true];
}

- (void)printWithBoolean:(jboolean)hasChildNode {
  JavaIoPrintWriter *pr = create_JavaIoPrintWriter_initWithJavaIoOutputStream_(JreLoadStatic(JavaLangSystem, out));
  [self outputWithJavaIoPrintWriter:pr withInt:0 withBoolean:hasChildNode];
  [pr flush];
}

- (void)print {
  [self printWithBoolean:true];
}

- (void)dealloc {
  RELEASE_(parentNode_);
  RELEASE_(name_);
  RELEASE_(value_);
  RELEASE_(attrList_);
  RELEASE_(nodeList_);
  RELEASE_(userData_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlAttribute;", 0x1, 9, 7, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlAttribute;", 0x1, 9, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 18, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 20, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x1, 23, 7, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x1, 23, 0, -1, -1, -1, -1 },
    { NULL, "LOrgCybergarageXmlNode;", 0x1, 24, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 25, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 26, 27, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 28, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 29, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 29, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 30, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 32, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 33, 22, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 34, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 34, 35, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 36, 37, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 38, 39, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 40, 41, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 40, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 42, 43, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 44, 43, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(initWithNSString:withNSString:);
  methods[3].selector = @selector(initWithOrgCybergarageXmlNode:);
  methods[4].selector = @selector(setParentNodeWithOrgCybergarageXmlNode:);
  methods[5].selector = @selector(getParentNode);
  methods[6].selector = @selector(getRootNode);
  methods[7].selector = @selector(setNameWithNSString:);
  methods[8].selector = @selector(setNameWithNSString:withNSString:);
  methods[9].selector = @selector(getName);
  methods[10].selector = @selector(isNameWithNSString:);
  methods[11].selector = @selector(setValueWithNSString:);
  methods[12].selector = @selector(setValueWithInt:);
  methods[13].selector = @selector(addValueWithNSString:);
  methods[14].selector = @selector(getValue);
  methods[15].selector = @selector(getNAttributes);
  methods[16].selector = @selector(getAttributeWithInt:);
  methods[17].selector = @selector(getAttributeWithNSString:);
  methods[18].selector = @selector(addAttributeWithOrgCybergarageXmlAttribute:);
  methods[19].selector = @selector(insertAttributeAtWithOrgCybergarageXmlAttribute:withInt:);
  methods[20].selector = @selector(addAttributeWithNSString:withNSString:);
  methods[21].selector = @selector(removeAttributeWithOrgCybergarageXmlAttribute:);
  methods[22].selector = @selector(removeAttributeWithNSString:);
  methods[23].selector = @selector(removeAllAttributes);
  methods[24].selector = @selector(hasAttributes);
  methods[25].selector = @selector(setAttributeWithNSString:withNSString:);
  methods[26].selector = @selector(setAttributeWithNSString:withInt:);
  methods[27].selector = @selector(getAttributeValueWithNSString:);
  methods[28].selector = @selector(getAttributeIntegerValueWithNSString:);
  methods[29].selector = @selector(setNameSpaceWithNSString:withNSString:);
  methods[30].selector = @selector(setWithOrgCybergarageXmlNode:);
  methods[31].selector = @selector(isEqual:);
  methods[32].selector = @selector(getNNodes);
  methods[33].selector = @selector(getNodeWithInt:);
  methods[34].selector = @selector(getNodeWithNSString:);
  methods[35].selector = @selector(getNodeEndsWithWithNSString:);
  methods[36].selector = @selector(addNodeWithOrgCybergarageXmlNode:);
  methods[37].selector = @selector(insertNodeWithOrgCybergarageXmlNode:withInt:);
  methods[38].selector = @selector(getIndexWithNSString:);
  methods[39].selector = @selector(removeNodeWithOrgCybergarageXmlNode:);
  methods[40].selector = @selector(removeNodeWithNSString:);
  methods[41].selector = @selector(removeAllNodes);
  methods[42].selector = @selector(hasNodes);
  methods[43].selector = @selector(hasNodeWithNSString:);
  methods[44].selector = @selector(setNodeWithNSString:);
  methods[45].selector = @selector(setNodeWithNSString:withNSString:);
  methods[46].selector = @selector(getNodeValueWithNSString:);
  methods[47].selector = @selector(setUserDataWithId:);
  methods[48].selector = @selector(getUserData);
  methods[49].selector = @selector(getIndentLevelStringWithInt:);
  methods[50].selector = @selector(getIndentLevelStringWithInt:withNSString:);
  methods[51].selector = @selector(outputAttributesWithJavaIoPrintWriter:);
  methods[52].selector = @selector(outputWithJavaIoPrintWriter:withInt:withBoolean:);
  methods[53].selector = @selector(toStringWithNSString:withBoolean:);
  methods[54].selector = @selector(description);
  methods[55].selector = @selector(toXMLStringWithBoolean:);
  methods[56].selector = @selector(toXMLString);
  methods[57].selector = @selector(printWithBoolean:);
  methods[58].selector = @selector(print);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "parentNode_", "LOrgCybergarageXmlNode;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "attrList_", "LOrgCybergarageXmlAttributeList;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "nodeList_", "LOrgCybergarageXmlNodeList;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "userData_", "LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LNSString;LNSString;", "LOrgCybergarageXmlNode;", "setParentNode", "setName", "isName", "setValue", "I", "addValue", "getAttribute", "addAttribute", "LOrgCybergarageXmlAttribute;", "insertAttributeAt", "LOrgCybergarageXmlAttribute;I", "removeAttribute", "setAttribute", "LNSString;I", "getAttributeValue", "getAttributeIntegerValue", "setNameSpace", "set", "equals", "LNSObject;", "getNode", "getNodeEndsWith", "addNode", "insertNode", "LOrgCybergarageXmlNode;I", "getIndex", "removeNode", "hasNode", "setNode", "getNodeValue", "setUserData", "getIndentLevelString", "ILNSString;", "outputAttributes", "LJavaIoPrintWriter;", "output", "LJavaIoPrintWriter;IZ", "toString", "LNSString;Z", "toXMLString", "Z", "print" };
  static const J2ObjcClassInfo _OrgCybergarageXmlNode = { "Node", "org.cybergarage.xml", ptrTable, methods, fields, 7, 0x1, 59, 6, -1, -1, -1, -1, -1 };
  return &_OrgCybergarageXmlNode;
}

@end

void OrgCybergarageXmlNode_init(OrgCybergarageXmlNode *self) {
  NSObject_init(self);
  JreStrongAssign(&self->parentNode_, nil);
  JreStrongAssign(&self->name_, [NSString string]);
  JreStrongAssign(&self->value_, [NSString string]);
  JreStrongAssignAndConsume(&self->attrList_, new_OrgCybergarageXmlAttributeList_init());
  JreStrongAssignAndConsume(&self->nodeList_, new_OrgCybergarageXmlNodeList_init());
  JreStrongAssign(&self->userData_, nil);
  [self setUserDataWithId:nil];
  [self setParentNodeWithOrgCybergarageXmlNode:nil];
}

OrgCybergarageXmlNode *new_OrgCybergarageXmlNode_init() {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlNode, init)
}

OrgCybergarageXmlNode *create_OrgCybergarageXmlNode_init() {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlNode, init)
}

void OrgCybergarageXmlNode_initWithNSString_(OrgCybergarageXmlNode *self, NSString *name) {
  OrgCybergarageXmlNode_init(self);
  [self setNameWithNSString:name];
}

OrgCybergarageXmlNode *new_OrgCybergarageXmlNode_initWithNSString_(NSString *name) {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlNode, initWithNSString_, name)
}

OrgCybergarageXmlNode *create_OrgCybergarageXmlNode_initWithNSString_(NSString *name) {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlNode, initWithNSString_, name)
}

void OrgCybergarageXmlNode_initWithNSString_withNSString_(OrgCybergarageXmlNode *self, NSString *ns, NSString *name) {
  OrgCybergarageXmlNode_init(self);
  [self setNameWithNSString:ns withNSString:name];
}

OrgCybergarageXmlNode *new_OrgCybergarageXmlNode_initWithNSString_withNSString_(NSString *ns, NSString *name) {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlNode, initWithNSString_withNSString_, ns, name)
}

OrgCybergarageXmlNode *create_OrgCybergarageXmlNode_initWithNSString_withNSString_(NSString *ns, NSString *name) {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlNode, initWithNSString_withNSString_, ns, name)
}

void OrgCybergarageXmlNode_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *self, OrgCybergarageXmlNode *otherNode) {
  OrgCybergarageXmlNode_init(self);
  [self setWithOrgCybergarageXmlNode:otherNode];
}

OrgCybergarageXmlNode *new_OrgCybergarageXmlNode_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *otherNode) {
  J2OBJC_NEW_IMPL(OrgCybergarageXmlNode, initWithOrgCybergarageXmlNode_, otherNode)
}

OrgCybergarageXmlNode *create_OrgCybergarageXmlNode_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *otherNode) {
  J2OBJC_CREATE_IMPL(OrgCybergarageXmlNode, initWithOrgCybergarageXmlNode_, otherNode)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgCybergarageXmlNode)
