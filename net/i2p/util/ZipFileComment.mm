//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/ZipFileComment.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/zip/ZipException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/util/ZipFileComment.h"

@interface NetI2pUtilZipFileComment ()

+ (NSString *)getCommentWithByteArray:(IOSByteArray *)buffer;

@end

inline jint NetI2pUtilZipFileComment_get_BLOCK_LEN(void);
#define NetI2pUtilZipFileComment_BLOCK_LEN 22
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilZipFileComment, BLOCK_LEN, jint)

inline IOSByteArray *NetI2pUtilZipFileComment_get_magicStart(void);
static IOSByteArray *NetI2pUtilZipFileComment_magicStart;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilZipFileComment, magicStart, IOSByteArray *)

inline jint NetI2pUtilZipFileComment_get_HEADER_LEN(void);
static jint NetI2pUtilZipFileComment_HEADER_LEN;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilZipFileComment, HEADER_LEN, jint)

inline IOSByteArray *NetI2pUtilZipFileComment_get_magicDirEnd(void);
static IOSByteArray *NetI2pUtilZipFileComment_magicDirEnd;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilZipFileComment, magicDirEnd, IOSByteArray *)

inline jint NetI2pUtilZipFileComment_get_MAGIC_LEN(void);
static jint NetI2pUtilZipFileComment_MAGIC_LEN;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilZipFileComment, MAGIC_LEN, jint)

__attribute__((unused)) static NSString *NetI2pUtilZipFileComment_getCommentWithByteArray_(IOSByteArray *buffer);

__attribute__((unused)) static IOSObjectArray *NetI2pUtilZipFileComment__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(NetI2pUtilZipFileComment)

@implementation NetI2pUtilZipFileComment

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pUtilZipFileComment_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getCommentWithJavaIoFile:(JavaIoFile *)file
                               withInt:(jint)max {
  return NetI2pUtilZipFileComment_getCommentWithJavaIoFile_withInt_(file, max);
}

+ (NSString *)getCommentWithJavaIoFile:(JavaIoFile *)file
                               withInt:(jint)max
                               withInt:(jint)skip {
  return NetI2pUtilZipFileComment_getCommentWithJavaIoFile_withInt_withInt_(file, max, skip);
}

+ (NSString *)getCommentWithByteArray:(IOSByteArray *)buffer {
  return NetI2pUtilZipFileComment_getCommentWithByteArray_(buffer);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pUtilZipFileComment_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 3, 2, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 0, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x9, 5, 6, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getCommentWithJavaIoFile:withInt:);
  methods[2].selector = @selector(getCommentWithJavaIoFile:withInt:withInt:);
  methods[3].selector = @selector(getCommentWithByteArray:);
  methods[4].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BLOCK_LEN", "I", .constantValue.asInt = NetI2pUtilZipFileComment_BLOCK_LEN, 0x1a, -1, -1, -1, -1 },
    { "magicStart", "[B", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "HEADER_LEN", "I", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "magicDirEnd", "[B", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "MAGIC_LEN", "I", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "getComment", "LJavaIoFile;I", "LJavaIoIOException;", "LJavaIoFile;II", "[B", "main", "[LNSString;", &NetI2pUtilZipFileComment_magicStart, &NetI2pUtilZipFileComment_HEADER_LEN, &NetI2pUtilZipFileComment_magicDirEnd, &NetI2pUtilZipFileComment_MAGIC_LEN, (void *)&NetI2pUtilZipFileComment__Annotations$0 };
  static const J2ObjcClassInfo _NetI2pUtilZipFileComment = { "ZipFileComment", "net.i2p.util", ptrTable, methods, fields, 7, 0x401, 5, 5, -1, -1, -1, -1, 11 };
  return &_NetI2pUtilZipFileComment;
}

+ (void)initialize {
  if (self == [NetI2pUtilZipFileComment class]) {
    JreStrongAssignAndConsume(&NetI2pUtilZipFileComment_magicStart, [IOSByteArray newArrayWithBytes:(jbyte[]){ (jint) 0x50, (jint) 0x4b, (jint) 0x03, (jint) 0x04 } count:4]);
    NetI2pUtilZipFileComment_HEADER_LEN = NetI2pUtilZipFileComment_magicStart->size_;
    JreStrongAssignAndConsume(&NetI2pUtilZipFileComment_magicDirEnd, [IOSByteArray newArrayWithBytes:(jbyte[]){ (jint) 0x50, (jint) 0x4b, (jint) 0x05, (jint) 0x06 } count:4]);
    NetI2pUtilZipFileComment_MAGIC_LEN = NetI2pUtilZipFileComment_magicDirEnd->size_;
    J2OBJC_SET_INITIALIZED(NetI2pUtilZipFileComment)
  }
}

@end

void NetI2pUtilZipFileComment_init(NetI2pUtilZipFileComment *self) {
  NSObject_init(self);
}

NSString *NetI2pUtilZipFileComment_getCommentWithJavaIoFile_withInt_(JavaIoFile *file, jint max) {
  NetI2pUtilZipFileComment_initialize();
  return NetI2pUtilZipFileComment_getCommentWithJavaIoFile_withInt_withInt_(file, max, 0);
}

NSString *NetI2pUtilZipFileComment_getCommentWithJavaIoFile_withInt_withInt_(JavaIoFile *file, jint max, jint skip) {
  NetI2pUtilZipFileComment_initialize();
  if (![((JavaIoFile *) nil_chk(file)) exists]) @throw create_JavaIoFileNotFoundException_initWithNSString_(JreStrcat("$@", @"File not found: ", file));
  jlong len = [file length];
  if (len < NetI2pUtilZipFileComment_BLOCK_LEN + NetI2pUtilZipFileComment_HEADER_LEN + skip) @throw create_JavaUtilZipZipException_initWithNSString_(JreStrcat("$@", @"File too short: ", file));
  if (len > JavaLangInteger_MAX_VALUE) @throw create_JavaUtilZipZipException_initWithNSString_(JreStrcat("$@", @"File too long: ", file));
  jint fileLen = (jint) len;
  IOSByteArray *buffer = [IOSByteArray arrayWithLength:JavaLangMath_minWithInt_withInt_(fileLen - skip, max + NetI2pUtilZipFileComment_BLOCK_LEN)];
  JavaIoInputStream *in = nil;
  @try {
    in = create_JavaIoFileInputStream_initWithJavaIoFile_(file);
    if (skip > 0) NetI2pDataDataHelper_skipWithJavaIoInputStream_withLong_(in, skip);
    IOSByteArray *hdr = [IOSByteArray arrayWithLength:NetI2pUtilZipFileComment_HEADER_LEN];
    NetI2pDataDataHelper_readWithJavaIoInputStream_withByteArray_(in, hdr);
    if (!NetI2pDataDataHelper_eqWithByteArray_withByteArray_(hdr, NetI2pUtilZipFileComment_magicStart)) @throw create_JavaUtilZipZipException_initWithNSString_(JreStrcat("$@", @"Not a zip file: ", file));
    NetI2pDataDataHelper_skipWithJavaIoInputStream_withLong_(in, fileLen - (skip + NetI2pUtilZipFileComment_HEADER_LEN + buffer->size_));
    NetI2pDataDataHelper_readWithJavaIoInputStream_withByteArray_(in, buffer);
    return NetI2pUtilZipFileComment_getCommentWithByteArray_(buffer);
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
}

NSString *NetI2pUtilZipFileComment_getCommentWithByteArray_(IOSByteArray *buffer) {
  NetI2pUtilZipFileComment_initialize();
  for (jint i = ((IOSByteArray *) nil_chk(buffer))->size_ - (1 + NetI2pUtilZipFileComment_BLOCK_LEN - NetI2pUtilZipFileComment_MAGIC_LEN); i >= 0; i--) {
    if (NetI2pDataDataHelper_eqWithByteArray_withInt_withByteArray_withInt_withInt_(buffer, i, NetI2pUtilZipFileComment_magicDirEnd, 0, NetI2pUtilZipFileComment_MAGIC_LEN)) {
      jint commentLen = (IOSByteArray_Get(buffer, i + NetI2pUtilZipFileComment_BLOCK_LEN - 2) & (jint) 0xff) + ((IOSByteArray_Get(buffer, i + NetI2pUtilZipFileComment_BLOCK_LEN - 1) & (jint) 0xff) * 256);
      return [NSString java_stringWithBytes:buffer offset:i + NetI2pUtilZipFileComment_BLOCK_LEN length:commentLen charsetName:@"UTF-8"];
    }
  }
  @throw create_JavaUtilZipZipException_initWithNSString_(@"No comment block found");
}

void NetI2pUtilZipFileComment_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pUtilZipFileComment_initialize();
  if (((IOSObjectArray *) nil_chk(args))->size_ != 1) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Usage: ZipFileComment file"];
    return;
  }
  jint skip = 0;
  NSString *file = IOSObjectArray_Get(args, 0);
  if ([((NSString *) nil_chk(file)) java_hasSuffix:@".sud"] || [file java_hasSuffix:@".su2"]) skip = 56;
  NSString *c = NetI2pUtilZipFileComment_getCommentWithJavaIoFile_withInt_withInt_(create_JavaIoFile_initWithNSString_(file), 256, skip);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$C", @"comment is: \"", c, '"')];
}

IOSObjectArray *NetI2pUtilZipFileComment__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilZipFileComment)