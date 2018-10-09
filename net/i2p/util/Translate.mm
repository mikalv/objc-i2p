//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/Translate.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "gnu/gettext/GettextResource.h"
#include "java/io/PrintStream.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/text/MessageFormat.h"
#include "java/util/Arrays.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "java/util/MissingResourceException.h"
#include "java/util/ResourceBundle.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/util/ConcurrentHashSet.h"
#include "net/i2p/util/Translate.h"

@interface NetI2pUtilTranslate ()

+ (JavaUtilResourceBundle *)findBundleWithNSString:(NSString *)bun
                                      withNSString:(NSString *)lang
                                      withNSString:(NSString *)country;

@end

inline NSString *NetI2pUtilTranslate_get__localeLang(void);
static NSString *NetI2pUtilTranslate__localeLang;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilTranslate, _localeLang, NSString *)

inline NSString *NetI2pUtilTranslate_get__localeCountry(void);
static NSString *NetI2pUtilTranslate__localeCountry;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilTranslate, _localeCountry, NSString *)

inline id<JavaUtilMap> NetI2pUtilTranslate_get__bundles(void);
static id<JavaUtilMap> NetI2pUtilTranslate__bundles;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilTranslate, _bundles, id<JavaUtilMap>)

inline id<JavaUtilSet> NetI2pUtilTranslate_get__missing(void);
static id<JavaUtilSet> NetI2pUtilTranslate__missing;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilTranslate, _missing, id<JavaUtilSet>)

inline NSString *NetI2pUtilTranslate_get_TEST_LANG(void);
static NSString *NetI2pUtilTranslate_TEST_LANG = @"xx";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilTranslate, TEST_LANG, NSString *)

inline NSString *NetI2pUtilTranslate_get_TEST_STRING(void);
static NSString *NetI2pUtilTranslate_TEST_STRING = @"XXXX";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilTranslate, TEST_STRING, NSString *)

__attribute__((unused)) static JavaUtilResourceBundle *NetI2pUtilTranslate_findBundleWithNSString_withNSString_withNSString_(NSString *bun, NSString *lang, NSString *country);

J2OBJC_INITIALIZED_DEFN(NetI2pUtilTranslate)

NSString *NetI2pUtilTranslate_PROP_LANG = @"routerconsole.lang";
NSString *NetI2pUtilTranslate_PROP_COUNTRY = @"routerconsole.country";

@implementation NetI2pUtilTranslate

+ (NSString *)PROP_LANG {
  return NetI2pUtilTranslate_PROP_LANG;
}

+ (NSString *)PROP_COUNTRY {
  return NetI2pUtilTranslate_PROP_COUNTRY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pUtilTranslate_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getStringWithNSString:(NSString *)key
            withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                       withNSString:(NSString *)bun {
  return NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_(key, ctx, bun);
}

+ (NSString *)getStringWithNSString:(NSString *)s
                             withId:(id)o
            withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                       withNSString:(NSString *)bun {
  return NetI2pUtilTranslate_getStringWithNSString_withId_withNetI2pI2PAppContext_withNSString_(s, o, ctx, bun);
}

+ (NSString *)getStringWithNSString:(NSString *)s
                             withId:(id)o
                             withId:(id)o2
            withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                       withNSString:(NSString *)bun {
  return NetI2pUtilTranslate_getStringWithNSString_withId_withId_withNetI2pI2PAppContext_withNSString_(s, o, o2, ctx, bun);
}

+ (NSString *)getStringWithNSString:(NSString *)s
            withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                       withNSString:(NSString *)bun
                  withNSObjectArray:(IOSObjectArray *)oArray {
  return NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_withNSObjectArray_(s, ctx, bun, oArray);
}

+ (NSString *)getStringWithInt:(jint)n
                  withNSString:(NSString *)s
                  withNSString:(NSString *)p
       withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                  withNSString:(NSString *)bun {
  return NetI2pUtilTranslate_getStringWithInt_withNSString_withNSString_withNetI2pI2PAppContext_withNSString_(n, s, p, ctx, bun);
}

+ (NSString *)getLanguageWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  return NetI2pUtilTranslate_getLanguageWithNetI2pI2PAppContext_(ctx);
}

+ (NSString *)getCountryWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx {
  return NetI2pUtilTranslate_getCountryWithNetI2pI2PAppContext_(ctx);
}

+ (void)setLanguageWithNSString:(NSString *)lang
                   withNSString:(NSString *)country {
  NetI2pUtilTranslate_setLanguageWithNSString_withNSString_(lang, country);
}

+ (JavaUtilResourceBundle *)findBundleWithNSString:(NSString *)bun
                                      withNSString:(NSString *)lang
                                      withNSString:(NSString *)country {
  return NetI2pUtilTranslate_findBundleWithNSString_withNSString_withNSString_(bun, lang, country);
}

+ (NSString *)getDisplayLanguageWithNSString:(NSString *)langCode
                                withNSString:(NSString *)dflt
                     withNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                withNSString:(NSString *)bun {
  return NetI2pUtilTranslate_getDisplayLanguageWithNSString_withNSString_withNetI2pI2PAppContext_withNSString_(langCode, dflt, ctx, bun);
}

+ (void)clearCache {
  NetI2pUtilTranslate_clearCache();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x89, 0, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 8, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, "LJavaUtilResourceBundle;", 0xa, 11, 12, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getStringWithNSString:withNetI2pI2PAppContext:withNSString:);
  methods[2].selector = @selector(getStringWithNSString:withId:withNetI2pI2PAppContext:withNSString:);
  methods[3].selector = @selector(getStringWithNSString:withId:withId:withNetI2pI2PAppContext:withNSString:);
  methods[4].selector = @selector(getStringWithNSString:withNetI2pI2PAppContext:withNSString:withNSObjectArray:);
  methods[5].selector = @selector(getStringWithInt:withNSString:withNSString:withNetI2pI2PAppContext:withNSString:);
  methods[6].selector = @selector(getLanguageWithNetI2pI2PAppContext:);
  methods[7].selector = @selector(getCountryWithNetI2pI2PAppContext:);
  methods[8].selector = @selector(setLanguageWithNSString:withNSString:);
  methods[9].selector = @selector(findBundleWithNSString:withNSString:withNSString:);
  methods[10].selector = @selector(getDisplayLanguageWithNSString:withNSString:withNetI2pI2PAppContext:withNSString:);
  methods[11].selector = @selector(clearCache);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROP_LANG", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "PROP_COUNTRY", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "_localeLang", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "_localeCountry", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "_bundles", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 19, 20, -1 },
    { "_missing", "LJavaUtilSet;", .constantValue.asLong = 0, 0x1a, -1, 21, 22, -1 },
    { "TEST_LANG", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 23, -1, -1 },
    { "TEST_STRING", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 24, -1, -1 },
  };
  static const void *ptrTable[] = { "getString", "LNSString;LNetI2pI2PAppContext;LNSString;", "LNSString;LNSObject;LNetI2pI2PAppContext;LNSString;", "LNSString;LNSObject;LNSObject;LNetI2pI2PAppContext;LNSString;", "LNSString;LNetI2pI2PAppContext;LNSString;[LNSObject;", "ILNSString;LNSString;LNetI2pI2PAppContext;LNSString;", "getLanguage", "LNetI2pI2PAppContext;", "getCountry", "setLanguage", "LNSString;LNSString;", "findBundle", "LNSString;LNSString;LNSString;", "getDisplayLanguage", "LNSString;LNSString;LNetI2pI2PAppContext;LNSString;", &NetI2pUtilTranslate_PROP_LANG, &NetI2pUtilTranslate_PROP_COUNTRY, &NetI2pUtilTranslate__localeLang, &NetI2pUtilTranslate__localeCountry, &NetI2pUtilTranslate__bundles, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ResourceBundle;>;", &NetI2pUtilTranslate__missing, "Ljava/util/Set<Ljava/lang/String;>;", &NetI2pUtilTranslate_TEST_LANG, &NetI2pUtilTranslate_TEST_STRING };
  static const J2ObjcClassInfo _NetI2pUtilTranslate = { "Translate", "net.i2p.util", ptrTable, methods, fields, 7, 0x401, 12, 8, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilTranslate;
}

+ (void)initialize {
  if (self == [NetI2pUtilTranslate class]) {
    JreStrongAssign(&NetI2pUtilTranslate__localeLang, [((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) getLanguage]);
    JreStrongAssign(&NetI2pUtilTranslate__localeCountry, [((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) getCountry]);
    JreStrongAssignAndConsume(&NetI2pUtilTranslate__bundles, new_JavaUtilConcurrentConcurrentHashMap_initWithInt_(16));
    JreStrongAssignAndConsume(&NetI2pUtilTranslate__missing, new_NetI2pUtilConcurrentHashSet_initWithInt_(16));
    J2OBJC_SET_INITIALIZED(NetI2pUtilTranslate)
  }
}

@end

void NetI2pUtilTranslate_init(NetI2pUtilTranslate *self) {
  NSObject_init(self);
}

NSString *NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_(NSString *key, NetI2pI2PAppContext *ctx, NSString *bun) {
  NetI2pUtilTranslate_initialize();
  if (key == nil) {
    [(create_JavaLangNullPointerException_initWithNSString_(@"null translation string")) printStackTrace];
    return @"";
  }
  NSString *lang = NetI2pUtilTranslate_getLanguageWithNetI2pI2PAppContext_(ctx);
  if ([((NSString *) nil_chk(lang)) isEqual:@"en"]) return key;
  else if ([lang isEqual:NetI2pUtilTranslate_TEST_LANG]) return NetI2pUtilTranslate_TEST_STRING;
  if ([key isEqual:@""]) return key;
  JavaUtilResourceBundle *bundle = NetI2pUtilTranslate_findBundleWithNSString_withNSString_withNSString_(bun, lang, NetI2pUtilTranslate_getCountryWithNetI2pI2PAppContext_(ctx));
  if (bundle == nil) return key;
  @try {
    return [bundle getStringWithNSString:key];
  }
  @catch (JavaUtilMissingResourceException *e) {
    return key;
  }
}

NSString *NetI2pUtilTranslate_getStringWithNSString_withId_withNetI2pI2PAppContext_withNSString_(NSString *s, id o, NetI2pI2PAppContext *ctx, NSString *bun) {
  NetI2pUtilTranslate_initialize();
  return NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_withNSObjectArray_(s, ctx, bun, [IOSObjectArray arrayWithObjects:(id[]){ o } count:1 type:NSObject_class_()]);
}

NSString *NetI2pUtilTranslate_getStringWithNSString_withId_withId_withNetI2pI2PAppContext_withNSString_(NSString *s, id o, id o2, NetI2pI2PAppContext *ctx, NSString *bun) {
  NetI2pUtilTranslate_initialize();
  return NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_withNSObjectArray_(s, ctx, bun, [IOSObjectArray arrayWithObjects:(id[]){ o, o2 } count:2 type:NSObject_class_()]);
}

NSString *NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_withNSObjectArray_(NSString *s, NetI2pI2PAppContext *ctx, NSString *bun, IOSObjectArray *oArray) {
  NetI2pUtilTranslate_initialize();
  NSString *lang = NetI2pUtilTranslate_getLanguageWithNetI2pI2PAppContext_(ctx);
  if ([((NSString *) nil_chk(lang)) isEqual:NetI2pUtilTranslate_TEST_LANG]) return JreStrcat("$$$", NetI2pUtilTranslate_TEST_STRING, JavaUtilArrays_toStringWithNSObjectArray_(oArray), NetI2pUtilTranslate_TEST_STRING);
  NSString *x = NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_(s, ctx, bun);
  @try {
    JavaTextMessageFormat *fmt = create_JavaTextMessageFormat_initWithNSString_withJavaUtilLocale_(x, create_JavaUtilLocale_initWithNSString_(lang));
    return [((JavaLangStringBuffer *) nil_chk([fmt formatWithNSObjectArray:oArray withJavaLangStringBuffer:create_JavaLangStringBuffer_init() withJavaTextFieldPosition:nil])) description];
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$$$$$$", @"Bad format: orig: \"", s, @"\" trans: \"", x, @"\" params: ", JavaUtilArrays_toStringWithNSObjectArray_(oArray), @" lang: ", lang)];
    return JreStrcat("$$C$", @"FIXME: ", x, ' ', JavaUtilArrays_toStringWithNSObjectArray_(oArray));
  }
}

NSString *NetI2pUtilTranslate_getStringWithInt_withNSString_withNSString_withNetI2pI2PAppContext_withNSString_(jint n, NSString *s, NSString *p, NetI2pI2PAppContext *ctx, NSString *bun) {
  NetI2pUtilTranslate_initialize();
  NSString *lang = NetI2pUtilTranslate_getLanguageWithNetI2pI2PAppContext_(ctx);
  if ([((NSString *) nil_chk(lang)) isEqual:NetI2pUtilTranslate_TEST_LANG]) return JreStrcat("$CIC$", NetI2pUtilTranslate_TEST_STRING, '(', n, ')', NetI2pUtilTranslate_TEST_STRING);
  JavaUtilResourceBundle *bundle = nil;
  if (![lang isEqual:@"en"]) bundle = NetI2pUtilTranslate_findBundleWithNSString_withNSString_withNSString_(bun, lang, NetI2pUtilTranslate_getCountryWithNetI2pI2PAppContext_(ctx));
  NSString *x;
  if (bundle == nil) x = n == 1 ? s : p;
  else x = GnuGettextGettextResource_ngettextWithJavaUtilResourceBundle_withNSString_withNSString_withLong_(bundle, s, p, n);
  IOSObjectArray *oArray = [IOSObjectArray arrayWithLength:1 type:NSObject_class_()];
  IOSObjectArray_Set(oArray, 0, JavaLangInteger_valueOfWithInt_(n));
  @try {
    JavaTextMessageFormat *fmt = create_JavaTextMessageFormat_initWithNSString_withJavaUtilLocale_(x, create_JavaUtilLocale_initWithNSString_(lang));
    return [((JavaLangStringBuffer *) nil_chk([fmt formatWithNSObjectArray:oArray withJavaLangStringBuffer:create_JavaLangStringBuffer_init() withJavaTextFieldPosition:nil])) description];
  }
  @catch (JavaLangIllegalArgumentException *iae) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$$$$$", @"Bad format: sing: \"", s, @"\" plural: \"", p, @"\" lang: ", lang)];
    return JreStrcat("$$C$CI", @"FIXME: ", s, ' ', p, ',', n);
  }
}

NSString *NetI2pUtilTranslate_getLanguageWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  NetI2pUtilTranslate_initialize();
  NSString *lang = [((NetI2pI2PAppContext *) nil_chk(ctx)) getPropertyWithNSString:NetI2pUtilTranslate_PROP_LANG];
  if (lang == nil || [lang java_length] <= 0) lang = NetI2pUtilTranslate__localeLang;
  return lang;
}

NSString *NetI2pUtilTranslate_getCountryWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) {
  NetI2pUtilTranslate_initialize();
  return [((NetI2pI2PAppContext *) nil_chk(ctx)) getPropertyWithNSString:NetI2pUtilTranslate_PROP_COUNTRY withNSString:NetI2pUtilTranslate__localeCountry];
}

void NetI2pUtilTranslate_setLanguageWithNSString_withNSString_(NSString *lang, NSString *country) {
  NetI2pUtilTranslate_initialize();
  if (lang != nil) JavaLangSystem_setPropertyWithNSString_withNSString_(NetI2pUtilTranslate_PROP_LANG, lang);
  else JavaLangSystem_clearPropertyWithNSString_(NetI2pUtilTranslate_PROP_LANG);
  if (country != nil) JavaLangSystem_setPropertyWithNSString_withNSString_(NetI2pUtilTranslate_PROP_COUNTRY, country);
  else JavaLangSystem_clearPropertyWithNSString_(NetI2pUtilTranslate_PROP_COUNTRY);
}

JavaUtilResourceBundle *NetI2pUtilTranslate_findBundleWithNSString_withNSString_withNSString_(NSString *bun, NSString *lang, NSString *country) {
  NetI2pUtilTranslate_initialize();
  NSString *key = JreStrcat("$C$C$", bun, '-', lang, '-', country);
  JavaUtilResourceBundle *rv = [((id<JavaUtilMap>) nil_chk(NetI2pUtilTranslate__bundles)) getWithId:key];
  if (rv == nil && ![((id<JavaUtilSet>) nil_chk(NetI2pUtilTranslate__missing)) containsWithId:key]) {
    if ([@"" isEqual:lang]) {
      [((id<JavaUtilSet>) nil_chk(NetI2pUtilTranslate__missing)) addWithId:key];
      return nil;
    }
    @try {
      JavaUtilLocale *loc;
      if ([@"" isEqual:country]) loc = create_JavaUtilLocale_initWithNSString_(lang);
      else loc = create_JavaUtilLocale_initWithNSString_withNSString_(lang, country);
      rv = JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_withJavaLangClassLoader_(bun, loc, [((JavaLangThread *) nil_chk(JavaLangThread_currentThread())) getContextClassLoader]);
      if (rv != nil) [NetI2pUtilTranslate__bundles putWithId:key withId:rv];
    }
    @catch (JavaUtilMissingResourceException *e) {
      [((id<JavaUtilSet>) nil_chk(NetI2pUtilTranslate__missing)) addWithId:key];
    }
  }
  return rv;
}

NSString *NetI2pUtilTranslate_getDisplayLanguageWithNSString_withNSString_withNetI2pI2PAppContext_withNSString_(NSString *langCode, NSString *dflt, NetI2pI2PAppContext *ctx, NSString *bun) {
  NetI2pUtilTranslate_initialize();
  NSString *curLang = NetI2pUtilTranslate_getLanguageWithNetI2pI2PAppContext_(ctx);
  if (![@"en" isEqual:curLang]) {
    NSString *rv = NetI2pUtilTranslate_getStringWithNSString_withNetI2pI2PAppContext_withNSString_(dflt, ctx, bun);
    if (![((NSString *) nil_chk(rv)) isEqual:dflt]) return rv;
    JavaUtilLocale *curLocale = create_JavaUtilLocale_initWithNSString_(curLang);
    rv = [(create_JavaUtilLocale_initWithNSString_(langCode)) getDisplayLanguageWithJavaUtilLocale:curLocale];
    if ([((NSString *) nil_chk(rv)) java_length] > 0 && ![rv isEqual:langCode]) return rv;
  }
  return dflt;
}

void NetI2pUtilTranslate_clearCache() {
  NetI2pUtilTranslate_initialize();
  [((id<JavaUtilSet>) nil_chk(NetI2pUtilTranslate__missing)) clear];
  [((id<JavaUtilMap>) nil_chk(NetI2pUtilTranslate__bundles)) clear];
  JavaUtilResourceBundle_clearCache();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilTranslate)