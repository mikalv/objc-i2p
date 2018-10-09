//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/RouterPasswordManager.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/router/Router.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/util/RouterPasswordManager.h"
#include "net/i2p/util/PasswordManager.h"

inline NSString *NetI2pRouterUtilRouterPasswordManager_get_PROP_MIGRATED(void);
static NSString *NetI2pRouterUtilRouterPasswordManager_PROP_MIGRATED = @"router.passwordManager.migrated";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilRouterPasswordManager, PROP_MIGRATED, NSString *)

inline NSString *NetI2pRouterUtilRouterPasswordManager_get_PROP_I2CP_OLD_PW(void);
static NSString *NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_PW = @"i2cp.password";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilRouterPasswordManager, PROP_I2CP_OLD_PW, NSString *)

inline NSString *NetI2pRouterUtilRouterPasswordManager_get_PROP_I2CP_OLD_USER(void);
static NSString *NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_USER = @"i2cp.username";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilRouterPasswordManager, PROP_I2CP_OLD_USER, NSString *)

inline NSString *NetI2pRouterUtilRouterPasswordManager_get_PROP_I2CP_NEW(void);
static NSString *NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_NEW = @"i2cp.auth";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilRouterPasswordManager, PROP_I2CP_NEW, NSString *)

@implementation NetI2pRouterUtilRouterPasswordManager

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterUtilRouterPasswordManager_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (jboolean)migrate {
  @synchronized(NetI2pRouterUtilRouterPasswordManager_class_()) {
    if ([((NetI2pRouterRouterContext *) nil_chk(_context_RouterPasswordManager_)) getBooleanPropertyWithNSString:NetI2pRouterUtilRouterPasswordManager_PROP_MIGRATED]) return true;
    NSString *user = [_context_RouterPasswordManager_ getPropertyWithNSString:NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_USER];
    NSString *pw = [_context_RouterPasswordManager_ getPropertyWithNSString:NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_PW];
    if (pw != nil && user != nil && [pw java_length] > 0 && [user java_length] > 0) {
      [self saveHashWithNSString:NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_NEW withNSString:user withNSString:pw];
    }
    id<JavaUtilMap> toAdd = create_JavaUtilHashMap_initWithInt_(5);
    id<JavaUtilList> toDel = create_JavaUtilArrayList_initWithInt_(5);
    [toDel addWithId:NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_USER];
    [toDel addWithId:NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_PW];
    [toAdd putWithId:NetI2pRouterUtilRouterPasswordManager_PROP_MIGRATED withId:@"true"];
    return [((NetI2pRouterRouter *) nil_chk([_context_RouterPasswordManager_ router])) saveConfigWithJavaUtilMap:toAdd withJavaUtilCollection:toDel];
  }
}

- (jboolean)saveWithNSString:(NSString *)realm
                withNSString:(NSString *)user
                withNSString:(NSString *)pw {
  return [self saveHashWithNSString:realm withNSString:user withNSString:pw];
}

- (jboolean)savePlainWithNSString:(NSString *)realm
                     withNSString:(NSString *)user
                     withNSString:(NSString *)pw {
  NSString *pfx = realm;
  if (user != nil && [user java_length] > 0) JreStrAppend(&pfx, "C$", '.', user);
  id<JavaUtilMap> toAdd = JavaUtilCollections_singletonMapWithId_withId_(JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_PW), pw);
  id<JavaUtilList> toDel = create_JavaUtilArrayList_initWithInt_(4);
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_B64)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_MD5)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_CRYPT)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_SHASH)];
  return [((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_RouterPasswordManager_)) router])) saveConfigWithJavaUtilMap:toAdd withJavaUtilCollection:toDel];
}

- (jboolean)saveB64WithNSString:(NSString *)realm
                   withNSString:(NSString *)user
                   withNSString:(NSString *)pw {
  NSString *pfx = realm;
  if (user != nil && [user java_length] > 0) JreStrAppend(&pfx, "C$", '.', user);
  NSString *b64 = NetI2pDataBase64_encodeWithByteArray_(NetI2pDataDataHelper_getUTF8WithNSString_(pw));
  id<JavaUtilMap> toAdd = JavaUtilCollections_singletonMapWithId_withId_(JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_B64), b64);
  id<JavaUtilList> toDel = create_JavaUtilArrayList_initWithInt_(4);
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_PW)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_MD5)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_CRYPT)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_SHASH)];
  return [((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_RouterPasswordManager_)) router])) saveConfigWithJavaUtilMap:toAdd withJavaUtilCollection:toDel];
}

- (jboolean)saveHashWithNSString:(NSString *)realm
                    withNSString:(NSString *)user
                    withNSString:(NSString *)pw {
  NSString *pfx = realm;
  if (user != nil && [user java_length] > 0) JreStrAppend(&pfx, "C$", '.', user);
  NSString *shash = [self createHashWithNSString:pw];
  id<JavaUtilMap> toAdd = JavaUtilCollections_singletonMapWithId_withId_(JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_SHASH), shash);
  id<JavaUtilList> toDel = create_JavaUtilArrayList_initWithInt_(4);
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_PW)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_B64)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_MD5)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_CRYPT)];
  return [((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_RouterPasswordManager_)) router])) saveConfigWithJavaUtilMap:toAdd withJavaUtilCollection:toDel];
}

- (jboolean)removeWithNSString:(NSString *)realm
                  withNSString:(NSString *)user {
  NSString *pfx = realm;
  if (user != nil && [user java_length] > 0) JreStrAppend(&pfx, "C$", '.', user);
  id<JavaUtilList> toDel = create_JavaUtilArrayList_initWithInt_(5);
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_PW)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_B64)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_MD5)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_CRYPT)];
  [toDel addWithId:JreStrcat("$$", pfx, NetI2pUtilPasswordManager_PROP_SHASH)];
  return [((NetI2pRouterRouter *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_RouterPasswordManager_)) router])) saveConfigWithJavaUtilMap:nil withJavaUtilCollection:toDel];
}

- (void)dealloc {
  RELEASE_(_context_RouterPasswordManager_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(migrate);
  methods[2].selector = @selector(saveWithNSString:withNSString:withNSString:);
  methods[3].selector = @selector(savePlainWithNSString:withNSString:withNSString:);
  methods[4].selector = @selector(saveB64WithNSString:withNSString:withNSString:);
  methods[5].selector = @selector(saveHashWithNSString:withNSString:withNSString:);
  methods[6].selector = @selector(removeWithNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_RouterPasswordManager_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x14, 8, -1, -1, -1 },
    { "PROP_MIGRATED", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "PROP_I2CP_OLD_PW", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "PROP_I2CP_OLD_USER", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "PROP_I2CP_NEW", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "save", "LNSString;LNSString;LNSString;", "savePlain", "saveB64", "saveHash", "remove", "LNSString;LNSString;", "_context", &NetI2pRouterUtilRouterPasswordManager_PROP_MIGRATED, &NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_PW, &NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_OLD_USER, &NetI2pRouterUtilRouterPasswordManager_PROP_I2CP_NEW };
  static const J2ObjcClassInfo _NetI2pRouterUtilRouterPasswordManager = { "RouterPasswordManager", "net.i2p.router.util", ptrTable, methods, fields, 7, 0x1, 7, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterUtilRouterPasswordManager;
}

@end

void NetI2pRouterUtilRouterPasswordManager_initWithNetI2pRouterRouterContext_(NetI2pRouterUtilRouterPasswordManager *self, NetI2pRouterRouterContext *ctx) {
  NetI2pUtilPasswordManager_initWithNetI2pI2PAppContext_(self, ctx);
  JreStrongAssign(&self->_context_RouterPasswordManager_, ctx);
  [self migrate];
}

NetI2pRouterUtilRouterPasswordManager *new_NetI2pRouterUtilRouterPasswordManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterUtilRouterPasswordManager, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterUtilRouterPasswordManager *create_NetI2pRouterUtilRouterPasswordManager_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterUtilRouterPasswordManager, initWithNetI2pRouterRouterContext_, ctx)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterUtilRouterPasswordManager)
