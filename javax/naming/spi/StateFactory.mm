//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/spi/StateFactory.java
//

#include "J2ObjC_source.h"
#include "javax/naming/spi/StateFactory.h"

@interface JavaxNamingSpiStateFactory : NSObject

@end

@implementation JavaxNamingSpiStateFactory

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, 2, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getStateToBindWithId:withJavaxNamingName:withJavaxNamingContext:withJavaUtilHashtable:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getStateToBind", "LNSObject;LJavaxNamingName;LJavaxNamingContext;LJavaUtilHashtable;", "LJavaxNamingNamingException;", "(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable<**>;)Ljava/lang/Object;" };
  static const J2ObjcClassInfo _JavaxNamingSpiStateFactory = { "StateFactory", "javax.naming.spi", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, -1, -1 };
  return &_JavaxNamingSpiStateFactory;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxNamingSpiStateFactory)
