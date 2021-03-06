//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/CachedIteratorArrayList.java
//

#include "J2ObjC_source.h"
#include "java/io/Serializable.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/ConcurrentModificationException.h"
#include "java/util/Iterator.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/function/Consumer.h"
#include "net/i2p/router/util/CachedIteratorArrayList.h"

@class NetI2pRouterUtilCachedIteratorArrayList_CachedIterator;

@interface NetI2pRouterUtilCachedIteratorArrayList () {
 @public
  NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *iterator_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pRouterUtilCachedIteratorArrayList, iterator_, NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *)

inline jlong NetI2pRouterUtilCachedIteratorArrayList_get_serialVersionUID(void);
#define NetI2pRouterUtilCachedIteratorArrayList_serialVersionUID 4863212596318574111LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterUtilCachedIteratorArrayList, serialVersionUID, jlong)

@interface NetI2pRouterUtilCachedIteratorArrayList_CachedIterator : NSObject < JavaUtilIterator, JavaIoSerializable > {
 @public
  NetI2pRouterUtilCachedIteratorArrayList *this$0_;
  jint cursor_;
  jint lastRet_;
  jint expectedModCount_;
}

- (instancetype)initWithNetI2pRouterUtilCachedIteratorArrayList:(NetI2pRouterUtilCachedIteratorArrayList *)outer$;

- (void)reset;

- (jboolean)hasNext;

- (id)next;

- (void)remove;

- (void)checkForComodification;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator)

__attribute__((unused)) static void NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *self, NetI2pRouterUtilCachedIteratorArrayList *outer$);

__attribute__((unused)) static NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *new_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(NetI2pRouterUtilCachedIteratorArrayList *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *create_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(NetI2pRouterUtilCachedIteratorArrayList *outer$);

__attribute__((unused)) static void NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_checkForComodification(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *self);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator)

@implementation NetI2pRouterUtilCachedIteratorArrayList

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pRouterUtilCachedIteratorArrayList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  NetI2pRouterUtilCachedIteratorArrayList_initWithJavaUtilCollection_(self, c);
  return self;
}

- (instancetype)initWithInt:(jint)initialCapacity {
  NetI2pRouterUtilCachedIteratorArrayList_initWithInt_(self, initialCapacity);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  [((NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *) nil_chk(iterator_)) reset];
  return iterator_;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(iterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaUtilCollection:);
  methods[2].selector = @selector(initWithInt:);
  methods[3].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = NetI2pRouterUtilCachedIteratorArrayList_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "iterator_", "LNetI2pRouterUtilCachedIteratorArrayList_CachedIterator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilCollection;", "(Ljava/util/Collection<+TE;>;)V", "I", "()Ljava/util/Iterator<TE;>;", "LNetI2pRouterUtilCachedIteratorArrayList_CachedIterator;", "<E:Ljava/lang/Object;>Ljava/util/ArrayList<TE;>;" };
  static const J2ObjcClassInfo _NetI2pRouterUtilCachedIteratorArrayList = { "CachedIteratorArrayList", "net.i2p.router.util", ptrTable, methods, fields, 7, 0x1, 4, 2, -1, 4, -1, 5, -1 };
  return &_NetI2pRouterUtilCachedIteratorArrayList;
}

@end

void NetI2pRouterUtilCachedIteratorArrayList_init(NetI2pRouterUtilCachedIteratorArrayList *self) {
  JavaUtilArrayList_init(self);
  JreStrongAssignAndConsume(&self->iterator_, new_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(self));
}

NetI2pRouterUtilCachedIteratorArrayList *new_NetI2pRouterUtilCachedIteratorArrayList_init() {
  J2OBJC_NEW_IMPL(NetI2pRouterUtilCachedIteratorArrayList, init)
}

NetI2pRouterUtilCachedIteratorArrayList *create_NetI2pRouterUtilCachedIteratorArrayList_init() {
  J2OBJC_CREATE_IMPL(NetI2pRouterUtilCachedIteratorArrayList, init)
}

void NetI2pRouterUtilCachedIteratorArrayList_initWithJavaUtilCollection_(NetI2pRouterUtilCachedIteratorArrayList *self, id<JavaUtilCollection> c) {
  JavaUtilArrayList_initWithJavaUtilCollection_(self, c);
  JreStrongAssignAndConsume(&self->iterator_, new_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(self));
}

NetI2pRouterUtilCachedIteratorArrayList *new_NetI2pRouterUtilCachedIteratorArrayList_initWithJavaUtilCollection_(id<JavaUtilCollection> c) {
  J2OBJC_NEW_IMPL(NetI2pRouterUtilCachedIteratorArrayList, initWithJavaUtilCollection_, c)
}

NetI2pRouterUtilCachedIteratorArrayList *create_NetI2pRouterUtilCachedIteratorArrayList_initWithJavaUtilCollection_(id<JavaUtilCollection> c) {
  J2OBJC_CREATE_IMPL(NetI2pRouterUtilCachedIteratorArrayList, initWithJavaUtilCollection_, c)
}

void NetI2pRouterUtilCachedIteratorArrayList_initWithInt_(NetI2pRouterUtilCachedIteratorArrayList *self, jint initialCapacity) {
  JavaUtilArrayList_initWithInt_(self, initialCapacity);
  JreStrongAssignAndConsume(&self->iterator_, new_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(self));
}

NetI2pRouterUtilCachedIteratorArrayList *new_NetI2pRouterUtilCachedIteratorArrayList_initWithInt_(jint initialCapacity) {
  J2OBJC_NEW_IMPL(NetI2pRouterUtilCachedIteratorArrayList, initWithInt_, initialCapacity)
}

NetI2pRouterUtilCachedIteratorArrayList *create_NetI2pRouterUtilCachedIteratorArrayList_initWithInt_(jint initialCapacity) {
  J2OBJC_CREATE_IMPL(NetI2pRouterUtilCachedIteratorArrayList, initWithInt_, initialCapacity)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterUtilCachedIteratorArrayList)

@implementation NetI2pRouterUtilCachedIteratorArrayList_CachedIterator

- (instancetype)initWithNetI2pRouterUtilCachedIteratorArrayList:(NetI2pRouterUtilCachedIteratorArrayList *)outer$ {
  NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(self, outer$);
  return self;
}

- (void)reset {
  cursor_ = 0;
  lastRet_ = -1;
  expectedModCount_ = this$0_->modCount_;
}

- (jboolean)hasNext {
  return cursor_ != [this$0_ size];
}

- (id)next {
  NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_checkForComodification(self);
  @try {
    jint i = cursor_;
    id next = [this$0_ getWithInt:i];
    lastRet_ = i;
    cursor_ = i + 1;
    return next;
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_checkForComodification(self);
    @throw create_JavaUtilNoSuchElementException_init();
  }
}

- (void)remove {
  if (lastRet_ < 0) @throw create_JavaLangIllegalStateException_init();
  NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_checkForComodification(self);
  @try {
    [this$0_ removeWithInt:lastRet_];
    if (lastRet_ < cursor_) cursor_--;
    lastRet_ = -1;
    expectedModCount_ = this$0_->modCount_;
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    @throw create_JavaUtilConcurrentModificationException_init();
  }
}

- (void)checkForComodification {
  NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_checkForComodification(self);
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 0, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x10, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterUtilCachedIteratorArrayList:);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(hasNext);
  methods[3].selector = @selector(next);
  methods[4].selector = @selector(remove);
  methods[5].selector = @selector(checkForComodification);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pRouterUtilCachedIteratorArrayList;", .constantValue.asLong = 0, 0x1012, -1, -1, 1, -1 },
    { "cursor_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastRet_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "expectedModCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "()TE;", "Lnet/i2p/router/util/CachedIteratorArrayList<TE;>;", "LNetI2pRouterUtilCachedIteratorArrayList;", "Ljava/lang/Object;Ljava/util/Iterator<TE;>;Ljava/io/Serializable;" };
  static const J2ObjcClassInfo _NetI2pRouterUtilCachedIteratorArrayList_CachedIterator = { "CachedIterator", "net.i2p.router.util", ptrTable, methods, fields, 7, 0x2, 6, 4, 2, -1, -1, 3, -1 };
  return &_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator;
}

@end

void NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *self, NetI2pRouterUtilCachedIteratorArrayList *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->cursor_ = 0;
  self->lastRet_ = -1;
  self->expectedModCount_ = outer$->modCount_;
}

NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *new_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(NetI2pRouterUtilCachedIteratorArrayList *outer$) {
  J2OBJC_NEW_IMPL(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator, initWithNetI2pRouterUtilCachedIteratorArrayList_, outer$)
}

NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *create_NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_initWithNetI2pRouterUtilCachedIteratorArrayList_(NetI2pRouterUtilCachedIteratorArrayList *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator, initWithNetI2pRouterUtilCachedIteratorArrayList_, outer$)
}

void NetI2pRouterUtilCachedIteratorArrayList_CachedIterator_checkForComodification(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator *self) {
  if (self->this$0_->modCount_ != self->expectedModCount_) @throw create_JavaUtilConcurrentModificationException_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterUtilCachedIteratorArrayList_CachedIterator)
