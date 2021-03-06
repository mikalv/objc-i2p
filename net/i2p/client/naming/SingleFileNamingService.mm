//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/SingleFileNamingService.java
//

#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/BufferedWriter.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStreamReader.h"
#include "java/io/OutputStreamWriter.h"
#include "java/io/Writer.h"
#include "java/lang/Exception.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/System.h"
#include "java/util/Collections.h"
#include "java/util/Date.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "java/util/Set.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/locks/ReentrantReadWriteLock.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/client/naming/HostTxtEntry.h"
#include "net/i2p/client/naming/NamingService.h"
#include "net/i2p/client/naming/NamingServiceListener.h"
#include "net/i2p/client/naming/SingleFileNamingService.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/util/FileUtil.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/SecureFile.h"
#include "net/i2p/util/SecureFileOutputStream.h"

@interface NetI2pClientNamingSingleFileNamingService () {
 @public
  JavaIoFile *_file_;
  JavaUtilConcurrentLocksReentrantReadWriteLock *_fileLock_;
  jint _size_;
  jlong _lastWrite_;
  volatile_jboolean _isClosed_;
}

- (NSString *)getKeyWithNSString:(NSString *)host;

- (void)getReadLock;

- (void)releaseReadLock;

- (jboolean)getWriteLock;

- (void)releaseWriteLock;

@end

J2OBJC_FIELD_SETTER(NetI2pClientNamingSingleFileNamingService, _file_, JavaIoFile *)
J2OBJC_FIELD_SETTER(NetI2pClientNamingSingleFileNamingService, _fileLock_, JavaUtilConcurrentLocksReentrantReadWriteLock *)

__attribute__((unused)) static NSString *NetI2pClientNamingSingleFileNamingService_getKeyWithNSString_(NetI2pClientNamingSingleFileNamingService *self, NSString *host);

__attribute__((unused)) static void NetI2pClientNamingSingleFileNamingService_getReadLock(NetI2pClientNamingSingleFileNamingService *self);

__attribute__((unused)) static void NetI2pClientNamingSingleFileNamingService_releaseReadLock(NetI2pClientNamingSingleFileNamingService *self);

__attribute__((unused)) static jboolean NetI2pClientNamingSingleFileNamingService_getWriteLock(NetI2pClientNamingSingleFileNamingService *self);

__attribute__((unused)) static void NetI2pClientNamingSingleFileNamingService_releaseWriteLock(NetI2pClientNamingSingleFileNamingService *self);

@implementation NetI2pClientNamingSingleFileNamingService

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                               withNSString:(NSString *)filename {
  NetI2pClientNamingSingleFileNamingService_initWithNetI2pI2PAppContext_withNSString_(self, context, filename);
  return self;
}

- (NSString *)getName {
  return [((JavaIoFile *) nil_chk(_file_)) getAbsolutePath];
}

- (NetI2pDataDestination *)lookupWithNSString:(NSString *)hostname
                       withJavaUtilProperties:(JavaUtilProperties *)lookupOptions
                       withJavaUtilProperties:(JavaUtilProperties *)storedOptions {
  @try {
    NSString *key = NetI2pClientNamingSingleFileNamingService_getKeyWithNSString_(self, hostname);
    if (key == nil && [((NSString *) nil_chk(hostname)) java_hasPrefix:@"www."] && [hostname java_length] > 7) key = NetI2pClientNamingSingleFileNamingService_getKeyWithNSString_(self, [((NSString *) nil_chk(hostname)) java_substring:4]);
    if (key != nil) return [self lookupBase64WithNSString:key];
  }
  @catch (JavaIoIOException *ioe) {
    if ([((JavaIoFile *) nil_chk(_file_)) exists]) [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$@", @"Error loading hosts file ", _file_) withJavaLangThrowable:ioe];
    else if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$@", @"Error loading hosts file ", _file_) withJavaLangThrowable:ioe];
  }
  return nil;
}

- (NSString *)reverseLookupWithNetI2pDataDestination:(NetI2pDataDestination *)dest
                              withJavaUtilProperties:(JavaUtilProperties *)options {
  NSString *destkey = [((NetI2pDataDestination *) nil_chk(dest)) toBase64];
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    while ((line = [in readLine]) != nil) {
      if ([((NSString *) nil_chk(line)) java_hasPrefix:@"#"]) continue;
      if ([line java_indexOf:'#'] > 0) line = [((NSString *) nil_chk([line java_substring:0 endIndex:[line java_indexOf:'#']])) java_trim];
      jint split = [((NSString *) nil_chk(line)) java_indexOf:'='];
      if (split <= 0) continue;
      if ([((NSString *) nil_chk(destkey)) isEqual:[line java_substring:split + 1]]) return [line java_substring:0 endIndex:split];
    }
    return nil;
  }
  @catch (JavaIoIOException *ioe) {
    if ([((JavaIoFile *) nil_chk(_file_)) exists]) [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$@", @"Error loading hosts file ", _file_) withJavaLangThrowable:ioe];
    else if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [_log_ warnWithNSString:JreStrcat("$@", @"Error loading hosts file ", _file_) withJavaLangThrowable:ioe];
    return nil;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
}

- (NSString *)getKeyWithNSString:(NSString *)host {
  return NetI2pClientNamingSingleFileNamingService_getKeyWithNSString_(self, host);
}

- (jboolean)putWithNSString:(NSString *)hostname
  withNetI2pDataDestination:(NetI2pDataDestination *)d
     withJavaUtilProperties:(JavaUtilProperties *)options {
  if ([self putIfAbsentWithNSString:hostname withNetI2pDataDestination:d withJavaUtilProperties:options]) return true;
  if (!NetI2pClientNamingSingleFileNamingService_getWriteLock(self)) return false;
  JavaIoBufferedReader *in = nil;
  JavaIoBufferedWriter *out = nil;
  @try {
    if (JreLoadVolatileBoolean(&_isClosed_)) return false;
    JavaIoFile *tmp = NetI2pUtilSecureFile_createTempFileWithNSString_withNSString_withJavaIoFile_(@"temp-", @".tmp", [((JavaIoFile *) nil_chk([((JavaIoFile *) nil_chk(_file_)) getAbsoluteFile])) getParentFile]);
    out = create_JavaIoBufferedWriter_initWithJavaIoWriter_(create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(tmp), @"UTF-8"));
    if ([_file_ exists]) {
      in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
      NSString *line = nil;
      NSString *search = JreStrcat("$C", hostname, '=');
      while ((line = [in readLine]) != nil) {
        if ([((NSString *) nil_chk(line)) java_hasPrefix:search]) continue;
        [out writeWithNSString:line];
        [out newLine];
      }
      [in close];
    }
    [out writeWithNSString:hostname];
    [out writeWithInt:'='];
    [out writeWithNSString:[((NetI2pDataDestination *) nil_chk(d)) toBase64]];
    if (options != nil) NetI2pClientNamingSingleFileNamingService_writeOptionsWithJavaUtilProperties_withJavaIoWriter_(options, out);
    [out newLine];
    [out close];
    jboolean success = NetI2pUtilFileUtil_renameWithJavaIoFile_withJavaIoFile_(tmp, _file_);
    if (success) {
      for (id<NetI2pClientNamingNamingServiceListener> __strong nsl in nil_chk(_listeners_)) {
        [((id<NetI2pClientNamingNamingServiceListener>) nil_chk(nsl)) entryChangedWithNetI2pClientNamingNamingService:self withNSString:hostname withNetI2pDataDestination:d withJavaUtilProperties:options];
      }
    }
    return success;
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$$", @"Error adding ", hostname) withJavaLangThrowable:ioe];
    return false;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *e) {
    }
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *e) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseWriteLock(self);
  }
}

- (jboolean)putIfAbsentWithNSString:(NSString *)hostname
          withNetI2pDataDestination:(NetI2pDataDestination *)d
             withJavaUtilProperties:(JavaUtilProperties *)options {
  JavaIoBufferedWriter *out = nil;
  if (!NetI2pClientNamingSingleFileNamingService_getWriteLock(self)) return false;
  @try {
    if (JreLoadVolatileBoolean(&_isClosed_)) return false;
    @try {
      if (NetI2pClientNamingSingleFileNamingService_getKeyWithNSString_(self, hostname) != nil) return false;
    }
    @catch (JavaIoIOException *ioe) {
      if ([((JavaIoFile *) nil_chk(_file_)) exists]) {
        [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$$", @"Error adding ", hostname) withJavaLangThrowable:ioe];
        return false;
      }
    }
    out = create_JavaIoBufferedWriter_initWithJavaIoWriter_(create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_withBoolean_(_file_, true), @"UTF-8"));
    [out writeWithNSString:hostname];
    [out writeWithInt:'='];
    [out writeWithNSString:[((NetI2pDataDestination *) nil_chk(d)) toBase64]];
    if (options != nil) NetI2pClientNamingSingleFileNamingService_writeOptionsWithJavaUtilProperties_withJavaIoWriter_(options, out);
    [out writeWithInt:0x000a];
    for (id<NetI2pClientNamingNamingServiceListener> __strong nsl in nil_chk(_listeners_)) {
      [((id<NetI2pClientNamingNamingServiceListener>) nil_chk(nsl)) entryAddedWithNetI2pClientNamingNamingService:self withNSString:hostname withNetI2pDataDestination:d withJavaUtilProperties:options];
    }
    return true;
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$$", @"Error adding ", hostname) withJavaLangThrowable:ioe];
    return false;
  }
  @finally {
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *e) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseWriteLock(self);
  }
}

+ (void)writeOptionsWithJavaUtilProperties:(JavaUtilProperties *)options
                          withJavaIoWriter:(JavaIoWriter *)outArg {
  NetI2pClientNamingSingleFileNamingService_writeOptionsWithJavaUtilProperties_withJavaIoWriter_(options, outArg);
}

- (jboolean)removeWithNSString:(NSString *)hostname
        withJavaUtilProperties:(JavaUtilProperties *)options {
  JavaIoBufferedReader *in = nil;
  JavaIoBufferedWriter *out = nil;
  if (!NetI2pClientNamingSingleFileNamingService_getWriteLock(self)) return false;
  @try {
    if (![((JavaIoFile *) nil_chk(_file_)) exists]) return false;
    if (JreLoadVolatileBoolean(&_isClosed_)) return false;
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    JavaIoFile *tmp = NetI2pUtilSecureFile_createTempFileWithNSString_withNSString_withJavaIoFile_(@"temp-", @".tmp", [((JavaIoFile *) nil_chk([_file_ getAbsoluteFile])) getParentFile]);
    out = create_JavaIoBufferedWriter_initWithJavaIoWriter_(create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(tmp), @"UTF-8"));
    NSString *line = nil;
    NSString *search = JreStrcat("$C", hostname, '=');
    jboolean success = false;
    while ((line = [in readLine]) != nil) {
      if ([((NSString *) nil_chk(line)) java_hasPrefix:search]) {
        success = true;
        continue;
      }
      [out writeWithNSString:line];
      [out newLine];
    }
    [in close];
    [out close];
    if (!success) {
      [((JavaIoFile *) nil_chk(tmp)) delete__];
      return false;
    }
    success = NetI2pUtilFileUtil_renameWithJavaIoFile_withJavaIoFile_(tmp, _file_);
    if (success) {
      for (id<NetI2pClientNamingNamingServiceListener> __strong nsl in nil_chk(_listeners_)) {
        [((id<NetI2pClientNamingNamingServiceListener>) nil_chk(nsl)) entryRemovedWithNetI2pClientNamingNamingService:self withNSString:hostname];
      }
    }
    return success;
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:JreStrcat("$$", @"Error removing ", hostname) withJavaLangThrowable:ioe];
    return false;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *e) {
    }
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *e) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseWriteLock(self);
  }
}

- (id<JavaUtilMap>)getEntriesWithJavaUtilProperties:(JavaUtilProperties *)options {
  if (![((JavaIoFile *) nil_chk(_file_)) exists]) return JavaUtilCollections_emptyMap();
  NSString *searchOpt = nil;
  NSString *startsWith = nil;
  if (options != nil) {
    searchOpt = [options getPropertyWithNSString:@"search"];
    startsWith = [options getPropertyWithNSString:@"startsWith"];
  }
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$$$$", @"Searching  starting with ", startsWith, @" search string ", searchOpt)];
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    id<JavaUtilMap> rv = create_JavaUtilHashMap_init();
    while ((line = [in readLine]) != nil) {
      if ([((NSString *) nil_chk(line)) java_length] <= 0) continue;
      if (startsWith != nil) {
        if ([startsWith isEqual:@"[0-9]"]) {
          if ([line charAtWithInt:0] < '0' || [line charAtWithInt:0] > '9') continue;
        }
        else if (![line java_hasPrefix:startsWith]) {
          continue;
        }
      }
      if ([line java_hasPrefix:@"#"]) continue;
      if ([line java_indexOf:'#'] > 0) line = [((NSString *) nil_chk([line java_substring:0 endIndex:[line java_indexOf:'#']])) java_trim];
      jint split = [((NSString *) nil_chk(line)) java_indexOf:'='];
      if (split <= 0) continue;
      NSString *key = [line java_substring:0 endIndex:split];
      if (searchOpt != nil && [((NSString *) nil_chk(key)) java_indexOfString:searchOpt] < 0) continue;
      NSString *b64 = [line java_substring:split + 1];
      @try {
        NetI2pDataDestination *dest = create_NetI2pDataDestination_initWithNSString_(b64);
        [rv putWithId:key withId:dest];
      }
      @catch (NetI2pDataDataFormatException *dfe) {
      }
    }
    if (searchOpt == nil && startsWith == nil) {
      _lastWrite_ = [_file_ lastModified];
      _size_ = [rv size];
    }
    return rv;
  }
  @catch (JavaIoIOException *ioe) {
    [_log_ errorWithNSString:@"getEntries error" withJavaLangThrowable:ioe];
    return JavaUtilCollections_emptyMap();
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
}

- (id<JavaUtilMap>)getBase64EntriesWithJavaUtilProperties:(JavaUtilProperties *)options {
  if (![((JavaIoFile *) nil_chk(_file_)) exists]) return JavaUtilCollections_emptyMap();
  NSString *searchOpt = nil;
  NSString *startsWith = nil;
  if (options != nil) {
    searchOpt = [options getPropertyWithNSString:@"search"];
    startsWith = [options getPropertyWithNSString:@"startsWith"];
  }
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    id<JavaUtilMap> rv = create_JavaUtilHashMap_init();
    while ((line = [in readLine]) != nil) {
      if ([((NSString *) nil_chk(line)) java_length] <= 0) continue;
      if (startsWith != nil) {
        if ([startsWith isEqual:@"[0-9]"]) {
          if ([line charAtWithInt:0] < '0' || [line charAtWithInt:0] > '9') continue;
        }
        else if (![line java_hasPrefix:startsWith]) {
          continue;
        }
      }
      if ([line java_hasPrefix:@"#"]) continue;
      if ([line java_indexOf:'#'] > 0) line = [((NSString *) nil_chk([line java_substring:0 endIndex:[line java_indexOf:'#']])) java_trim];
      jint split = [((NSString *) nil_chk(line)) java_indexOf:'='];
      if (split <= 0) continue;
      NSString *key = [line java_substring:0 endIndex:split];
      if (searchOpt != nil && [((NSString *) nil_chk(key)) java_indexOfString:searchOpt] < 0) continue;
      NSString *b64 = [line java_substring:split + 1];
      if ([((NSString *) nil_chk(b64)) java_length] < 387) continue;
      [rv putWithId:key withId:b64];
    }
    if (searchOpt == nil && startsWith == nil) {
      _lastWrite_ = [_file_ lastModified];
      _size_ = [rv size];
    }
    return rv;
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"getEntries error" withJavaLangThrowable:ioe];
    return JavaUtilCollections_emptyMap();
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
}

- (void)export__WithJavaIoWriter:(JavaIoWriter *)outArg
          withJavaUtilProperties:(JavaUtilProperties *)options {
  [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:@"# Address book: "];
  [outArg writeWithNSString:[self getName]];
  NSString *nl = JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n");
  [outArg writeWithNSString:nl];
  [outArg writeWithNSString:@"# Exported: "];
  [outArg writeWithNSString:[(create_JavaUtilDate_init()) description]];
  [outArg writeWithNSString:nl];
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    while ((line = [in readLine]) != nil) {
      [outArg writeWithNSString:line];
      [outArg writeWithNSString:nl];
    }
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
}

- (id<JavaUtilSet>)getNamesWithJavaUtilProperties:(JavaUtilProperties *)options {
  if (![((JavaIoFile *) nil_chk(_file_)) exists]) return JavaUtilCollections_emptySet();
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    id<JavaUtilSet> rv = create_JavaUtilHashSet_init();
    while ((line = [in readLine]) != nil) {
      if ([((NSString *) nil_chk(line)) java_length] <= 0) continue;
      if ([line java_hasPrefix:@"#"]) continue;
      jint split = [line java_indexOf:'='];
      if (split <= 0) continue;
      NSString *key = [line java_substring:0 endIndex:split];
      [rv addWithId:key];
    }
    return rv;
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"getNames error" withJavaLangThrowable:ioe];
    return JavaUtilCollections_emptySet();
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
}

- (jint)sizeWithJavaUtilProperties:(JavaUtilProperties *)options {
  if (![((JavaIoFile *) nil_chk(_file_)) exists]) return 0;
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    if ([_file_ lastModified] <= _lastWrite_) return _size_;
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    jint rv = 0;
    while ((line = [in readLine]) != nil) {
      if ([((NSString *) nil_chk(line)) java_hasPrefix:@"#"] || [line java_length] <= 0) continue;
      rv++;
    }
    _lastWrite_ = [_file_ lastModified];
    _size_ = rv;
    return rv;
  }
  @catch (JavaIoIOException *ioe) {
    [((NetI2pUtilLog *) nil_chk(_log_)) errorWithNSString:@"size() error" withJavaLangThrowable:ioe];
    return -1;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
}

- (void)shutdown {
  if (!NetI2pClientNamingSingleFileNamingService_getWriteLock(self)) return;
  @try {
    JreAssignVolatileBoolean(&_isClosed_, true);
  }
  @finally {
    NetI2pClientNamingSingleFileNamingService_releaseWriteLock(self);
  }
}

- (void)getReadLock {
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
}

- (void)releaseReadLock {
  NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
}

- (jboolean)getWriteLock {
  return NetI2pClientNamingSingleFileNamingService_getWriteLock(self);
}

- (void)releaseWriteLock {
  NetI2pClientNamingSingleFileNamingService_releaseWriteLock(self);
}

- (void)dealloc {
  RELEASE_(_file_);
  RELEASE_(_fileLock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 5, 6, 7, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 11, 12, 7, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, 15, 16, -1, 17, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, 18, 16, -1, 19, -1, -1 },
    { NULL, "V", 0x1, 20, 21, 7, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, 22, 16, -1, 23, -1, -1 },
    { NULL, "I", 0x1, 24, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:withNSString:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(lookupWithNSString:withJavaUtilProperties:withJavaUtilProperties:);
  methods[3].selector = @selector(reverseLookupWithNetI2pDataDestination:withJavaUtilProperties:);
  methods[4].selector = @selector(getKeyWithNSString:);
  methods[5].selector = @selector(putWithNSString:withNetI2pDataDestination:withJavaUtilProperties:);
  methods[6].selector = @selector(putIfAbsentWithNSString:withNetI2pDataDestination:withJavaUtilProperties:);
  methods[7].selector = @selector(writeOptionsWithJavaUtilProperties:withJavaIoWriter:);
  methods[8].selector = @selector(removeWithNSString:withJavaUtilProperties:);
  methods[9].selector = @selector(getEntriesWithJavaUtilProperties:);
  methods[10].selector = @selector(getBase64EntriesWithJavaUtilProperties:);
  methods[11].selector = @selector(export__WithJavaIoWriter:withJavaUtilProperties:);
  methods[12].selector = @selector(getNamesWithJavaUtilProperties:);
  methods[13].selector = @selector(sizeWithJavaUtilProperties:);
  methods[14].selector = @selector(shutdown);
  methods[15].selector = @selector(getReadLock);
  methods[16].selector = @selector(releaseReadLock);
  methods[17].selector = @selector(getWriteLock);
  methods[18].selector = @selector(releaseWriteLock);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_file_", "LJavaIoFile;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_fileLock_", "LJavaUtilConcurrentLocksReentrantReadWriteLock;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_size_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_lastWrite_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_isClosed_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;LNSString;", "lookup", "LNSString;LJavaUtilProperties;LJavaUtilProperties;", "reverseLookup", "LNetI2pDataDestination;LJavaUtilProperties;", "getKey", "LNSString;", "LJavaIoIOException;", "put", "LNSString;LNetI2pDataDestination;LJavaUtilProperties;", "putIfAbsent", "writeOptions", "LJavaUtilProperties;LJavaIoWriter;", "remove", "LNSString;LJavaUtilProperties;", "getEntries", "LJavaUtilProperties;", "(Ljava/util/Properties;)Ljava/util/Map<Ljava/lang/String;Lnet/i2p/data/Destination;>;", "getBase64Entries", "(Ljava/util/Properties;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", "export", "LJavaIoWriter;LJavaUtilProperties;", "getNames", "(Ljava/util/Properties;)Ljava/util/Set<Ljava/lang/String;>;", "size" };
  static const J2ObjcClassInfo _NetI2pClientNamingSingleFileNamingService = { "SingleFileNamingService", "net.i2p.client.naming", ptrTable, methods, fields, 7, 0x1, 19, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pClientNamingSingleFileNamingService;
}

@end

void NetI2pClientNamingSingleFileNamingService_initWithNetI2pI2PAppContext_withNSString_(NetI2pClientNamingSingleFileNamingService *self, NetI2pI2PAppContext *context, NSString *filename) {
  NetI2pClientNamingNamingService_initWithNetI2pI2PAppContext_(self, context);
  JavaIoFile *file = create_JavaIoFile_initWithNSString_(filename);
  if (![file isAbsolute]) file = create_JavaIoFile_initWithJavaIoFile_withNSString_([((NetI2pI2PAppContext *) nil_chk(context)) getRouterDir], filename);
  JreStrongAssign(&self->_file_, file);
  JreStrongAssignAndConsume(&self->_fileLock_, new_JavaUtilConcurrentLocksReentrantReadWriteLock_initWithBoolean_(true));
}

NetI2pClientNamingSingleFileNamingService *new_NetI2pClientNamingSingleFileNamingService_initWithNetI2pI2PAppContext_withNSString_(NetI2pI2PAppContext *context, NSString *filename) {
  J2OBJC_NEW_IMPL(NetI2pClientNamingSingleFileNamingService, initWithNetI2pI2PAppContext_withNSString_, context, filename)
}

NetI2pClientNamingSingleFileNamingService *create_NetI2pClientNamingSingleFileNamingService_initWithNetI2pI2PAppContext_withNSString_(NetI2pI2PAppContext *context, NSString *filename) {
  J2OBJC_CREATE_IMPL(NetI2pClientNamingSingleFileNamingService, initWithNetI2pI2PAppContext_withNSString_, context, filename)
}

NSString *NetI2pClientNamingSingleFileNamingService_getKeyWithNSString_(NetI2pClientNamingSingleFileNamingService *self, NSString *host) {
  JavaIoBufferedReader *in = nil;
  NetI2pClientNamingSingleFileNamingService_getReadLock(self);
  @try {
    in = create_JavaIoBufferedReader_initWithJavaIoReader_withInt_(create_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(create_JavaIoFileInputStream_initWithJavaIoFile_(self->_file_), @"UTF-8"), 16 * 1024);
    NSString *line = nil;
    NSString *search = JreStrcat("$C", host, '=');
    while ((line = [in readLine]) != nil) {
      if (![((NSString *) nil_chk(line)) java_hasPrefix:search]) continue;
      if ([line java_indexOf:'#'] > 0) line = [((NSString *) nil_chk([line java_substring:0 endIndex:[line java_indexOf:'#']])) java_trim];
      jint split = [((NSString *) nil_chk(line)) java_indexOf:'='];
      return [line java_substring:split + 1];
    }
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    NetI2pClientNamingSingleFileNamingService_releaseReadLock(self);
  }
  return nil;
}

void NetI2pClientNamingSingleFileNamingService_writeOptionsWithJavaUtilProperties_withJavaIoWriter_(JavaUtilProperties *options, JavaIoWriter *outArg) {
  NetI2pClientNamingSingleFileNamingService_initialize();
  jboolean started = false;
  for (id<JavaUtilMap_Entry> __strong e in nil_chk([((JavaUtilProperties *) nil_chk(options)) entrySet])) {
    NSString *k = (NSString *) cast_chk([((id<JavaUtilMap_Entry>) nil_chk(e)) getKey], [NSString class]);
    if (![((NSString *) nil_chk(k)) java_hasPrefix:@"="]) continue;
    k = [k java_substring:1];
    NSString *v = (NSString *) cast_chk([e getValue], [NSString class]);
    if (started) {
      [((JavaIoWriter *) nil_chk(outArg)) writeWithInt:NetI2pClientNamingHostTxtEntry_PROP_SEPARATOR];
    }
    else {
      started = true;
      [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:NetI2pClientNamingHostTxtEntry_PROPS_SEPARATOR];
    }
    [outArg writeWithNSString:k];
    [outArg writeWithInt:'='];
    [outArg writeWithNSString:v];
  }
}

void NetI2pClientNamingSingleFileNamingService_getReadLock(NetI2pClientNamingSingleFileNamingService *self) {
  [((JavaUtilConcurrentLocksReentrantReadWriteLock_ReadLock *) nil_chk([((JavaUtilConcurrentLocksReentrantReadWriteLock *) nil_chk(self->_fileLock_)) readLock])) lock];
}

void NetI2pClientNamingSingleFileNamingService_releaseReadLock(NetI2pClientNamingSingleFileNamingService *self) {
  [((JavaUtilConcurrentLocksReentrantReadWriteLock_ReadLock *) nil_chk([((JavaUtilConcurrentLocksReentrantReadWriteLock *) nil_chk(self->_fileLock_)) readLock])) unlock];
}

jboolean NetI2pClientNamingSingleFileNamingService_getWriteLock(NetI2pClientNamingSingleFileNamingService *self) {
  @try {
    jboolean rv = [((JavaUtilConcurrentLocksReentrantReadWriteLock_WriteLock *) nil_chk([((JavaUtilConcurrentLocksReentrantReadWriteLock *) nil_chk(self->_fileLock_)) writeLock])) tryLockWithLong:10000 withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
    if ((!rv) && [((NetI2pUtilLog *) nil_chk(self->_log_)) shouldLogWithInt:NetI2pUtilLog_WARN]) [((NetI2pUtilLog *) nil_chk(self->_log_)) warnWithNSString:JreStrcat("$I", @"no lock, size is: ", [self->_fileLock_ getQueueLength]) withJavaLangThrowable:create_JavaLangException_initWithNSString_(@"rats")];
    return rv;
  }
  @catch (JavaLangInterruptedException *ie) {
  }
  return false;
}

void NetI2pClientNamingSingleFileNamingService_releaseWriteLock(NetI2pClientNamingSingleFileNamingService *self) {
  [((JavaUtilConcurrentLocksReentrantReadWriteLock_WriteLock *) nil_chk([((JavaUtilConcurrentLocksReentrantReadWriteLock *) nil_chk(self->_fileLock_)) writeLock])) unlock];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientNamingSingleFileNamingService)
