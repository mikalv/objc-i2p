//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/stat/PersistenceHelper.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Date.h"
#include "java/util/Properties.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/stat/PersistenceHelper.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"

inline NSString *NetI2pStatPersistenceHelper_get_NL(void);
static NSString *NetI2pStatPersistenceHelper_NL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pStatPersistenceHelper, NL, NSString *)

J2OBJC_INITIALIZED_DEFN(NetI2pStatPersistenceHelper)

@implementation NetI2pStatPersistenceHelper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pStatPersistenceHelper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)buf
                        withNSString:(NSString *)prefix
                        withNSString:(NSString *)name
                        withNSString:(NSString *)description_
                          withDouble:(jdouble)value {
  NetI2pStatPersistenceHelper_addWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withDouble_(buf, prefix, name, description_, value);
}

+ (void)addDateWithJavaLangStringBuilder:(JavaLangStringBuilder *)buf
                            withNSString:(NSString *)prefix
                            withNSString:(NSString *)name
                            withNSString:(NSString *)description_
                                withLong:(jlong)value {
  NetI2pStatPersistenceHelper_addDateWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(buf, prefix, name, description_, value);
}

+ (void)addTimeWithJavaLangStringBuilder:(JavaLangStringBuilder *)buf
                            withNSString:(NSString *)prefix
                            withNSString:(NSString *)name
                            withNSString:(NSString *)description_
                                withLong:(jlong)value {
  NetI2pStatPersistenceHelper_addTimeWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(buf, prefix, name, description_, value);
}

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)buf
                        withNSString:(NSString *)prefix
                        withNSString:(NSString *)name
                        withNSString:(NSString *)description_
                            withLong:(jlong)value {
  NetI2pStatPersistenceHelper_addWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(buf, prefix, name, description_, value);
}

+ (jlong)getLongWithJavaUtilProperties:(JavaUtilProperties *)props
                          withNSString:(NSString *)prefix
                          withNSString:(NSString *)name {
  return NetI2pStatPersistenceHelper_getLongWithJavaUtilProperties_withNSString_withNSString_(props, prefix, name);
}

+ (jdouble)getDoubleWithJavaUtilProperties:(JavaUtilProperties *)props
                              withNSString:(NSString *)prefix
                              withNSString:(NSString *)name {
  return NetI2pStatPersistenceHelper_getDoubleWithJavaUtilProperties_withNSString_withNSString_(props, prefix, name);
}

+ (jint)getIntWithJavaUtilProperties:(JavaUtilProperties *)props
                        withNSString:(NSString *)prefix
                        withNSString:(NSString *)name {
  return NetI2pStatPersistenceHelper_getIntWithJavaUtilProperties_withNSString_withNSString_(props, prefix, name);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x19, 0, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x19, 5, 6, -1, -1, -1, -1 },
    { NULL, "D", 0x19, 7, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x19, 8, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithJavaLangStringBuilder:withNSString:withNSString:withNSString:withDouble:);
  methods[2].selector = @selector(addDateWithJavaLangStringBuilder:withNSString:withNSString:withNSString:withLong:);
  methods[3].selector = @selector(addTimeWithJavaLangStringBuilder:withNSString:withNSString:withNSString:withLong:);
  methods[4].selector = @selector(addWithJavaLangStringBuilder:withNSString:withNSString:withNSString:withLong:);
  methods[5].selector = @selector(getLongWithJavaUtilProperties:withNSString:withNSString:);
  methods[6].selector = @selector(getDoubleWithJavaUtilProperties:withNSString:withNSString:);
  methods[7].selector = @selector(getIntWithJavaUtilProperties:withNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NL", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "LJavaLangStringBuilder;LNSString;LNSString;LNSString;D", "addDate", "LJavaLangStringBuilder;LNSString;LNSString;LNSString;J", "addTime", "getLong", "LJavaUtilProperties;LNSString;LNSString;", "getDouble", "getInt", &NetI2pStatPersistenceHelper_NL };
  static const J2ObjcClassInfo _NetI2pStatPersistenceHelper = { "PersistenceHelper", "net.i2p.stat", ptrTable, methods, fields, 7, 0x0, 8, 1, -1, -1, -1, -1, -1 };
  return &_NetI2pStatPersistenceHelper;
}

+ (void)initialize {
  if (self == [NetI2pStatPersistenceHelper class]) {
    JreStrongAssign(&NetI2pStatPersistenceHelper_NL, JavaLangSystem_getPropertyWithNSString_(@"line.separator"));
    J2OBJC_SET_INITIALIZED(NetI2pStatPersistenceHelper)
  }
}

@end

void NetI2pStatPersistenceHelper_init(NetI2pStatPersistenceHelper *self) {
  NSObject_init(self);
}

NetI2pStatPersistenceHelper *new_NetI2pStatPersistenceHelper_init() {
  J2OBJC_NEW_IMPL(NetI2pStatPersistenceHelper, init)
}

NetI2pStatPersistenceHelper *create_NetI2pStatPersistenceHelper_init() {
  J2OBJC_CREATE_IMPL(NetI2pStatPersistenceHelper, init)
}

void NetI2pStatPersistenceHelper_addWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withDouble_(JavaLangStringBuilder *buf, NSString *prefix, NSString *name, NSString *description_, jdouble value) {
  NetI2pStatPersistenceHelper_initialize();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buf)) appendWithNSString:@"# "])) appendWithNSString:prefix])) appendWithNSString:name])) appendWithNSString:NetI2pStatPersistenceHelper_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"# "])) appendWithNSString:description_])) appendWithNSString:NetI2pStatPersistenceHelper_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:prefix])) appendWithNSString:name])) appendWithChar:'='])) appendWithDouble:value])) appendWithNSString:NetI2pStatPersistenceHelper_NL])) appendWithNSString:NetI2pStatPersistenceHelper_NL];
}

void NetI2pStatPersistenceHelper_addDateWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(JavaLangStringBuilder *buf, NSString *prefix, NSString *name, NSString *description_, jlong value) {
  NetI2pStatPersistenceHelper_initialize();
  NSString *when = value > 0 ? [(create_JavaUtilDate_initWithLong_(value)) description] : @"Never";
  NetI2pStatPersistenceHelper_addWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(buf, prefix, name, JreStrcat("$C$", description_, ' ', when), value);
}

void NetI2pStatPersistenceHelper_addTimeWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(JavaLangStringBuilder *buf, NSString *prefix, NSString *name, NSString *description_, jlong value) {
  NetI2pStatPersistenceHelper_initialize();
  NSString *when = NetI2pDataDataHelper_formatDurationWithLong_(value);
  NetI2pStatPersistenceHelper_addWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(buf, prefix, name, JreStrcat("$C$", description_, ' ', when), value);
}

void NetI2pStatPersistenceHelper_addWithJavaLangStringBuilder_withNSString_withNSString_withNSString_withLong_(JavaLangStringBuilder *buf, NSString *prefix, NSString *name, NSString *description_, jlong value) {
  NetI2pStatPersistenceHelper_initialize();
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(buf)) appendWithNSString:@"# "])) appendWithNSString:prefix])) appendWithNSString:name])) appendWithNSString:NetI2pStatPersistenceHelper_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"# "])) appendWithNSString:description_])) appendWithNSString:NetI2pStatPersistenceHelper_NL];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:prefix])) appendWithNSString:name])) appendWithChar:'='])) appendWithLong:value])) appendWithNSString:NetI2pStatPersistenceHelper_NL])) appendWithNSString:NetI2pStatPersistenceHelper_NL];
}

jlong NetI2pStatPersistenceHelper_getLongWithJavaUtilProperties_withNSString_withNSString_(JavaUtilProperties *props, NSString *prefix, NSString *name) {
  NetI2pStatPersistenceHelper_initialize();
  NSString *val = [((JavaUtilProperties *) nil_chk(props)) getPropertyWithNSString:JreStrcat("$$", prefix, name)];
  if (val != nil) {
    @try {
      jlong rv = JavaLangLong_parseLongWithNSString_(val);
      return rv >= 0 ? rv : 0;
    }
    @catch (JavaLangNumberFormatException *nfe) {
      NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) logManager])) getLogWithIOSClass:NetI2pStatPersistenceHelper_class_()];
      [((NetI2pUtilLog *) nil_chk(log)) warnWithNSString:JreStrcat("$$", @"Error formatting ", val) withJavaLangThrowable:nfe];
    }
  }
  return 0;
}

jdouble NetI2pStatPersistenceHelper_getDoubleWithJavaUtilProperties_withNSString_withNSString_(JavaUtilProperties *props, NSString *prefix, NSString *name) {
  NetI2pStatPersistenceHelper_initialize();
  NSString *val = [((JavaUtilProperties *) nil_chk(props)) getPropertyWithNSString:JreStrcat("$$", prefix, name)];
  if (val != nil) {
    @try {
      return JavaLangDouble_parseDoubleWithNSString_(val);
    }
    @catch (JavaLangNumberFormatException *nfe) {
      NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) logManager])) getLogWithIOSClass:NetI2pStatPersistenceHelper_class_()];
      [((NetI2pUtilLog *) nil_chk(log)) warnWithNSString:JreStrcat("$$", @"Error formatting ", val) withJavaLangThrowable:nfe];
    }
  }
  return 0;
}

jint NetI2pStatPersistenceHelper_getIntWithJavaUtilProperties_withNSString_withNSString_(JavaUtilProperties *props, NSString *prefix, NSString *name) {
  NetI2pStatPersistenceHelper_initialize();
  NSString *val = [((JavaUtilProperties *) nil_chk(props)) getPropertyWithNSString:JreStrcat("$$", prefix, name)];
  if (val != nil) {
    @try {
      jint rv = JavaLangInteger_parseIntWithNSString_(val);
      return rv >= 0 ? rv : 0;
    }
    @catch (JavaLangNumberFormatException *nfe) {
      NetI2pUtilLog *log = [((NetI2pUtilLogManager *) nil_chk([((NetI2pI2PAppContext *) nil_chk(NetI2pI2PAppContext_getGlobalContext())) logManager])) getLogWithIOSClass:NetI2pStatPersistenceHelper_class_()];
      [((NetI2pUtilLog *) nil_chk(log)) warnWithNSString:JreStrcat("$$", @"Error formatting ", val) withJavaLangThrowable:nfe];
    }
  }
  return 0;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pStatPersistenceHelper)
