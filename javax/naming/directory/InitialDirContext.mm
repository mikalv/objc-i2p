//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/directory/InitialDirContext.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Hashtable.h"
#include "javax/naming/Context.h"
#include "javax/naming/InitialContext.h"
#include "javax/naming/Name.h"
#include "javax/naming/NamingEnumeration.h"
#include "javax/naming/NoInitialContextException.h"
#include "javax/naming/NotContextException.h"
#include "javax/naming/directory/Attributes.h"
#include "javax/naming/directory/DirContext.h"
#include "javax/naming/directory/InitialDirContext.h"
#include "javax/naming/directory/SearchControls.h"

@interface JavaxNamingDirectoryInitialDirContext ()

- (id<JavaxNamingDirectoryDirContext>)getURLOrDefaultInitDirCtxWithNSString:(NSString *)name;

- (id<JavaxNamingDirectoryDirContext>)getURLOrDefaultInitDirCtxWithJavaxNamingName:(id<JavaxNamingName>)name;

@end

__attribute__((unused)) static id<JavaxNamingDirectoryDirContext> JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(JavaxNamingDirectoryInitialDirContext *self, NSString *name);

__attribute__((unused)) static id<JavaxNamingDirectoryDirContext> JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(JavaxNamingDirectoryInitialDirContext *self, id<JavaxNamingName> name);

@implementation JavaxNamingDirectoryInitialDirContext

- (instancetype)initWithBoolean:(jboolean)lazy {
  JavaxNamingDirectoryInitialDirContext_initWithBoolean_(self, lazy);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  JavaxNamingDirectoryInitialDirContext_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaUtilHashtable:(JavaUtilHashtable *)environment {
  JavaxNamingDirectoryInitialDirContext_initWithJavaUtilHashtable_(self, environment);
  return self;
}

- (id<JavaxNamingDirectoryDirContext>)getURLOrDefaultInitDirCtxWithNSString:(NSString *)name {
  return JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name);
}

- (id<JavaxNamingDirectoryDirContext>)getURLOrDefaultInitDirCtxWithJavaxNamingName:(id<JavaxNamingName>)name {
  return JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name);
}

- (id<JavaxNamingDirectoryAttributes>)getAttributesWithNSString:(NSString *)name {
  return [self getAttributesWithNSString:name withNSStringArray:nil];
}

- (id<JavaxNamingDirectoryAttributes>)getAttributesWithNSString:(NSString *)name
                                              withNSStringArray:(IOSObjectArray *)attrIds {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) getAttributesWithNSString:name withNSStringArray:attrIds];
}

- (id<JavaxNamingDirectoryAttributes>)getAttributesWithJavaxNamingName:(id<JavaxNamingName>)name {
  return [self getAttributesWithJavaxNamingName:name withNSStringArray:nil];
}

- (id<JavaxNamingDirectoryAttributes>)getAttributesWithJavaxNamingName:(id<JavaxNamingName>)name
                                                     withNSStringArray:(IOSObjectArray *)attrIds {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) getAttributesWithJavaxNamingName:name withNSStringArray:attrIds];
}

- (void)modifyAttributesWithNSString:(NSString *)name
                             withInt:(jint)mod_op
  withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) modifyAttributesWithNSString:name withInt:mod_op withJavaxNamingDirectoryAttributes:attrs];
}

- (void)modifyAttributesWithJavaxNamingName:(id<JavaxNamingName>)name
                                    withInt:(jint)mod_op
         withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) modifyAttributesWithJavaxNamingName:name withInt:mod_op withJavaxNamingDirectoryAttributes:attrs];
}

- (void)modifyAttributesWithNSString:(NSString *)name
withJavaxNamingDirectoryModificationItemArray:(IOSObjectArray *)mods {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) modifyAttributesWithNSString:name withJavaxNamingDirectoryModificationItemArray:mods];
}

- (void)modifyAttributesWithJavaxNamingName:(id<JavaxNamingName>)name
withJavaxNamingDirectoryModificationItemArray:(IOSObjectArray *)mods {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) modifyAttributesWithJavaxNamingName:name withJavaxNamingDirectoryModificationItemArray:mods];
}

- (void)bindWithNSString:(NSString *)name
                  withId:(id)obj
withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) bindWithNSString:name withId:obj withJavaxNamingDirectoryAttributes:attrs];
}

- (void)bindWithJavaxNamingName:(id<JavaxNamingName>)name
                         withId:(id)obj
withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) bindWithJavaxNamingName:name withId:obj withJavaxNamingDirectoryAttributes:attrs];
}

- (void)rebindWithNSString:(NSString *)name
                    withId:(id)obj
withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) rebindWithNSString:name withId:obj withJavaxNamingDirectoryAttributes:attrs];
}

- (void)rebindWithJavaxNamingName:(id<JavaxNamingName>)name
                           withId:(id)obj
withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) rebindWithJavaxNamingName:name withId:obj withJavaxNamingDirectoryAttributes:attrs];
}

- (id<JavaxNamingDirectoryDirContext>)createSubcontextWithNSString:(NSString *)name
                                withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) createSubcontextWithNSString:name withJavaxNamingDirectoryAttributes:attrs];
}

- (id<JavaxNamingDirectoryDirContext>)createSubcontextWithJavaxNamingName:(id<JavaxNamingName>)name
                                       withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)attrs {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) createSubcontextWithJavaxNamingName:name withJavaxNamingDirectoryAttributes:attrs];
}

- (id<JavaxNamingDirectoryDirContext>)getSchemaWithNSString:(NSString *)name {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) getSchemaWithNSString:name];
}

- (id<JavaxNamingDirectoryDirContext>)getSchemaWithJavaxNamingName:(id<JavaxNamingName>)name {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) getSchemaWithJavaxNamingName:name];
}

- (id<JavaxNamingDirectoryDirContext>)getSchemaClassDefinitionWithNSString:(NSString *)name {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) getSchemaClassDefinitionWithNSString:name];
}

- (id<JavaxNamingDirectoryDirContext>)getSchemaClassDefinitionWithJavaxNamingName:(id<JavaxNamingName>)name {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) getSchemaClassDefinitionWithJavaxNamingName:name];
}

- (id<JavaxNamingNamingEnumeration>)searchWithNSString:(NSString *)name
                    withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)matchingAttributes {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) searchWithNSString:name withJavaxNamingDirectoryAttributes:matchingAttributes];
}

- (id<JavaxNamingNamingEnumeration>)searchWithJavaxNamingName:(id<JavaxNamingName>)name
                           withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)matchingAttributes {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) searchWithJavaxNamingName:name withJavaxNamingDirectoryAttributes:matchingAttributes];
}

- (id<JavaxNamingNamingEnumeration>)searchWithNSString:(NSString *)name
                    withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)matchingAttributes
                                     withNSStringArray:(IOSObjectArray *)attributesToReturn {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) searchWithNSString:name withJavaxNamingDirectoryAttributes:matchingAttributes withNSStringArray:attributesToReturn];
}

- (id<JavaxNamingNamingEnumeration>)searchWithJavaxNamingName:(id<JavaxNamingName>)name
                           withJavaxNamingDirectoryAttributes:(id<JavaxNamingDirectoryAttributes>)matchingAttributes
                                            withNSStringArray:(IOSObjectArray *)attributesToReturn {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) searchWithJavaxNamingName:name withJavaxNamingDirectoryAttributes:matchingAttributes withNSStringArray:attributesToReturn];
}

- (id<JavaxNamingNamingEnumeration>)searchWithNSString:(NSString *)name
                                          withNSString:(NSString *)filter
                withJavaxNamingDirectorySearchControls:(JavaxNamingDirectorySearchControls *)cons {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) searchWithNSString:name withNSString:filter withJavaxNamingDirectorySearchControls:cons];
}

- (id<JavaxNamingNamingEnumeration>)searchWithJavaxNamingName:(id<JavaxNamingName>)name
                                                 withNSString:(NSString *)filter
                       withJavaxNamingDirectorySearchControls:(JavaxNamingDirectorySearchControls *)cons {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) searchWithJavaxNamingName:name withNSString:filter withJavaxNamingDirectorySearchControls:cons];
}

- (id<JavaxNamingNamingEnumeration>)searchWithNSString:(NSString *)name
                                          withNSString:(NSString *)filterExpr
                                     withNSObjectArray:(IOSObjectArray *)filterArgs
                withJavaxNamingDirectorySearchControls:(JavaxNamingDirectorySearchControls *)cons {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(self, name))) searchWithNSString:name withNSString:filterExpr withNSObjectArray:filterArgs withJavaxNamingDirectorySearchControls:cons];
}

- (id<JavaxNamingNamingEnumeration>)searchWithJavaxNamingName:(id<JavaxNamingName>)name
                                                 withNSString:(NSString *)filterExpr
                                            withNSObjectArray:(IOSObjectArray *)filterArgs
                       withJavaxNamingDirectorySearchControls:(JavaxNamingDirectorySearchControls *)cons {
  return [((id<JavaxNamingDirectoryDirContext>) nil_chk(JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(self, name))) searchWithJavaxNamingName:name withNSString:filterExpr withNSObjectArray:filterArgs withJavaxNamingDirectorySearchControls:cons];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, 3, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x2, 4, 5, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x2, 4, 6, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttributes;", 0x1, 7, 5, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttributes;", 0x1, 7, 8, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttributes;", 0x1, 7, 6, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryAttributes;", 0x1, 7, 9, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 12, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 13, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 14, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 17, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 16, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 17, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x1, 19, 20, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x1, 19, 21, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x1, 22, 5, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x1, 22, 6, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x1, 23, 5, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingDirectoryDirContext;", 0x1, 23, 6, 1, -1, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 20, 1, 25, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 21, 1, 26, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 27, 1, 28, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 29, 1, 30, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 31, 1, 32, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 33, 1, 34, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 35, 1, 36, -1, -1 },
    { NULL, "LJavaxNamingNamingEnumeration;", 0x1, 24, 37, 1, 38, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithBoolean:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithJavaUtilHashtable:);
  methods[3].selector = @selector(getURLOrDefaultInitDirCtxWithNSString:);
  methods[4].selector = @selector(getURLOrDefaultInitDirCtxWithJavaxNamingName:);
  methods[5].selector = @selector(getAttributesWithNSString:);
  methods[6].selector = @selector(getAttributesWithNSString:withNSStringArray:);
  methods[7].selector = @selector(getAttributesWithJavaxNamingName:);
  methods[8].selector = @selector(getAttributesWithJavaxNamingName:withNSStringArray:);
  methods[9].selector = @selector(modifyAttributesWithNSString:withInt:withJavaxNamingDirectoryAttributes:);
  methods[10].selector = @selector(modifyAttributesWithJavaxNamingName:withInt:withJavaxNamingDirectoryAttributes:);
  methods[11].selector = @selector(modifyAttributesWithNSString:withJavaxNamingDirectoryModificationItemArray:);
  methods[12].selector = @selector(modifyAttributesWithJavaxNamingName:withJavaxNamingDirectoryModificationItemArray:);
  methods[13].selector = @selector(bindWithNSString:withId:withJavaxNamingDirectoryAttributes:);
  methods[14].selector = @selector(bindWithJavaxNamingName:withId:withJavaxNamingDirectoryAttributes:);
  methods[15].selector = @selector(rebindWithNSString:withId:withJavaxNamingDirectoryAttributes:);
  methods[16].selector = @selector(rebindWithJavaxNamingName:withId:withJavaxNamingDirectoryAttributes:);
  methods[17].selector = @selector(createSubcontextWithNSString:withJavaxNamingDirectoryAttributes:);
  methods[18].selector = @selector(createSubcontextWithJavaxNamingName:withJavaxNamingDirectoryAttributes:);
  methods[19].selector = @selector(getSchemaWithNSString:);
  methods[20].selector = @selector(getSchemaWithJavaxNamingName:);
  methods[21].selector = @selector(getSchemaClassDefinitionWithNSString:);
  methods[22].selector = @selector(getSchemaClassDefinitionWithJavaxNamingName:);
  methods[23].selector = @selector(searchWithNSString:withJavaxNamingDirectoryAttributes:);
  methods[24].selector = @selector(searchWithJavaxNamingName:withJavaxNamingDirectoryAttributes:);
  methods[25].selector = @selector(searchWithNSString:withJavaxNamingDirectoryAttributes:withNSStringArray:);
  methods[26].selector = @selector(searchWithJavaxNamingName:withJavaxNamingDirectoryAttributes:withNSStringArray:);
  methods[27].selector = @selector(searchWithNSString:withNSString:withJavaxNamingDirectorySearchControls:);
  methods[28].selector = @selector(searchWithJavaxNamingName:withNSString:withJavaxNamingDirectorySearchControls:);
  methods[29].selector = @selector(searchWithNSString:withNSString:withNSObjectArray:withJavaxNamingDirectorySearchControls:);
  methods[30].selector = @selector(searchWithJavaxNamingName:withNSString:withNSObjectArray:withJavaxNamingDirectorySearchControls:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "Z", "LJavaxNamingNamingException;", "LJavaUtilHashtable;", "(Ljava/util/Hashtable<**>;)V", "getURLOrDefaultInitDirCtx", "LNSString;", "LJavaxNamingName;", "getAttributes", "LNSString;[LNSString;", "LJavaxNamingName;[LNSString;", "modifyAttributes", "LNSString;ILJavaxNamingDirectoryAttributes;", "LJavaxNamingName;ILJavaxNamingDirectoryAttributes;", "LNSString;[LJavaxNamingDirectoryModificationItem;", "LJavaxNamingName;[LJavaxNamingDirectoryModificationItem;", "bind", "LNSString;LNSObject;LJavaxNamingDirectoryAttributes;", "LJavaxNamingName;LNSObject;LJavaxNamingDirectoryAttributes;", "rebind", "createSubcontext", "LNSString;LJavaxNamingDirectoryAttributes;", "LJavaxNamingName;LJavaxNamingDirectoryAttributes;", "getSchema", "getSchemaClassDefinition", "search", "(Ljava/lang/String;Ljavax/naming/directory/Attributes;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "LNSString;LJavaxNamingDirectoryAttributes;[LNSString;", "(Ljava/lang/String;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "LJavaxNamingName;LJavaxNamingDirectoryAttributes;[LNSString;", "(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "LNSString;LNSString;LJavaxNamingDirectorySearchControls;", "(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "LJavaxNamingName;LNSString;LJavaxNamingDirectorySearchControls;", "(Ljavax/naming/Name;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "LNSString;LNSString;[LNSObject;LJavaxNamingDirectorySearchControls;", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;", "LJavaxNamingName;LNSString;[LNSObject;LJavaxNamingDirectorySearchControls;", "(Ljavax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration<Ljavax/naming/directory/SearchResult;>;" };
  static const J2ObjcClassInfo _JavaxNamingDirectoryInitialDirContext = { "InitialDirContext", "javax.naming.directory", ptrTable, methods, NULL, 7, 0x1, 31, 0, -1, -1, -1, -1, -1 };
  return &_JavaxNamingDirectoryInitialDirContext;
}

@end

void JavaxNamingDirectoryInitialDirContext_initWithBoolean_(JavaxNamingDirectoryInitialDirContext *self, jboolean lazy) {
  JavaxNamingInitialContext_initWithBoolean_(self, lazy);
}

JavaxNamingDirectoryInitialDirContext *new_JavaxNamingDirectoryInitialDirContext_initWithBoolean_(jboolean lazy) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInitialDirContext, initWithBoolean_, lazy)
}

JavaxNamingDirectoryInitialDirContext *create_JavaxNamingDirectoryInitialDirContext_initWithBoolean_(jboolean lazy) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInitialDirContext, initWithBoolean_, lazy)
}

void JavaxNamingDirectoryInitialDirContext_init(JavaxNamingDirectoryInitialDirContext *self) {
  JavaxNamingInitialContext_init(self);
}

JavaxNamingDirectoryInitialDirContext *new_JavaxNamingDirectoryInitialDirContext_init() {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInitialDirContext, init)
}

JavaxNamingDirectoryInitialDirContext *create_JavaxNamingDirectoryInitialDirContext_init() {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInitialDirContext, init)
}

void JavaxNamingDirectoryInitialDirContext_initWithJavaUtilHashtable_(JavaxNamingDirectoryInitialDirContext *self, JavaUtilHashtable *environment) {
  JavaxNamingInitialContext_initWithJavaUtilHashtable_(self, environment);
}

JavaxNamingDirectoryInitialDirContext *new_JavaxNamingDirectoryInitialDirContext_initWithJavaUtilHashtable_(JavaUtilHashtable *environment) {
  J2OBJC_NEW_IMPL(JavaxNamingDirectoryInitialDirContext, initWithJavaUtilHashtable_, environment)
}

JavaxNamingDirectoryInitialDirContext *create_JavaxNamingDirectoryInitialDirContext_initWithJavaUtilHashtable_(JavaUtilHashtable *environment) {
  J2OBJC_CREATE_IMPL(JavaxNamingDirectoryInitialDirContext, initWithJavaUtilHashtable_, environment)
}

id<JavaxNamingDirectoryDirContext> JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithNSString_(JavaxNamingDirectoryInitialDirContext *self, NSString *name) {
  id<JavaxNamingContext> answer = [self getURLOrDefaultInitCtxWithNSString:name];
  if (!([JavaxNamingDirectoryDirContext_class_() isInstance:answer])) {
    if (answer == nil) {
      @throw create_JavaxNamingNoInitialContextException_init();
    }
    else {
      @throw create_JavaxNamingNotContextException_initWithNSString_(@"Not an instance of DirContext");
    }
  }
  return (id<JavaxNamingDirectoryDirContext>) cast_check(answer, JavaxNamingDirectoryDirContext_class_());
}

id<JavaxNamingDirectoryDirContext> JavaxNamingDirectoryInitialDirContext_getURLOrDefaultInitDirCtxWithJavaxNamingName_(JavaxNamingDirectoryInitialDirContext *self, id<JavaxNamingName> name) {
  id<JavaxNamingContext> answer = [self getURLOrDefaultInitCtxWithJavaxNamingName:name];
  if (!([JavaxNamingDirectoryDirContext_class_() isInstance:answer])) {
    if (answer == nil) {
      @throw create_JavaxNamingNoInitialContextException_init();
    }
    else {
      @throw create_JavaxNamingNotContextException_initWithNSString_(@"Not an instance of DirContext");
    }
  }
  return (id<JavaxNamingDirectoryDirContext>) cast_check(answer, JavaxNamingDirectoryDirContext_class_());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(JavaxNamingDirectoryInitialDirContext)
