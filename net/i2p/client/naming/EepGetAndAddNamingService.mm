//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/EepGetAndAddNamingService.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/FileOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/Deprecated.h"
#include "java/lang/System.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Locale.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/client/naming/EepGetAndAddNamingService.h"
#include "net/i2p/client/naming/EepGetNamingService.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Destination.h"

inline NSString *NetI2pClientNamingEepGetAndAddNamingService_get_DEFAULT_HOSTS_FILE(void);
static NSString *NetI2pClientNamingEepGetAndAddNamingService_DEFAULT_HOSTS_FILE = @"hosts.txt";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingEepGetAndAddNamingService, DEFAULT_HOSTS_FILE, NSString *)

__attribute__((unused)) static IOSObjectArray *NetI2pClientNamingEepGetAndAddNamingService__Annotations$0(void);

@implementation NetI2pClientNamingEepGetAndAddNamingService

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (NetI2pDataDestination *)lookupWithNSString:(NSString *)hostname {
  NetI2pDataDestination *rv = [super lookupWithNSString:hostname];
  if (rv != nil) {
    hostname = [((NSString *) nil_chk(hostname)) java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)];
    if ([((NSString *) nil_chk(hostname)) java_length] < 516 && [hostname java_hasSuffix:@".i2p"] && ![hostname java_hasSuffix:@".b32.i2p"]) {
      JavaIoFile *f = create_JavaIoFile_initWithJavaIoFile_withNSString_([((NetI2pI2PAppContext *) nil_chk(_context_)) getRouterDir], NetI2pClientNamingEepGetAndAddNamingService_DEFAULT_HOSTS_FILE);
      if (([f exists]) && ([f canWrite])) {
        @synchronized(self) {
          JavaIoFileOutputStream *fos = nil;
          @try {
            fos = create_JavaIoFileOutputStream_initWithJavaIoFile_withBoolean_(f, true);
            NSString *line = JreStrcat("$C$$", hostname, '=', [rv toBase64], JavaLangSystem_getPropertyWithNSString_(@"line.separator"));
            [fos writeWithByteArray:NetI2pDataDataHelper_getASCIIWithNSString_(line)];
          }
          @catch (JavaIoIOException *ioe) {
            [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$@", @"Error appending: ", ioe)];
          }
          @finally {
            if (fos != nil) @try {
              [fos close];
            }
            @catch (JavaIoIOException *cioe) {
            }
          }
        }
      }
    }
  }
  return rv;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(lookupWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_HOSTS_FILE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "lookup", "LNSString;", &NetI2pClientNamingEepGetAndAddNamingService_DEFAULT_HOSTS_FILE, (void *)&NetI2pClientNamingEepGetAndAddNamingService__Annotations$0 };
  static const J2ObjcClassInfo _NetI2pClientNamingEepGetAndAddNamingService = { "EepGetAndAddNamingService", "net.i2p.client.naming", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, 4 };
  return &_NetI2pClientNamingEepGetAndAddNamingService;
}

@end

void NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(NetI2pClientNamingEepGetAndAddNamingService *self, NetI2pI2PAppContext *context) {
  NetI2pClientNamingEepGetNamingService_initWithNetI2pI2PAppContext_(self, context);
}

NetI2pClientNamingEepGetAndAddNamingService *new_NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pClientNamingEepGetAndAddNamingService, initWithNetI2pI2PAppContext_, context)
}

NetI2pClientNamingEepGetAndAddNamingService *create_NetI2pClientNamingEepGetAndAddNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pClientNamingEepGetAndAddNamingService, initWithNetI2pI2PAppContext_, context)
}

IOSObjectArray *NetI2pClientNamingEepGetAndAddNamingService__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientNamingEepGetAndAddNamingService)
