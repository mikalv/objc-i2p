//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/RandomIterator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/BitSet.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/Random.h"
#include "java/util/function/Consumer.h"
#include "net/i2p/router/util/RandomIterator.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SystemVersion.h"

@interface NetI2pRouterUtilRandomIterator () {
 @public
  JavaUtilBitSet *served_;
  jint servedCount_;
  id<JavaUtilList> list_;
  jint LIST_SIZE_;
  JavaUtilRandom *rand_;
  jint lower_;
  jint upper_;
}

- (jint)previousClearBitWithInt:(jint)n;

- (jint)nextClearBitWithInt:(jint)n;

+ (void)testWithInt:(jint)n;

+ (void)testAndroid;

@end

J2OBJC_FIELD_SETTER(NetI2pRouterUtilRandomIterator, served_, JavaUtilBitSet *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilRandomIterator, list_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilRandomIterator, rand_, JavaUtilRandom *)

inline jboolean NetI2pRouterUtilRandomIterator_get_hasAndroidBug(void);
static jboolean NetI2pRouterUtilRandomIterator_hasAndroidBug;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pRouterUtilRandomIterator, hasAndroidBug, jboolean)

__attribute__((unused)) static jint NetI2pRouterUtilRandomIterator_previousClearBitWithInt_(NetI2pRouterUtilRandomIterator *self, jint n);

__attribute__((unused)) static jint NetI2pRouterUtilRandomIterator_nextClearBitWithInt_(NetI2pRouterUtilRandomIterator *self, jint n);

__attribute__((unused)) static void NetI2pRouterUtilRandomIterator_testWithInt_(jint n);

__attribute__((unused)) static void NetI2pRouterUtilRandomIterator_testAndroid(void);

J2OBJC_INITIALIZED_DEFN(NetI2pRouterUtilRandomIterator)

@implementation NetI2pRouterUtilRandomIterator

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)list {
  NetI2pRouterUtilRandomIterator_initWithJavaUtilList_(self, list);
  return self;
}

- (jboolean)hasNext {
  return servedCount_ < LIST_SIZE_;
}

- (id)next {
  if (![self hasNext]) @throw create_JavaUtilNoSuchElementException_init();
  jint range = upper_ - lower_ + 1;
  jint start = lower_ + [((JavaUtilRandom *) nil_chk(rand_)) nextIntWithInt:range];
  jint index;
  if ((start % 2) == 0) index = [((JavaUtilBitSet *) nil_chk(served_)) nextClearBitWithInt:start];
  else index = NetI2pRouterUtilRandomIterator_previousClearBitWithInt_(self, start);
  if (index < 0) @throw create_JavaUtilNoSuchElementException_initWithNSString_(@"shouldn't happen");
  servedCount_++;
  [((JavaUtilBitSet *) nil_chk(served_)) setWithInt:index];
  if ([self hasNext]) {
    if (index == lower_) lower_ = NetI2pRouterUtilRandomIterator_hasAndroidBug ? NetI2pRouterUtilRandomIterator_nextClearBitWithInt_(self, index) : [served_ nextClearBitWithInt:index];
    else if (index == upper_) upper_ = NetI2pRouterUtilRandomIterator_previousClearBitWithInt_(self, index - 1);
  }
  return [((id<JavaUtilList>) nil_chk(list_)) getWithInt:index];
}

- (jint)previousClearBitWithInt:(jint)n {
  return NetI2pRouterUtilRandomIterator_previousClearBitWithInt_(self, n);
}

- (jint)nextClearBitWithInt:(jint)n {
  return NetI2pRouterUtilRandomIterator_nextClearBitWithInt_(self, n);
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  NetI2pRouterUtilRandomIterator_mainWithNSStringArray_(args);
}

+ (void)testWithInt:(jint)n {
  NetI2pRouterUtilRandomIterator_testWithInt_(n);
}

+ (void)testAndroid {
  NetI2pRouterUtilRandomIterator_testAndroid();
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(served_);
  RELEASE_(list_);
  RELEASE_(rand_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "I", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 5, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 8, 4, -1, -1, -1, -1 },
    { NULL, "V", 0xa, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithJavaUtilList:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(previousClearBitWithInt:);
  methods[4].selector = @selector(nextClearBitWithInt:);
  methods[5].selector = @selector(remove);
  methods[6].selector = @selector(mainWithNSStringArray:);
  methods[7].selector = @selector(testWithInt:);
  methods[8].selector = @selector(testAndroid);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "served_", "LJavaUtilBitSet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "servedCount_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "list_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "LIST_SIZE_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "rand_", "LJavaUtilRandom;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "lower_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "upper_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "hasAndroidBug", "Z", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilList;", "(Ljava/util/List<TE;>;)V", "()TE;", "previousClearBit", "I", "nextClearBit", "main", "[LNSString;", "test", "Ljava/util/List<TE;>;", &NetI2pRouterUtilRandomIterator_hasAndroidBug, "<E:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TE;>;" };
  static const J2ObjcClassInfo _NetI2pRouterUtilRandomIterator = { "RandomIterator", "net.i2p.router.util", ptrTable, methods, fields, 7, 0x1, 9, 8, -1, -1, -1, 11, -1 };
  return &_NetI2pRouterUtilRandomIterator;
}

+ (void)initialize {
  if (self == [NetI2pRouterUtilRandomIterator class]) {
    {
      if (NetI2pUtilSystemVersion_isAndroid()) {
        jint ver = NetI2pUtilSystemVersion_getAndroidVersion();
        NetI2pRouterUtilRandomIterator_hasAndroidBug = (ver == 11 || ver == 0);
        if (NetI2pRouterUtilRandomIterator_hasAndroidBug) NetI2pRouterUtilRandomIterator_testAndroid();
      }
      else {
        NetI2pRouterUtilRandomIterator_hasAndroidBug = false;
      }
    }
    J2OBJC_SET_INITIALIZED(NetI2pRouterUtilRandomIterator)
  }
}

@end

void NetI2pRouterUtilRandomIterator_initWithJavaUtilList_(NetI2pRouterUtilRandomIterator *self, id<JavaUtilList> list) {
  NSObject_init(self);
  self->servedCount_ = 0;
  JreStrongAssign(&self->rand_, NetI2pUtilRandomSource_getInstance());
  JreStrongAssign(&self->list_, list);
  self->LIST_SIZE_ = [((id<JavaUtilList>) nil_chk(list)) size];
  JreStrongAssignAndConsume(&self->served_, new_JavaUtilBitSet_initWithInt_(self->LIST_SIZE_));
  self->upper_ = self->LIST_SIZE_ - 1;
}

NetI2pRouterUtilRandomIterator *new_NetI2pRouterUtilRandomIterator_initWithJavaUtilList_(id<JavaUtilList> list) {
  J2OBJC_NEW_IMPL(NetI2pRouterUtilRandomIterator, initWithJavaUtilList_, list)
}

NetI2pRouterUtilRandomIterator *create_NetI2pRouterUtilRandomIterator_initWithJavaUtilList_(id<JavaUtilList> list) {
  J2OBJC_CREATE_IMPL(NetI2pRouterUtilRandomIterator, initWithJavaUtilList_, list)
}

jint NetI2pRouterUtilRandomIterator_previousClearBitWithInt_(NetI2pRouterUtilRandomIterator *self, jint n) {
  for (jint i = n; i >= self->lower_; i--) {
    if (![((JavaUtilBitSet *) nil_chk(self->served_)) getWithInt:i]) {
      return i;
    }
  }
  return -1;
}

jint NetI2pRouterUtilRandomIterator_nextClearBitWithInt_(NetI2pRouterUtilRandomIterator *self, jint n) {
  for (jint i = n; i <= self->upper_; i++) {
    if (![((JavaUtilBitSet *) nil_chk(self->served_)) getWithInt:i]) {
      return i;
    }
  }
  return -1;
}

void NetI2pRouterUtilRandomIterator_mainWithNSStringArray_(IOSObjectArray *args) {
  NetI2pRouterUtilRandomIterator_initialize();
  NetI2pRouterUtilRandomIterator_testAndroid();
  NetI2pRouterUtilRandomIterator_testWithInt_(0);
  NetI2pRouterUtilRandomIterator_testWithInt_(1);
  NetI2pRouterUtilRandomIterator_testWithInt_(2);
  NetI2pRouterUtilRandomIterator_testWithInt_(1000);
}

void NetI2pRouterUtilRandomIterator_testWithInt_(jint n) {
  NetI2pRouterUtilRandomIterator_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"testing with ", n)];
  id<JavaUtilList> l = create_JavaUtilArrayList_initWithInt_(n);
  for (jint i = 0; i < n; i++) {
    [l addWithId:JavaLangInteger_valueOfWithInt_(i)];
  }
  for (id<JavaUtilIterator> iter = create_NetI2pRouterUtilRandomIterator_initWithJavaUtilList_(l); [iter hasNext]; ) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:[((JavaLangInteger *) nil_chk([iter next])) description]];
  }
}

void NetI2pRouterUtilRandomIterator_testAndroid() {
  NetI2pRouterUtilRandomIterator_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Checking for Android BitSet bug"];
  JavaUtilBitSet *theBitSet = create_JavaUtilBitSet_initWithInt_(864);
  for (jint exp = 0; exp < 864; exp++) {
    jint act = [theBitSet nextClearBitWithInt:0];
    if (exp != act) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:NSString_java_formatWithNSString_withNSObjectArray_(@"Test failed for: exp=%d, act=%d", [IOSObjectArray arrayWithObjects:(id[]){ JavaLangInteger_valueOfWithInt_(exp), JavaLangInteger_valueOfWithInt_(act) } count:2 type:NSObject_class_()])];
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Android BitSet bug detected, workaround implemented!"];
      return;
    }
    [theBitSet setWithInt:exp];
  }
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Android BitSet bug NOT detected, no workaround needed!"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterUtilRandomIterator)
