//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/WorkingDir.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedWriter.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/OutputStreamWriter.h"
#include "java/io/PrintStream.h"
#include "java/io/PrintWriter.h"
#include "java/lang/System.h"
#include "java/util/Properties.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/router/startup/CreateRouterInfoJob.h"
#include "net/i2p/router/startup/WorkingDir.h"
#include "net/i2p/util/SecureDirectory.h"
#include "net/i2p/util/SecureFileOutputStream.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterStartupWorkingDir ()

+ (jboolean)isSetupWithJavaIoFile:(JavaIoFile *)dir;

+ (void)setupSystemOutWithNSString:(NSString *)dir;

+ (jboolean)migrateWithNSString:(NSString *)list
                 withJavaIoFile:(JavaIoFile *)olddir
                 withJavaIoFile:(JavaIoFile *)todir;

+ (jboolean)migrateClientsConfigWithJavaIoFile:(JavaIoFile *)olddir
                                withJavaIoFile:(JavaIoFile *)todir;

+ (jboolean)copy__WithJavaIoFile:(JavaIoFile *)src
                  withJavaIoFile:(JavaIoFile *)targetDir OBJC_METHOD_FAMILY_NONE;

+ (void)touchRecursiveWithJavaIoFile:(JavaIoFile *)target
                            withLong:(jlong)time;

@end

inline NSString *NetI2pRouterStartupWorkingDir_get_PROP_BASE_DIR(void);
static NSString *NetI2pRouterStartupWorkingDir_PROP_BASE_DIR = @"i2p.dir.base";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, PROP_BASE_DIR, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_PROP_WORKING_DIR(void);
static NSString *NetI2pRouterStartupWorkingDir_PROP_WORKING_DIR = @"i2p.dir.config";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, PROP_WORKING_DIR, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_WORKING_DIR_DEFAULT_WINDOWS(void);
static NSString *NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_WINDOWS = @"I2P";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, WORKING_DIR_DEFAULT_WINDOWS, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_WORKING_DIR_DEFAULT_MAC(void);
static NSString *NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_MAC = @"i2p";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, WORKING_DIR_DEFAULT_MAC, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_WORKING_DIR_DEFAULT(void);
static NSString *NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT = @".i2p";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, WORKING_DIR_DEFAULT, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_WORKING_DIR_DEFAULT_DAEMON(void);
static NSString *NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_DAEMON = @"i2p-config";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, WORKING_DIR_DEFAULT_DAEMON, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_PROP_WRAPPER_LOG(void);
static NSString *NetI2pRouterStartupWorkingDir_PROP_WRAPPER_LOG = @"wrapper.logfile";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, PROP_WRAPPER_LOG, NSString *)

inline NSString *NetI2pRouterStartupWorkingDir_get_DEFAULT_WRAPPER_LOG(void);
static NSString *NetI2pRouterStartupWorkingDir_DEFAULT_WRAPPER_LOG = @"wrapper.log";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, DEFAULT_WRAPPER_LOG, NSString *)

inline jlong NetI2pRouterStartupWorkingDir_get_EEPSITE_TIMESTAMP(void);
#define NetI2pRouterStartupWorkingDir_EEPSITE_TIMESTAMP 1140048000000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterStartupWorkingDir, EEPSITE_TIMESTAMP, jlong)

inline NSString *NetI2pRouterStartupWorkingDir_get_MIGRATE_BASE(void);
static NSString *NetI2pRouterStartupWorkingDir_MIGRATE_BASE = @"addressbook,eepsite,netDb,hosts.txt,i2psnark.config,i2ptunnel.config,jetty-i2psnark.xml,logger.config,router.config,susimail.config,systray.config,webapps.config";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupWorkingDir, MIGRATE_BASE, NSString *)

__attribute__((unused)) static jboolean NetI2pRouterStartupWorkingDir_isSetupWithJavaIoFile_(JavaIoFile *dir);

__attribute__((unused)) static void NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(NSString *dir);

__attribute__((unused)) static jboolean NetI2pRouterStartupWorkingDir_migrateWithNSString_withJavaIoFile_withJavaIoFile_(NSString *list, JavaIoFile *olddir, JavaIoFile *todir);

__attribute__((unused)) static jboolean NetI2pRouterStartupWorkingDir_migrateClientsConfigWithJavaIoFile_withJavaIoFile_(JavaIoFile *olddir, JavaIoFile *todir);

__attribute__((unused)) static jboolean NetI2pRouterStartupWorkingDir_copy__WithJavaIoFile_withJavaIoFile_(JavaIoFile *src, JavaIoFile *targetDir);

__attribute__((unused)) static void NetI2pRouterStartupWorkingDir_touchRecursiveWithJavaIoFile_withLong_(JavaIoFile *target, jlong time);

@implementation NetI2pRouterStartupWorkingDir

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterStartupWorkingDir_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getWorkingDirWithJavaUtilProperties:(JavaUtilProperties *)envProps
                                      withBoolean:(jboolean)migrateOldConfig {
  return NetI2pRouterStartupWorkingDir_getWorkingDirWithJavaUtilProperties_withBoolean_(envProps, migrateOldConfig);
}

+ (jboolean)isSetupWithJavaIoFile:(JavaIoFile *)dir {
  return NetI2pRouterStartupWorkingDir_isSetupWithJavaIoFile_(dir);
}

+ (void)setupSystemOutWithNSString:(NSString *)dir {
  NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(dir);
}

+ (jboolean)migrateWithNSString:(NSString *)list
                 withJavaIoFile:(JavaIoFile *)olddir
                 withJavaIoFile:(JavaIoFile *)todir {
  return NetI2pRouterStartupWorkingDir_migrateWithNSString_withJavaIoFile_withJavaIoFile_(list, olddir, todir);
}

+ (jboolean)migrateClientsConfigWithJavaIoFile:(JavaIoFile *)olddir
                                withJavaIoFile:(JavaIoFile *)todir {
  return NetI2pRouterStartupWorkingDir_migrateClientsConfigWithJavaIoFile_withJavaIoFile_(olddir, todir);
}

+ (jboolean)migrateJettyXmlWithJavaIoFile:(JavaIoFile *)olddir
                           withJavaIoFile:(JavaIoFile *)todir
                             withNSString:(NSString *)filename
                             withNSString:(NSString *)oldString
                             withNSString:(NSString *)newString {
  return NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(olddir, todir, filename, oldString, newString);
}

+ (jboolean)copy__WithJavaIoFile:(JavaIoFile *)src
                  withJavaIoFile:(JavaIoFile *)targetDir {
  return NetI2pRouterStartupWorkingDir_copy__WithJavaIoFile_withJavaIoFile_(src, targetDir);
}

+ (jboolean)copyFileWithJavaIoFile:(JavaIoFile *)src
                    withJavaIoFile:(JavaIoFile *)dst {
  return NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(src, dst);
}

+ (void)touchRecursiveWithJavaIoFile:(JavaIoFile *)target
                            withLong:(jlong)time {
  NetI2pRouterStartupWorkingDir_touchRecursiveWithJavaIoFile_withLong_(target, time);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 8, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x8, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 12, 9, -1, -1, -1, -1 },
    { NULL, "Z", 0x8, 13, 9, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 14, 15, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getWorkingDirWithJavaUtilProperties:withBoolean:);
  methods[2].selector = @selector(isSetupWithJavaIoFile:);
  methods[3].selector = @selector(setupSystemOutWithNSString:);
  methods[4].selector = @selector(migrateWithNSString:withJavaIoFile:withJavaIoFile:);
  methods[5].selector = @selector(migrateClientsConfigWithJavaIoFile:withJavaIoFile:);
  methods[6].selector = @selector(migrateJettyXmlWithJavaIoFile:withJavaIoFile:withNSString:withNSString:withNSString:);
  methods[7].selector = @selector(copy__WithJavaIoFile:withJavaIoFile:);
  methods[8].selector = @selector(copyFileWithJavaIoFile:withJavaIoFile:);
  methods[9].selector = @selector(touchRecursiveWithJavaIoFile:withLong:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROP_BASE_DIR", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "PROP_WORKING_DIR", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "WORKING_DIR_DEFAULT_WINDOWS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "WORKING_DIR_DEFAULT_MAC", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "WORKING_DIR_DEFAULT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "WORKING_DIR_DEFAULT_DAEMON", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
    { "PROP_WRAPPER_LOG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 22, -1, -1 },
    { "DEFAULT_WRAPPER_LOG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "EEPSITE_TIMESTAMP", "J", .constantValue.asLong = NetI2pRouterStartupWorkingDir_EEPSITE_TIMESTAMP, 0x1a, -1, -1, -1, -1 },
    { "MIGRATE_BASE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 24, -1, -1 },
  };
  static const void *ptrTable[] = { "getWorkingDir", "LJavaUtilProperties;Z", "isSetup", "LJavaIoFile;", "setupSystemOut", "LNSString;", "migrate", "LNSString;LJavaIoFile;LJavaIoFile;", "migrateClientsConfig", "LJavaIoFile;LJavaIoFile;", "migrateJettyXml", "LJavaIoFile;LJavaIoFile;LNSString;LNSString;LNSString;", "copy", "copyFile", "touchRecursive", "LJavaIoFile;J", &NetI2pRouterStartupWorkingDir_PROP_BASE_DIR, &NetI2pRouterStartupWorkingDir_PROP_WORKING_DIR, &NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_WINDOWS, &NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_MAC, &NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT, &NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_DAEMON, &NetI2pRouterStartupWorkingDir_PROP_WRAPPER_LOG, &NetI2pRouterStartupWorkingDir_DEFAULT_WRAPPER_LOG, &NetI2pRouterStartupWorkingDir_MIGRATE_BASE };
  static const J2ObjcClassInfo _NetI2pRouterStartupWorkingDir = { "WorkingDir", "net.i2p.router.startup", ptrTable, methods, fields, 7, 0x1, 10, 10, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterStartupWorkingDir;
}

@end

void NetI2pRouterStartupWorkingDir_init(NetI2pRouterStartupWorkingDir *self) {
  NSObject_init(self);
}

NetI2pRouterStartupWorkingDir *new_NetI2pRouterStartupWorkingDir_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupWorkingDir, init)
}

NetI2pRouterStartupWorkingDir *create_NetI2pRouterStartupWorkingDir_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupWorkingDir, init)
}

NSString *NetI2pRouterStartupWorkingDir_getWorkingDirWithJavaUtilProperties_withBoolean_(JavaUtilProperties *envProps, jboolean migrateOldConfig) {
  NetI2pRouterStartupWorkingDir_initialize();
  NSString *dir = nil;
  if (envProps != nil) dir = [envProps getPropertyWithNSString:NetI2pRouterStartupWorkingDir_PROP_WORKING_DIR];
  if (dir == nil) dir = JavaLangSystem_getPropertyWithNSString_(NetI2pRouterStartupWorkingDir_PROP_WORKING_DIR);
  jboolean isWindows = NetI2pUtilSystemVersion_isWindows();
  JavaIoFile *dirf = nil;
  NSString *gentooWarning = nil;
  if (dir != nil) {
    dirf = create_NetI2pUtilSecureDirectory_initWithNSString_(dir);
  }
  else {
    NSString *home = JavaLangSystem_getPropertyWithNSString_(@"user.home");
    if (isWindows) {
      NSString *appdata = JavaLangSystem_getenvWithNSString_(@"APPDATA");
      if (appdata != nil) home = appdata;
      dirf = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_WINDOWS);
    }
    else if (NetI2pUtilSystemVersion_isMac()) {
      NSString *appdata = @"/Library/Application Support/";
      JavaIoFile *old = create_JavaIoFile_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT);
      if ([old exists] && [old isDirectory]) dirf = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT);
      else {
        home = JreStrcat("$$", home, appdata);
        dirf = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_MAC);
      }
    }
    else {
      if (NetI2pUtilSystemVersion_isLinuxService()) {
        if (NetI2pUtilSystemVersion_isGentoo() && [((NSString *) nil_chk(NetI2pUtilSystemVersion_GENTOO_USER)) isEqual:JavaLangSystem_getPropertyWithNSString_(@"user.name")]) {
          JavaIoFile *d1 = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT);
          JavaIoFile *d2 = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_DAEMON);
          jboolean e1 = NetI2pRouterStartupWorkingDir_isSetupWithJavaIoFile_(d1);
          jboolean e2 = NetI2pRouterStartupWorkingDir_isSetupWithJavaIoFile_(d2);
          if (e1 && e2) {
            if ([d2 lastModified] < [d1 lastModified]) {
              JavaIoFile *tmp = d2;
              d2 = d1;
              d1 = tmp;
            }
            dirf = d2;
            gentooWarning = JreStrcat("$$$$$", @"Warning - Found both an old configuration directory ", [d1 getAbsolutePath], @" and new configuration directory ", [d2 getAbsolutePath], @" created due to a bug in release 0.9.29\n. Using the new configuration directory. To use the old directory instead, stop i2p, delete the new directory, and restart.");
          }
          else if (e1 && !e2) {
            dirf = d1;
          }
          else if (!e1 && e2) {
            dirf = d2;
          }
          else {
            dirf = d1;
          }
        }
        else {
          dirf = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT_DAEMON);
        }
      }
      else {
        dirf = create_NetI2pUtilSecureDirectory_initWithNSString_withNSString_(home, NetI2pRouterStartupWorkingDir_WORKING_DIR_DEFAULT);
      }
    }
  }
  NSString *cwd = nil;
  if (envProps != nil) cwd = [envProps getPropertyWithNSString:NetI2pRouterStartupWorkingDir_PROP_BASE_DIR];
  if (cwd == nil) {
    cwd = JavaLangSystem_getPropertyWithNSString_(NetI2pRouterStartupWorkingDir_PROP_BASE_DIR);
    if (cwd == nil) cwd = JavaLangSystem_getPropertyWithNSString_(@"user.dir");
  }
  JavaIoFile *oldDirf = create_JavaIoFile_initWithNSString_(cwd);
  JavaIoFile *test = create_JavaIoFile_initWithJavaIoFile_withNSString_(oldDirf, @"hosts.txt");
  if (![test exists]) {
    NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(cwd);
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$", @"ERROR - Cannot find I2P installation in ", cwd, @" - Will probably be just a router with no apps or console at all!")];
    return cwd;
  }
  @try {
    if ([((NSString *) nil_chk([oldDirf getCanonicalPath])) isEqual:[dirf getCanonicalPath]]) {
      NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(cwd);
      return cwd;
    }
  }
  @catch (JavaIoIOException *ioe) {
  }
  NSString *rv = [dirf getAbsolutePath];
  if ([dirf exists]) {
    if ([dirf isDirectory]) {
      if (NetI2pRouterStartupWorkingDir_isSetupWithJavaIoFile_(dirf)) {
        NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(rv);
        if (gentooWarning != nil) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:gentooWarning];
        return rv;
      }
    }
    else {
      NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(nil);
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$", @"Wanted to use ", rv, @" for a working directory but it is not a directory")];
      return cwd;
    }
  }
  test = create_JavaIoFile_initWithJavaIoFile_withNSString_(oldDirf, NetI2pRouterStartupCreateRouterInfoJob_KEYS_FILENAME);
  jboolean oldInstall = [test exists];
  if (!oldInstall) {
    test = create_JavaIoFile_initWithJavaIoFile_withNSString_(oldDirf, @"logs");
    oldInstall = [test exists];
  }
  if (oldInstall && !migrateOldConfig) {
    NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(cwd);
    return cwd;
  }
  jboolean migrateOldData = false;
  if (![dirf exists] && ![dirf mkdir]) {
    NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(nil);
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$", @"Wanted to use ", rv, @" for a working directory but could not create it")];
    return cwd;
  }
  NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_([dirf getAbsolutePath]);
  if (migrateOldData) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Migrating data files to new user directory ", rv)];
  else [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Setting up new user directory ", rv)];
  jboolean success = NetI2pRouterStartupWorkingDir_migrateWithNSString_withJavaIoFile_withJavaIoFile_(NetI2pRouterStartupWorkingDir_MIGRATE_BASE, oldDirf, dirf);
  JavaIoFile *oldEep = create_JavaIoFile_initWithJavaIoFile_withNSString_(oldDirf, @"eepsite");
  JavaIoFile *newEep = create_JavaIoFile_initWithJavaIoFile_withNSString_(dirf, @"eepsite");
  NSString *newPath = JreStrcat("$C", [newEep getAbsolutePath], JreLoadStatic(JavaIoFile, separatorChar));
  success &= NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(oldEep, newEep, @"jetty.xml", @"./eepsite/", newPath);
  success &= NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(oldEep, newEep, @"jetty-ssl.xml", @"./eepsite/", newPath);
  success &= NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(oldEep, newEep, @"contexts/base-context.xml", @"./eepsite/", newPath);
  success &= NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(oldEep, newEep, @"contexts/cgi-context.xml", @"./eepsite/", newPath);
  success &= NetI2pRouterStartupWorkingDir_migrateClientsConfigWithJavaIoFile_withJavaIoFile_(oldDirf, dirf);
  success &= [(create_NetI2pUtilSecureDirectory_initWithJavaIoFile_withNSString_(dirf, @"docs")) mkdir];
  NetI2pRouterStartupWorkingDir_touchRecursiveWithJavaIoFile_withLong_(create_JavaIoFile_initWithJavaIoFile_withNSString_(dirf, @"eepsite/docroot"), NetI2pRouterStartupWorkingDir_EEPSITE_TIMESTAMP);
  if (success) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Successfully copied data files to new user directory ", rv)];
    return rv;
  }
  else {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"FAILED copy of some or all data files to new directory ", rv)];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Check logs for details"];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Continung to use data files in old directory ", cwd)];
    return cwd;
  }
}

jboolean NetI2pRouterStartupWorkingDir_isSetupWithJavaIoFile_(JavaIoFile *dir) {
  NetI2pRouterStartupWorkingDir_initialize();
  if ([((JavaIoFile *) nil_chk(dir)) isDirectory]) {
    IOSObjectArray *files = [dir list];
    if (files == nil) return false;
    IOSObjectArray *migrated = NetI2pDataDataHelper_splitWithNSString_withNSString_(NetI2pRouterStartupWorkingDir_MIGRATE_BASE, @",");
    {
      IOSObjectArray *a__ = files;
      NSString * const *b__ = a__->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *file = *b__++;
        for (jint i = 0; i < ((IOSObjectArray *) nil_chk(migrated))->size_; i++) {
          if ([((NSString *) nil_chk(file)) isEqual:IOSObjectArray_Get(migrated, i)]) return true;
        }
      }
    }
  }
  return false;
}

void NetI2pRouterStartupWorkingDir_setupSystemOutWithNSString_(NSString *dir) {
  NetI2pRouterStartupWorkingDir_initialize();
  if (NetI2pUtilSystemVersion_hasWrapper()) return;
  if (JavaLangSystem_getPropertyWithNSString_(@"I2P_DISABLE_OUTPUT_OVERRIDE") != nil) return;
  NSString *path = JavaLangSystem_getPropertyWithNSString_(NetI2pRouterStartupWorkingDir_PROP_WRAPPER_LOG);
  JavaIoFile *logfile;
  if (path != nil) {
    logfile = create_JavaIoFile_initWithNSString_(path);
  }
  else {
    logfile = create_JavaIoFile_initWithNSString_(NetI2pRouterStartupWorkingDir_DEFAULT_WRAPPER_LOG);
    if (![logfile exists]) {
      if (dir == nil) dir = JavaLangSystem_getPropertyWithNSString_(@"java.io.tmpdir");
      logfile = create_JavaIoFile_initWithNSString_withNSString_(dir, NetI2pRouterStartupWorkingDir_DEFAULT_WRAPPER_LOG);
    }
  }
  JavaLangSystem_setPropertyWithNSString_withNSString_(NetI2pRouterStartupWorkingDir_PROP_WRAPPER_LOG, [logfile getAbsolutePath]);
  @try {
    JavaIoPrintStream *ps = create_JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_withBoolean_(logfile, true), true, @"UTF-8");
    JavaLangSystem_setOutWithJavaIoPrintStream_(ps);
    JavaLangSystem_setErrWithJavaIoPrintStream_(ps);
  }
  @catch (JavaIoIOException *ioe) {
    [ioe printStackTrace];
  }
}

jboolean NetI2pRouterStartupWorkingDir_migrateWithNSString_withJavaIoFile_withJavaIoFile_(NSString *list, JavaIoFile *olddir, JavaIoFile *todir) {
  NetI2pRouterStartupWorkingDir_initialize();
  jboolean rv = true;
  IOSObjectArray *files = NetI2pDataDataHelper_splitWithNSString_withNSString_(list, @",");
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(files))->size_; i++) {
    JavaIoFile *from = create_JavaIoFile_initWithJavaIoFile_withNSString_(olddir, IOSObjectArray_Get(files, i));
    if (!NetI2pRouterStartupWorkingDir_copy__WithJavaIoFile_withJavaIoFile_(from, todir)) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Error copying ", [from getAbsolutePath])];
      rv = false;
    }
  }
  return rv;
}

jboolean NetI2pRouterStartupWorkingDir_migrateClientsConfigWithJavaIoFile_withJavaIoFile_(JavaIoFile *olddir, JavaIoFile *todir) {
  NetI2pRouterStartupWorkingDir_initialize();
  JavaIoFile *oldFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(olddir, @"clients.config");
  JavaIoFile *newFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(todir, @"clients.config");
  JavaIoFileInputStream *in = nil;
  JavaIoPrintWriter *out = nil;
  @try {
    in = create_JavaIoFileInputStream_initWithJavaIoFile_(oldFile);
    out = create_JavaIoPrintWriter_initWithJavaIoWriter_(create_JavaIoBufferedWriter_initWithJavaIoWriter_(create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(newFile), @"UTF-8")));
    [out printlnWithNSString:@"# Modified by I2P User dir migration script"];
    NSString *s = nil;
    jboolean isDaemon = NetI2pUtilSystemVersion_isLinuxService();
    while ((s = NetI2pDataDataHelper_readLineWithJavaIoInputStream_(in)) != nil) {
      if ([((NSString *) nil_chk(s)) java_hasSuffix:@"\x0d"]) s = [s java_substring:0 endIndex:[s java_length] - 1];
      if ([((NSString *) nil_chk(s)) java_hasSuffix:@"=\"eepsite/jetty.xml\""]) {
        s = [s java_replace:@"=\"eepsite/jetty.xml\"" withSequence:JreStrcat("$$C$C$", @"=\"", [((JavaIoFile *) nil_chk(todir)) getAbsolutePath], JreLoadStatic(JavaIoFile, separatorChar), @"eepsite", JreLoadStatic(JavaIoFile, separatorChar), @"jetty.xml\"")];
      }
      else if (isDaemon && [s isEqual:@"clientApp.4.startOnLoad=true"]) {
        s = @"clientApp.4.startOnLoad=false";
      }
      [out printlnWithNSString:s];
    }
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$", @"Copied ", oldFile, @" with modifications")];
    if ([out checkError]) @throw create_JavaIoIOException_initWithNSString_(JreStrcat("$@", @"Failed write to ", newFile));
    return true;
  }
  @catch (JavaIoIOException *ioe) {
    if (in != nil) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$@", @"FAILED copy ", oldFile, @": ", ioe)];
    }
    return false;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    if (out != nil) [out close];
  }
}

jboolean NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(JavaIoFile *olddir, JavaIoFile *todir, NSString *filename, NSString *oldString, NSString *newString) {
  NetI2pRouterStartupWorkingDir_initialize();
  JavaIoFile *oldFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(olddir, filename);
  JavaIoFile *newFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(todir, filename);
  JavaIoFileInputStream *in = nil;
  JavaIoPrintWriter *out = nil;
  @try {
    in = create_JavaIoFileInputStream_initWithJavaIoFile_(oldFile);
    out = create_JavaIoPrintWriter_initWithJavaIoWriter_(create_JavaIoBufferedWriter_initWithJavaIoWriter_(create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(newFile), @"UTF-8")));
    NSString *s = nil;
    while ((s = NetI2pDataDataHelper_readLineWithJavaIoInputStream_(in)) != nil) {
      if ([((NSString *) nil_chk(s)) java_hasSuffix:@"\x0d"]) s = [s java_substring:0 endIndex:[s java_length] - 1];
      if ([((NSString *) nil_chk(s)) java_indexOfString:oldString] >= 0) {
        s = [s java_replace:oldString withSequence:newString];
      }
      [out printlnWithNSString:s];
    }
    [out printlnWithNSString:@"<!-- Modified by I2P User dir migration script -->"];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$", @"Copied ", oldFile, @" with modifications")];
    return true;
  }
  @catch (JavaIoIOException *ioe) {
    if (in != nil) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$@", @"FAILED copy ", oldFile, @": ", ioe)];
    }
    return false;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    if (out != nil) [out close];
  }
}

jboolean NetI2pRouterStartupWorkingDir_copy__WithJavaIoFile_withJavaIoFile_(JavaIoFile *src, JavaIoFile *targetDir) {
  NetI2pRouterStartupWorkingDir_initialize();
  if (![((JavaIoFile *) nil_chk(src)) exists]) return true;
  if (![((JavaIoFile *) nil_chk(targetDir)) exists]) {
    if (![targetDir mkdir]) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"FAILED copy ", [src getPath])];
      return false;
    }
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Created ", [targetDir getPath])];
  }
  JavaIoFile *targetFile = create_NetI2pUtilSecureDirectory_initWithJavaIoFile_withNSString_(targetDir, [src getName]);
  if (![src isDirectory]) return NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(src, targetFile);
  IOSObjectArray *children = [src listFiles];
  if (children == nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"FAILED copy ", [src getPath])];
    return false;
  }
  if (![targetFile exists]) {
    if (![targetFile mkdir]) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"FAILED copy ", [src getPath])];
      return false;
    }
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Created ", [targetFile getPath])];
  }
  jboolean rv = true;
  for (jint i = 0; i < children->size_; i++) {
    rv &= NetI2pRouterStartupWorkingDir_copy__WithJavaIoFile_withJavaIoFile_(IOSObjectArray_Get(children, i), targetFile);
  }
  return rv;
}

jboolean NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(JavaIoFile *src, JavaIoFile *dst) {
  NetI2pRouterStartupWorkingDir_initialize();
  if (![((JavaIoFile *) nil_chk(src)) exists]) return false;
  jboolean rv = true;
  JavaIoFileInputStream *in = nil;
  JavaIoFileOutputStream *out = nil;
  @try {
    in = create_JavaIoFileInputStream_initWithJavaIoFile_(src);
    out = create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(dst);
    NetI2pDataDataHelper_copy__WithJavaIoInputStream_withJavaIoOutputStream_(in, out);
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"Copied ", [src getPath])];
  }
  @catch (JavaIoIOException *ioe) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$@", @"FAILED copy ", [src getPath], @": ", ioe)];
    rv = false;
  }
  @finally {
    if (in != nil) @try {
      [in close];
    }
    @catch (JavaIoIOException *ioe) {
    }
    if (out != nil) @try {
      [out close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
  if (rv) [((JavaIoFile *) nil_chk(dst)) setLastModifiedWithLong:[src lastModified]];
  return rv;
}

void NetI2pRouterStartupWorkingDir_touchRecursiveWithJavaIoFile_withLong_(JavaIoFile *target, jlong time) {
  NetI2pRouterStartupWorkingDir_initialize();
  if (![((JavaIoFile *) nil_chk(target)) exists]) return;
  if ([target isFile]) {
    [target setLastModifiedWithLong:time];
    return;
  }
  if (![target isDirectory]) return;
  IOSObjectArray *children = [target listFiles];
  if (children == nil) return;
  for (jint i = 0; i < children->size_; i++) {
    NetI2pRouterStartupWorkingDir_touchRecursiveWithJavaIoFile_withLong_(IOSObjectArray_Get(children, i), time);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupWorkingDir)
