//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/SystemVersion.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/lang/Runtime.h"
#include "java/lang/System.h"
#include "java/lang/reflect/Field.h"
#include "java/util/TimeZone.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/util/NativeBigInteger.h"
#include "net/i2p/util/SystemVersion.h"
#include "net/i2p/util/VersionComparator.h"

inline jboolean NetI2pUtilSystemVersion_get__isWin(void);
static jboolean NetI2pUtilSystemVersion__isWin;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isWin, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isMac(void);
static jboolean NetI2pUtilSystemVersion__isMac;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isMac, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isArm(void);
static jboolean NetI2pUtilSystemVersion__isArm;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isArm, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isX86(void);
static jboolean NetI2pUtilSystemVersion__isX86;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isX86, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isGentoo(void);
static jboolean NetI2pUtilSystemVersion__isGentoo;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isGentoo, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isAndroid(void);
static jboolean NetI2pUtilSystemVersion__isAndroid;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isAndroid, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isApache(void);
static jboolean NetI2pUtilSystemVersion__isApache;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isApache, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isGNU(void);
static jboolean NetI2pUtilSystemVersion__isGNU;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isGNU, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isOpenJDK(void);
static jboolean NetI2pUtilSystemVersion__isOpenJDK;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isOpenJDK, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__is64(void);
static jboolean NetI2pUtilSystemVersion__is64;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _is64, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__hasWrapper(void);
static jboolean NetI2pUtilSystemVersion__hasWrapper;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _hasWrapper, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isLinuxService(void);
static jboolean NetI2pUtilSystemVersion__isLinuxService;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isLinuxService, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__isSlow(void);
static jboolean NetI2pUtilSystemVersion__isSlow;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _isSlow, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__oneDotSix(void);
static jboolean NetI2pUtilSystemVersion__oneDotSix;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _oneDotSix, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__oneDotSeven(void);
static jboolean NetI2pUtilSystemVersion__oneDotSeven;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _oneDotSeven, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__oneDotEight(void);
static jboolean NetI2pUtilSystemVersion__oneDotEight;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _oneDotEight, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__oneDotNine(void);
static jboolean NetI2pUtilSystemVersion__oneDotNine;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _oneDotNine, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__oneDotTen(void);
static jboolean NetI2pUtilSystemVersion__oneDotTen;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _oneDotTen, jboolean)

inline jboolean NetI2pUtilSystemVersion_get__oneDotEleven(void);
static jboolean NetI2pUtilSystemVersion__oneDotEleven;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _oneDotEleven, jboolean)

inline jint NetI2pUtilSystemVersion_get__androidSDK(void);
static jint NetI2pUtilSystemVersion__androidSDK;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSystemVersion, _androidSDK, jint)

J2OBJC_INITIALIZED_DEFN(NetI2pUtilSystemVersion)

NSString *NetI2pUtilSystemVersion_DAEMON_USER = @"i2psvc";
NSString *NetI2pUtilSystemVersion_GENTOO_USER = @"i2p";

@implementation NetI2pUtilSystemVersion

+ (NSString *)DAEMON_USER {
  return NetI2pUtilSystemVersion_DAEMON_USER;
}

+ (NSString *)GENTOO_USER {
  return NetI2pUtilSystemVersion_GENTOO_USER;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pUtilSystemVersion_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jboolean)isWindows {
  return NetI2pUtilSystemVersion_isWindows();
}

+ (jboolean)isMac {
  return NetI2pUtilSystemVersion_isMac();
}

+ (jboolean)isAndroid {
  return NetI2pUtilSystemVersion_isAndroid();
}

+ (jboolean)isApache {
  return NetI2pUtilSystemVersion_isApache();
}

+ (jboolean)isGNU {
  return NetI2pUtilSystemVersion_isGNU();
}

+ (jboolean)isGentoo {
  return NetI2pUtilSystemVersion_isGentoo();
}

+ (jboolean)isOpenJDK {
  return NetI2pUtilSystemVersion_isOpenJDK();
}

+ (jboolean)isARM {
  return NetI2pUtilSystemVersion_isARM();
}

+ (jboolean)isX86 {
  return NetI2pUtilSystemVersion_isX86();
}

+ (jboolean)isSlow {
  return NetI2pUtilSystemVersion_isSlow();
}

+ (jboolean)isJava6 {
  return NetI2pUtilSystemVersion_isJava6();
}

+ (jboolean)isJava7 {
  return NetI2pUtilSystemVersion_isJava7();
}

+ (jboolean)isJava8 {
  return NetI2pUtilSystemVersion_isJava8();
}

+ (jboolean)isJava9 {
  return NetI2pUtilSystemVersion_isJava9();
}

+ (jboolean)isJava10 {
  return NetI2pUtilSystemVersion_isJava10();
}

+ (jboolean)isJava11 {
  return NetI2pUtilSystemVersion_isJava11();
}

+ (jboolean)is64Bit {
  return NetI2pUtilSystemVersion_is64Bit();
}

+ (jboolean)isLinuxService {
  return NetI2pUtilSystemVersion_isLinuxService();
}

+ (jint)getAndroidVersion {
  return NetI2pUtilSystemVersion_getAndroidVersion();
}

+ (jboolean)hasWrapper {
  return NetI2pUtilSystemVersion_hasWrapper();
}

+ (jlong)getMaxMemory {
  return NetI2pUtilSystemVersion_getMaxMemory();
}

+ (jint)getCores {
  return NetI2pUtilSystemVersion_getCores();
}

+ (JavaUtilTimeZone *)getSystemTimeZone {
  return NetI2pUtilSystemVersion_getSystemTimeZone();
}

+ (JavaUtilTimeZone *)getSystemTimeZoneWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  return NetI2pUtilSystemVersion_getSystemTimeZoneWithNetI2pI2PAppContext_(ctx);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pUtilSystemVersion_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilTimeZone;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilTimeZone;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(isWindows);
  methods[2].selector = @selector(isMac);
  methods[3].selector = @selector(isAndroid);
  methods[4].selector = @selector(isApache);
  methods[5].selector = @selector(isGNU);
  methods[6].selector = @selector(isGentoo);
  methods[7].selector = @selector(isOpenJDK);
  methods[8].selector = @selector(isARM);
  methods[9].selector = @selector(isX86);
  methods[10].selector = @selector(isSlow);
  methods[11].selector = @selector(isJava6);
  methods[12].selector = @selector(isJava7);
  methods[13].selector = @selector(isJava8);
  methods[14].selector = @selector(isJava9);
  methods[15].selector = @selector(isJava10);
  methods[16].selector = @selector(isJava11);
  methods[17].selector = @selector(is64Bit);
  methods[18].selector = @selector(isLinuxService);
  methods[19].selector = @selector(getAndroidVersion);
  methods[20].selector = @selector(hasWrapper);
  methods[21].selector = @selector(getMaxMemory);
  methods[22].selector = @selector(getCores);
  methods[23].selector = @selector(getSystemTimeZone);
  methods[24].selector = @selector(getSystemTimeZoneWithNetI2pI2PAppContext:);
  methods[25].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DAEMON_USER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 4, -1, -1 },
    { "GENTOO_USER", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "_isWin", "Z", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "_isMac", "Z", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "_isArm", "Z", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "_isX86", "Z", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "_isGentoo", "Z", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "_isAndroid", "Z", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "_isApache", "Z", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "_isGNU", "Z", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "_isOpenJDK", "Z", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "_is64", "Z", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
    { "_hasWrapper", "Z", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "_isLinuxService", "Z", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "_isSlow", "Z", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "_oneDotSix", "Z", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "_oneDotSeven", "Z", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "_oneDotEight", "Z", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
    { "_oneDotNine", "Z", .constantValue.asLong = 0, 0x1a, -1, 22, -1, -1 },
    { "_oneDotTen", "Z", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "_oneDotEleven", "Z", .constantValue.asLong = 0, 0x1a, -1, 24, -1, -1 },
    { "_androidSDK", "I", .constantValue.asLong = 0, 0x1a, -1, 25, -1, -1 },
  };
  static const void *ptrTable[] = { "getSystemTimeZone", "LNetI2pI2PAppContext;", "main", "[LNSString;", &NetI2pUtilSystemVersion_DAEMON_USER, &NetI2pUtilSystemVersion_GENTOO_USER, &NetI2pUtilSystemVersion__isWin, &NetI2pUtilSystemVersion__isMac, &NetI2pUtilSystemVersion__isArm, &NetI2pUtilSystemVersion__isX86, &NetI2pUtilSystemVersion__isGentoo, &NetI2pUtilSystemVersion__isAndroid, &NetI2pUtilSystemVersion__isApache, &NetI2pUtilSystemVersion__isGNU, &NetI2pUtilSystemVersion__isOpenJDK, &NetI2pUtilSystemVersion__is64, &NetI2pUtilSystemVersion__hasWrapper, &NetI2pUtilSystemVersion__isLinuxService, &NetI2pUtilSystemVersion__isSlow, &NetI2pUtilSystemVersion__oneDotSix, &NetI2pUtilSystemVersion__oneDotSeven, &NetI2pUtilSystemVersion__oneDotEight, &NetI2pUtilSystemVersion__oneDotNine, &NetI2pUtilSystemVersion__oneDotTen, &NetI2pUtilSystemVersion__oneDotEleven, &NetI2pUtilSystemVersion__androidSDK };
  static const J2ObjcClassInfo _NetI2pUtilSystemVersion = { "SystemVersion", "net.i2p.util", ptrTable, methods, fields, 7, 0x401, 26, 22, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilSystemVersion;
}

+ (void)initialize {
  if (self == [NetI2pUtilSystemVersion class]) {
    NetI2pUtilSystemVersion__isWin = [((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.name"))) java_hasPrefix:@"Win"];
    NetI2pUtilSystemVersion__isMac = [((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.name"))) java_hasPrefix:@"Mac"];
    NetI2pUtilSystemVersion__isArm = [((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.arch"))) java_hasPrefix:@"arm"];
    NetI2pUtilSystemVersion__isX86 = ([((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.arch"))) java_contains:@"86"] || [((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.arch"))) isEqual:@"amd64"]);
    NetI2pUtilSystemVersion__isGentoo = ([((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.version"))) java_contains:@"gentoo"] || [((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.version"))) java_contains:@"hardened"]);
    NetI2pUtilSystemVersion__hasWrapper = (JavaLangSystem_getPropertyWithNSString_(@"wrapper.version") != nil);
    {
      jboolean is64 = [@"64" isEqual:JavaLangSystem_getPropertyWithNSString_(@"sun.arch.data.model")] || [((NSString *) nil_chk(JavaLangSystem_getPropertyWithNSString_(@"os.arch"))) java_contains:@"64"];
      if (NetI2pUtilSystemVersion__isWin && !is64) {
        NSString *arch = JavaLangSystem_getenvWithNSString_(@"PROCESSOR_ARCHITECTURE");
        NSString *wow64Arch = JavaLangSystem_getenvWithNSString_(@"PROCESSOR_ARCHITEW6432");
        is64 = ((arch != nil && [arch java_hasSuffix:@"64"]) || (wow64Arch != nil && [wow64Arch java_hasSuffix:@"64"]));
      }
      NetI2pUtilSystemVersion__is64 = is64;
      NSString *vendor = JavaLangSystem_getPropertyWithNSString_(@"java.vendor");
      NetI2pUtilSystemVersion__isAndroid = [((NSString *) nil_chk(vendor)) java_contains:@"Android"];
      NetI2pUtilSystemVersion__isApache = [vendor java_hasPrefix:@"Apache"];
      NetI2pUtilSystemVersion__isGNU = ([vendor java_hasPrefix:@"GNU Classpath"] || [vendor java_hasPrefix:@"Free Software Foundation"]);
      NSString *runtime = JavaLangSystem_getPropertyWithNSString_(@"java.runtime.name");
      NetI2pUtilSystemVersion__isOpenJDK = (runtime != nil && [runtime java_contains:@"OpenJDK"]);
      NetI2pUtilSystemVersion__isLinuxService = (!NetI2pUtilSystemVersion__isWin && !NetI2pUtilSystemVersion__isMac && !NetI2pUtilSystemVersion__isAndroid && ([((NSString *) nil_chk(NetI2pUtilSystemVersion_DAEMON_USER)) isEqual:JavaLangSystem_getPropertyWithNSString_(@"user.name")] || (NetI2pUtilSystemVersion__isGentoo && [((NSString *) nil_chk(NetI2pUtilSystemVersion_GENTOO_USER)) isEqual:JavaLangSystem_getPropertyWithNSString_(@"user.name")])));
      NetI2pUtilSystemVersion__isSlow = (NetI2pUtilSystemVersion__isAndroid || NetI2pUtilSystemVersion__isApache || NetI2pUtilSystemVersion__isArm || NetI2pUtilSystemVersion__isGNU || NetI2pUtilSystemVersion_getMaxMemory() < 48 * 1024 * 1024LL);
      jint sdk = 0;
      if (NetI2pUtilSystemVersion__isAndroid) {
        @try {
          IOSClass *ver = IOSClass_forName_initialize_classLoader_(@"android.os.Build$VERSION", true, JavaLangClassLoader_getSystemClassLoader());
          JavaLangReflectField *field = [((IOSClass *) nil_chk(ver)) getField:@"SDK_INT"];
          sdk = [((JavaLangReflectField *) nil_chk(field)) getIntWithId:nil];
        }
        @catch (JavaLangException *e) {
        }
      }
      NetI2pUtilSystemVersion__androidSDK = sdk;
      if (NetI2pUtilSystemVersion__isAndroid) {
        NetI2pUtilSystemVersion__oneDotSix = (NetI2pUtilSystemVersion__androidSDK >= 9);
        NetI2pUtilSystemVersion__oneDotSeven = (NetI2pUtilSystemVersion__androidSDK >= 19);
        NetI2pUtilSystemVersion__oneDotEight = false;
        NetI2pUtilSystemVersion__oneDotNine = false;
        NetI2pUtilSystemVersion__oneDotTen = false;
        NetI2pUtilSystemVersion__oneDotEleven = false;
      }
      else {
        NSString *version_ = JavaLangSystem_getPropertyWithNSString_(@"java.version");
        if (![((NSString *) nil_chk(version_)) java_hasPrefix:@"1."]) version_ = JreStrcat("$$", @"1.", version_);
        NetI2pUtilSystemVersion__oneDotSix = (NetI2pUtilVersionComparator_compWithNSString_withNSString_(version_, @"1.6") >= 0);
        NetI2pUtilSystemVersion__oneDotSeven = (NetI2pUtilSystemVersion__oneDotSix && NetI2pUtilVersionComparator_compWithNSString_withNSString_(version_, @"1.7") >= 0);
        NetI2pUtilSystemVersion__oneDotEight = (NetI2pUtilSystemVersion__oneDotSeven && NetI2pUtilVersionComparator_compWithNSString_withNSString_(version_, @"1.8") >= 0);
        NetI2pUtilSystemVersion__oneDotNine = (NetI2pUtilSystemVersion__oneDotEight && NetI2pUtilVersionComparator_compWithNSString_withNSString_(version_, @"1.9") >= 0);
        NetI2pUtilSystemVersion__oneDotTen = (NetI2pUtilSystemVersion__oneDotNine && NetI2pUtilVersionComparator_compWithNSString_withNSString_(version_, @"1.10") >= 0);
        NetI2pUtilSystemVersion__oneDotEleven = (NetI2pUtilSystemVersion__oneDotTen && NetI2pUtilVersionComparator_compWithNSString_withNSString_(version_, @"1.11") >= 0);
      }
    }
    J2OBJC_SET_INITIALIZED(NetI2pUtilSystemVersion)
  }
}

@end

void NetI2pUtilSystemVersion_init(NetI2pUtilSystemVersion *self) {
  NSObject_init(self);
}

jboolean NetI2pUtilSystemVersion_isWindows() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isWin;
}

jboolean NetI2pUtilSystemVersion_isMac() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isMac;
}

jboolean NetI2pUtilSystemVersion_isAndroid() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isAndroid;
}

jboolean NetI2pUtilSystemVersion_isApache() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isApache || NetI2pUtilSystemVersion__isAndroid;
}

jboolean NetI2pUtilSystemVersion_isGNU() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isGNU;
}

jboolean NetI2pUtilSystemVersion_isGentoo() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isGentoo;
}

jboolean NetI2pUtilSystemVersion_isOpenJDK() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isOpenJDK;
}

jboolean NetI2pUtilSystemVersion_isARM() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isArm;
}

jboolean NetI2pUtilSystemVersion_isX86() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isX86;
}

jboolean NetI2pUtilSystemVersion_isSlow() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isSlow || !NetI2pUtilNativeBigInteger_isNative();
}

jboolean NetI2pUtilSystemVersion_isJava6() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__oneDotSix;
}

jboolean NetI2pUtilSystemVersion_isJava7() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__oneDotSeven;
}

jboolean NetI2pUtilSystemVersion_isJava8() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__oneDotEight;
}

jboolean NetI2pUtilSystemVersion_isJava9() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__oneDotNine;
}

jboolean NetI2pUtilSystemVersion_isJava10() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__oneDotTen;
}

jboolean NetI2pUtilSystemVersion_isJava11() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__oneDotEleven;
}

jboolean NetI2pUtilSystemVersion_is64Bit() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__is64;
}

jboolean NetI2pUtilSystemVersion_isLinuxService() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__isLinuxService;
}

jint NetI2pUtilSystemVersion_getAndroidVersion() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__androidSDK;
}

jboolean NetI2pUtilSystemVersion_hasWrapper() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion__hasWrapper;
}

jlong NetI2pUtilSystemVersion_getMaxMemory() {
  NetI2pUtilSystemVersion_initialize();
  jlong maxMemory = [((JavaLangRuntime *) nil_chk(JavaLangRuntime_getRuntime())) maxMemory];
  if (maxMemory >= JavaLangLong_MAX_VALUE / 2) maxMemory = 96 * 1024 * 1024l;
  return maxMemory;
}

jint NetI2pUtilSystemVersion_getCores() {
  NetI2pUtilSystemVersion_initialize();
  return [((JavaLangRuntime *) nil_chk(JavaLangRuntime_getRuntime())) availableProcessors];
}

JavaUtilTimeZone *NetI2pUtilSystemVersion_getSystemTimeZone() {
  NetI2pUtilSystemVersion_initialize();
  return NetI2pUtilSystemVersion_getSystemTimeZoneWithNetI2pI2PAppContext_(NetI2pI2PAppContext_getGlobalContext());
}

JavaUtilTimeZone *NetI2pUtilSystemVersion_getSystemTimeZoneWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  NetI2pUtilSystemVersion_initialize();
  NSString *systemTimeZone = [((NetI2pI2PAppContext *) nil_chk(ctx)) getPropertyWithNSString:@"i2p.systemTimeZone"];
  if (systemTimeZone != nil) return JavaUtilTimeZone_getTimeZoneWithNSString_(systemTimeZone);
  return JavaUtilTimeZone_getDefault();
}

void NetI2pUtilSystemVersion_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pUtilSystemVersion_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"64 bit   : ", NetI2pUtilSystemVersion_is64Bit())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Java 6   : ", NetI2pUtilSystemVersion_isJava6())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Java 7   : ", NetI2pUtilSystemVersion_isJava7())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Java 8   : ", NetI2pUtilSystemVersion_isJava8())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Java 9   : ", NetI2pUtilSystemVersion_isJava9())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Java 10  : ", NetI2pUtilSystemVersion_isJava10())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Java 11  : ", NetI2pUtilSystemVersion_isJava11())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Android  : ", NetI2pUtilSystemVersion_isAndroid())];
  if (NetI2pUtilSystemVersion_isAndroid()) [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"  Version: ", NetI2pUtilSystemVersion_getAndroidVersion())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Apache   : ", NetI2pUtilSystemVersion_isApache())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"ARM      : ", NetI2pUtilSystemVersion_isARM())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"Cores    : ", NetI2pUtilSystemVersion_getCores())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Gentoo   : ", NetI2pUtilSystemVersion_isGentoo())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"GNU      : ", NetI2pUtilSystemVersion_isGNU())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Linux Svc: ", NetI2pUtilSystemVersion_isLinuxService())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Mac      : ", NetI2pUtilSystemVersion_isMac())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$J", @"Max mem  : ", NetI2pUtilSystemVersion_getMaxMemory())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"OpenJDK  : ", NetI2pUtilSystemVersion_isOpenJDK())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Slow     : ", NetI2pUtilSystemVersion_isSlow())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Windows  : ", NetI2pUtilSystemVersion_isWindows())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"Wrapper  : ", NetI2pUtilSystemVersion_hasWrapper())];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"x86      : ", NetI2pUtilSystemVersion_isX86())];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilSystemVersion)
