//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/DummyNamingService.java
//

#include "J2ObjC_source.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/client/I2PSessionException.h"
#include "net/i2p/client/naming/DummyNamingService.h"
#include "net/i2p/client/naming/LookupDest.h"
#include "net/i2p/client/naming/NamingService.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/util/LHMCache.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/SystemVersion.h"

inline id<JavaUtilMap> NetI2pClientNamingDummyNamingService_get__cache(void);
static id<JavaUtilMap> NetI2pClientNamingDummyNamingService__cache;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingDummyNamingService, _cache, id<JavaUtilMap>)

J2OBJC_INITIALIZED_DEFN(NetI2pClientNamingDummyNamingService)

NSString *NetI2pClientNamingDummyNamingService_PROP_B32 = @"i2p.naming.hostsTxt.useB32";
jint NetI2pClientNamingDummyNamingService_CACHE_MAX_SIZE;

@implementation NetI2pClientNamingDummyNamingService

+ (jint)BASE32_HASH_LENGTH {
  return NetI2pClientNamingDummyNamingService_BASE32_HASH_LENGTH;
}

+ (NSString *)PROP_B32 {
  return NetI2pClientNamingDummyNamingService_PROP_B32;
}

+ (jint)CACHE_MAX_SIZE {
  return NetI2pClientNamingDummyNamingService_CACHE_MAX_SIZE;
}

+ (jint)DEST_SIZE {
  return NetI2pClientNamingDummyNamingService_DEST_SIZE;
}

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context {
  NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(self, context);
  return self;
}

- (NetI2pDataDestination *)lookupWithNSString:(NSString *)hostname
                       withJavaUtilProperties:(JavaUtilProperties *)lookupOptions
                       withJavaUtilProperties:(JavaUtilProperties *)storedOptions {
  NetI2pDataDestination *d = NetI2pClientNamingDummyNamingService_getCacheWithNSString_(hostname);
  if (d != nil) return d;
  if ([((NSString *) nil_chk(hostname)) java_length] >= 516) {
    d = [self lookupBase64WithNSString:hostname];
    if (d != nil) NetI2pClientNamingDummyNamingService_putCacheWithNSString_withNetI2pDataDestination_(hostname, d);
    return d;
  }
  if ([hostname java_length] == NetI2pClientNamingDummyNamingService_BASE32_HASH_LENGTH + 8 && [((NSString *) nil_chk([hostname java_lowercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, US)])) java_hasSuffix:@".b32.i2p"] && [((NetI2pI2PAppContext *) nil_chk(_context_)) getBooleanPropertyDefaultTrueWithNSString:NetI2pClientNamingDummyNamingService_PROP_B32]) {
    @try {
      d = NetI2pClientNamingLookupDest_lookupBase32HashWithNetI2pI2PAppContext_withNSString_(_context_, [hostname java_substring:0 endIndex:NetI2pClientNamingDummyNamingService_BASE32_HASH_LENGTH]);
      if (d != nil) {
        NetI2pClientNamingDummyNamingService_putCacheWithNSString_withNetI2pDataDestination_(hostname, d);
        return d;
      }
    }
    @catch (NetI2pClientI2PSessionException *i2pse) {
      [((NetI2pUtilLog *) nil_chk(_log_)) warnWithNSString:@"couldn't lookup b32" withJavaLangThrowable:i2pse];
    }
  }
  return nil;
}

+ (void)putCacheWithNSString:(NSString *)s
   withNetI2pDataDestination:(NetI2pDataDestination *)d {
  NetI2pClientNamingDummyNamingService_putCacheWithNSString_withNetI2pDataDestination_(s, d);
}

+ (NetI2pDataDestination *)getCacheWithNSString:(NSString *)s {
  return NetI2pClientNamingDummyNamingService_getCacheWithNSString_(s);
}

+ (void)removeCacheWithNSString:(NSString *)s {
  NetI2pClientNamingDummyNamingService_removeCacheWithNSString_(s);
}

+ (void)clearCache {
  NetI2pClientNamingDummyNamingService_clearCache();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0xc, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0xc, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0xc, 7, 6, -1, -1, -1, -1 },
    { NULL, "V", 0xc, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:);
  methods[1].selector = @selector(lookupWithNSString:withJavaUtilProperties:withJavaUtilProperties:);
  methods[2].selector = @selector(putCacheWithNSString:withNetI2pDataDestination:);
  methods[3].selector = @selector(getCacheWithNSString:);
  methods[4].selector = @selector(removeCacheWithNSString:);
  methods[5].selector = @selector(clearCache);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BASE32_HASH_LENGTH", "I", .constantValue.asInt = NetI2pClientNamingDummyNamingService_BASE32_HASH_LENGTH, 0x1c, -1, -1, -1, -1 },
    { "PROP_B32", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 8, -1, -1 },
    { "CACHE_MAX_SIZE", "I", .constantValue.asLong = 0, 0x1c, -1, 9, -1, -1 },
    { "DEST_SIZE", "I", .constantValue.asInt = NetI2pClientNamingDummyNamingService_DEST_SIZE, 0x19, -1, -1, -1, -1 },
    { "_cache", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 10, 11, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;", "lookup", "LNSString;LJavaUtilProperties;LJavaUtilProperties;", "putCache", "LNSString;LNetI2pDataDestination;", "getCache", "LNSString;", "removeCache", &NetI2pClientNamingDummyNamingService_PROP_B32, &NetI2pClientNamingDummyNamingService_CACHE_MAX_SIZE, &NetI2pClientNamingDummyNamingService__cache, "Ljava/util/Map<Ljava/lang/String;Lnet/i2p/data/Destination;>;" };
  static const J2ObjcClassInfo _NetI2pClientNamingDummyNamingService = { "DummyNamingService", "net.i2p.client.naming", ptrTable, methods, fields, 7, 0x1, 6, 5, -1, -1, -1, -1, -1 };
  return &_NetI2pClientNamingDummyNamingService;
}

+ (void)initialize {
  if (self == [NetI2pClientNamingDummyNamingService class]) {
    NetI2pClientNamingDummyNamingService_CACHE_MAX_SIZE = NetI2pUtilSystemVersion_isAndroid() ? 32 : 128;
    JreStrongAssignAndConsume(&NetI2pClientNamingDummyNamingService__cache, new_NetI2pUtilLHMCache_initWithInt_(NetI2pClientNamingDummyNamingService_CACHE_MAX_SIZE));
    J2OBJC_SET_INITIALIZED(NetI2pClientNamingDummyNamingService)
  }
}

@end

void NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(NetI2pClientNamingDummyNamingService *self, NetI2pI2PAppContext *context) {
  NetI2pClientNamingNamingService_initWithNetI2pI2PAppContext_(self, context);
}

NetI2pClientNamingDummyNamingService *new_NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_NEW_IMPL(NetI2pClientNamingDummyNamingService, initWithNetI2pI2PAppContext_, context)
}

NetI2pClientNamingDummyNamingService *create_NetI2pClientNamingDummyNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) {
  J2OBJC_CREATE_IMPL(NetI2pClientNamingDummyNamingService, initWithNetI2pI2PAppContext_, context)
}

void NetI2pClientNamingDummyNamingService_putCacheWithNSString_withNetI2pDataDestination_(NSString *s, NetI2pDataDestination *d) {
  NetI2pClientNamingDummyNamingService_initialize();
  if (d == nil) return;
  @synchronized(NetI2pClientNamingDummyNamingService__cache) {
    [((id<JavaUtilMap>) nil_chk(NetI2pClientNamingDummyNamingService__cache)) putWithId:s withId:d];
  }
}

NetI2pDataDestination *NetI2pClientNamingDummyNamingService_getCacheWithNSString_(NSString *s) {
  NetI2pClientNamingDummyNamingService_initialize();
  @synchronized(NetI2pClientNamingDummyNamingService__cache) {
    return JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(NetI2pClientNamingDummyNamingService__cache)) getWithId:s]);
  }
}

void NetI2pClientNamingDummyNamingService_removeCacheWithNSString_(NSString *s) {
  NetI2pClientNamingDummyNamingService_initialize();
  @synchronized(NetI2pClientNamingDummyNamingService__cache) {
    [((id<JavaUtilMap>) nil_chk(NetI2pClientNamingDummyNamingService__cache)) removeWithId:s];
  }
}

void NetI2pClientNamingDummyNamingService_clearCache() {
  NetI2pClientNamingDummyNamingService_initialize();
  @synchronized(NetI2pClientNamingDummyNamingService__cache) {
    [((id<JavaUtilMap>) nil_chk(NetI2pClientNamingDummyNamingService__cache)) clear];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientNamingDummyNamingService)
