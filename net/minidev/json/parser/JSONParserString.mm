//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/parser/JSONParserString.java
//

#include "J2ObjC_source.h"
#include "net/minidev/json/parser/ContainerFactory.h"
#include "net/minidev/json/parser/ContentHandler.h"
#include "net/minidev/json/parser/ContentHandlerDumy.h"
#include "net/minidev/json/parser/JSONParserBase.h"
#include "net/minidev/json/parser/JSONParserMemory.h"
#include "net/minidev/json/parser/JSONParserString.h"
#include "net/minidev/json/parser/ParseException.h"

@interface NetMinidevJsonParserJSONParserString () {
 @public
  NSString *in_;
}

@end

J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserString, in_, NSString *)

@implementation NetMinidevJsonParserJSONParserString

- (instancetype)initWithInt:(jint)permissiveMode {
  NetMinidevJsonParserJSONParserString_initWithInt_(self, permissiveMode);
  return self;
}

- (id)parseWithNSString:(NSString *)inArg {
  return [self parseWithNSString:inArg withNetMinidevJsonParserContainerFactory:JreLoadStatic(NetMinidevJsonParserContainerFactory, FACTORY_SIMPLE) withNetMinidevJsonParserContentHandler:JreLoadStatic(NetMinidevJsonParserContentHandlerDumy, HANDLER)];
}

- (id)parseWithNSString:(NSString *)inArg
withNetMinidevJsonParserContainerFactory:(id<NetMinidevJsonParserContainerFactory>)containerFactory {
  return [self parseWithNSString:inArg withNetMinidevJsonParserContainerFactory:containerFactory withNetMinidevJsonParserContentHandler:JreLoadStatic(NetMinidevJsonParserContentHandlerDumy, HANDLER)];
}

- (id)parseWithNSString:(NSString *)inArg
withNetMinidevJsonParserContainerFactory:(id<NetMinidevJsonParserContainerFactory>)containerFactory
withNetMinidevJsonParserContentHandler:(id<NetMinidevJsonParserContentHandler>)handler {
  JreStrongAssign(&self->in_, inArg);
  self->len_ = [((NSString *) nil_chk(inArg)) java_length];
  self->pos_ = -1;
  return [self parseWithNetMinidevJsonParserContainerFactory:containerFactory withNetMinidevJsonParserContentHandler:handler];
}

- (void)extractStringWithInt:(jint)beginIndex
                     withInt:(jint)endIndex {
  JreStrongAssign(&xs_, [((NSString *) nil_chk(in_)) java_substring:beginIndex endIndex:endIndex]);
}

- (jint)indexOfWithChar:(jchar)c
                withInt:(jint)pos {
  return [((NSString *) nil_chk(in_)) java_indexOf:c fromIndex:pos];
}

- (void)read {
  if (++pos_ >= len_) self->c_ = NetMinidevJsonParserJSONParserBase_EOI;
  else self->c_ = [((NSString *) nil_chk(in_)) charAtWithInt:pos_];
}

- (void)readS {
  if (++pos_ >= len_) self->c_ = NetMinidevJsonParserJSONParserBase_EOI;
  else self->c_ = [((NSString *) nil_chk(in_)) charAtWithInt:pos_];
}

- (void)readNoEnd {
  if (++pos_ >= len_) {
    self->c_ = NetMinidevJsonParserJSONParserBase_EOI;
    @throw create_NetMinidevJsonParserParseException_initWithInt_withInt_withId_(pos_ - 1, NetMinidevJsonParserParseException_ERROR_UNEXPECTED_EOF, @"EOF");
  }
  else self->c_ = [((NSString *) nil_chk(in_)) charAtWithInt:pos_];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 1, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x4, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(parseWithNSString:);
  methods[2].selector = @selector(parseWithNSString:withNetMinidevJsonParserContainerFactory:);
  methods[3].selector = @selector(parseWithNSString:withNetMinidevJsonParserContainerFactory:withNetMinidevJsonParserContentHandler:);
  methods[4].selector = @selector(extractStringWithInt:withInt:);
  methods[5].selector = @selector(indexOfWithChar:withInt:);
  methods[6].selector = @selector(read);
  methods[7].selector = @selector(readS);
  methods[8].selector = @selector(readNoEnd);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "parse", "LNSString;", "LNetMinidevJsonParserParseException;", "LNSString;LNetMinidevJsonParserContainerFactory;", "LNSString;LNetMinidevJsonParserContainerFactory;LNetMinidevJsonParserContentHandler;", "extractString", "II", "indexOf", "CI" };
  static const J2ObjcClassInfo _NetMinidevJsonParserJSONParserString = { "JSONParserString", "net.minidev.json.parser", ptrTable, methods, fields, 7, 0x0, 9, 1, -1, -1, -1, -1, -1 };
  return &_NetMinidevJsonParserJSONParserString;
}

@end

void NetMinidevJsonParserJSONParserString_initWithInt_(NetMinidevJsonParserJSONParserString *self, jint permissiveMode) {
  NetMinidevJsonParserJSONParserMemory_initWithInt_(self, permissiveMode);
}

NetMinidevJsonParserJSONParserString *new_NetMinidevJsonParserJSONParserString_initWithInt_(jint permissiveMode) {
  J2OBJC_NEW_IMPL(NetMinidevJsonParserJSONParserString, initWithInt_, permissiveMode)
}

NetMinidevJsonParserJSONParserString *create_NetMinidevJsonParserJSONParserString_initWithInt_(jint permissiveMode) {
  J2OBJC_CREATE_IMPL(NetMinidevJsonParserJSONParserString, initWithInt_, permissiveMode)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetMinidevJsonParserJSONParserString)
