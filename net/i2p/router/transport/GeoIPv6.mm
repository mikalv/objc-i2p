//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/GeoIPv6.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedInputStream.h"
#include "java/io/BufferedOutputStream.h"
#include "java/io/BufferedReader.h"
#include "java/io/EOFException.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/OutputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Comparable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/net/InetAddress.h"
#include "java/net/UnknownHostException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/zip/GZIPInputStream.h"
#include "java/util/zip/GZIPOutputStream.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/router/transport/GeoIPv6.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

@interface NetI2pRouterTransportGeoIPv6 ()

+ (IOSObjectArray *)readGeoIPFileWithJavaIoFile:(JavaIoFile *)geoFile
                          withJavaLangLongArray:(IOSObjectArray *)search
                                withJavaUtilMap:(id<JavaUtilMap>)codeCache
                              withNetI2pUtilLog:(NetI2pUtilLog *)log;

+ (jboolean)compressGeoIPv6CSVFilesWithJavaUtilList:(id<JavaUtilList>)inFiles
                                     withJavaIoFile:(JavaIoFile *)outFile;

+ (jlong)toLongWithByteArray:(IOSByteArray *)ip;

+ (void)writeLongWithJavaIoOutputStream:(JavaIoOutputStream *)rawStream
                               withLong:(jlong)value;

+ (jlong)readLongWithByteArray:(IOSByteArray *)src
                       withInt:(jint)offset;

@end

inline NSString *NetI2pRouterTransportGeoIPv6_get_GEOIP_DIR_DEFAULT(void);
static NSString *NetI2pRouterTransportGeoIPv6_GEOIP_DIR_DEFAULT = @"geoip";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportGeoIPv6, GEOIP_DIR_DEFAULT, NSString *)

inline NSString *NetI2pRouterTransportGeoIPv6_get_GEOIP_FILE_DEFAULT(void);
static NSString *NetI2pRouterTransportGeoIPv6_GEOIP_FILE_DEFAULT = @"geoipv6.dat.gz";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportGeoIPv6, GEOIP_FILE_DEFAULT, NSString *)

inline NSString *NetI2pRouterTransportGeoIPv6_get_MAGIC(void);
static NSString *NetI2pRouterTransportGeoIPv6_MAGIC = @"I2PGeoIPv6\x00\x01\x00\x00\x00\x00";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportGeoIPv6, MAGIC, NSString *)

inline NSString *NetI2pRouterTransportGeoIPv6_get_COMMENT(void);
static NSString *NetI2pRouterTransportGeoIPv6_COMMENT = @"I2P compressed geoipv6 file. See GeoIPv6.java for format.";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportGeoIPv6, COMMENT, NSString *)

inline jint NetI2pRouterTransportGeoIPv6_get_HEADER_LEN(void);
#define NetI2pRouterTransportGeoIPv6_HEADER_LEN 256
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportGeoIPv6, HEADER_LEN, jint)

__attribute__((unused)) static IOSObjectArray *NetI2pRouterTransportGeoIPv6_readGeoIPFileWithJavaIoFile_withJavaLangLongArray_withJavaUtilMap_withNetI2pUtilLog_(JavaIoFile *geoFile, IOSObjectArray *search, id<JavaUtilMap> codeCache, NetI2pUtilLog *log);

__attribute__((unused)) static jboolean NetI2pRouterTransportGeoIPv6_compressGeoIPv6CSVFilesWithJavaUtilList_withJavaIoFile_(id<JavaUtilList> inFiles, JavaIoFile *outFile);

__attribute__((unused)) static jlong NetI2pRouterTransportGeoIPv6_toLongWithByteArray_(IOSByteArray *ip);

__attribute__((unused)) static void NetI2pRouterTransportGeoIPv6_writeLongWithJavaIoOutputStream_withLong_(JavaIoOutputStream *rawStream, jlong value);

__attribute__((unused)) static jlong NetI2pRouterTransportGeoIPv6_readLongWithByteArray_withInt_(IOSByteArray *src, jint offset);

@interface NetI2pRouterTransportGeoIPv6_V6Entry : NSObject < JavaLangComparable > {
 @public
  jlong from_;
  jlong to_;
  NSString *cc_;
}

- (instancetype)initWithByteArray:(IOSByteArray *)f
                    withByteArray:(IOSByteArray *)t
                     withNSString:(NSString *)c;

- (instancetype)initWithLong:(jlong)f
                    withLong:(jlong)t
                withNSString:(NSString *)c;

- (jint)compareToWithId:(NetI2pRouterTransportGeoIPv6_V6Entry *)r;

- (NSUInteger)hash;

- (jboolean)isEqual:(id)o;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportGeoIPv6_V6Entry)

J2OBJC_FIELD_SETTER(NetI2pRouterTransportGeoIPv6_V6Entry, cc_, NSString *)

__attribute__((unused)) static void NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(NetI2pRouterTransportGeoIPv6_V6Entry *self, IOSByteArray *f, IOSByteArray *t, NSString *c);

__attribute__((unused)) static NetI2pRouterTransportGeoIPv6_V6Entry *new_NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(IOSByteArray *f, IOSByteArray *t, NSString *c) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTransportGeoIPv6_V6Entry *create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(IOSByteArray *f, IOSByteArray *t, NSString *c);

__attribute__((unused)) static void NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(NetI2pRouterTransportGeoIPv6_V6Entry *self, jlong f, jlong t, NSString *c);

__attribute__((unused)) static NetI2pRouterTransportGeoIPv6_V6Entry *new_NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(jlong f, jlong t, NSString *c) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterTransportGeoIPv6_V6Entry *create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(jlong f, jlong t, NSString *c);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportGeoIPv6_V6Entry)

@implementation NetI2pRouterTransportGeoIPv6

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTransportGeoIPv6_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)readGeoIPFileWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                   withJavaLangLongArray:(IOSObjectArray *)search
                                         withJavaUtilMap:(id<JavaUtilMap>)codeCache {
  return NetI2pRouterTransportGeoIPv6_readGeoIPFileWithNetI2pI2PAppContext_withJavaLangLongArray_withJavaUtilMap_(context, search, codeCache);
}

+ (IOSObjectArray *)readGeoIPFileWithJavaIoFile:(JavaIoFile *)geoFile
                          withJavaLangLongArray:(IOSObjectArray *)search
                                withJavaUtilMap:(id<JavaUtilMap>)codeCache
                              withNetI2pUtilLog:(NetI2pUtilLog *)log {
  return NetI2pRouterTransportGeoIPv6_readGeoIPFileWithJavaIoFile_withJavaLangLongArray_withJavaUtilMap_withNetI2pUtilLog_(geoFile, search, codeCache, log);
}

+ (jboolean)compressGeoIPv6CSVFilesWithJavaUtilList:(id<JavaUtilList>)inFiles
                                     withJavaIoFile:(JavaIoFile *)outFile {
  return NetI2pRouterTransportGeoIPv6_compressGeoIPv6CSVFilesWithJavaUtilList_withJavaIoFile_(inFiles, outFile);
}

+ (jlong)toLongWithByteArray:(IOSByteArray *)ip {
  return NetI2pRouterTransportGeoIPv6_toLongWithByteArray_(ip);
}

+ (void)writeLongWithJavaIoOutputStream:(JavaIoOutputStream *)rawStream
                               withLong:(jlong)value {
  NetI2pRouterTransportGeoIPv6_writeLongWithJavaIoOutputStream_withLong_(rawStream, value);
}

+ (jlong)readLongWithByteArray:(IOSByteArray *)src
                       withInt:(jint)offset {
  return NetI2pRouterTransportGeoIPv6_readLongWithByteArray_withInt_(src, offset);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pRouterTransportGeoIPv6_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LNSString;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "[LNSString;", 0xa, 0, 3, -1, 4, -1, -1 },
    { NULL, "Z", 0xa, 5, 6, -1, 7, -1, -1 },
    { NULL, "J", 0xa, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 10, 11, 12, -1, -1, -1 },
    { NULL, "J", 0xa, 13, 14, 12, -1, -1, -1 },
    { NULL, "V", 0x9, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readGeoIPFileWithNetI2pI2PAppContext:withJavaLangLongArray:withJavaUtilMap:);
  methods[2].selector = @selector(readGeoIPFileWithJavaIoFile:withJavaLangLongArray:withJavaUtilMap:withNetI2pUtilLog:);
  methods[3].selector = @selector(compressGeoIPv6CSVFilesWithJavaUtilList:withJavaIoFile:);
  methods[4].selector = @selector(toLongWithByteArray:);
  methods[5].selector = @selector(writeLongWithJavaIoOutputStream:withLong:);
  methods[6].selector = @selector(readLongWithByteArray:withInt:);
  methods[7].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "GEOIP_DIR_DEFAULT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "GEOIP_FILE_DEFAULT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "MAGIC", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "COMMENT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "HEADER_LEN", "I", .constantValue.asInt = NetI2pRouterTransportGeoIPv6_HEADER_LEN, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "readGeoIPFile", "LNetI2pI2PAppContext;[LJavaLangLong;LJavaUtilMap;", "(Lnet/i2p/I2PAppContext;[Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)[Ljava/lang/String;", "LJavaIoFile;[LJavaLangLong;LJavaUtilMap;LNetI2pUtilLog;", "(Ljava/io/File;[Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Lnet/i2p/util/Log;)[Ljava/lang/String;", "compressGeoIPv6CSVFiles", "LJavaUtilList;LJavaIoFile;", "(Ljava/util/List<Ljava/io/File;>;Ljava/io/File;)Z", "toLong", "[B", "writeLong", "LJavaIoOutputStream;J", "LJavaIoIOException;", "readLong", "[BI", "main", "[LNSString;", &NetI2pRouterTransportGeoIPv6_GEOIP_DIR_DEFAULT, &NetI2pRouterTransportGeoIPv6_GEOIP_FILE_DEFAULT, &NetI2pRouterTransportGeoIPv6_MAGIC, &NetI2pRouterTransportGeoIPv6_COMMENT, "LNetI2pRouterTransportGeoIPv6_V6Entry;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportGeoIPv6 = { "GeoIPv6", "net.i2p.router.transport", ptrTable, methods, fields, 7, 0x1, 8, 5, -1, 21, -1, -1, -1 };
  return &_NetI2pRouterTransportGeoIPv6;
}

@end

void NetI2pRouterTransportGeoIPv6_init(NetI2pRouterTransportGeoIPv6 *self) {
  NSObject_init(self);
}

NetI2pRouterTransportGeoIPv6 *new_NetI2pRouterTransportGeoIPv6_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportGeoIPv6, init)
}

NetI2pRouterTransportGeoIPv6 *create_NetI2pRouterTransportGeoIPv6_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportGeoIPv6, init)
}

IOSObjectArray *NetI2pRouterTransportGeoIPv6_readGeoIPFileWithNetI2pI2PAppContext_withJavaLangLongArray_withJavaUtilMap_(NetI2pI2PAppContext *context, IOSObjectArray *search, id<JavaUtilMap> codeCache) {
  NetI2pRouterTransportGeoIPv6_initialize();
  NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(context)) logManager])) getLogWithIOSClass:NetI2pRouterTransportGeoIPv6_class_()];
  JavaIoFile *geoFile = create_JavaIoFile_initWithJavaIoFile_withNSString_([context getBaseDir], NetI2pRouterTransportGeoIPv6_GEOIP_DIR_DEFAULT);
  geoFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(geoFile, NetI2pRouterTransportGeoIPv6_GEOIP_FILE_DEFAULT);
  if (![geoFile exists]) {
    if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_WARN]) [log warnWithNSString:JreStrcat("$$", @"GeoIP file not found: ", [geoFile getAbsolutePath])];
    return [IOSObjectArray arrayWithLength:0 type:NSString_class_()];
  }
  return NetI2pRouterTransportGeoIPv6_readGeoIPFileWithJavaIoFile_withJavaLangLongArray_withJavaUtilMap_withNetI2pUtilLog_(geoFile, search, codeCache, log);
}

IOSObjectArray *NetI2pRouterTransportGeoIPv6_readGeoIPFileWithJavaIoFile_withJavaLangLongArray_withJavaUtilMap_withNetI2pUtilLog_(JavaIoFile *geoFile, IOSObjectArray *search, id<JavaUtilMap> codeCache, NetI2pUtilLog *log) {
  NetI2pRouterTransportGeoIPv6_initialize();
  IOSObjectArray *rv = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(search))->size_ type:NSString_class_()];
  jint idx = 0;
  jlong start = JavaLangSystem_currentTimeMillis();
  JavaIoInputStream *in = nil;
  @try {
    in = create_JavaUtilZipGZIPInputStream_initWithJavaIoInputStream_(create_JavaIoBufferedInputStream_initWithJavaIoInputStream_(create_JavaIoFileInputStream_initWithJavaIoFile_(geoFile)));
    IOSByteArray *magic = [IOSByteArray arrayWithLength:[((NSString *) nil_chk(NetI2pRouterTransportGeoIPv6_MAGIC)) java_length]];
    NetI2pDataDataHelper_readWithJavaIoInputStream_withByteArray_(in, magic);
    if (!NetI2pDataDataHelper_eqWithByteArray_withByteArray_(magic, NetI2pDataDataHelper_getASCIIWithNSString_(NetI2pRouterTransportGeoIPv6_MAGIC))) @throw create_JavaIoIOException_initWithNSString_(@"Not a IPv6 geoip data file");
    NetI2pDataDataHelper_skipWithJavaIoInputStream_withLong_(in, NetI2pRouterTransportGeoIPv6_HEADER_LEN - [NetI2pRouterTransportGeoIPv6_MAGIC java_length]);
    IOSByteArray *buf = [IOSByteArray arrayWithLength:18];
    while (idx < search->size_) {
      @try {
        NetI2pDataDataHelper_readWithJavaIoInputStream_withByteArray_(in, buf);
      }
      @catch (JavaIoEOFException *eofe) {
        break;
      }
      jlong ip1 = NetI2pRouterTransportGeoIPv6_readLongWithByteArray_withInt_(buf, 0);
      jlong ip2 = NetI2pRouterTransportGeoIPv6_readLongWithByteArray_withInt_(buf, 8);
      while (idx < search->size_ && [((JavaLangLong *) nil_chk(IOSObjectArray_Get(search, idx))) longLongValue] < ip1) {
        idx++;
      }
      while (idx < search->size_ && [((JavaLangLong *) nil_chk(IOSObjectArray_Get(search, idx))) longLongValue] >= ip1 && [((JavaLangLong *) nil_chk(IOSObjectArray_Get(search, idx))) longLongValue] <= ip2) {
        NSString *lc = [NSString java_stringWithBytes:buf offset:16 length:2 charsetName:@"ISO-8859-1"];
        NSString *cached = [((id<JavaUtilMap>) nil_chk(codeCache)) getWithId:lc];
        if (cached == nil) cached = lc;
        IOSObjectArray_Set(rv, idx++, cached);
      }
    }
  }
  @catch (JavaIoIOException *ioe) {
    if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_ERROR]) [log errorWithNSString:@"Error reading the geoFile" withJavaLangThrowable:ioe];
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
  if ([((NetI2pUtilLog *) nil_chk(log)) shouldLogWithInt:NetI2pUtilLog_INFO]) [log infoWithNSString:JreStrcat("$J", @"GeoIPv6 processing finished, time: ", (JavaLangSystem_currentTimeMillis() - start))];
  return rv;
}

jboolean NetI2pRouterTransportGeoIPv6_compressGeoIPv6CSVFilesWithJavaUtilList_withJavaIoFile_(id<JavaUtilList> inFiles, JavaIoFile *outFile) {
  NetI2pRouterTransportGeoIPv6_initialize();
  jboolean DEBUG_ = false;
  id<JavaUtilList> entries = create_JavaUtilArrayList_initWithInt_(20000);
  for (JavaIoFile * __strong geoFile in nil_chk(inFiles)) {
    jint count = 0;
    JavaIoInputStream *in = nil;
    JavaIoBufferedReader *br = nil;
    @try {
      in = create_JavaIoBufferedInputStream_initWithJavaIoInputStream_(create_JavaIoFileInputStream_initWithJavaIoFile_(geoFile));
      if ([((NSString *) nil_chk([((JavaIoFile *) nil_chk(geoFile)) getName])) java_hasSuffix:@".gz"]) in = create_JavaUtilZipGZIPInputStream_initWithJavaIoInputStream_(in);
      NSString *buf = nil;
      br = create_JavaIoBufferedReader_initWithJavaIoReader_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(in, @"ISO-8859-1"));
      while ((buf = [br readLine]) != nil) {
        @try {
          if ([((NSString *) nil_chk(buf)) charAtWithInt:0] == '#') {
            continue;
          }
          IOSObjectArray *s = NetI2pDataDataHelper_splitWithNSString_withNSString_(buf, @",");
          NSString *ips1 = [((NSString *) nil_chk([((NSString *) nil_chk(IOSObjectArray_Get(nil_chk(s), 0))) java_replace:@"\"" withSequence:@""])) java_trim];
          NSString *ips2 = [((NSString *) nil_chk([((NSString *) nil_chk(IOSObjectArray_Get(s, 1))) java_replace:@"\"" withSequence:@""])) java_trim];
          IOSByteArray *ip1 = [((JavaNetInetAddress *) nil_chk(JavaNetInetAddress_getByNameWithNSString_(ips1))) getAddress];
          IOSByteArray *ip2 = [((JavaNetInetAddress *) nil_chk(JavaNetInetAddress_getByNameWithNSString_(ips2))) getAddress];
          NSString *country = [((NSString *) nil_chk([((NSString *) nil_chk([((NSString *) nil_chk(IOSObjectArray_Get(s, 4))) java_replace:@"\"" withSequence:@""])) java_trim])) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
          [entries addWithId:create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(ip1, ip2, country)];
          count++;
        }
        @catch (JavaNetUnknownHostException *uhe) {
          [uhe printStackTrace];
        }
        @catch (JavaLangRuntimeException *re) {
          [re printStackTrace];
        }
      }
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$I$@", @"Read ", count, @" entries from ", geoFile)];
    }
    @catch (JavaIoIOException *ioe) {
      [ioe printStackTrace];
      return false;
    }
    @finally {
      if (in != nil) @try {
        [in close];
      }
      @catch (JavaIoIOException *ioe) {
      }
      if (br != nil) @try {
        [br close];
      }
      @catch (JavaIoIOException *ioe) {
      }
    }
  }
  JavaUtilCollections_sortWithJavaUtilList_(entries);
  NetI2pRouterTransportGeoIPv6_V6Entry *old = nil;
  for (jint i = 0; i < [entries size]; i++) {
    NetI2pRouterTransportGeoIPv6_V6Entry *e = [entries getWithInt:i];
    if (DEBUG_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"proc ", [((NetI2pRouterTransportGeoIPv6_V6Entry *) nil_chk(e)) description])];
    if (old != nil) {
      if (((NetI2pRouterTransportGeoIPv6_V6Entry *) nil_chk(e))->from_ == old->from_ && e->to_ == old->to_) {
        if (DEBUG_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"remove dup ", e)];
        [entries removeWithInt:i];
        i--;
        continue;
      }
      if (e->from_ <= old->to_) {
        if (e->from_ < old->to_) {
          NetI2pRouterTransportGeoIPv6_V6Entry *rewrite = create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(old->from_, e->from_ - 1, old->cc_);
          if (DEBUG_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"rewrite old to ", rewrite)];
          [entries setWithInt:i - 1 withId:rewrite];
        }
        if (e->to_ < old->to_) {
          NetI2pRouterTransportGeoIPv6_V6Entry *insert = create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(e->to_ + 1, old->to_, old->cc_);
          if (DEBUG_) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"insert ", insert)];
          jint j = i + 1;
          while (j < [entries size] && [insert compareToWithId:[entries getWithInt:j]] > 0) {
            j++;
          }
          [entries addWithInt:j withId:insert];
        }
      }
    }
    old = e;
  }
  JavaIoOutputStream *out = nil;
  @try {
    out = create_JavaUtilZipGZIPOutputStream_initWithJavaIoOutputStream_(create_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(create_JavaIoFileOutputStream_initWithJavaIoFile_(outFile)));
    [out writeWithByteArray:NetI2pDataDataHelper_getASCIIWithNSString_(NetI2pRouterTransportGeoIPv6_MAGIC)];
    NetI2pRouterTransportGeoIPv6_writeLongWithJavaIoOutputStream_withLong_(out, JavaLangSystem_currentTimeMillis());
    IOSByteArray *comment = NetI2pDataDataHelper_getUTF8WithNSString_(NetI2pRouterTransportGeoIPv6_COMMENT);
    [out writeWithByteArray:comment];
    [out writeWithByteArray:[IOSByteArray arrayWithLength:256 - (16 + 8 + ((IOSByteArray *) nil_chk(comment))->size_)]];
    for (NetI2pRouterTransportGeoIPv6_V6Entry * __strong e in entries) {
      NetI2pRouterTransportGeoIPv6_writeLongWithJavaIoOutputStream_withLong_(out, ((NetI2pRouterTransportGeoIPv6_V6Entry *) nil_chk(e))->from_);
      NetI2pRouterTransportGeoIPv6_writeLongWithJavaIoOutputStream_withLong_(out, e->to_);
      [out writeWithByteArray:NetI2pDataDataHelper_getASCIIWithNSString_(e->cc_)];
    }
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$I$@", @"Wrote ", [entries size], @" entries to ", outFile)];
  }
  @catch (JavaIoIOException *ioe) {
    [ioe printStackTrace];
    return false;
  }
  @finally {
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
  return true;
}

jlong NetI2pRouterTransportGeoIPv6_toLongWithByteArray_(IOSByteArray *ip) {
  NetI2pRouterTransportGeoIPv6_initialize();
  jlong rv = 0;
  for (jint i = 0; i < 8; i++) rv |= JreLShift64((IOSByteArray_Get(nil_chk(ip), i) & (jlong) 0xffLL), ((7 - i) * 8));
  return rv;
}

void NetI2pRouterTransportGeoIPv6_writeLongWithJavaIoOutputStream_withLong_(JavaIoOutputStream *rawStream, jlong value) {
  NetI2pRouterTransportGeoIPv6_initialize();
  for (jint i = 56; i >= 0; i -= 8) {
    jbyte cur = (jbyte) (JreRShift64(value, i));
    [((JavaIoOutputStream *) nil_chk(rawStream)) writeWithInt:cur];
  }
}

jlong NetI2pRouterTransportGeoIPv6_readLongWithByteArray_withInt_(IOSByteArray *src, jint offset) {
  NetI2pRouterTransportGeoIPv6_initialize();
  jlong rv = 0;
  jint limit = offset + 8;
  for (jint i = offset; i < limit; i++) {
    JreLShiftAssignLong(&rv, 8);
    rv |= IOSByteArray_Get(nil_chk(src), i) & (jint) 0xFF;
  }
  return rv;
}

void NetI2pRouterTransportGeoIPv6_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pRouterTransportGeoIPv6_initialize();
  if (((IOSObjectArray *) nil_chk(args))->size_ < 2) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Usage: GeoIPv6 infile1.csv [infile2.csv...] outfile.dat.gz"];
    JavaLangSystem_exitWithInt_(1);
  }
  id<JavaUtilList> infiles = create_JavaUtilArrayList_init();
  for (jint i = 0; i < args->size_ - 1; i++) {
    [infiles addWithId:create_JavaIoFile_initWithNSString_(IOSObjectArray_Get(args, i))];
  }
  JavaIoFile *outfile = create_JavaIoFile_initWithNSString_(IOSObjectArray_Get(args, args->size_ - 1));
  jboolean success = NetI2pRouterTransportGeoIPv6_compressGeoIPv6CSVFilesWithJavaUtilList_withJavaIoFile_(infiles, outfile);
  if (!success) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Failed"];
    JavaLangSystem_exitWithInt_(1);
  }
  NetI2pRouterTransportGeoIPv6_readGeoIPFileWithJavaIoFile_withJavaLangLongArray_withJavaUtilMap_withNetI2pUtilLog_(outfile, [IOSObjectArray arrayWithObjects:(id[]){ JavaLangLong_valueOfWithLong_(JavaLangLong_MAX_VALUE) } count:1 type:JavaLangLong_class_()], JavaUtilCollections_emptyMap(), create_NetI2pUtilLog_initWithIOSClass_(NetI2pRouterTransportGeoIPv6_class_()));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportGeoIPv6)

@implementation NetI2pRouterTransportGeoIPv6_V6Entry

- (instancetype)initWithByteArray:(IOSByteArray *)f
                    withByteArray:(IOSByteArray *)t
                     withNSString:(NSString *)c {
  NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(self, f, t, c);
  return self;
}

- (instancetype)initWithLong:(jlong)f
                    withLong:(jlong)t
                withNSString:(NSString *)c {
  NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(self, f, t, c);
  return self;
}

- (jint)compareToWithId:(NetI2pRouterTransportGeoIPv6_V6Entry *)r {
  cast_chk(r, [NetI2pRouterTransportGeoIPv6_V6Entry class]);
  if (from_ < ((NetI2pRouterTransportGeoIPv6_V6Entry *) nil_chk(r))->from_) return -1;
  if (r->from_ < from_) return 1;
  if (to_ < r->to_) return -1;
  if (r->to_ < to_) return 1;
  return 0;
}

- (NSUInteger)hash {
  return (((jint) from_) ^ ((jint) to_));
}

- (jboolean)isEqual:(id)o {
  return ([o isKindOfClass:[NetI2pRouterTransportGeoIPv6_V6Entry class]]) && [self compareToWithId:(NetI2pRouterTransportGeoIPv6_V6Entry *) cast_chk(o, [NetI2pRouterTransportGeoIPv6_V6Entry class])] == 0;
}

- (NSString *)description {
  return JreStrcat("$$$$$$", @"0x", JavaLangLong_toHexStringWithLong_(from_), @" -> 0x", JavaLangLong_toHexStringWithLong_(to_), @" : ", cc_);
}

- (void)dealloc {
  RELEASE_(cc_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithByteArray:withByteArray:withNSString:);
  methods[1].selector = @selector(initWithLong:withLong:withNSString:);
  methods[2].selector = @selector(compareToWithId:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "from_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "to_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "cc_", "LNSString;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[B[BLNSString;", "JJLNSString;", "compareTo", "LNetI2pRouterTransportGeoIPv6_V6Entry;", "hashCode", "equals", "LNSObject;", "toString", "LNetI2pRouterTransportGeoIPv6;", "Ljava/lang/Object;Ljava/lang/Comparable<Lnet/i2p/router/transport/GeoIPv6$V6Entry;>;" };
  static const J2ObjcClassInfo _NetI2pRouterTransportGeoIPv6_V6Entry = { "V6Entry", "net.i2p.router.transport", ptrTable, methods, fields, 7, 0xa, 6, 3, 8, -1, -1, 9, -1 };
  return &_NetI2pRouterTransportGeoIPv6_V6Entry;
}

@end

void NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(NetI2pRouterTransportGeoIPv6_V6Entry *self, IOSByteArray *f, IOSByteArray *t, NSString *c) {
  NSObject_init(self);
  if (((IOSByteArray *) nil_chk(f))->size_ != 16 || ((IOSByteArray *) nil_chk(t))->size_ != 16 || [((NSString *) nil_chk(c)) java_length] != 2) @throw create_JavaLangIllegalArgumentException_init();
  self->from_ = NetI2pRouterTransportGeoIPv6_toLongWithByteArray_(f);
  self->to_ = NetI2pRouterTransportGeoIPv6_toLongWithByteArray_(t);
  JreStrongAssign(&self->cc_, c);
  if (self->to_ < self->from_) @throw create_JavaLangIllegalArgumentException_initWithNSString_([self description]);
}

NetI2pRouterTransportGeoIPv6_V6Entry *new_NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(IOSByteArray *f, IOSByteArray *t, NSString *c) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportGeoIPv6_V6Entry, initWithByteArray_withByteArray_withNSString_, f, t, c)
}

NetI2pRouterTransportGeoIPv6_V6Entry *create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithByteArray_withByteArray_withNSString_(IOSByteArray *f, IOSByteArray *t, NSString *c) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportGeoIPv6_V6Entry, initWithByteArray_withByteArray_withNSString_, f, t, c)
}

void NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(NetI2pRouterTransportGeoIPv6_V6Entry *self, jlong f, jlong t, NSString *c) {
  NSObject_init(self);
  self->from_ = f;
  self->to_ = t;
  JreStrongAssign(&self->cc_, c);
  if (t < f) @throw create_JavaLangIllegalArgumentException_initWithNSString_([self description]);
}

NetI2pRouterTransportGeoIPv6_V6Entry *new_NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(jlong f, jlong t, NSString *c) {
  J2OBJC_NEW_IMPL(NetI2pRouterTransportGeoIPv6_V6Entry, initWithLong_withLong_withNSString_, f, t, c)
}

NetI2pRouterTransportGeoIPv6_V6Entry *create_NetI2pRouterTransportGeoIPv6_V6Entry_initWithLong_withLong_withNSString_(jlong f, jlong t, NSString *c) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTransportGeoIPv6_V6Entry, initWithLong_withLong_withNSString_, f, t, c)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTransportGeoIPv6_V6Entry)
