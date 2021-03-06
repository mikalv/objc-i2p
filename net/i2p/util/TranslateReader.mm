//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/TranslateReader.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Closeable.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FilterReader.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/PrintStream.h"
#include "java/io/Reader.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/util/Translate.h"
#include "net/i2p/util/TranslateReader.h"

@class NetI2pUtilTranslateReader_S;
@protocol NetI2pUtilTranslateReader_TagHook;

@interface NetI2pUtilTranslateReader () {
 @public
  NSString *_bundle_;
  NetI2pI2PAppContext *_ctx_;
  JavaLangStringBuilder *_inBuf_;
  JavaLangStringBuilder *_outBuf_;
  JavaLangStringBuilder *_argBuf_;
  id<JavaUtilList> _args_;
  NetI2pUtilTranslateReader_S *_state_;
  id<NetI2pUtilTranslateReader_TagHook> _hook_;
}

- (jint)parse;

- (void)pushitWithChar:(jchar)c;

- (jint)flushit;

- (jint)popit;

- (void)translate;

+ (void)testWithNSString:(NSString *)file;

+ (void)tagWithNSStringArray:(IOSObjectArray *)files;

@end

J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _bundle_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _ctx_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _inBuf_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _outBuf_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _argBuf_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _args_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _state_, NetI2pUtilTranslateReader_S *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader, _hook_, id<NetI2pUtilTranslateReader_TagHook>)

inline jint NetI2pUtilTranslateReader_get_MAX_ARGS(void);
#define NetI2pUtilTranslateReader_MAX_ARGS 9
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilTranslateReader, MAX_ARGS, jint)

__attribute__((unused)) static jint NetI2pUtilTranslateReader_parse(NetI2pUtilTranslateReader *self);

__attribute__((unused)) static void NetI2pUtilTranslateReader_pushitWithChar_(NetI2pUtilTranslateReader *self, jchar c);

__attribute__((unused)) static jint NetI2pUtilTranslateReader_flushit(NetI2pUtilTranslateReader *self);

__attribute__((unused)) static jint NetI2pUtilTranslateReader_popit(NetI2pUtilTranslateReader *self);

__attribute__((unused)) static void NetI2pUtilTranslateReader_translate(NetI2pUtilTranslateReader *self);

__attribute__((unused)) static void NetI2pUtilTranslateReader_testWithNSString_(NSString *file);

__attribute__((unused)) static void NetI2pUtilTranslateReader_tagWithNSStringArray_(IOSObjectArray *files);

typedef NS_ENUM(NSUInteger, NetI2pUtilTranslateReader_S_Enum) {
  NetI2pUtilTranslateReader_S_Enum_START = 0,
  NetI2pUtilTranslateReader_S_Enum_UNDER = 1,
  NetI2pUtilTranslateReader_S_Enum_LPAREN = 2,
  NetI2pUtilTranslateReader_S_Enum_QUOTE = 3,
  NetI2pUtilTranslateReader_S_Enum_BACK = 4,
};

@interface NetI2pUtilTranslateReader_S : JavaLangEnum

@property (readonly, class, nonnull) NetI2pUtilTranslateReader_S *START NS_SWIFT_NAME(START);
@property (readonly, class, nonnull) NetI2pUtilTranslateReader_S *UNDER NS_SWIFT_NAME(UNDER);
@property (readonly, class, nonnull) NetI2pUtilTranslateReader_S *LPAREN NS_SWIFT_NAME(LPAREN);
@property (readonly, class, nonnull) NetI2pUtilTranslateReader_S *QUOTE NS_SWIFT_NAME(QUOTE);
@property (readonly, class, nonnull) NetI2pUtilTranslateReader_S *BACK NS_SWIFT_NAME(BACK);
+ (IOSObjectArray *)values;

+ (NetI2pUtilTranslateReader_S *)valueOfWithNSString:(NSString *)name;

- (NetI2pUtilTranslateReader_S_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pUtilTranslateReader_S)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_values_[];

inline NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_get_START(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilTranslateReader_S, START)

inline NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_get_UNDER(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilTranslateReader_S, UNDER)

inline NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_get_LPAREN(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilTranslateReader_S, LPAREN)

inline NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_get_QUOTE(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilTranslateReader_S, QUOTE)

inline NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_get_BACK(void);
J2OBJC_ENUM_CONSTANT(NetI2pUtilTranslateReader_S, BACK)

__attribute__((unused)) static void NetI2pUtilTranslateReader_S_initWithNSString_withInt_(NetI2pUtilTranslateReader_S *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static IOSObjectArray *NetI2pUtilTranslateReader_S_values(void);

__attribute__((unused)) static NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilTranslateReader_S)

@protocol NetI2pUtilTranslateReader_TagHook < JavaIoCloseable, JavaObject >

- (void)tagWithJavaUtilList:(id<JavaUtilList>)args;

@end

@interface NetI2pUtilTranslateReader_TagHook : NSObject

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilTranslateReader_TagHook)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilTranslateReader_TagHook)

@interface NetI2pUtilTranslateReader_Tagger : NSObject < NetI2pUtilTranslateReader_TagHook > {
 @public
  JavaIoPrintStream *_out_;
  NSString *_name_;
  jint _count_;
}

- (instancetype)initWithNSString:(NSString *)file;

- (void)tagWithJavaUtilList:(id<JavaUtilList>)args;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilTranslateReader_Tagger)

J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader_Tagger, _out_, JavaIoPrintStream *)
J2OBJC_FIELD_SETTER(NetI2pUtilTranslateReader_Tagger, _name_, NSString *)

__attribute__((unused)) static void NetI2pUtilTranslateReader_Tagger_initWithNSString_(NetI2pUtilTranslateReader_Tagger *self, NSString *file);

__attribute__((unused)) static NetI2pUtilTranslateReader_Tagger *new_NetI2pUtilTranslateReader_Tagger_initWithNSString_(NSString *file) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pUtilTranslateReader_Tagger *create_NetI2pUtilTranslateReader_Tagger_initWithNSString_(NSString *file);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilTranslateReader_Tagger)

@implementation NetI2pUtilTranslateReader

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                               withNSString:(NSString *)bundle
                      withJavaIoInputStream:(JavaIoInputStream *)inArg {
  NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(self, ctx, bundle, inArg);
  return self;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                               withNSString:(NSString *)bundle
                           withJavaIoReader:(JavaIoReader *)inArg {
  NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(self, ctx, bundle, inArg);
  return self;
}

- (jint)read {
  jint rv = NetI2pUtilTranslateReader_popit(self);
  if (rv > 0) return rv;
  return NetI2pUtilTranslateReader_parse(self);
}

- (jint)parse {
  return NetI2pUtilTranslateReader_parse(self);
}

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len {
  for (jint i = 0; i < len; i++) {
    jint c = [self read];
    if (c < 0) {
      if (i == 0) return -1;
      return i;
    }
    *IOSCharArray_GetRef(nil_chk(cbuf), off + i) = (jchar) c;
  }
  return len;
}

- (jlong)skipWithLong:(jlong)n {
  for (jlong i = 0; i < n; i++) {
    jint c = [self read];
    if (c < 0) {
      if (i == 0) return -1;
      return i;
    }
  }
  return n;
}

- (jboolean)ready {
  return [((JavaLangStringBuilder *) nil_chk(_outBuf_)) java_length] > 0 || [((JavaLangStringBuilder *) nil_chk(_inBuf_)) java_length] > 0 || [((JavaIoReader *) nil_chk(in_)) ready];
}

- (void)close {
  [((JavaLangStringBuilder *) nil_chk(_inBuf_)) setLengthWithInt:0];
  [((JavaLangStringBuilder *) nil_chk(_outBuf_)) setLengthWithInt:0];
  JreStrongAssign(&_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, START));
  [((JavaIoReader *) nil_chk(in_)) close];
}

- (void)markWithInt:(jint)readLimit {
}

- (void)reset {
  @throw create_JavaIoIOException_init();
}

- (jboolean)markSupported {
  return false;
}

- (void)pushitWithChar:(jchar)c {
  NetI2pUtilTranslateReader_pushitWithChar_(self, c);
}

- (jint)flushit {
  return NetI2pUtilTranslateReader_flushit(self);
}

- (jint)popit {
  return NetI2pUtilTranslateReader_popit(self);
}

- (void)translate {
  NetI2pUtilTranslateReader_translate(self);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pUtilTranslateReader_mainWithNSStringArray_(args);
}

+ (void)testWithNSString:(NSString *)file {
  NetI2pUtilTranslateReader_testWithNSString_(file);
}

+ (void)tagWithNSStringArray:(IOSObjectArray *)files {
  NetI2pUtilTranslateReader_tagWithNSStringArray_(files);
}

- (void)dealloc {
  RELEASE_(_bundle_);
  RELEASE_(_ctx_);
  RELEASE_(_inBuf_);
  RELEASE_(_outBuf_);
  RELEASE_(_argBuf_);
  RELEASE_(_args_);
  RELEASE_(_state_);
  RELEASE_(_hook_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, 4, 1, -1, -1, -1 },
    { NULL, "J", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 13, 14, 1, -1, -1, -1 },
    { NULL, "V", 0xa, 15, 12, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:withNSString:withJavaIoInputStream:);
  methods[1].selector = @selector(initWithNetI2pI2PAppContext:withNSString:withJavaIoReader:);
  methods[2].selector = @selector(read);
  methods[3].selector = @selector(parse);
  methods[4].selector = @selector(readWithCharArray:withInt:withInt:);
  methods[5].selector = @selector(skipWithLong:);
  methods[6].selector = @selector(ready);
  methods[7].selector = @selector(close);
  methods[8].selector = @selector(markWithInt:);
  methods[9].selector = @selector(reset);
  methods[10].selector = @selector(markSupported);
  methods[11].selector = @selector(pushitWithChar:);
  methods[12].selector = @selector(flushit);
  methods[13].selector = @selector(popit);
  methods[14].selector = @selector(translate);
  methods[15].selector = @selector(mainWithNSStringArray:);
  methods[16].selector = @selector(testWithNSString:);
  methods[17].selector = @selector(tagWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_bundle_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_ctx_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_inBuf_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_outBuf_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_argBuf_", "LJavaLangStringBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_args_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 16, -1 },
    { "_state_", "LNetI2pUtilTranslateReader_S;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_hook_", "LNetI2pUtilTranslateReader_TagHook;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MAX_ARGS", "I", .constantValue.asInt = NetI2pUtilTranslateReader_MAX_ARGS, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;LNSString;LJavaIoInputStream;", "LJavaIoIOException;", "LNetI2pI2PAppContext;LNSString;LJavaIoReader;", "read", "[CII", "skip", "J", "mark", "I", "pushit", "C", "main", "[LNSString;", "test", "LNSString;", "tag", "Ljava/util/List<Ljava/lang/String;>;", "LNetI2pUtilTranslateReader_S;LNetI2pUtilTranslateReader_TagHook;LNetI2pUtilTranslateReader_Tagger;" };
  static const J2ObjcClassInfo _NetI2pUtilTranslateReader = { "TranslateReader", "net.i2p.util", ptrTable, methods, fields, 7, 0x1, 18, 9, -1, 17, -1, -1, -1 };
  return &_NetI2pUtilTranslateReader;
}

@end

void NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pUtilTranslateReader *self, NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoInputStream *inArg) {
  NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(self, ctx, bundle, create_JavaIoBufferedReader_initWithJavaIoReader_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(inArg, @"UTF-8")));
}

NetI2pUtilTranslateReader *new_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoInputStream *inArg) {
  J2OBJC_NEW_IMPL(NetI2pUtilTranslateReader, initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_, ctx, bundle, inArg)
}

NetI2pUtilTranslateReader *create_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoInputStream *inArg) {
  J2OBJC_CREATE_IMPL(NetI2pUtilTranslateReader, initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_, ctx, bundle, inArg)
}

void NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(NetI2pUtilTranslateReader *self, NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoReader *inArg) {
  JavaIoFilterReader_initWithJavaIoReader_(self, inArg);
  JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, START));
  JreStrongAssign(&self->_ctx_, ctx);
  JreStrongAssign(&self->_bundle_, bundle);
  JreStrongAssignAndConsume(&self->_args_, new_JavaUtilArrayList_initWithInt_(4));
  JreStrongAssignAndConsume(&self->_inBuf_, new_JavaLangStringBuilder_initWithInt_(64));
  JreStrongAssignAndConsume(&self->_outBuf_, new_JavaLangStringBuilder_initWithInt_(64));
  JreStrongAssignAndConsume(&self->_argBuf_, new_JavaLangStringBuilder_initWithInt_(64));
}

NetI2pUtilTranslateReader *new_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoReader *inArg) {
  J2OBJC_NEW_IMPL(NetI2pUtilTranslateReader, initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_, ctx, bundle, inArg)
}

NetI2pUtilTranslateReader *create_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoReader *inArg) {
  J2OBJC_CREATE_IMPL(NetI2pUtilTranslateReader, initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_, ctx, bundle, inArg)
}

jint NetI2pUtilTranslateReader_parse(NetI2pUtilTranslateReader *self) {
  while (true) {
    jint c = [((JavaIoReader *) nil_chk(self->in_)) read];
    if (c >= 0) NetI2pUtilTranslateReader_pushitWithChar_(self, (jchar) c);
    switch (c) {
      case -1:
      case 0x000d:
      case 0x000a:
      return NetI2pUtilTranslateReader_flushit(self);
      case '_':
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_START:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, UNDER));
        break;
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        break;
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
      case '(':
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_UNDER:
        [((id<JavaUtilList>) nil_chk(self->_args_)) clear];
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, LPAREN));
        break;
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        break;
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
      case '"':
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_LPAREN:
        if ([((id<JavaUtilList>) nil_chk(self->_args_)) size] >= NetI2pUtilTranslateReader_MAX_ARGS) return NetI2pUtilTranslateReader_flushit(self);
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) setLengthWithInt:0];
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        break;
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        break;
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        [((id<JavaUtilList>) nil_chk(self->_args_)) addWithId:[((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) description]];
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, LPAREN));
        break;
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
      case '\\':
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, BACK));
        break;
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        break;
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
      case ' ':
      case 0x0009:
      case ',':
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        break;
        case NetI2pUtilTranslateReader_S_Enum_LPAREN:
        break;
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
      case ')':
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        break;
        case NetI2pUtilTranslateReader_S_Enum_LPAREN:
        NetI2pUtilTranslateReader_translate(self);
        return NetI2pUtilTranslateReader_popit(self);
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
      default:
      switch ([self->_state_ ordinal]) {
        case NetI2pUtilTranslateReader_S_Enum_BACK:
        JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, QUOTE));
        case NetI2pUtilTranslateReader_S_Enum_QUOTE:
        [((JavaLangStringBuilder *) nil_chk(self->_argBuf_)) appendWithChar:(jchar) c];
        break;
        default:
        return NetI2pUtilTranslateReader_flushit(self);
      }
      break;
    }
  }
}

void NetI2pUtilTranslateReader_pushitWithChar_(NetI2pUtilTranslateReader *self, jchar c) {
  [((JavaLangStringBuilder *) nil_chk(self->_inBuf_)) appendWithChar:c];
}

jint NetI2pUtilTranslateReader_flushit(NetI2pUtilTranslateReader *self) {
  JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, START));
  if ([((JavaLangStringBuilder *) nil_chk(self->_inBuf_)) java_length] > 0) {
    [((JavaLangStringBuilder *) nil_chk(self->_outBuf_)) appendWithJavaLangCharSequence:self->_inBuf_];
    [self->_inBuf_ setLengthWithInt:0];
  }
  return NetI2pUtilTranslateReader_popit(self);
}

jint NetI2pUtilTranslateReader_popit(NetI2pUtilTranslateReader *self) {
  if ([((JavaLangStringBuilder *) nil_chk(self->_outBuf_)) java_length] > 0) {
    jint rv = [self->_outBuf_ charAtWithInt:0] & (jint) 0xffff;
    [self->_outBuf_ deleteCharAtWithInt:0];
    return rv;
  }
  return -1;
}

void NetI2pUtilTranslateReader_translate(NetI2pUtilTranslateReader *self) {
  jint argCount = [((id<JavaUtilList>) nil_chk(self->_args_)) size];
  if (argCount <= 0 || argCount > NetI2pUtilTranslateReader_MAX_ARGS) {
    NetI2pUtilTranslateReader_flushit(self);
    return;
  }
  JreStrongAssign(&self->_state_, JreLoadEnum(NetI2pUtilTranslateReader_S, START));
  [((JavaLangStringBuilder *) nil_chk(self->_inBuf_)) setLengthWithInt:0];
  if (self->_hook_ != nil) {
    [self->_hook_ tagWithJavaUtilList:self->_args_];
    return;
  }
  NSString *tx = nil;
  if (argCount == 1) tx = NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_([self->_args_ getWithInt:0], self->_ctx_, self->_bundle_);
  else tx = NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_withNSObjectArray_([self->_args_ getWithInt:0], self->_ctx_, self->_bundle_, [((id<JavaUtilList>) nil_chk([self->_args_ subListWithInt:1 withInt:[self->_args_ size]])) toArray]);
  [((JavaLangStringBuilder *) nil_chk(self->_outBuf_)) appendWithNSString:tx];
}

void NetI2pUtilTranslateReader_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pUtilTranslateReader_initialize();
  @try {
    if (((IOSObjectArray *) nil_chk(args))->size_ >= 2 && [((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) isEqual:@"test"]) NetI2pUtilTranslateReader_testWithNSString_(IOSObjectArray_Get(args, 1));
    else if (args->size_ >= 2 && [((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) isEqual:@"tag"]) NetI2pUtilTranslateReader_tagWithNSStringArray_(args);
    else [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Usage:\n\ttest file (output to stdout)\n\ttag file (output to file.java)\n\ttag dir outfile\n\ttag file1 [file2...] outfile"];
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
  }
}

void NetI2pUtilTranslateReader_testWithNSString_(NSString *file) {
  NetI2pUtilTranslateReader_initialize();
  NetI2pUtilTranslateReader *r = nil;
  @try {
    r = create_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pI2PAppContext_getGlobalContext(), @"net.i2p.router.web.messages", create_JavaIoFileInputStream_initWithNSString_(file));
    jint c;
    while ((c = [r read]) >= 0) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printWithChar:(jchar) c];
    }
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) flush];
  }
  @finally {
    if (r != nil) @try {
      [r close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
}

void NetI2pUtilTranslateReader_tagWithNSStringArray_(IOSObjectArray *files) {
  NetI2pUtilTranslateReader_initialize();
  IOSCharArray *buf = [IOSCharArray arrayWithLength:256];
  NSString *outfile;
  id<JavaUtilList> filelist;
  if (((IOSObjectArray *) nil_chk(files))->size_ == 2) {
    outfile = JreStrcat("$$", IOSObjectArray_Get(files, 1), @".java");
    filelist = JavaUtilCollections_singletonListWithId_(IOSObjectArray_Get(files, 1));
  }
  else if (files->size_ == 3 && [(create_JavaIoFile_initWithNSString_(IOSObjectArray_Get(files, 1))) isDirectory]) {
    outfile = IOSObjectArray_Get(files, 2);
    JavaIoFile *dir = create_JavaIoFile_initWithNSString_(IOSObjectArray_Get(files, 1));
    IOSObjectArray *listing = [dir listFiles];
    if (listing == nil) @throw create_JavaIoIOException_init();
    filelist = create_JavaUtilArrayList_initWithInt_(listing->size_);
    for (jint i = 0; i < listing->size_; i++) {
      JavaIoFile *f = IOSObjectArray_Get(listing, i);
      if (![((JavaIoFile *) nil_chk(f)) isDirectory]) [filelist addWithId:[f getAbsolutePath]];
    }
  }
  else {
    outfile = IOSObjectArray_Get(files, files->size_ - 1);
    filelist = [((id<JavaUtilList>) nil_chk(JavaUtilArrays_asListWithNSObjectArray_(files))) subListWithInt:1 withInt:files->size_ - 1];
  }
  id<NetI2pUtilTranslateReader_TagHook> tagger = nil;
  @try {
    tagger = create_NetI2pUtilTranslateReader_Tagger_initWithNSString_(outfile);
    for (NSString * __strong file in nil_chk(filelist)) {
      NetI2pUtilTranslateReader *r = nil;
      @try {
        r = create_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pI2PAppContext_getGlobalContext(), nil, create_JavaIoFileInputStream_initWithNSString_(file));
        JreStrongAssign(&r->_hook_, tagger);
        while ([r readWithCharArray:buf withInt:0 withInt:buf->size_] >= 0) {
        }
      }
      @finally {
        if (r != nil) [r close];
      }
    }
  }
  @finally {
    if (tagger != nil) [tagger close];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilTranslateReader)

J2OBJC_INITIALIZED_DEFN(NetI2pUtilTranslateReader_S)

NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_values_[5];

@implementation NetI2pUtilTranslateReader_S

+ (NetI2pUtilTranslateReader_S *)START {
  return JreEnum(NetI2pUtilTranslateReader_S, START);
}

+ (NetI2pUtilTranslateReader_S *)UNDER {
  return JreEnum(NetI2pUtilTranslateReader_S, UNDER);
}

+ (NetI2pUtilTranslateReader_S *)LPAREN {
  return JreEnum(NetI2pUtilTranslateReader_S, LPAREN);
}

+ (NetI2pUtilTranslateReader_S *)QUOTE {
  return JreEnum(NetI2pUtilTranslateReader_S, QUOTE);
}

+ (NetI2pUtilTranslateReader_S *)BACK {
  return JreEnum(NetI2pUtilTranslateReader_S, BACK);
}

+ (IOSObjectArray *)values {
  return NetI2pUtilTranslateReader_S_values();
}

+ (NetI2pUtilTranslateReader_S *)valueOfWithNSString:(NSString *)name {
  return NetI2pUtilTranslateReader_S_valueOfWithNSString_(name);
}

- (NetI2pUtilTranslateReader_S_Enum)toNSEnum {
  return (NetI2pUtilTranslateReader_S_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LNetI2pUtilTranslateReader_S;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pUtilTranslateReader_S;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "START", "LNetI2pUtilTranslateReader_S;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "UNDER", "LNetI2pUtilTranslateReader_S;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "LPAREN", "LNetI2pUtilTranslateReader_S;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "QUOTE", "LNetI2pUtilTranslateReader_S;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "BACK", "LNetI2pUtilTranslateReader_S;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(NetI2pUtilTranslateReader_S, START), &JreEnum(NetI2pUtilTranslateReader_S, UNDER), &JreEnum(NetI2pUtilTranslateReader_S, LPAREN), &JreEnum(NetI2pUtilTranslateReader_S, QUOTE), &JreEnum(NetI2pUtilTranslateReader_S, BACK), "LNetI2pUtilTranslateReader;", "Ljava/lang/Enum<Lnet/i2p/util/TranslateReader$S;>;" };
  static const J2ObjcClassInfo _NetI2pUtilTranslateReader_S = { "S", "net.i2p.util", ptrTable, methods, fields, 7, 0x401a, 2, 5, 7, -1, -1, 8, -1 };
  return &_NetI2pUtilTranslateReader_S;
}

+ (void)initialize {
  if (self == [NetI2pUtilTranslateReader_S class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 5 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 5; i++) {
      ((void)(NetI2pUtilTranslateReader_S_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      NetI2pUtilTranslateReader_S_initWithNSString_withInt_(e, JreEnumConstantName(NetI2pUtilTranslateReader_S_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(NetI2pUtilTranslateReader_S)
  }
}

@end

void NetI2pUtilTranslateReader_S_initWithNSString_withInt_(NetI2pUtilTranslateReader_S *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *NetI2pUtilTranslateReader_S_values() {
  NetI2pUtilTranslateReader_S_initialize();
  return [IOSObjectArray arrayWithObjects:NetI2pUtilTranslateReader_S_values_ count:5 type:NetI2pUtilTranslateReader_S_class_()];
}

NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_valueOfWithNSString_(NSString *name) {
  NetI2pUtilTranslateReader_S_initialize();
  for (int i = 0; i < 5; i++) {
    NetI2pUtilTranslateReader_S *e = NetI2pUtilTranslateReader_S_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

NetI2pUtilTranslateReader_S *NetI2pUtilTranslateReader_S_fromOrdinal(NSUInteger ordinal) {
  NetI2pUtilTranslateReader_S_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return NetI2pUtilTranslateReader_S_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilTranslateReader_S)

@implementation NetI2pUtilTranslateReader_TagHook

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(tagWithJavaUtilList:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "tag", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/String;>;)V", "LNetI2pUtilTranslateReader;" };
  static const J2ObjcClassInfo _NetI2pUtilTranslateReader_TagHook = { "TagHook", "net.i2p.util", ptrTable, methods, NULL, 7, 0x60a, 1, 0, 3, -1, -1, -1, -1 };
  return &_NetI2pUtilTranslateReader_TagHook;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pUtilTranslateReader_TagHook)

@implementation NetI2pUtilTranslateReader_Tagger

- (instancetype)initWithNSString:(NSString *)file {
  NetI2pUtilTranslateReader_Tagger_initWithNSString_(self, file);
  return self;
}

- (void)tagWithJavaUtilList:(id<JavaUtilList>)args {
  if ([((id<JavaUtilList>) nil_chk(args)) size] <= 0) return;
  [((JavaIoPrintStream *) nil_chk(_out_)) printWithNSString:@"\t_t("];
  for (jint i = 0; i < [args size]; i++) {
    if (i > 0) [_out_ printWithNSString:@", "];
    [_out_ printWithChar:'"'];
    [_out_ printWithNSString:[((NSString *) nil_chk([args getWithInt:i])) java_replace:@"\"" withSequence:@"\\\""]];
    [_out_ printWithChar:'"'];
  }
  [_out_ printlnWithNSString:@");"];
  _count_++;
}

- (void)close {
  [((JavaIoPrintStream *) nil_chk(_out_)) printlnWithNSString:@"    }"];
  [_out_ printlnWithNSString:@"}"];
  if ([_out_ checkError]) @throw create_JavaIoIOException_init();
  [_out_ close];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("I$$", _count_, @" strings written to ", _name_)];
}

- (void)dealloc {
  RELEASE_(_out_);
  RELEASE_(_name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(tagWithJavaUtilList:);
  methods[2].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_out_", "LJavaIoPrintStream;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_count_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaIoIOException;", "tag", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/String;>;)V", "LNetI2pUtilTranslateReader;" };
  static const J2ObjcClassInfo _NetI2pUtilTranslateReader_Tagger = { "Tagger", "net.i2p.util", ptrTable, methods, fields, 7, 0xa, 3, 3, 5, -1, -1, -1, -1 };
  return &_NetI2pUtilTranslateReader_Tagger;
}

@end

void NetI2pUtilTranslateReader_Tagger_initWithNSString_(NetI2pUtilTranslateReader_Tagger *self, NSString *file) {
  NSObject_init(self);
  JreStrongAssign(&self->_name_, file);
  JreStrongAssignAndConsume(&self->_out_, new_JavaIoPrintStream_initWithNSString_withNSString_(file, @"UTF-8"));
  [self->_out_ printlnWithNSString:@"// Automatically generated, do not edit"];
  [self->_out_ printlnWithNSString:@"package dummy;"];
  [self->_out_ printlnWithNSString:@"class Dummy {"];
  [self->_out_ printlnWithNSString:@"    void dummy() {"];
}

NetI2pUtilTranslateReader_Tagger *new_NetI2pUtilTranslateReader_Tagger_initWithNSString_(NSString *file) {
  J2OBJC_NEW_IMPL(NetI2pUtilTranslateReader_Tagger, initWithNSString_, file)
}

NetI2pUtilTranslateReader_Tagger *create_NetI2pUtilTranslateReader_Tagger_initWithNSString_(NSString *file) {
  J2OBJC_CREATE_IMPL(NetI2pUtilTranslateReader_Tagger, initWithNSString_, file)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilTranslateReader_Tagger)
