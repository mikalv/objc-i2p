//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/SecureFileOutputStream.java
//

#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileOutputStream.h"
#include "java/lang/Throwable.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/util/SecureFileOutputStream.h"
#include "net/i2p/util/SystemVersion.h"

inline jboolean NetI2pUtilSecureFileOutputStream_get_oneDotSix(void);
static jboolean NetI2pUtilSecureFileOutputStream_oneDotSix;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pUtilSecureFileOutputStream, oneDotSix, jboolean)

J2OBJC_INITIALIZED_DEFN(NetI2pUtilSecureFileOutputStream)

@implementation NetI2pUtilSecureFileOutputStream

- (instancetype)initWithNSString:(NSString *)file {
  NetI2pUtilSecureFileOutputStream_initWithNSString_(self, file);
  return self;
}

- (instancetype)initWithNSString:(NSString *)file
                     withBoolean:(jboolean)append {
  NetI2pUtilSecureFileOutputStream_initWithNSString_withBoolean_(self, file, append);
  return self;
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)file {
  NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(self, file);
  return self;
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)file
                       withBoolean:(jboolean)append {
  NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_withBoolean_(self, file, append);
  return self;
}

+ (jboolean)canSetPerms {
  return NetI2pUtilSecureFileOutputStream_canSetPerms();
}

+ (void)setPermsWithJavaIoFile:(JavaIoFile *)f {
  NetI2pUtilSecureFileOutputStream_setPermsWithJavaIoFile_(f);
}

- (void)dealloc {
  JreCheckFinalize(self, [NetI2pUtilSecureFileOutputStream class]);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, 1, -1, -1, -1 },
    { NULL, "Z", 0x8, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 5, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithNSString:withBoolean:);
  methods[2].selector = @selector(initWithJavaIoFile:);
  methods[3].selector = @selector(initWithJavaIoFile:withBoolean:);
  methods[4].selector = @selector(canSetPerms);
  methods[5].selector = @selector(setPermsWithJavaIoFile:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "oneDotSix", "Z", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaIoFileNotFoundException;", "LNSString;Z", "LJavaIoFile;", "LJavaIoFile;Z", "setPerms", &NetI2pUtilSecureFileOutputStream_oneDotSix };
  static const J2ObjcClassInfo _NetI2pUtilSecureFileOutputStream = { "SecureFileOutputStream", "net.i2p.util", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilSecureFileOutputStream;
}

+ (void)initialize {
  if (self == [NetI2pUtilSecureFileOutputStream class]) {
    NetI2pUtilSecureFileOutputStream_oneDotSix = NetI2pUtilSystemVersion_isJava6();
    J2OBJC_SET_INITIALIZED(NetI2pUtilSecureFileOutputStream)
  }
}

@end

void NetI2pUtilSecureFileOutputStream_initWithNSString_(NetI2pUtilSecureFileOutputStream *self, NSString *file) {
  JavaIoFileOutputStream_initWithNSString_(self, file);
  NetI2pUtilSecureFileOutputStream_setPermsWithJavaIoFile_(create_JavaIoFile_initWithNSString_(file));
}

NetI2pUtilSecureFileOutputStream *new_NetI2pUtilSecureFileOutputStream_initWithNSString_(NSString *file) {
  J2OBJC_NEW_IMPL(NetI2pUtilSecureFileOutputStream, initWithNSString_, file)
}

NetI2pUtilSecureFileOutputStream *create_NetI2pUtilSecureFileOutputStream_initWithNSString_(NSString *file) {
  J2OBJC_CREATE_IMPL(NetI2pUtilSecureFileOutputStream, initWithNSString_, file)
}

void NetI2pUtilSecureFileOutputStream_initWithNSString_withBoolean_(NetI2pUtilSecureFileOutputStream *self, NSString *file, jboolean append) {
  JavaIoFileOutputStream_initWithNSString_withBoolean_(self, file, append);
  NetI2pUtilSecureFileOutputStream_setPermsWithJavaIoFile_(create_JavaIoFile_initWithNSString_(file));
}

NetI2pUtilSecureFileOutputStream *new_NetI2pUtilSecureFileOutputStream_initWithNSString_withBoolean_(NSString *file, jboolean append) {
  J2OBJC_NEW_IMPL(NetI2pUtilSecureFileOutputStream, initWithNSString_withBoolean_, file, append)
}

NetI2pUtilSecureFileOutputStream *create_NetI2pUtilSecureFileOutputStream_initWithNSString_withBoolean_(NSString *file, jboolean append) {
  J2OBJC_CREATE_IMPL(NetI2pUtilSecureFileOutputStream, initWithNSString_withBoolean_, file, append)
}

void NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(NetI2pUtilSecureFileOutputStream *self, JavaIoFile *file) {
  JavaIoFileOutputStream_initWithJavaIoFile_(self, file);
  NetI2pUtilSecureFileOutputStream_setPermsWithJavaIoFile_(file);
}

NetI2pUtilSecureFileOutputStream *new_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(JavaIoFile *file) {
  J2OBJC_NEW_IMPL(NetI2pUtilSecureFileOutputStream, initWithJavaIoFile_, file)
}

NetI2pUtilSecureFileOutputStream *create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_(JavaIoFile *file) {
  J2OBJC_CREATE_IMPL(NetI2pUtilSecureFileOutputStream, initWithJavaIoFile_, file)
}

void NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_withBoolean_(NetI2pUtilSecureFileOutputStream *self, JavaIoFile *file, jboolean append) {
  JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(self, file, append);
  NetI2pUtilSecureFileOutputStream_setPermsWithJavaIoFile_(file);
}

NetI2pUtilSecureFileOutputStream *new_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_withBoolean_(JavaIoFile *file, jboolean append) {
  J2OBJC_NEW_IMPL(NetI2pUtilSecureFileOutputStream, initWithJavaIoFile_withBoolean_, file, append)
}

NetI2pUtilSecureFileOutputStream *create_NetI2pUtilSecureFileOutputStream_initWithJavaIoFile_withBoolean_(JavaIoFile *file, jboolean append) {
  J2OBJC_CREATE_IMPL(NetI2pUtilSecureFileOutputStream, initWithJavaIoFile_withBoolean_, file, append)
}

jboolean NetI2pUtilSecureFileOutputStream_canSetPerms() {
  NetI2pUtilSecureFileOutputStream_initialize();
  if (!NetI2pUtilSecureFileOutputStream_oneDotSix) return false;
  NetI2pI2PAppContext *ctx = NetI2pI2PAppContext_getCurrentContext();
  if (ctx == nil) return true;
  return ![ctx getBooleanPropertyWithNSString:@"i2p.insecureFiles"];
}

void NetI2pUtilSecureFileOutputStream_setPermsWithJavaIoFile_(JavaIoFile *f) {
  NetI2pUtilSecureFileOutputStream_initialize();
  if (!NetI2pUtilSecureFileOutputStream_canSetPerms()) return;
  @try {
    [((JavaIoFile *) nil_chk(f)) setReadableWithBoolean:false withBoolean:false];
    [f setReadableWithBoolean:true withBoolean:true];
    [f setWritableWithBoolean:false withBoolean:false];
    [f setWritableWithBoolean:true withBoolean:true];
  }
  @catch (JavaLangThrowable *t) {
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilSecureFileOutputStream)