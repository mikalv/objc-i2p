//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/startup/ClientAppConfig.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/startup/ClientAppConfig.h"
#include "net/i2p/router/startup/MigrateJetty.h"
#include "net/i2p/util/SecureFileOutputStream.h"

@interface NetI2pRouterStartupClientAppConfig ()

+ (JavaUtilProperties *)getClientAppPropsWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx;

+ (id<JavaUtilList>)getClientAppsWithJavaUtilProperties:(JavaUtilProperties *)clientApps;

@end

inline jlong NetI2pRouterStartupClientAppConfig_get_DEFAULT_STARTUP_DELAY(void);
#define NetI2pRouterStartupClientAppConfig_DEFAULT_STARTUP_DELAY 120000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterStartupClientAppConfig, DEFAULT_STARTUP_DELAY, jlong)

inline jlong NetI2pRouterStartupClientAppConfig_get_I2PTUNNEL_STARTUP_DELAY(void);
#define NetI2pRouterStartupClientAppConfig_I2PTUNNEL_STARTUP_DELAY 35000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterStartupClientAppConfig, I2PTUNNEL_STARTUP_DELAY, jlong)

inline NSString *NetI2pRouterStartupClientAppConfig_get_PROP_CLIENT_CONFIG_FILENAME(void);
static NSString *NetI2pRouterStartupClientAppConfig_PROP_CLIENT_CONFIG_FILENAME = @"router.clientConfigFile";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupClientAppConfig, PROP_CLIENT_CONFIG_FILENAME, NSString *)

inline NSString *NetI2pRouterStartupClientAppConfig_get_DEFAULT_CLIENT_CONFIG_FILENAME(void);
static NSString *NetI2pRouterStartupClientAppConfig_DEFAULT_CLIENT_CONFIG_FILENAME = @"clients.config";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupClientAppConfig, DEFAULT_CLIENT_CONFIG_FILENAME, NSString *)

inline NSString *NetI2pRouterStartupClientAppConfig_get_PREFIX(void);
static NSString *NetI2pRouterStartupClientAppConfig_PREFIX = @"clientApp.";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterStartupClientAppConfig, PREFIX, NSString *)

__attribute__((unused)) static JavaUtilProperties *NetI2pRouterStartupClientAppConfig_getClientAppPropsWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx);

__attribute__((unused)) static id<JavaUtilList> NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaUtilProperties_(JavaUtilProperties *clientApps);

@implementation NetI2pRouterStartupClientAppConfig

- (instancetype)initWithNSString:(NSString *)cl
                    withNSString:(NSString *)client
                    withNSString:(NSString *)a
                        withLong:(jlong)d
                     withBoolean:(jboolean)dis {
  NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_(self, cl, client, a, d, dis);
  return self;
}

- (instancetype)initWithNSString:(NSString *)cl
                    withNSString:(NSString *)client
                    withNSString:(NSString *)a
                        withLong:(jlong)d
                     withBoolean:(jboolean)dis
                    withNSString:(NSString *)cp
                    withNSString:(NSString *)sa
                    withNSString:(NSString *)ua {
  NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_(self, cl, client, a, d, dis, cp, sa, ua);
  return self;
}

+ (JavaIoFile *)configFileWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  return NetI2pRouterStartupClientAppConfig_configFileWithNetI2pI2PAppContext_(ctx);
}

+ (JavaUtilProperties *)getClientAppPropsWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  return NetI2pRouterStartupClientAppConfig_getClientAppPropsWithNetI2pRouterRouterContext_(ctx);
}

+ (id<JavaUtilList>)getClientAppsWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  return NetI2pRouterStartupClientAppConfig_getClientAppsWithNetI2pRouterRouterContext_(ctx);
}

+ (id<JavaUtilList>)getClientAppsWithJavaIoFile:(JavaIoFile *)cfgFile {
  return NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaIoFile_(cfgFile);
}

+ (id<JavaUtilList>)getClientAppsWithJavaUtilProperties:(JavaUtilProperties *)clientApps {
  return NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaUtilProperties_(clientApps);
}

+ (void)writeClientAppConfigWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                                         withJavaUtilList:(id<JavaUtilList>)apps {
  NetI2pRouterStartupClientAppConfig_writeClientAppConfigWithNetI2pRouterRouterContext_withJavaUtilList_(ctx, apps);
}

- (void)dealloc {
  RELEASE_(className__);
  RELEASE_(clientName_);
  RELEASE_(args_);
  RELEASE_(classpath_);
  RELEASE_(stopargs_);
  RELEASE_(uninstallargs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilProperties;", 0xa, 4, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x9, 6, 5, -1, 7, -1, -1 },
    { NULL, "LJavaUtilList;", 0x9, 6, 8, -1, 9, -1, -1 },
    { NULL, "LJavaUtilList;", 0xa, 6, 10, -1, 11, -1, -1 },
    { NULL, "V", 0x9, 12, 13, -1, 14, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withNSString:withLong:withBoolean:);
  methods[1].selector = @selector(initWithNSString:withNSString:withNSString:withLong:withBoolean:withNSString:withNSString:withNSString:);
  methods[2].selector = @selector(configFileWithNetI2pI2PAppContext:);
  methods[3].selector = @selector(getClientAppPropsWithNetI2pRouterRouterContext:);
  methods[4].selector = @selector(getClientAppsWithNetI2pRouterRouterContext:);
  methods[5].selector = @selector(getClientAppsWithJavaIoFile:);
  methods[6].selector = @selector(getClientAppsWithJavaUtilProperties:);
  methods[7].selector = @selector(writeClientAppConfigWithNetI2pRouterRouterContext:withJavaUtilList:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STARTUP_DELAY", "J", .constantValue.asLong = NetI2pRouterStartupClientAppConfig_DEFAULT_STARTUP_DELAY, 0x1a, -1, -1, -1, -1 },
    { "I2PTUNNEL_STARTUP_DELAY", "J", .constantValue.asLong = NetI2pRouterStartupClientAppConfig_I2PTUNNEL_STARTUP_DELAY, 0x1a, -1, -1, -1, -1 },
    { "PROP_CLIENT_CONFIG_FILENAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "DEFAULT_CLIENT_CONFIG_FILENAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "PREFIX", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "className__", "LNSString;", .constantValue.asLong = 0, 0x1, 18, -1, -1, -1 },
    { "clientName_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "args_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "disabled_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "delay_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "classpath_", "LNSString;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "stopargs_", "LNSString;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "uninstallargs_", "LNSString;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;JZ", "LNSString;LNSString;LNSString;JZLNSString;LNSString;LNSString;", "configFile", "LNetI2pI2PAppContext;", "getClientAppProps", "LNetI2pRouterRouterContext;", "getClientApps", "(Lnet/i2p/router/RouterContext;)Ljava/util/List<Lnet/i2p/router/startup/ClientAppConfig;>;", "LJavaIoFile;", "(Ljava/io/File;)Ljava/util/List<Lnet/i2p/router/startup/ClientAppConfig;>;", "LJavaUtilProperties;", "(Ljava/util/Properties;)Ljava/util/List<Lnet/i2p/router/startup/ClientAppConfig;>;", "writeClientAppConfig", "LNetI2pRouterRouterContext;LJavaUtilList;", "(Lnet/i2p/router/RouterContext;Ljava/util/List<Lnet/i2p/router/startup/ClientAppConfig;>;)V", &NetI2pRouterStartupClientAppConfig_PROP_CLIENT_CONFIG_FILENAME, &NetI2pRouterStartupClientAppConfig_DEFAULT_CLIENT_CONFIG_FILENAME, &NetI2pRouterStartupClientAppConfig_PREFIX, "className" };
  static const J2ObjcClassInfo _NetI2pRouterStartupClientAppConfig = { "ClientAppConfig", "net.i2p.router.startup", ptrTable, methods, fields, 7, 0x1, 8, 13, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterStartupClientAppConfig;
}

@end

void NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_(NetI2pRouterStartupClientAppConfig *self, NSString *cl, NSString *client, NSString *a, jlong d, jboolean dis) {
  NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_(self, cl, client, a, d, dis, nil, nil, nil);
}

NetI2pRouterStartupClientAppConfig *new_NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_(NSString *cl, NSString *client, NSString *a, jlong d, jboolean dis) {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupClientAppConfig, initWithNSString_withNSString_withNSString_withLong_withBoolean_, cl, client, a, d, dis)
}

NetI2pRouterStartupClientAppConfig *create_NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_(NSString *cl, NSString *client, NSString *a, jlong d, jboolean dis) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupClientAppConfig, initWithNSString_withNSString_withNSString_withLong_withBoolean_, cl, client, a, d, dis)
}

void NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_(NetI2pRouterStartupClientAppConfig *self, NSString *cl, NSString *client, NSString *a, jlong d, jboolean dis, NSString *cp, NSString *sa, NSString *ua) {
  NSObject_init(self);
  JreStrongAssign(&self->className__, cl);
  JreStrongAssign(&self->clientName_, client);
  JreStrongAssign(&self->args_, a);
  self->delay_ = d;
  self->disabled_ = dis;
  JreStrongAssign(&self->classpath_, cp);
  JreStrongAssign(&self->stopargs_, sa);
  JreStrongAssign(&self->uninstallargs_, ua);
}

NetI2pRouterStartupClientAppConfig *new_NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_(NSString *cl, NSString *client, NSString *a, jlong d, jboolean dis, NSString *cp, NSString *sa, NSString *ua) {
  J2OBJC_NEW_IMPL(NetI2pRouterStartupClientAppConfig, initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_, cl, client, a, d, dis, cp, sa, ua)
}

NetI2pRouterStartupClientAppConfig *create_NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_(NSString *cl, NSString *client, NSString *a, jlong d, jboolean dis, NSString *cp, NSString *sa, NSString *ua) {
  J2OBJC_CREATE_IMPL(NetI2pRouterStartupClientAppConfig, initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_, cl, client, a, d, dis, cp, sa, ua)
}

JavaIoFile *NetI2pRouterStartupClientAppConfig_configFileWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  NetI2pRouterStartupClientAppConfig_initialize();
  NSString *clientConfigFile = [((NetI2pI2PAppContext *) nil_chk(ctx)) getPropertyWithNSString:NetI2pRouterStartupClientAppConfig_PROP_CLIENT_CONFIG_FILENAME withNSString:NetI2pRouterStartupClientAppConfig_DEFAULT_CLIENT_CONFIG_FILENAME];
  JavaIoFile *cfgFile = create_JavaIoFile_initWithNSString_(clientConfigFile);
  if (![cfgFile isAbsolute]) cfgFile = create_JavaIoFile_initWithJavaIoFile_withNSString_([ctx getConfigDir], clientConfigFile);
  return cfgFile;
}

JavaUtilProperties *NetI2pRouterStartupClientAppConfig_getClientAppPropsWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  NetI2pRouterStartupClientAppConfig_initialize();
  JavaUtilProperties *rv = create_JavaUtilProperties_init();
  JavaIoFile *cfgFile = NetI2pRouterStartupClientAppConfig_configFileWithNetI2pI2PAppContext_(ctx);
  if (![((JavaIoFile *) nil_chk(cfgFile)) exists]) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Warning - No client config file ", [cfgFile getAbsolutePath])];
    [rv putAllWithJavaUtilMap:[((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) router])) getConfigMap]];
    return rv;
  }
  @try {
    NetI2pDataDataHelper_loadPropsWithJavaUtilProperties_withJavaIoFile_(rv, cfgFile);
  }
  @catch (JavaIoIOException *ioe) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$C@", @"Error loading the client app properties from ", [cfgFile getAbsolutePath], ' ', ioe)];
  }
  return rv;
}

id<JavaUtilList> NetI2pRouterStartupClientAppConfig_getClientAppsWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  NetI2pRouterStartupClientAppConfig_initialize();
  JavaUtilProperties *clientApps = NetI2pRouterStartupClientAppConfig_getClientAppPropsWithNetI2pRouterRouterContext_(ctx);
  id<JavaUtilList> rv = NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaUtilProperties_(clientApps);
  NetI2pRouterStartupMigrateJetty_migrateWithNetI2pRouterRouterContext_withJavaUtilList_(ctx, rv);
  return rv;
}

id<JavaUtilList> NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaIoFile_(JavaIoFile *cfgFile) {
  NetI2pRouterStartupClientAppConfig_initialize();
  JavaUtilProperties *clientApps = create_JavaUtilProperties_init();
  @try {
    NetI2pDataDataHelper_loadPropsWithJavaUtilProperties_withJavaIoFile_(clientApps, cfgFile);
  }
  @catch (JavaIoIOException *ioe) {
    return JavaUtilCollections_emptyList();
  }
  return NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaUtilProperties_(clientApps);
}

id<JavaUtilList> NetI2pRouterStartupClientAppConfig_getClientAppsWithJavaUtilProperties_(JavaUtilProperties *clientApps) {
  NetI2pRouterStartupClientAppConfig_initialize();
  id<JavaUtilList> rv = create_JavaUtilArrayList_initWithInt_(8);
  jint i = 0;
  while (true) {
    NSString *className_ = [((JavaUtilProperties *) nil_chk(clientApps)) getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".main")];
    if (className_ == nil) break;
    NSString *clientName = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".name")];
    NSString *args = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".args")];
    NSString *delayStr = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".delay")];
    NSString *onBoot = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".onBoot")];
    NSString *disabled = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".startOnLoad")];
    NSString *classpath = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".classpath")];
    NSString *stopargs = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".stopargs")];
    NSString *uninstallargs = [clientApps getPropertyWithNSString:JreStrcat("$I$", NetI2pRouterStartupClientAppConfig_PREFIX, i, @".uninstallargs")];
    i++;
    jboolean dis = disabled != nil && [@"false" isEqual:disabled];
    jboolean onStartup = false;
    if (onBoot != nil) onStartup = ([@"true" isEqual:onBoot] || [@"yes" isEqual:onBoot]);
    jlong delay = onStartup ? 0 : ([className_ isEqual:@"net.i2p.i2ptunnel.TunnelControllerGroup"] ? NetI2pRouterStartupClientAppConfig_I2PTUNNEL_STARTUP_DELAY : NetI2pRouterStartupClientAppConfig_DEFAULT_STARTUP_DELAY);
    if (delayStr != nil && !onStartup) @try {
      delay = 1000 * JavaLangInteger_parseIntWithNSString_(delayStr);
    }
    @catch (JavaLangNumberFormatException *nfe) {
    }
    [rv addWithId:create_NetI2pRouterStartupClientAppConfig_initWithNSString_withNSString_withNSString_withLong_withBoolean_withNSString_withNSString_withNSString_(className_, clientName, args, delay, dis, classpath, stopargs, uninstallargs)];
  }
  return rv;
}

void NetI2pRouterStartupClientAppConfig_writeClientAppConfigWithNetI2pRouterRouterContext_withJavaUtilList_(NetI2pRouterRouterContext *ctx, id<JavaUtilList> apps) {
  NetI2pRouterStartupClientAppConfig_initialize();
  JavaIoFile *cfgFile = NetI2pRouterStartupClientAppConfig_configFileWithNetI2pI2PAppContext_(ctx);
  JavaIoFileOutputStream *fos = nil;
  @try {
    fos = create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(cfgFile);
    JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(2048);
    for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(apps)) size]; i++) {
      NetI2pRouterStartupClientAppConfig *app = [apps getWithInt:i];
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStartupClientAppConfig_PREFIX])) appendWithInt:i])) appendWithNSString:@".main="])) appendWithNSString:((NetI2pRouterStartupClientAppConfig *) nil_chk(app))->className__])) appendWithNSString:@"\n"];
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStartupClientAppConfig_PREFIX])) appendWithInt:i])) appendWithNSString:@".name="])) appendWithNSString:app->clientName_])) appendWithNSString:@"\n"];
      if (app->args_ != nil) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStartupClientAppConfig_PREFIX])) appendWithInt:i])) appendWithNSString:@".args="])) appendWithNSString:app->args_])) appendWithNSString:@"\n"];
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStartupClientAppConfig_PREFIX])) appendWithInt:i])) appendWithNSString:@".delay="])) appendWithLong:app->delay_ / 1000])) appendWithNSString:@"\n"];
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:NetI2pRouterStartupClientAppConfig_PREFIX])) appendWithInt:i])) appendWithNSString:@".startOnLoad="])) appendWithBoolean:!app->disabled_])) appendWithNSString:@"\n"];
    }
    [fos writeWithByteArray:[((NSString *) nil_chk([buf description])) java_getBytesWithCharsetName:@"UTF-8"]];
  }
  @catch (JavaIoIOException *ioe) {
  }
  @finally {
    if (fos != nil) @try {
      [fos close];
    }
    @catch (JavaIoIOException *ioe) {
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterStartupClientAppConfig)
