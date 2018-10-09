//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/MigrateJetty.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedWriter.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/OutputStreamWriter.h"
#include "java/io/PrintStream.h"
#include "java/io/PrintWriter.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/System.h"
#include "java/util/List.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/startup/ClientAppConfig.h"
#include "net/i2p/router/startup/LoadClientAppsJob.h"
#include "net/i2p/router/startup/MigrateJetty.h"
#include "net/i2p/router/startup/WorkingDir.h"
#include "net/i2p/util/FileUtil.h"
#include "net/i2p/util/I2PSSLSocketFactory.h"
#include "net/i2p/util/SecureFileOutputStream.h"
#include "net/i2p/util/VersionComparator.h"

@interface NetI2pRouterStartupMigrateJetty ()

+ (jboolean)migrateToJetty9WithJavaIoFile:(JavaIoFile *)xmlFile;

+ (jboolean)hasLatestJetty;

+ (jboolean)backupFileWithJavaIoFile:(JavaIoFile *)from;

+ (jboolean)backupFileWithJavaIoFile:(JavaIoFile *)from
                        withNSString:(NSString *)suffix;

+ (jboolean)backupAndMigrateFileWithJavaIoFile:(JavaIoFile *)templateDir
                                withJavaIoFile:(JavaIoFile *)toDir
                                  withNSString:(NSString *)filename
                                  withNSString:(NSString *)fromString
                                  withNSString:(NSString *)toString;

+ (jboolean)backupAndCopyFileWithJavaIoFile:(JavaIoFile *)templateDir
                             withJavaIoFile:(JavaIoFile *)toDir
                               withNSString:(NSString *)filename;

@end

inline jboolean NetI2pRouterStartupMigrateJetty_get__wasChecked(void);
inline jboolean NetI2pRouterStartupMigrateJetty_set__wasChecked(jboolean value);
inline jboolean *NetI2pRouterStartupMigrateJetty_getRef__wasChecked(void);
static jboolean NetI2pRouterStartupMigrateJetty__wasChecked;
J2OBJC_STATIC_FIELD_PRIMITIVE(NetI2pRouterStartupMigrateJetty, _wasChecked, jboolean)

inline jboolean NetI2pRouterStartupMigrateJetty_get__hasLatestJetty(void);
inline jboolean NetI2pRouterStartupMigrateJetty_set__hasLatestJetty(jboolean value);
inline jboolean *NetI2pRouterStartupMigrateJetty_getRef__hasLatestJetty(void);
static jboolean NetI2pRouterStartupMigrateJetty__hasLatestJetty;
J2OBJC_STATIC_FIELD_PRIMITIVE(NetI2pRouterStartupMigrateJetty, _hasLatestJetty, jboolean)

inline NSString *NetI2pRouterStartupMigrateJetty_get_OLD_CLASS(void);
static NSString *NetI2pRouterStartupMigrateJetty_OLD_CLASS = @"org.mortbay.jetty.Server";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, OLD_CLASS, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_OLD_CLASS_6(void);
static NSString *NetI2pRouterStartupMigrateJetty_OLD_CLASS_6 = @"org.mortbay.start.Main";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, OLD_CLASS_6, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_NEW_CLASS(void);
static NSString *NetI2pRouterStartupMigrateJetty_NEW_CLASS = @"net.i2p.jetty.JettyStart";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, NEW_CLASS, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_TEST_CLASS(void);
static NSString *NetI2pRouterStartupMigrateJetty_TEST_CLASS = @"org.eclipse.jetty.server.Server";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, TEST_CLASS, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_BACKUP_SUFFIX(void);
static NSString *NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX = @".jetty6";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, BACKUP_SUFFIX, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_BACKUP_SUFFIX_8(void);
static NSString *NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX_8 = @".jetty8";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, BACKUP_SUFFIX_8, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_JETTY_TEMPLATE_DIR(void);
static NSString *NetI2pRouterStartupMigrateJetty_JETTY_TEMPLATE_DIR = @"eepsite-jetty9";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, JETTY_TEMPLATE_DIR, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_JETTY_TEMPLATE_PKGDIR(void);
static NSString *NetI2pRouterStartupMigrateJetty_JETTY_TEMPLATE_PKGDIR = @"eepsite";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, JETTY_TEMPLATE_PKGDIR, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_BASE_CONTEXT(void);
static NSString *NetI2pRouterStartupMigrateJetty_BASE_CONTEXT = @"contexts/base-context.xml";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, BASE_CONTEXT, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_CGI_CONTEXT(void);
static NSString *NetI2pRouterStartupMigrateJetty_CGI_CONTEXT = @"contexts/cgi-context.xml";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, CGI_CONTEXT, NSString *)

inline NSString *NetI2pRouterStartupMigrateJetty_get_PROP_JETTY9_MIGRATED(void);
static NSString *NetI2pRouterStartupMigrateJetty_PROP_JETTY9_MIGRATED = @"router.startup.jetty9.migrated";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupMigrateJetty, PROP_JETTY9_MIGRATED, NSString *)

__attribute__((unused)) static jboolean NetI2pRouterStartupMigrateJetty_migrateToJetty9WithJavaIoFile_(JavaIoFile *xmlFile);

__attribute__((unused)) static jboolean NetI2pRouterStartupMigrateJetty_hasLatestJetty(void);

__attribute__((unused)) static jboolean NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_(JavaIoFile *from);

__attribute__((unused)) static jboolean NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_withNSString_(JavaIoFile *from, NSString *suffix);

__attribute__((unused)) static jboolean NetI2pRouterStartupMigrateJetty_backupAndMigrateFileWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(JavaIoFile *templateDir, JavaIoFile *toDir, NSString *filename, NSString *fromString, NSString *toString);

__attribute__((unused)) static jboolean NetI2pRouterStartupMigrateJetty_backupAndCopyFileWithJavaIoFile_withJavaIoFile_withNSString_(JavaIoFile *templateDir, JavaIoFile *toDir, NSString *filename);

@implementation NetI2pRouterStartupMigrateJetty

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterStartupMigrateJetty_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)migrateWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                            withJavaUtilList:(id<JavaUtilList>)apps {
  NetI2pRouterStartupMigrateJetty_migrateWithNetI2pRouterRouterContext_withJavaUtilList_(ctx, apps);
}

+ (jboolean)migrateToJetty9WithJavaIoFile:(JavaIoFile *)xmlFile {
  return NetI2pRouterStartupMigrateJetty_migrateToJetty9WithJavaIoFile_(xmlFile);
}

+ (jboolean)hasLatestJetty {
  return NetI2pRouterStartupMigrateJetty_hasLatestJetty();
}

+ (jboolean)backupFileWithJavaIoFile:(JavaIoFile *)from {
  return NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_(from);
}

+ (jboolean)backupFileWithJavaIoFile:(JavaIoFile *)from
                        withNSString:(NSString *)suffix {
  return NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_withNSString_(from, suffix);
}

+ (jboolean)backupAndMigrateFileWithJavaIoFile:(JavaIoFile *)templateDir
                                withJavaIoFile:(JavaIoFile *)toDir
                                  withNSString:(NSString *)filename
                                  withNSString:(NSString *)fromString
                                  withNSString:(NSString *)toString {
  return NetI2pRouterStartupMigrateJetty_backupAndMigrateFileWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(templateDir, toDir, filename, fromString, toString);
}

+ (jboolean)backupAndCopyFileWithJavaIoFile:(JavaIoFile *)templateDir
                             withJavaIoFile:(JavaIoFile *)toDir
                               withNSString:(NSString *)filename {
  return NetI2pRouterStartupMigrateJetty_backupAndCopyFileWithJavaIoFile_withJavaIoFile_withNSString_(templateDir, toDir, filename);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "Z", 0xa, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 5, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(migrateWithNetI2pRouterRouterContext:withJavaUtilList:);
  methods[2].selector = @selector(migrateToJetty9WithJavaIoFile:);
  methods[3].selector = @selector(hasLatestJetty);
  methods[4].selector = @selector(backupFileWithJavaIoFile:);
  methods[5].selector = @selector(backupFileWithJavaIoFile:withNSString:);
  methods[6].selector = @selector(backupAndMigrateFileWithJavaIoFile:withJavaIoFile:withNSString:withNSString:withNSString:);
  methods[7].selector = @selector(backupAndCopyFileWithJavaIoFile:withJavaIoFile:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_wasChecked", "Z", .constantValue.asLong = 0, 0xa, -1, 11, -1, -1 },
    { "_hasLatestJetty", "Z", .constantValue.asLong = 0, 0xa, -1, 12, -1, -1 },
    { "OLD_CLASS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "OLD_CLASS_6", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "NEW_CLASS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "TEST_CLASS", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "BACKUP_SUFFIX", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "BACKUP_SUFFIX_8", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "JETTY_TEMPLATE_DIR", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "JETTY_TEMPLATE_PKGDIR", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "BASE_CONTEXT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
    { "CGI_CONTEXT", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 22, -1, -1 },
    { "PROP_JETTY9_MIGRATED", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
  };
  static const void *ptrTable[] = { "migrate", "LNetI2pRouterRouterContext;LJavaUtilList;", "(Lnet/i2p/router/RouterContext;Ljava/util/List<Lnet/i2p/router/startup/ClientAppConfig;>;)V", "migrateToJetty9", "LJavaIoFile;", "backupFile", "LJavaIoFile;LNSString;", "backupAndMigrateFile", "LJavaIoFile;LJavaIoFile;LNSString;LNSString;LNSString;", "backupAndCopyFile", "LJavaIoFile;LJavaIoFile;LNSString;", &NetI2pRouterStartupMigrateJetty__wasChecked, &NetI2pRouterStartupMigrateJetty__hasLatestJetty, &NetI2pRouterStartupMigrateJetty_OLD_CLASS, &NetI2pRouterStartupMigrateJetty_OLD_CLASS_6, &NetI2pRouterStartupMigrateJetty_NEW_CLASS, &NetI2pRouterStartupMigrateJetty_TEST_CLASS, &NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX, &NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX_8, &NetI2pRouterStartupMigrateJetty_JETTY_TEMPLATE_DIR, &NetI2pRouterStartupMigrateJetty_JETTY_TEMPLATE_PKGDIR, &NetI2pRouterStartupMigrateJetty_BASE_CONTEXT, &NetI2pRouterStartupMigrateJetty_CGI_CONTEXT, &NetI2pRouterStartupMigrateJetty_PROP_JETTY9_MIGRATED };
  static const J2ObjcClassInfo _NetI2pRouterStartupMigrateJetty = { "MigrateJetty", "net.i2p.router.startup", ptrTable, methods, fields, 7, 0x400, 8, 13, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterStartupMigrateJetty;
}

@end

void NetI2pRouterStartupMigrateJetty_init(NetI2pRouterStartupMigrateJetty *self) {
  NSObject_init(self);
}

void NetI2pRouterStartupMigrateJetty_migrateWithNetI2pRouterRouterContext_withJavaUtilList_(NetI2pRouterRouterContext *ctx, id<JavaUtilList> apps) {
  NetI2pRouterStartupMigrateJetty_initialize();
  if ([((NetI2pRouterRouterContext *) nil_chk(ctx)) getBooleanPropertyWithNSString:NetI2pRouterStartupMigrateJetty_PROP_JETTY9_MIGRATED]) return;
  NSString *installed = [ctx getPropertyWithNSString:@"router.firstVersion"];
  if (installed != nil && NetI2pUtilVersionComparator_compWithNSString_withNSString_(installed, @"0.9.30") >= 0) {
    [((NetI2pRouterRouter *) nil_chk([ctx router])) saveConfigWithNSString:NetI2pRouterStartupMigrateJetty_PROP_JETTY9_MIGRATED withNSString:@"true"];
    return;
  }
  jboolean shouldSave = false;
  jboolean jetty9success = false;
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(apps)) size]; i++) {
    NetI2pRouterStartupClientAppConfig *app = [apps getWithInt:i];
    NSString *client;
    NSString *backupSuffix;
    if ([((NSString *) nil_chk(((NetI2pRouterStartupClientAppConfig *) nil_chk(app))->className__)) isEqual:NetI2pRouterStartupMigrateJetty_NEW_CLASS]) {
      client = JreStrcat("$I$$$", @"client application ", i, @" [", app->clientName_, @"] from Jetty 7/8 to Jetty 9");
      backupSuffix = NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX_8;
    }
    else if ([((NSString *) nil_chk(app->className__)) isEqual:NetI2pRouterStartupMigrateJetty_OLD_CLASS] || [((NSString *) nil_chk(app->className__)) isEqual:NetI2pRouterStartupMigrateJetty_OLD_CLASS_6]) {
      client = JreStrcat("$I$$$$$$", @"client application ", i, @" [", app->clientName_, @"] from Jetty 5/6 ", app->className__, @" to Jetty 9 ", NetI2pRouterStartupMigrateJetty_NEW_CLASS);
      backupSuffix = NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX;
    }
    else {
      continue;
    }
    if (!NetI2pRouterStartupMigrateJetty_hasLatestJetty()) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"WARNING: Jetty 7 unavailable, cannot migrate ", client)];
      continue;
    }
    if (app->args_ == nil) continue;
    IOSObjectArray *args = NetI2pRouterStartupLoadClientAppsJob_parseArgsWithNSString_(app->args_);
    if (((IOSObjectArray *) nil_chk(args))->size_ == 0) continue;
    NSString *xml = IOSObjectArray_Get(args, 0);
    JavaIoFile *xmlFile = create_JavaIoFile_initWithNSString_(xml);
    if (![xmlFile isAbsolute]) xmlFile = create_JavaIoFile_initWithJavaIoFile_withNSString_([ctx getAppDir], xml);
    if (![xmlFile exists]) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$", @"WARNING: XML file ", xmlFile, @" not found, cannot migrate ", client)];
      continue;
    }
    JavaIoFile *eepsite = [xmlFile getParentFile];
    jboolean ok = NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_withNSString_(xmlFile, backupSuffix);
    if (!ok) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$", @"WARNING: Failed to backup up XML file ", xmlFile, @", cannot migrate ", client)];
      continue;
    }
    if ([((NSString *) nil_chk(app->className__)) isEqual:NetI2pRouterStartupMigrateJetty_NEW_CLASS]) {
      for (jint j = 0; j < args->size_; j++) {
        if (j > 0) {
          xmlFile = create_JavaIoFile_initWithNSString_(IOSObjectArray_Get(args, j));
          ok = NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_withNSString_(xmlFile, backupSuffix);
          if (!ok) {
            [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$", @"WARNING: Failed to backup up XML file ", xmlFile, @", cannot migrate ", client)];
            continue;
          }
        }
        jboolean ok9 = NetI2pRouterStartupMigrateJetty_migrateToJetty9WithJavaIoFile_(xmlFile);
        if (ok9) {
          [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$$$@$$$$$", @"WARNING: Migrated ", client, @".\nCheck the ", [xmlFile getName], @" file in ", eepsite, @".\nYour old ", [xmlFile getName], @" file was backed up to ", [xmlFile getAbsolutePath], NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX_8)];
          jetty9success = true;
        }
      }
      continue;
    }
    JavaIoFile *baseEep = create_JavaIoFile_initWithJavaIoFile_withNSString_([ctx getBaseDir], NetI2pRouterStartupMigrateJetty_JETTY_TEMPLATE_DIR);
    if (![baseEep exists]) baseEep = create_JavaIoFile_initWithJavaIoFile_withNSString_([ctx getBaseDir], NetI2pRouterStartupMigrateJetty_JETTY_TEMPLATE_PKGDIR);
    if ([baseEep isEqual:eepsite]) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$", @"Eepsite in non-split directory ", eepsite, @", cannot migrate ", client)];
      continue;
    }
    JavaIoFile *baseContext = create_JavaIoFile_initWithJavaIoFile_withNSString_(baseEep, NetI2pRouterStartupMigrateJetty_BASE_CONTEXT);
    if (![baseContext exists]) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$", @"WARNING: Cannot find new XML file template ", baseContext, @", cannot migrate ", client)];
      continue;
    }
    NSString *newPath = JreStrcat("$C", [((JavaIoFile *) nil_chk(eepsite)) getAbsolutePath], JreLoadStatic(JavaIoFile, separatorChar));
    ok = NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(baseEep, eepsite, @"jetty.xml", @"./eepsite/", newPath);
    if (!ok) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$", @"WARNING: Failed to modify XML file ", xmlFile, @", cannot migrate ", client)];
      continue;
    }
    NetI2pRouterStartupMigrateJetty_backupAndMigrateFileWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(baseEep, eepsite, @"jetty-ssl.xml", @"./eepsite/", newPath);
    [(create_JavaIoFile_initWithJavaIoFile_withNSString_(eepsite, @"contexts")) mkdir];
    NetI2pRouterStartupMigrateJetty_backupAndMigrateFileWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(baseEep, eepsite, NetI2pRouterStartupMigrateJetty_BASE_CONTEXT, @"./eepsite/", newPath);
    NetI2pRouterStartupMigrateJetty_backupAndMigrateFileWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(baseEep, eepsite, NetI2pRouterStartupMigrateJetty_CGI_CONTEXT, @"./eepsite/", newPath);
    NetI2pRouterStartupMigrateJetty_backupAndCopyFileWithJavaIoFile_withJavaIoFile_withNSString_(baseEep, eepsite, @"jetty-rewrite.xml");
    [(create_JavaIoFile_initWithJavaIoFile_withNSString_(eepsite, @"etc")) mkdir];
    JavaIoFile *to = create_JavaIoFile_initWithJavaIoFile_withNSString_(eepsite, @"etc/realm.properties");
    if (![to exists]) NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(create_JavaIoFile_initWithJavaIoFile_withNSString_(baseEep, @"etc/realm.properties"), to);
    NetI2pRouterStartupMigrateJetty_backupAndCopyFileWithJavaIoFile_withJavaIoFile_withNSString_(baseEep, eepsite, @"etc/webdefault.xml");
    JreStrongAssign(&app->className__, NetI2pRouterStartupMigrateJetty_NEW_CLASS);
    shouldSave = true;
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$@$$$$$", @"WARNING: Migrated ", client, @"\nCheck the following files in ", eepsite, @": jetty.xml, ", NetI2pRouterStartupMigrateJetty_BASE_CONTEXT, @", and ", NetI2pRouterStartupMigrateJetty_CGI_CONTEXT, @"\nYour old jetty.xml was backed up.\nIf you modified your jetty.xml to change ports, thread limits, etc, you MUST\nedit it to change them again. Your port was reset to 7658.")];
  }
  if (shouldSave) {
    JavaIoFile *cfgFile = NetI2pRouterStartupClientAppConfig_configFileWithNetI2pI2PAppContext_(ctx);
    jboolean ok = NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_(cfgFile);
    if (ok) {
      NetI2pRouterStartupClientAppConfig_writeClientAppConfigWithNetI2pRouterRouterContext_withJavaUtilList_(ctx, apps);
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$$C$$$", @"WARNING: Migrated clients config file ", cfgFile, @" from Jetty 5/6 ", NetI2pRouterStartupMigrateJetty_OLD_CLASS, '/', NetI2pRouterStartupMigrateJetty_OLD_CLASS_6, @" to Jetty 9 ", NetI2pRouterStartupMigrateJetty_NEW_CLASS)];
    }
  }
  if (jetty9success) [((NetI2pRouterRouter *) nil_chk([ctx router])) saveConfigWithNSString:NetI2pRouterStartupMigrateJetty_PROP_JETTY9_MIGRATED withNSString:@"true"];
}

jboolean NetI2pRouterStartupMigrateJetty_migrateToJetty9WithJavaIoFile_(JavaIoFile *xmlFile) {
  NetI2pRouterStartupMigrateJetty_initialize();
  if ([((NSString *) nil_chk([((JavaIoFile *) nil_chk(xmlFile)) getName])) isEqual:@"jetty-jmx.xml"]) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$", @"ERROR: Migration  of ", xmlFile, @" file is not supported. Copy new file from $I2P/eepsite-jetty9/jetty-jmx.xml")];
    return false;
  }
  jboolean modified = false;
  JavaIoFile *eepsite = [xmlFile getParentFile];
  JavaIoFile *newFile = create_JavaIoFile_initWithJavaIoFile_withNSString_(eepsite, JreStrcat("$J$", [xmlFile getName], JavaLangSystem_currentTimeMillis(), @".tmp"));
  JavaIoFileInputStream *in = nil;
  JavaIoPrintWriter *out = nil;
  @try {
    in = create_JavaIoFileInputStream_initWithJavaIoFile_(xmlFile);
    out = create_JavaIoPrintWriter_initWithJavaIoWriter_(create_JavaIoBufferedWriter_initWithJavaIoWriter_(create_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(newFile), @"UTF-8")));
    NSString *s;
    jboolean foundQTP = false;
    jboolean foundSTP = false;
    jboolean foundETP = false;
    jboolean foundSCC = false;
    jboolean foundHC = false;
    jboolean foundSSCC = false;
    while ((s = NetI2pDataDataHelper_readLineWithJavaIoInputStream_(in)) != nil) {
      if ([((NSString *) nil_chk(s)) java_hasSuffix:@"\x0d"]) s = [s java_substring:0 endIndex:[s java_length] - 1];
      if ([((NSString *) nil_chk(s)) java_contains:@"Modified by I2P migration script for Jetty 9."] || [s java_contains:@"This configuration supports Jetty 9."] || [s java_contains:@"http://www.eclipse.org/jetty/configure_9_0.dtd"]) {
        if (!modified) break;
      }
      else if ([s java_contains:@"org.eclipse.jetty.util.thread.QueuedThreadPool"]) {
        foundQTP = true;
      }
      else if (foundQTP) {
        if (!([s java_contains:@"Modified by"] || [s java_contains:@"<Arg type=\"int\">"])) {
          [out printlnWithNSString:@"        <!-- Modified by I2P migration script for Jetty 9. Do not remove this line -->"];
          [out printlnWithNSString:@"        <Arg type=\"int\">20</Arg>     <!-- maxThreads, overridden below -->"];
          [out printlnWithNSString:@"        <Arg type=\"int\">3</Arg>      <!-- minThreads, overridden below -->"];
          [out printlnWithNSString:@"        <Arg type=\"int\">60000</Arg>  <!-- maxIdleTimeMs, overridden below -->"];
          modified = true;
        }
        foundQTP = false;
      }
      if ([s java_contains:@"<Set name=\"maxIdleTimeMs\">"]) {
        s = [s java_replace:@"<Set name=\"maxIdleTimeMs\">" withSequence:@"<Set name=\"idleTimeout\">"];
        modified = true;
      }
      else if ([s java_contains:@"<Set name=\"ThreadPool\">"]) {
        [out printlnWithNSString:@"    <!-- Modified by I2P migration script for Jetty 9. Do not remove this line -->"];
        s = [s java_replace:@"<Set name=\"ThreadPool\">" withSequence:@"<Arg>"];
        foundSTP = true;
        modified = true;
      }
      else if (foundSTP && !foundETP && [s java_contains:@"</Set>"] && ![s java_contains:@"<Set"]) {
        s = [s java_replace:@"</Set>" withSequence:@"</Arg>"];
        foundETP = true;
      }
      else if ([s java_contains:@"org.eclipse.jetty.server.nio.SelectChannelConnector"]) {
        s = [s java_replace:@"org.eclipse.jetty.server.nio.SelectChannelConnector" withSequence:@"org.eclipse.jetty.server.ServerConnector"];
        [out printlnWithNSString:@"          <!-- Modified by I2P migration script for Jetty 9. Do not remove this line -->"];
        [out printlnWithNSString:s];
        [out printlnWithNSString:@"            <Arg><Ref id=\"Server\" /></Arg>"];
        [out printlnWithNSString:@"            <Arg type=\"int\">1</Arg>     <!-- number of acceptors -->"];
        [out printlnWithNSString:@"            <Arg type=\"int\">0</Arg>     <!-- default number of selectors -->"];
        [out printlnWithNSString:@"            <Arg>"];
        [out printlnWithNSString:@"              <Array type=\"org.eclipse.jetty.server.ConnectionFactory\">    <!-- varargs so we need an array -->"];
        [out printlnWithNSString:@"                <Item>"];
        [out printlnWithNSString:@"                  <New class=\"org.eclipse.jetty.server.HttpConnectionFactory\">"];
        [out printlnWithNSString:@"                    <Arg>"];
        [out printlnWithNSString:@"                      <New class=\"org.eclipse.jetty.server.HttpConfiguration\">"];
        [out printlnWithNSString:@"                        <Set name=\"sendServerVersion\">false</Set>"];
        [out printlnWithNSString:@"                        <Set name=\"sendDateHeader\">true</Set>"];
        [out printlnWithNSString:@"                      </New>"];
        [out printlnWithNSString:@"                    </Arg>"];
        [out printlnWithNSString:@"                  </New>"];
        [out printlnWithNSString:@"                </Item>"];
        [out printlnWithNSString:@"              </Array>"];
        [out printlnWithNSString:@"            </Arg>"];
        modified = true;
        continue;
      }
      else if ([s java_contains:@"org.eclipse.jetty.http.ssl.SslContextFactory"]) {
        s = [s java_replace:@"org.eclipse.jetty.http.ssl.SslContextFactory" withSequence:@"org.eclipse.jetty.util.ssl.SslContextFactory"];
        [out printlnWithNSString:@"  <!-- Modified by I2P migration script for Jetty 9. Do not remove this line -->"];
        [out printlnWithNSString:s];
        [out printlnWithNSString:@"    <Set name=\"ExcludeCipherSuites\">"];
        [out printlnWithNSString:@"      <Array type=\"java.lang.String\">"];
        for (NSString * __strong ss in nil_chk(JreLoadStatic(NetI2pUtilI2PSSLSocketFactory, EXCLUDE_CIPHERS))) {
          [out printlnWithNSString:JreStrcat("$$$", @"        <Item>", ss, @"</Item>")];
        }
        [out printlnWithNSString:@"      </Array>"];
        [out printlnWithNSString:@"    </Set>"];
        [out printlnWithNSString:@"    <Set name=\"ExcludeProtocols\">"];
        [out printlnWithNSString:@"      <Array type=\"java.lang.String\">"];
        for (NSString * __strong ss in nil_chk(JreLoadStatic(NetI2pUtilI2PSSLSocketFactory, EXCLUDE_PROTOCOLS))) {
          [out printlnWithNSString:JreStrcat("$$$", @"        <Item>", ss, @"</Item>")];
        }
        [out printlnWithNSString:@"      </Array>"];
        [out printlnWithNSString:@"    </Set>"];
        modified = true;
        continue;
      }
      else if ([s java_contains:@"org.eclipse.jetty.server.ssl.SslSelectChannelConnector"]) {
        s = [s java_replace:@"org.eclipse.jetty.server.ssl.SslSelectChannelConnector" withSequence:@"org.eclipse.jetty.server.ServerConnector"];
        [out printlnWithNSString:@"      <!-- Modified by I2P migration script for Jetty 9. Do not remove this line -->"];
        [out printlnWithNSString:s];
        [out printlnWithNSString:@"        <Arg><Ref id=\"Server\" /></Arg>"];
        [out printlnWithNSString:@"        <Arg type=\"int\">1</Arg>     <!-- number of acceptors -->"];
        [out printlnWithNSString:@"        <Arg type=\"int\">0</Arg>     <!-- default number of selectors -->"];
        [out printlnWithNSString:@"        <Arg>"];
        [out printlnWithNSString:@"           <Array type=\"org.eclipse.jetty.server.ConnectionFactory\">    <!-- varargs so we need an array -->"];
        [out printlnWithNSString:@"              <Item>"];
        [out printlnWithNSString:@"                <New class=\"org.eclipse.jetty.server.SslConnectionFactory\">"];
        [out printlnWithNSString:@"                  <Arg><Ref id=\"sslContextFactory\" /></Arg>"];
        [out printlnWithNSString:@"                  <Arg>http/1.1</Arg>"];
        [out printlnWithNSString:@"                </New>"];
        [out printlnWithNSString:@"              </Item>"];
        [out printlnWithNSString:@"              <Item>"];
        [out printlnWithNSString:@"                <New class=\"org.eclipse.jetty.server.HttpConnectionFactory\">"];
        [out printlnWithNSString:@"                  <Arg>"];
        [out printlnWithNSString:@"                    <New class=\"org.eclipse.jetty.server.HttpConfiguration\">"];
        [out printlnWithNSString:@"                      <Set name=\"sendServerVersion\">false</Set>"];
        [out printlnWithNSString:@"                      <Set name=\"sendDateHeader\">true</Set>"];
        [out printlnWithNSString:@"                    </New>"];
        [out printlnWithNSString:@"                  </Arg>"];
        [out printlnWithNSString:@"                </New>"];
        [out printlnWithNSString:@"              </Item>"];
        [out printlnWithNSString:@"            </Array>"];
        [out printlnWithNSString:@"        </Arg>"];
        foundSSCC = true;
        modified = true;
        continue;
      }
      else if (foundSSCC && [s java_contains:@"<Set name=\"ExcludeCipherSuites\">"]) {
        do {
          s = NetI2pDataDataHelper_readLineWithJavaIoInputStream_(in);
        }
        while (s != nil && ![s java_contains:@"</Set>"]);
        modified = true;
        continue;
      }
      else if (foundSSCC && [s java_contains:@"<Ref id=\"sslContextFactory\""]) {
        modified = true;
        continue;
      }
      else if ([s java_contains:@"<Set name=\"KeyStore\">"]) {
        s = [s java_replace:@"<Set name=\"KeyStore\">" withSequence:@"<Set name=\"KeyStorePath\">"];
        modified = true;
      }
      else if ([s java_contains:@"<Set name=\"TrustStore\">"]) {
        s = [s java_replace:@"<Set name=\"TrustStore\">" withSequence:@"<Set name=\"TrustStorePath\">"];
        modified = true;
      }
      else if ([s java_contains:@"class=\"org.eclipse.jetty.deploy.providers.ContextProvider\">"]) {
        [out printlnWithNSString:@"        <!-- Modified by I2P migration script for Jetty 9. Do not remove this line -->"];
        s = [s java_replace:@"class=\"org.eclipse.jetty.deploy.providers.ContextProvider\">" withSequence:@"class=\"org.eclipse.jetty.deploy.providers.WebAppProvider\">"];
        modified = true;
      }
      else if ([s java_contains:@"<Set name=\"maxIdleTime\">"]) {
        s = [s java_replace:@"<Set name=\"maxIdleTime\">" withSequence:@"<Set name=\"idleTimeout\">"];
        modified = true;
      }
      else if ([s java_contains:@"<Set name=\"gracefulShutdown\">"]) {
        s = [s java_replace:@"<Set name=\"gracefulShutdown\">" withSequence:@"<Set name=\"stopTimeout\">"];
        modified = true;
      }
      else if ([s java_contains:@"org.eclipse.jetty.server.HttpConfiguration"]) {
        foundHC = true;
      }
      else if (!foundHC && ([s java_contains:@"<Set name=\"sendServerVersion\">"] || [s java_contains:@"<Set name=\"sendDateHeader\">"])) {
        modified = true;
        continue;
      }
      else if ([s java_contains:@"<Set name=\"Acceptors\">"] || [s java_contains:@"<Set name=\"acceptors\">"] || [s java_contains:@"<Set name=\"statsOn\">"] || [s java_contains:@"<Set name=\"confidentialPort\">"] || [s java_contains:@"<Set name=\"lowResourcesConnections\">"] || [s java_contains:@"<Set name=\"lowResourcesMaxIdleTime\">"] || [s java_contains:@"<Set name=\"useDirectBuffers\">"]) {
        modified = true;
        continue;
      }
      [out printlnWithNSString:s];
    }
  }
  @catch (JavaIoIOException *ioe) {
    if (in != nil) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$@", @"FAILED migration of ", xmlFile, @": ", ioe)];
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
  if (modified) {
    return NetI2pUtilFileUtil_renameWithJavaIoFile_withJavaIoFile_(newFile, xmlFile);
  }
  else {
    [newFile delete__];
    return true;
  }
}

jboolean NetI2pRouterStartupMigrateJetty_hasLatestJetty() {
  NetI2pRouterStartupMigrateJetty_initialize();
  if (!NetI2pRouterStartupMigrateJetty__wasChecked) {
    @try {
      NetI2pRouterStartupLoadClientAppsJob_testClientWithNSString_withJavaLangClassLoader_(NetI2pRouterStartupMigrateJetty_TEST_CLASS, nil);
      NetI2pRouterStartupMigrateJetty__hasLatestJetty = true;
    }
    @catch (JavaLangClassNotFoundException *cnfe) {
    }
    NetI2pRouterStartupMigrateJetty__wasChecked = true;
  }
  return NetI2pRouterStartupMigrateJetty__hasLatestJetty;
}

jboolean NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_(JavaIoFile *from) {
  NetI2pRouterStartupMigrateJetty_initialize();
  return NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_withNSString_(from, NetI2pRouterStartupMigrateJetty_BACKUP_SUFFIX);
}

jboolean NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_withNSString_(JavaIoFile *from, NSString *suffix) {
  NetI2pRouterStartupMigrateJetty_initialize();
  if (![((JavaIoFile *) nil_chk(from)) exists]) return true;
  JavaIoFile *to = create_JavaIoFile_initWithNSString_(JreStrcat("$$", [from getAbsolutePath], suffix));
  if ([to exists]) to = create_JavaIoFile_initWithNSString_(JreStrcat("$CJ", [to getAbsolutePath], '.', JavaLangSystem_currentTimeMillis()));
  jboolean rv = NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(from, to);
  if (rv) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$@", @"Backed up file ", from, @" to ", to)];
  else [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@$@", @"WARNING: Failed to back up file ", from, @" to ", to)];
  return rv;
}

jboolean NetI2pRouterStartupMigrateJetty_backupAndMigrateFileWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(JavaIoFile *templateDir, JavaIoFile *toDir, NSString *filename, NSString *fromString, NSString *toString) {
  NetI2pRouterStartupMigrateJetty_initialize();
  JavaIoFile *to = create_JavaIoFile_initWithJavaIoFile_withNSString_(toDir, filename);
  jboolean rv = NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_(to);
  jboolean rv2 = NetI2pRouterStartupWorkingDir_migrateJettyXmlWithJavaIoFile_withJavaIoFile_withNSString_withNSString_withNSString_(templateDir, toDir, filename, fromString, toString);
  return rv && rv2;
}

jboolean NetI2pRouterStartupMigrateJetty_backupAndCopyFileWithJavaIoFile_withJavaIoFile_withNSString_(JavaIoFile *templateDir, JavaIoFile *toDir, NSString *filename) {
  NetI2pRouterStartupMigrateJetty_initialize();
  JavaIoFile *to = create_JavaIoFile_initWithJavaIoFile_withNSString_(toDir, filename);
  jboolean rv = NetI2pRouterStartupMigrateJetty_backupFileWithJavaIoFile_(to);
  JavaIoFile *from = create_JavaIoFile_initWithJavaIoFile_withNSString_(templateDir, filename);
  jboolean rv2 = NetI2pRouterStartupWorkingDir_copyFileWithJavaIoFile_withJavaIoFile_(from, to);
  return rv && rv2;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupMigrateJetty)