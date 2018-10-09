//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/gnu/getopt/LongOpt.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "gnu/getopt/LongOpt.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"
#include "java/text/MessageFormat.h"
#include "java/util/Locale.h"
#include "java/util/ResourceBundle.h"

@interface GnuGetoptLongOpt () {
 @public
  JavaUtilResourceBundle *_messages_;
}

@end

J2OBJC_FIELD_SETTER(GnuGetoptLongOpt, _messages_, JavaUtilResourceBundle *)

@implementation GnuGetoptLongOpt

+ (jint)NO_ARGUMENT {
  return GnuGetoptLongOpt_NO_ARGUMENT;
}

+ (jint)REQUIRED_ARGUMENT {
  return GnuGetoptLongOpt_REQUIRED_ARGUMENT;
}

+ (jint)OPTIONAL_ARGUMENT {
  return GnuGetoptLongOpt_OPTIONAL_ARGUMENT;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)has_arg
        withJavaLangStringBuffer:(JavaLangStringBuffer *)flag
                         withInt:(jint)val {
  GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(self, name, has_arg, flag, val);
  return self;
}

- (NSString *)getName {
  return (name_);
}

- (jint)getHasArg {
  return (has_arg_);
}

- (JavaLangStringBuffer *)getFlag {
  return (flag_);
}

- (jint)getVal {
  return (val_);
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(flag_);
  RELEASE_(_messages_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withInt:withJavaLangStringBuffer:withInt:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(getHasArg);
  methods[3].selector = @selector(getFlag);
  methods[4].selector = @selector(getVal);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NO_ARGUMENT", "I", .constantValue.asInt = GnuGetoptLongOpt_NO_ARGUMENT, 0x19, -1, -1, -1, -1 },
    { "REQUIRED_ARGUMENT", "I", .constantValue.asInt = GnuGetoptLongOpt_REQUIRED_ARGUMENT, 0x19, -1, -1, -1, -1 },
    { "OPTIONAL_ARGUMENT", "I", .constantValue.asInt = GnuGetoptLongOpt_OPTIONAL_ARGUMENT, 0x19, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "has_arg_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "flag_", "LJavaLangStringBuffer;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "val_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "_messages_", "LJavaUtilResourceBundle;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;ILJavaLangStringBuffer;I", "LJavaLangIllegalArgumentException;" };
  static const J2ObjcClassInfo _GnuGetoptLongOpt = { "LongOpt", "gnu.getopt", ptrTable, methods, fields, 7, 0x1, 5, 8, -1, -1, -1, -1, -1 };
  return &_GnuGetoptLongOpt;
}

@end

void GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(GnuGetoptLongOpt *self, NSString *name, jint has_arg, JavaLangStringBuffer *flag, jint val) {
  NSObject_init(self);
  JreStrongAssign(&self->_messages_, JavaUtilResourceBundle_getBundleWithNSString_withJavaUtilLocale_(@"gnu/getopt/MessagesBundle", JavaUtilLocale_getDefault()));
  if ((has_arg != GnuGetoptLongOpt_NO_ARGUMENT) && (has_arg != GnuGetoptLongOpt_REQUIRED_ARGUMENT) && (has_arg != GnuGetoptLongOpt_OPTIONAL_ARGUMENT)) {
    IOSObjectArray *msgArgs = [IOSObjectArray arrayWithObjects:(id[]){ JavaLangInteger_toStringWithInt_(has_arg) } count:1 type:NSObject_class_()];
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JavaTextMessageFormat_formatWithNSString_withNSObjectArray_([((JavaUtilResourceBundle *) nil_chk(self->_messages_)) getStringWithNSString:@"getopt.invalidValue"], msgArgs));
  }
  JreStrongAssign(&self->name_, name);
  self->has_arg_ = has_arg;
  JreStrongAssign(&self->flag_, flag);
  self->val_ = val;
}

GnuGetoptLongOpt *new_GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(NSString *name, jint has_arg, JavaLangStringBuffer *flag, jint val) {
  J2OBJC_NEW_IMPL(GnuGetoptLongOpt, initWithNSString_withInt_withJavaLangStringBuffer_withInt_, name, has_arg, flag, val)
}

GnuGetoptLongOpt *create_GnuGetoptLongOpt_initWithNSString_withInt_withJavaLangStringBuffer_withInt_(NSString *name, jint has_arg, JavaLangStringBuffer *flag, jint val) {
  J2OBJC_CREATE_IMPL(GnuGetoptLongOpt, initWithNSString_withInt_withJavaLangStringBuffer_withInt_, name, has_arg, flag, val)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GnuGetoptLongOpt)
