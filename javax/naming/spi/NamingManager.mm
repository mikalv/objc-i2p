//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/spi/NamingManager.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/sun/naming/internal/FactoryEnumeration.h"
#include "com/sun/naming/internal/ResourceManager.h"
#include "com/sun/naming/internal/VersionHelper.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/SecurityManager.h"
#include "java/lang/System.h"
#include "java/util/Hashtable.h"
#include "javax/naming/CannotProceedException.h"
#include "javax/naming/Context.h"
#include "javax/naming/Name.h"
#include "javax/naming/NamingException.h"
#include "javax/naming/NoInitialContextException.h"
#include "javax/naming/RefAddr.h"
#include "javax/naming/Reference.h"
#include "javax/naming/Referenceable.h"
#include "javax/naming/StringRefAddr.h"
#include "javax/naming/spi/ContinuationContext.h"
#include "javax/naming/spi/InitialContextFactory.h"
#include "javax/naming/spi/InitialContextFactoryBuilder.h"
#include "javax/naming/spi/NamingManager.h"
#include "javax/naming/spi/ObjectFactory.h"
#include "javax/naming/spi/ObjectFactoryBuilder.h"
#include "javax/naming/spi/Resolver.h"
#include "javax/naming/spi/StateFactory.h"

@interface JavaxNamingSpiNamingManager ()

+ (id)createObjectFromFactoriesWithId:(id)obj
                  withJavaxNamingName:(id<JavaxNamingName>)name
               withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
                withJavaUtilHashtable:(JavaUtilHashtable *)environment;

+ (NSString *)getURLSchemeWithNSString:(NSString *)str;

+ (id)processURLWithId:(id)refInfo
   withJavaxNamingName:(id<JavaxNamingName>)name
withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
 withJavaUtilHashtable:(JavaUtilHashtable *)environment;

+ (id)getURLObjectWithNSString:(NSString *)scheme
                        withId:(id)urlInfo
           withJavaxNamingName:(id<JavaxNamingName>)name
        withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
         withJavaUtilHashtable:(JavaUtilHashtable *)environment;

+ (id<JavaxNamingSpiInitialContextFactoryBuilder>)getInitialContextFactoryBuilder;

@end

inline id<JavaxNamingSpiObjectFactoryBuilder> JavaxNamingSpiNamingManager_get_object_factory_builder(void);
inline id<JavaxNamingSpiObjectFactoryBuilder> JavaxNamingSpiNamingManager_set_object_factory_builder(id<JavaxNamingSpiObjectFactoryBuilder> value);
static id<JavaxNamingSpiObjectFactoryBuilder> JavaxNamingSpiNamingManager_object_factory_builder;
J2OBJC_STATIC_FIELD_OBJ(JavaxNamingSpiNamingManager, object_factory_builder, id<JavaxNamingSpiObjectFactoryBuilder>)

inline NSString *JavaxNamingSpiNamingManager_get_defaultPkgPrefix(void);
static NSString *JavaxNamingSpiNamingManager_defaultPkgPrefix = @"com.sun.jndi.url";
J2OBJC_STATIC_FIELD_OBJ_FINAL(JavaxNamingSpiNamingManager, defaultPkgPrefix, NSString *)

inline id<JavaxNamingSpiInitialContextFactoryBuilder> JavaxNamingSpiNamingManager_get_initctx_factory_builder(void);
inline id<JavaxNamingSpiInitialContextFactoryBuilder> JavaxNamingSpiNamingManager_set_initctx_factory_builder(id<JavaxNamingSpiInitialContextFactoryBuilder> value);
static id<JavaxNamingSpiInitialContextFactoryBuilder> JavaxNamingSpiNamingManager_initctx_factory_builder;
J2OBJC_STATIC_FIELD_OBJ(JavaxNamingSpiNamingManager, initctx_factory_builder, id<JavaxNamingSpiInitialContextFactoryBuilder>)

__attribute__((unused)) static id JavaxNamingSpiNamingManager_createObjectFromFactoriesWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id obj, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment);

__attribute__((unused)) static NSString *JavaxNamingSpiNamingManager_getURLSchemeWithNSString_(NSString *str);

__attribute__((unused)) static id JavaxNamingSpiNamingManager_processURLWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id refInfo, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment);

__attribute__((unused)) static id JavaxNamingSpiNamingManager_getURLObjectWithNSString_withId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(NSString *scheme, id urlInfo, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment);

__attribute__((unused)) static id<JavaxNamingSpiInitialContextFactoryBuilder> JavaxNamingSpiNamingManager_getInitialContextFactoryBuilder(void);

J2OBJC_INITIALIZED_DEFN(JavaxNamingSpiNamingManager)

ComSunNamingInternalVersionHelper *JavaxNamingSpiNamingManager_helper;
NSString *JavaxNamingSpiNamingManager_CPE = @"java.naming.spi.CannotProceedException";

@implementation JavaxNamingSpiNamingManager

+ (ComSunNamingInternalVersionHelper *)helper {
  return JavaxNamingSpiNamingManager_helper;
}

+ (NSString *)CPE {
  return JavaxNamingSpiNamingManager_CPE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingSpiNamingManager_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)setObjectFactoryBuilderWithJavaxNamingSpiObjectFactoryBuilder:(id<JavaxNamingSpiObjectFactoryBuilder>)builder {
  JavaxNamingSpiNamingManager_setObjectFactoryBuilderWithJavaxNamingSpiObjectFactoryBuilder_(builder);
}

+ (id<JavaxNamingSpiObjectFactoryBuilder>)getObjectFactoryBuilder {
  return JavaxNamingSpiNamingManager_getObjectFactoryBuilder();
}

+ (id<JavaxNamingSpiObjectFactory>)getObjectFactoryFromReferenceWithJavaxNamingReference:(JavaxNamingReference *)ref
                                                                            withNSString:(NSString *)factoryName {
  return JavaxNamingSpiNamingManager_getObjectFactoryFromReferenceWithJavaxNamingReference_withNSString_(ref, factoryName);
}

+ (id)createObjectFromFactoriesWithId:(id)obj
                  withJavaxNamingName:(id<JavaxNamingName>)name
               withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
                withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_createObjectFromFactoriesWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(obj, name, nameCtx, environment);
}

+ (NSString *)getURLSchemeWithNSString:(NSString *)str {
  return JavaxNamingSpiNamingManager_getURLSchemeWithNSString_(str);
}

+ (id)getObjectInstanceWithId:(id)refInfo
          withJavaxNamingName:(id<JavaxNamingName>)name
       withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
        withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_getObjectInstanceWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(refInfo, name, nameCtx, environment);
}

+ (id)processURLAddrsWithJavaxNamingReference:(JavaxNamingReference *)ref
                          withJavaxNamingName:(id<JavaxNamingName>)name
                       withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
                        withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_processURLAddrsWithJavaxNamingReference_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(ref, name, nameCtx, environment);
}

+ (id)processURLWithId:(id)refInfo
   withJavaxNamingName:(id<JavaxNamingName>)name
withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
 withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_processURLWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(refInfo, name, nameCtx, environment);
}

+ (id<JavaxNamingContext>)getContextWithId:(id)obj
                       withJavaxNamingName:(id<JavaxNamingName>)name
                    withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
                     withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_getContextWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(obj, name, nameCtx, environment);
}

+ (id<JavaxNamingSpiResolver>)getResolverWithId:(id)obj
                            withJavaxNamingName:(id<JavaxNamingName>)name
                         withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
                          withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_getResolverWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(obj, name, nameCtx, environment);
}

+ (id<JavaxNamingContext>)getURLContextWithNSString:(NSString *)scheme
                              withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_getURLContextWithNSString_withJavaUtilHashtable_(scheme, environment);
}

+ (id)getURLObjectWithNSString:(NSString *)scheme
                        withId:(id)urlInfo
           withJavaxNamingName:(id<JavaxNamingName>)name
        withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
         withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_getURLObjectWithNSString_withId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(scheme, urlInfo, name, nameCtx, environment);
}

+ (id<JavaxNamingSpiInitialContextFactoryBuilder>)getInitialContextFactoryBuilder {
  return JavaxNamingSpiNamingManager_getInitialContextFactoryBuilder();
}

+ (id<JavaxNamingContext>)getInitialContextWithJavaUtilHashtable:(JavaUtilHashtable *)env {
  return JavaxNamingSpiNamingManager_getInitialContextWithJavaUtilHashtable_(env);
}

+ (void)setInitialContextFactoryBuilderWithJavaxNamingSpiInitialContextFactoryBuilder:(id<JavaxNamingSpiInitialContextFactoryBuilder>)builder {
  JavaxNamingSpiNamingManager_setInitialContextFactoryBuilderWithJavaxNamingSpiInitialContextFactoryBuilder_(builder);
}

+ (jboolean)hasInitialContextFactoryBuilder {
  return JavaxNamingSpiNamingManager_hasInitialContextFactoryBuilder();
}

+ (id<JavaxNamingContext>)getContinuationContextWithJavaxNamingCannotProceedException:(JavaxNamingCannotProceedException *)cpe {
  return JavaxNamingSpiNamingManager_getContinuationContextWithJavaxNamingCannotProceedException_(cpe);
}

+ (id)getStateToBindWithId:(id)obj
       withJavaxNamingName:(id<JavaxNamingName>)name
    withJavaxNamingContext:(id<JavaxNamingContext>)nameCtx
     withJavaUtilHashtable:(JavaUtilHashtable *)environment {
  return JavaxNamingSpiNamingManager_getStateToBindWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(obj, name, nameCtx, environment);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x29, 0, 1, 2, -1, -1, -1 },
    { NULL, "LJavaxNamingSpiObjectFactoryBuilder;", 0x28, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingSpiObjectFactory;", 0x8, 3, 4, 5, -1, -1, -1 },
    { NULL, "LNSObject;", 0xa, 6, 7, 8, 9, -1, -1 },
    { NULL, "LNSString;", 0xa, 10, 11, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 12, 7, 8, 9, -1, -1 },
    { NULL, "LNSObject;", 0x8, 13, 14, 2, 15, -1, -1 },
    { NULL, "LNSObject;", 0xa, 16, 7, 2, 9, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x8, 17, 7, 2, 18, -1, -1 },
    { NULL, "LJavaxNamingSpiResolver;", 0x8, 19, 7, 2, 20, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x9, 21, 22, 2, 23, -1, -1 },
    { NULL, "LNSObject;", 0xa, 24, 25, 2, 26, -1, -1 },
    { NULL, "LJavaxNamingSpiInitialContextFactoryBuilder;", 0x2a, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x9, 27, 28, 2, 29, -1, -1 },
    { NULL, "V", 0x29, 30, 31, 2, -1, -1, -1 },
    { NULL, "Z", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingContext;", 0x9, 32, 33, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 34, 7, 2, 9, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setObjectFactoryBuilderWithJavaxNamingSpiObjectFactoryBuilder:);
  methods[2].selector = @selector(getObjectFactoryBuilder);
  methods[3].selector = @selector(getObjectFactoryFromReferenceWithJavaxNamingReference:withNSString:);
  methods[4].selector = @selector(createObjectFromFactoriesWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[5].selector = @selector(getURLSchemeWithNSString:);
  methods[6].selector = @selector(getObjectInstanceWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[7].selector = @selector(processURLAddrsWithJavaxNamingReference:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[8].selector = @selector(processURLWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[9].selector = @selector(getContextWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[10].selector = @selector(getResolverWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[11].selector = @selector(getURLContextWithNSString:withJavaUtilHashtable:);
  methods[12].selector = @selector(getURLObjectWithNSString:withId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  methods[13].selector = @selector(getInitialContextFactoryBuilder);
  methods[14].selector = @selector(getInitialContextWithJavaUtilHashtable:);
  methods[15].selector = @selector(setInitialContextFactoryBuilderWithJavaxNamingSpiInitialContextFactoryBuilder:);
  methods[16].selector = @selector(hasInitialContextFactoryBuilder);
  methods[17].selector = @selector(getContinuationContextWithJavaxNamingCannotProceedException:);
  methods[18].selector = @selector(getStateToBindWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "helper", "LComSunNamingInternalVersionHelper;", .constantValue.asLong = 0, 0x18, -1, 35, -1, -1 },
    { "object_factory_builder", "LJavaxNamingSpiObjectFactoryBuilder;", .constantValue.asLong = 0, 0xa, -1, 36, -1, -1 },
    { "defaultPkgPrefix", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 37, -1, -1 },
    { "initctx_factory_builder", "LJavaxNamingSpiInitialContextFactoryBuilder;", .constantValue.asLong = 0, 0xa, -1, 38, -1, -1 },
    { "CPE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 39, -1, -1 },
  };
  static const void *ptrTable[] = { "setObjectFactoryBuilder", "LJavaxNamingSpiObjectFactoryBuilder;", "LJavaxNamingNamingException;", "getObjectFactoryFromReference", "LJavaxNamingReference;LNSString;", "LJavaLangIllegalAccessException;LJavaLangInstantiationException;LJavaNetMalformedURLException;", "createObjectFromFactories", "LNSObject;LJavaxNamingName;LJavaxNamingContext;LJavaUtilHashtable;", "LJavaLangException;", "(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable<**>;)Ljava/lang/Object;", "getURLScheme", "LNSString;", "getObjectInstance", "processURLAddrs", "LJavaxNamingReference;LJavaxNamingName;LJavaxNamingContext;LJavaUtilHashtable;", "(Ljavax/naming/Reference;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable<**>;)Ljava/lang/Object;", "processURL", "getContext", "(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable<**>;)Ljavax/naming/Context;", "getResolver", "(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable<**>;)Ljavax/naming/spi/Resolver;", "getURLContext", "LNSString;LJavaUtilHashtable;", "(Ljava/lang/String;Ljava/util/Hashtable<**>;)Ljavax/naming/Context;", "getURLObject", "LNSString;LNSObject;LJavaxNamingName;LJavaxNamingContext;LJavaUtilHashtable;", "(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable<**>;)Ljava/lang/Object;", "getInitialContext", "LJavaUtilHashtable;", "(Ljava/util/Hashtable<**>;)Ljavax/naming/Context;", "setInitialContextFactoryBuilder", "LJavaxNamingSpiInitialContextFactoryBuilder;", "getContinuationContext", "LJavaxNamingCannotProceedException;", "getStateToBind", &JavaxNamingSpiNamingManager_helper, &JavaxNamingSpiNamingManager_object_factory_builder, &JavaxNamingSpiNamingManager_defaultPkgPrefix, &JavaxNamingSpiNamingManager_initctx_factory_builder, &JavaxNamingSpiNamingManager_CPE };
  static const J2ObjcClassInfo _JavaxNamingSpiNamingManager = { "NamingManager", "javax.naming.spi", ptrTable, methods, fields, 7, 0x1, 19, 5, -1, -1, -1, -1, -1 };
  return &_JavaxNamingSpiNamingManager;
}

+ (void)initialize {
  if (self == [JavaxNamingSpiNamingManager class]) {
    JreStrongAssign(&JavaxNamingSpiNamingManager_helper, ComSunNamingInternalVersionHelper_getVersionHelper());
    J2OBJC_SET_INITIALIZED(JavaxNamingSpiNamingManager)
  }
}

@end

void JavaxNamingSpiNamingManager_init(JavaxNamingSpiNamingManager *self) {
  NSObject_init(self);
}

JavaxNamingSpiNamingManager *new_JavaxNamingSpiNamingManager_init() {
  J2OBJC_NEW_IMPL(JavaxNamingSpiNamingManager, init)
}

JavaxNamingSpiNamingManager *create_JavaxNamingSpiNamingManager_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingSpiNamingManager, init)
}

void JavaxNamingSpiNamingManager_setObjectFactoryBuilderWithJavaxNamingSpiObjectFactoryBuilder_(id<JavaxNamingSpiObjectFactoryBuilder> builder) {
  JavaxNamingSpiNamingManager_initialize();
  @synchronized(JavaxNamingSpiNamingManager_class_()) {
    if (JavaxNamingSpiNamingManager_object_factory_builder != nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"ObjectFactoryBuilder already set");
    JavaLangSecurityManager *security = JavaLangSystem_getSecurityManager();
    if (security != nil) {
      [security checkSetFactory];
    }
    JreStrongAssign(&JavaxNamingSpiNamingManager_object_factory_builder, builder);
  }
}

id<JavaxNamingSpiObjectFactoryBuilder> JavaxNamingSpiNamingManager_getObjectFactoryBuilder() {
  JavaxNamingSpiNamingManager_initialize();
  @synchronized(JavaxNamingSpiNamingManager_class_()) {
    return JreRetainedLocalValue(JavaxNamingSpiNamingManager_object_factory_builder);
  }
}

id<JavaxNamingSpiObjectFactory> JavaxNamingSpiNamingManager_getObjectFactoryFromReferenceWithJavaxNamingReference_withNSString_(JavaxNamingReference *ref, NSString *factoryName) {
  JavaxNamingSpiNamingManager_initialize();
  IOSClass *clas = nil;
  @try {
    clas = [((ComSunNamingInternalVersionHelper *) nil_chk(JavaxNamingSpiNamingManager_helper)) loadClassWithNSString:factoryName];
  }
  @catch (JavaLangClassNotFoundException *e) {
  }
  NSString *codebase;
  if (clas == nil && (codebase = [((JavaxNamingReference *) nil_chk(ref)) getFactoryClassLocation]) != nil) {
    @try {
      clas = [JavaxNamingSpiNamingManager_helper loadClassWithNSString:factoryName withNSString:codebase];
    }
    @catch (JavaLangClassNotFoundException *e) {
    }
  }
  return (clas != nil) ? (id<JavaxNamingSpiObjectFactory>) cast_check([((IOSClass *) nil_chk(clas)) newInstance], JavaxNamingSpiObjectFactory_class_()) : nil;
}

id JavaxNamingSpiNamingManager_createObjectFromFactoriesWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id obj, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  ComSunNamingInternalFactoryEnumeration *factories = ComSunNamingInternalResourceManager_getFactoriesWithNSString_withJavaUtilHashtable_withJavaxNamingContext_(JavaxNamingContext_OBJECT_FACTORIES, environment, nameCtx);
  if (factories == nil) return nil;
  id<JavaxNamingSpiObjectFactory> factory;
  id answer = nil;
  while (answer == nil && [factories hasMore]) {
    factory = (id<JavaxNamingSpiObjectFactory>) cast_check([factories next], JavaxNamingSpiObjectFactory_class_());
    answer = [((id<JavaxNamingSpiObjectFactory>) nil_chk(factory)) getObjectInstanceWithId:obj withJavaxNamingName:name withJavaxNamingContext:nameCtx withJavaUtilHashtable:environment];
  }
  return answer;
}

NSString *JavaxNamingSpiNamingManager_getURLSchemeWithNSString_(NSString *str) {
  JavaxNamingSpiNamingManager_initialize();
  jint colon_posn = [((NSString *) nil_chk(str)) java_indexOf:':'];
  jint slash_posn = [str java_indexOf:'/'];
  if (colon_posn > 0 && (slash_posn == -1 || colon_posn < slash_posn)) return [str java_substring:0 endIndex:colon_posn];
  return nil;
}

id JavaxNamingSpiNamingManager_getObjectInstanceWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id refInfo, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  id<JavaxNamingSpiObjectFactory> factory;
  id<JavaxNamingSpiObjectFactoryBuilder> builder = JavaxNamingSpiNamingManager_getObjectFactoryBuilder();
  if (builder != nil) {
    factory = [builder createObjectFactoryWithId:refInfo withJavaUtilHashtable:environment];
    return [((id<JavaxNamingSpiObjectFactory>) nil_chk(factory)) getObjectInstanceWithId:refInfo withJavaxNamingName:name withJavaxNamingContext:nameCtx withJavaUtilHashtable:environment];
  }
  JavaxNamingReference *ref = nil;
  if ([refInfo isKindOfClass:[JavaxNamingReference class]]) {
    ref = (JavaxNamingReference *) cast_chk(refInfo, [JavaxNamingReference class]);
  }
  else if ([JavaxNamingReferenceable_class_() isInstance:refInfo]) {
    ref = [((id<JavaxNamingReferenceable>) nil_chk(((id<JavaxNamingReferenceable>) cast_check((refInfo), JavaxNamingReferenceable_class_())))) getReference];
  }
  id answer;
  if (ref != nil) {
    NSString *f = [ref getFactoryClassName];
    if (f != nil) {
      factory = JavaxNamingSpiNamingManager_getObjectFactoryFromReferenceWithJavaxNamingReference_withNSString_(ref, f);
      if (factory != nil) {
        return [factory getObjectInstanceWithId:ref withJavaxNamingName:name withJavaxNamingContext:nameCtx withJavaUtilHashtable:environment];
      }
      return refInfo;
    }
    else {
      answer = JavaxNamingSpiNamingManager_processURLAddrsWithJavaxNamingReference_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(ref, name, nameCtx, environment);
      if (answer != nil) {
        return answer;
      }
    }
  }
  answer = JavaxNamingSpiNamingManager_createObjectFromFactoriesWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(refInfo, name, nameCtx, environment);
  return (answer != nil) ? answer : refInfo;
}

id JavaxNamingSpiNamingManager_processURLAddrsWithJavaxNamingReference_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(JavaxNamingReference *ref, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  for (jint i = 0; i < [((JavaxNamingReference *) nil_chk(ref)) size]; i++) {
    JavaxNamingRefAddr *addr = [ref getWithInt:i];
    if ([addr isKindOfClass:[JavaxNamingStringRefAddr class]] && [((NSString *) nil_chk([((JavaxNamingRefAddr *) nil_chk(addr)) getType])) java_equalsIgnoreCase:@"URL"]) {
      NSString *url = (NSString *) cast_chk([((JavaxNamingRefAddr *) nil_chk(addr)) getContent], [NSString class]);
      id answer = JavaxNamingSpiNamingManager_processURLWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(url, name, nameCtx, environment);
      if (answer != nil) {
        return answer;
      }
    }
  }
  return nil;
}

id JavaxNamingSpiNamingManager_processURLWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id refInfo, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  id answer;
  if ([refInfo isKindOfClass:[NSString class]]) {
    NSString *url = (NSString *) cast_chk(refInfo, [NSString class]);
    NSString *scheme = JavaxNamingSpiNamingManager_getURLSchemeWithNSString_(url);
    if (scheme != nil) {
      answer = JavaxNamingSpiNamingManager_getURLObjectWithNSString_withId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(scheme, refInfo, name, nameCtx, environment);
      if (answer != nil) {
        return answer;
      }
    }
  }
  if ([IOSClass_arrayType(NSString_class_(), 1) isInstance:refInfo]) {
    IOSObjectArray *urls = (IOSObjectArray *) cast_check(refInfo, IOSClass_arrayType(NSString_class_(), 1));
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(urls))->size_; i++) {
      NSString *scheme = JavaxNamingSpiNamingManager_getURLSchemeWithNSString_(IOSObjectArray_Get(urls, i));
      if (scheme != nil) {
        answer = JavaxNamingSpiNamingManager_getURLObjectWithNSString_withId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(scheme, refInfo, name, nameCtx, environment);
        if (answer != nil) return answer;
      }
    }
  }
  return nil;
}

id<JavaxNamingContext> JavaxNamingSpiNamingManager_getContextWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id obj, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  id answer;
  if ([JavaxNamingContext_class_() isInstance:obj]) {
    return (id<JavaxNamingContext>) cast_check(obj, JavaxNamingContext_class_());
  }
  @try {
    answer = JavaxNamingSpiNamingManager_getObjectInstanceWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(obj, name, nameCtx, environment);
  }
  @catch (JavaxNamingNamingException *e) {
    @throw e;
  }
  @catch (JavaLangException *e) {
    JavaxNamingNamingException *ne = create_JavaxNamingNamingException_init();
    [ne setRootCauseWithJavaLangThrowable:e];
    @throw ne;
  }
  return ([JavaxNamingContext_class_() isInstance:answer]) ? (id<JavaxNamingContext>) cast_check(answer, JavaxNamingContext_class_()) : nil;
}

id<JavaxNamingSpiResolver> JavaxNamingSpiNamingManager_getResolverWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id obj, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  id answer;
  if ([JavaxNamingSpiResolver_class_() isInstance:obj]) {
    return (id<JavaxNamingSpiResolver>) cast_check(obj, JavaxNamingSpiResolver_class_());
  }
  @try {
    answer = JavaxNamingSpiNamingManager_getObjectInstanceWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(obj, name, nameCtx, environment);
  }
  @catch (JavaxNamingNamingException *e) {
    @throw e;
  }
  @catch (JavaLangException *e) {
    JavaxNamingNamingException *ne = create_JavaxNamingNamingException_init();
    [ne setRootCauseWithJavaLangThrowable:e];
    @throw ne;
  }
  return ([JavaxNamingSpiResolver_class_() isInstance:answer]) ? (id<JavaxNamingSpiResolver>) cast_check(answer, JavaxNamingSpiResolver_class_()) : nil;
}

id<JavaxNamingContext> JavaxNamingSpiNamingManager_getURLContextWithNSString_withJavaUtilHashtable_(NSString *scheme, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  id answer = JavaxNamingSpiNamingManager_getURLObjectWithNSString_withId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(scheme, nil, nil, nil, environment);
  if ([JavaxNamingContext_class_() isInstance:answer]) {
    return (id<JavaxNamingContext>) cast_check(answer, JavaxNamingContext_class_());
  }
  else {
    return nil;
  }
}

id JavaxNamingSpiNamingManager_getURLObjectWithNSString_withId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(NSString *scheme, id urlInfo, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  id<JavaxNamingSpiObjectFactory> factory = (id<JavaxNamingSpiObjectFactory>) cast_check(ComSunNamingInternalResourceManager_getFactoryWithNSString_withJavaUtilHashtable_withJavaxNamingContext_withNSString_withNSString_(JavaxNamingContext_URL_PKG_PREFIXES, environment, nameCtx, JreStrcat("C$C$$", '.', scheme, '.', scheme, @"URLContextFactory"), JavaxNamingSpiNamingManager_defaultPkgPrefix), JavaxNamingSpiObjectFactory_class_());
  if (factory == nil) return nil;
  @try {
    return [factory getObjectInstanceWithId:urlInfo withJavaxNamingName:name withJavaxNamingContext:nameCtx withJavaUtilHashtable:environment];
  }
  @catch (JavaxNamingNamingException *e) {
    @throw e;
  }
  @catch (JavaLangException *e) {
    JavaxNamingNamingException *ne = create_JavaxNamingNamingException_init();
    [ne setRootCauseWithJavaLangThrowable:e];
    @throw ne;
  }
}

id<JavaxNamingSpiInitialContextFactoryBuilder> JavaxNamingSpiNamingManager_getInitialContextFactoryBuilder() {
  JavaxNamingSpiNamingManager_initialize();
  @synchronized(JavaxNamingSpiNamingManager_class_()) {
    return JreRetainedLocalValue(JavaxNamingSpiNamingManager_initctx_factory_builder);
  }
}

id<JavaxNamingContext> JavaxNamingSpiNamingManager_getInitialContextWithJavaUtilHashtable_(JavaUtilHashtable *env) {
  JavaxNamingSpiNamingManager_initialize();
  id<JavaxNamingSpiInitialContextFactory> factory;
  id<JavaxNamingSpiInitialContextFactoryBuilder> builder = JavaxNamingSpiNamingManager_getInitialContextFactoryBuilder();
  if (builder == nil) {
    NSString *className_ = env != nil ? (NSString *) cast_chk([env getWithId:JavaxNamingContext_INITIAL_CONTEXT_FACTORY], [NSString class]) : nil;
    if (className_ == nil) {
      JavaxNamingNoInitialContextException *ne = create_JavaxNamingNoInitialContextException_initWithNSString_(JreStrcat("$$", @"Need to specify class name in environment or system property, or as an applet parameter, or in an application resource file:  ", JavaxNamingContext_INITIAL_CONTEXT_FACTORY));
      @throw ne;
    }
    @try {
      factory = (id<JavaxNamingSpiInitialContextFactory>) cast_check([((IOSClass *) nil_chk([((ComSunNamingInternalVersionHelper *) nil_chk(JavaxNamingSpiNamingManager_helper)) loadClassWithNSString:className_])) newInstance], JavaxNamingSpiInitialContextFactory_class_());
    }
    @catch (JavaLangException *e) {
      JavaxNamingNoInitialContextException *ne = create_JavaxNamingNoInitialContextException_initWithNSString_(JreStrcat("$$", @"Cannot instantiate class: ", className_));
      [ne setRootCauseWithJavaLangThrowable:e];
      @throw ne;
    }
  }
  else {
    factory = [builder createInitialContextFactoryWithJavaUtilHashtable:env];
  }
  return [((id<JavaxNamingSpiInitialContextFactory>) nil_chk(factory)) getInitialContextWithJavaUtilHashtable:env];
}

void JavaxNamingSpiNamingManager_setInitialContextFactoryBuilderWithJavaxNamingSpiInitialContextFactoryBuilder_(id<JavaxNamingSpiInitialContextFactoryBuilder> builder) {
  JavaxNamingSpiNamingManager_initialize();
  @synchronized(JavaxNamingSpiNamingManager_class_()) {
    if (JavaxNamingSpiNamingManager_initctx_factory_builder != nil) @throw create_JavaLangIllegalStateException_initWithNSString_(@"InitialContextFactoryBuilder already set");
    JavaLangSecurityManager *security = JavaLangSystem_getSecurityManager();
    if (security != nil) {
      [security checkSetFactory];
    }
    JreStrongAssign(&JavaxNamingSpiNamingManager_initctx_factory_builder, builder);
  }
}

jboolean JavaxNamingSpiNamingManager_hasInitialContextFactoryBuilder() {
  JavaxNamingSpiNamingManager_initialize();
  return (JavaxNamingSpiNamingManager_getInitialContextFactoryBuilder() != nil);
}

id<JavaxNamingContext> JavaxNamingSpiNamingManager_getContinuationContextWithJavaxNamingCannotProceedException_(JavaxNamingCannotProceedException *cpe) {
  JavaxNamingSpiNamingManager_initialize();
  JavaUtilHashtable *env = [((JavaxNamingCannotProceedException *) nil_chk(cpe)) getEnvironment];
  if (env == nil) {
    env = create_JavaUtilHashtable_initWithInt_(7);
  }
  else {
    env = (JavaUtilHashtable *) cast_chk([env java_clone], [JavaUtilHashtable class]);
  }
  [((JavaUtilHashtable *) nil_chk(env)) putWithId:JavaxNamingSpiNamingManager_CPE withId:cpe];
  JavaxNamingSpiContinuationContext *cctx = create_JavaxNamingSpiContinuationContext_initWithJavaxNamingCannotProceedException_withJavaUtilHashtable_(cpe, env);
  return [cctx getTargetContext];
}

id JavaxNamingSpiNamingManager_getStateToBindWithId_withJavaxNamingName_withJavaxNamingContext_withJavaUtilHashtable_(id obj, id<JavaxNamingName> name, id<JavaxNamingContext> nameCtx, JavaUtilHashtable *environment) {
  JavaxNamingSpiNamingManager_initialize();
  ComSunNamingInternalFactoryEnumeration *factories = ComSunNamingInternalResourceManager_getFactoriesWithNSString_withJavaUtilHashtable_withJavaxNamingContext_(JavaxNamingContext_STATE_FACTORIES, environment, nameCtx);
  if (factories == nil) {
    return obj;
  }
  id<JavaxNamingSpiStateFactory> factory;
  id answer = nil;
  while (answer == nil && [factories hasMore]) {
    factory = (id<JavaxNamingSpiStateFactory>) cast_check([factories next], JavaxNamingSpiStateFactory_class_());
    answer = [((id<JavaxNamingSpiStateFactory>) nil_chk(factory)) getStateToBindWithId:obj withJavaxNamingName:name withJavaxNamingContext:nameCtx withJavaUtilHashtable:environment];
  }
  return (answer != nil) ? answer : obj;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingSpiNamingManager)