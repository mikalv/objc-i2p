//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/org/apache/http/conn/util/PublicSuffixListParser.java
//

#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Reader.h"
#include "java/lang/Character.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/http/conn/util/PublicSuffixList.h"
#include "org/apache/http/conn/util/PublicSuffixListParser.h"

@interface OrgApacheHttpConnUtilPublicSuffixListParser ()

- (jboolean)readLineWithJavaIoReader:(JavaIoReader *)r
           withJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

@end

inline jint OrgApacheHttpConnUtilPublicSuffixListParser_get_MAX_LINE_LEN(void);
#define OrgApacheHttpConnUtilPublicSuffixListParser_MAX_LINE_LEN 256
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheHttpConnUtilPublicSuffixListParser, MAX_LINE_LEN, jint)

__attribute__((unused)) static jboolean OrgApacheHttpConnUtilPublicSuffixListParser_readLineWithJavaIoReader_withJavaLangStringBuilder_(OrgApacheHttpConnUtilPublicSuffixListParser *self, JavaIoReader *r, JavaLangStringBuilder *sb);

@implementation OrgApacheHttpConnUtilPublicSuffixListParser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheHttpConnUtilPublicSuffixListParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheHttpConnUtilPublicSuffixList *)parseWithJavaIoReader:(JavaIoReader *)reader {
  id<JavaUtilList> rules = create_JavaUtilArrayList_init();
  id<JavaUtilList> exceptions = create_JavaUtilArrayList_init();
  JavaIoBufferedReader *r = create_JavaIoBufferedReader_initWithJavaIoReader_(reader);
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithInt_(256);
  jboolean more = true;
  while (more) {
    more = OrgApacheHttpConnUtilPublicSuffixListParser_readLineWithJavaIoReader_withJavaLangStringBuilder_(self, r, sb);
    NSString *line = [sb description];
    if ([((NSString *) nil_chk(line)) java_isEmpty]) {
      continue;
    }
    if ([line java_hasPrefix:@"//"]) {
      continue;
    }
    if ([line java_hasPrefix:@"."]) {
      line = [line java_substring:1];
    }
    jboolean isException = [((NSString *) nil_chk(line)) java_hasPrefix:@"!"];
    if (isException) {
      line = [line java_substring:1];
    }
    if (isException) {
      [exceptions addWithId:line];
    }
    else {
      [rules addWithId:line];
    }
  }
  return create_OrgApacheHttpConnUtilPublicSuffixList_initWithJavaUtilList_withJavaUtilList_(rules, exceptions);
}

- (jboolean)readLineWithJavaIoReader:(JavaIoReader *)r
           withJavaLangStringBuilder:(JavaLangStringBuilder *)sb {
  return OrgApacheHttpConnUtilPublicSuffixListParser_readLineWithJavaIoReader_withJavaLangStringBuilder_(self, r, sb);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheHttpConnUtilPublicSuffixList;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "Z", 0x2, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(parseWithJavaIoReader:);
  methods[2].selector = @selector(readLineWithJavaIoReader:withJavaLangStringBuilder:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_LINE_LEN", "I", .constantValue.asInt = OrgApacheHttpConnUtilPublicSuffixListParser_MAX_LINE_LEN, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "parse", "LJavaIoReader;", "LJavaIoIOException;", "readLine", "LJavaIoReader;LJavaLangStringBuilder;" };
  static const J2ObjcClassInfo _OrgApacheHttpConnUtilPublicSuffixListParser = { "PublicSuffixListParser", "org.apache.http.conn.util", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheHttpConnUtilPublicSuffixListParser;
}

@end

void OrgApacheHttpConnUtilPublicSuffixListParser_init(OrgApacheHttpConnUtilPublicSuffixListParser *self) {
  NSObject_init(self);
}

OrgApacheHttpConnUtilPublicSuffixListParser *new_OrgApacheHttpConnUtilPublicSuffixListParser_init() {
  J2OBJC_NEW_IMPL(OrgApacheHttpConnUtilPublicSuffixListParser, init)
}

OrgApacheHttpConnUtilPublicSuffixListParser *create_OrgApacheHttpConnUtilPublicSuffixListParser_init() {
  J2OBJC_CREATE_IMPL(OrgApacheHttpConnUtilPublicSuffixListParser, init)
}

jboolean OrgApacheHttpConnUtilPublicSuffixListParser_readLineWithJavaIoReader_withJavaLangStringBuilder_(OrgApacheHttpConnUtilPublicSuffixListParser *self, JavaIoReader *r, JavaLangStringBuilder *sb) {
  [((JavaLangStringBuilder *) nil_chk(sb)) setLengthWithInt:0];
  jint b;
  jboolean hitWhitespace = false;
  while ((b = [((JavaIoReader *) nil_chk(r)) read]) != -1) {
    jchar c = (jchar) b;
    if (c == 0x000a) {
      break;
    }
    if (JavaLangCharacter_isWhitespaceWithChar_(c)) {
      hitWhitespace = true;
    }
    if (!hitWhitespace) {
      [sb appendWithChar:c];
    }
    if ([sb java_length] > OrgApacheHttpConnUtilPublicSuffixListParser_MAX_LINE_LEN) {
      return false;
    }
  }
  return (b != -1);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheHttpConnUtilPublicSuffixListParser)