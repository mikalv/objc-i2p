//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tasks/CryptoChecker.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"
#include "net/i2p/crypto/CryptoCheck.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tasks/CryptoChecker.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/SystemVersion.h"

inline NSString *NetI2pRouterTasksCryptoChecker_get_JRE6(void);
inline NSString *NetI2pRouterTasksCryptoChecker_set_JRE6(NSString *value);
static NSString *NetI2pRouterTasksCryptoChecker_JRE6 = @"http://www.oracle.com/technetwork/java/javase/downloads/index.html";
J2OBJC_STATIC_FIELD_OBJ(NetI2pRouterTasksCryptoChecker, JRE6, NSString *)

@implementation NetI2pRouterTasksCryptoChecker

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterTasksCryptoChecker_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)warnUnavailableCryptoWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTasksCryptoChecker_warnUnavailableCryptoWithNetI2pRouterRouterContext_(ctx);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pRouterTasksCryptoChecker_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(warnUnavailableCryptoWithNetI2pRouterRouterContext:);
  methods[2].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "JRE6", "LNSString;", .constantValue.asLong = 0, 0xa, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "warnUnavailableCrypto", "LNetI2pRouterRouterContext;", "main", "[LNSString;", &NetI2pRouterTasksCryptoChecker_JRE6 };
  static const J2ObjcClassInfo _NetI2pRouterTasksCryptoChecker = { "CryptoChecker", "net.i2p.router.tasks", ptrTable, methods, fields, 7, 0x1, 3, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTasksCryptoChecker;
}

@end

void NetI2pRouterTasksCryptoChecker_init(NetI2pRouterTasksCryptoChecker *self) {
  NSObject_init(self);
}

NetI2pRouterTasksCryptoChecker *new_NetI2pRouterTasksCryptoChecker_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterTasksCryptoChecker, init)
}

NetI2pRouterTasksCryptoChecker *create_NetI2pRouterTasksCryptoChecker_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterTasksCryptoChecker, init)
}

void NetI2pRouterTasksCryptoChecker_warnUnavailableCryptoWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  NetI2pRouterTasksCryptoChecker_initialize();
  if (NetI2pUtilSystemVersion_isAndroid()) return;
  jboolean unavail = false;
  NetI2pUtilLog *log = nil;
  {
    IOSObjectArray *a__ = NetI2pCryptoSigType_values();
    NetI2pCryptoSigType * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NetI2pCryptoSigType * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NetI2pCryptoSigType *t = *b__++;
      if (![((NetI2pCryptoSigType *) nil_chk(t)) isAvailable]) {
        if (!unavail) {
          unavail = true;
          if (ctx != nil) log = [((NetI2pUtilLogManager *) nil_chk([ctx logManager])) getLogWithIOSClass:NetI2pRouterTasksCryptoChecker_class_()];
        }
        NSString *s = JreStrcat("$@$", @"Crypto ", t, @" is not available");
        if (log != nil) [log logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:s];
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Warning: ", s)];
      }
    }
  }
  if (unavail) {
    NSString *s = JreStrcat("$$$$C$C$", @"Java version: ", JavaLangSystem_getPropertyWithNSString_(@"java.version"), @" OS: ", JavaLangSystem_getPropertyWithNSString_(@"os.name"), ' ', JavaLangSystem_getPropertyWithNSString_(@"os.arch"), ' ', JavaLangSystem_getPropertyWithNSString_(@"os.version"));
    if (log != nil) [log logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:s];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Warning: ", s)];
    if (!NetI2pUtilSystemVersion_isJava7()) {
      s = @"Please consider upgrading to Java 7";
      if (log != nil) [log logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:s];
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:s];
    }
    else if (NetI2pUtilSystemVersion_isJava9()) {
      s = @"Java 9 support is beta, check for Java updates";
      if (log != nil) [log logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:s];
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Warning: ", s)];
    }
    if (!NetI2pCryptoCryptoCheck_isUnlimited() && !NetI2pUtilSystemVersion_isJava9()) {
      s = @"Please consider installing the Java Cryptography Unlimited Strength Jurisdiction Policy Files from ";
      JreStrAppend(&s, "$", NetI2pRouterTasksCryptoChecker_JRE6);
      if (log != nil) [log logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:s];
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:s];
    }
    s = @"This crypto will be required in a future release";
    if (log != nil) [log logAlwaysWithInt:NetI2pUtilLog_WARN withNSString:s];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Warning: ", s)];
  }
  else if (ctx == nil) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"All crypto available"];
  }
}

void NetI2pRouterTasksCryptoChecker_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pRouterTasksCryptoChecker_initialize();
  NetI2pRouterTasksCryptoChecker_warnUnavailableCryptoWithNetI2pRouterRouterContext_(nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTasksCryptoChecker)