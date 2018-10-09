//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/Name.java
//

#include "J2ObjC_source.h"
#include "javax/naming/Name.h"

@implementation JavaxNamingName

+ (jlong)serialVersionUID {
  return JavaxNamingName_serialVersionUID;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilEnumeration;", 0x401, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x401, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x401, 5, 4, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x401, 6, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 9, 8, -1, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x401, 10, 8, 11, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x401, 10, 12, 11, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x401, 13, 14, 11, -1, -1, -1 },
    { NULL, "LJavaxNamingName;", 0x401, 13, 15, 11, -1, -1, -1 },
    { NULL, "LNSObject;", 0x401, 16, 4, 11, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(clone);
  methods[1].selector = @selector(compareToWithId:);
  methods[2].selector = @selector(size);
  methods[3].selector = @selector(isEmpty);
  methods[4].selector = @selector(getAll);
  methods[5].selector = @selector(getWithInt:);
  methods[6].selector = @selector(getPrefixWithInt:);
  methods[7].selector = @selector(getSuffixWithInt:);
  methods[8].selector = @selector(startsWithWithJavaxNamingName:);
  methods[9].selector = @selector(endsWithWithJavaxNamingName:);
  methods[10].selector = @selector(addAllWithJavaxNamingName:);
  methods[11].selector = @selector(addAllWithInt:withJavaxNamingName:);
  methods[12].selector = @selector(addWithNSString:);
  methods[13].selector = @selector(addWithInt:withNSString:);
  methods[14].selector = @selector(removeWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = JavaxNamingName_serialVersionUID, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "compareTo", "LNSObject;", "()Ljava/util/Enumeration<Ljava/lang/String;>;", "get", "I", "getPrefix", "getSuffix", "startsWith", "LJavaxNamingName;", "endsWith", "addAll", "LJavaxNamingInvalidNameException;", "ILJavaxNamingName;", "add", "LNSString;", "ILNSString;", "remove", "Ljava/lang/Object;Ljava/lang/Cloneable;Ljava/io/Serializable;Ljava/lang/Comparable<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _JavaxNamingName = { "Name", "javax.naming", ptrTable, methods, fields, 7, 0x609, 15, 1, -1, -1, -1, 17, -1 };
  return &_JavaxNamingName;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(JavaxNamingName)