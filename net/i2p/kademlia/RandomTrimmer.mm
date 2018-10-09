//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/kademlia/RandomTrimmer.java
//

#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "net/i2p/I2PAppContext.h"
#include "net/i2p/data/SimpleDataStructure.h"
#include "net/i2p/kademlia/KBucket.h"
#include "net/i2p/kademlia/RandomTrimmer.h"
#include "net/i2p/util/RandomSource.h"

@interface NetI2pKademliaRandomTrimmer () {
 @public
  jint _max_;
}

@end

@implementation NetI2pKademliaRandomTrimmer

- (instancetype)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                    withInt:(jint)max {
  NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(self, ctx, max);
  return self;
}

- (jboolean)trimWithNetI2pKademliaKBucket:(id<NetI2pKademliaKBucket>)kbucket
        withNetI2pDataSimpleDataStructure:(NetI2pDataSimpleDataStructure *)toAdd {
  id<JavaUtilList> e = create_JavaUtilArrayList_initWithJavaUtilCollection_([((id<NetI2pKademliaKBucket>) nil_chk(kbucket)) getEntries]);
  jint sz = [e size];
  if (sz < _max_) return true;
  NetI2pDataSimpleDataStructure *toRemove = [e getWithInt:[((NetI2pUtilRandomSource *) nil_chk([((NetI2pI2PAppContext *) nil_chk(_ctx_)) random])) nextIntWithInt:sz]];
  [kbucket removeWithNetI2pDataSimpleDataStructure:toRemove];
  return true;
}

- (void)dealloc {
  RELEASE_(_ctx_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pI2PAppContext:withInt:);
  methods[1].selector = @selector(trimWithNetI2pKademliaKBucket:withNetI2pDataSimpleDataStructure:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_ctx_", "LNetI2pI2PAppContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_max_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pI2PAppContext;I", "trim", "LNetI2pKademliaKBucket;LNetI2pDataSimpleDataStructure;", "(Lnet/i2p/kademlia/KBucket<TT;>;TT;)Z", "<T:Lnet/i2p/data/SimpleDataStructure;>Ljava/lang/Object;Lnet/i2p/kademlia/KBucketTrimmer<TT;>;" };
  static const J2ObjcClassInfo _NetI2pKademliaRandomTrimmer = { "RandomTrimmer", "net.i2p.kademlia", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, 4, -1 };
  return &_NetI2pKademliaRandomTrimmer;
}

@end

void NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pKademliaRandomTrimmer *self, NetI2pI2PAppContext *ctx, jint max) {
  NSObject_init(self);
  JreStrongAssign(&self->_ctx_, ctx);
  self->_max_ = max;
}

NetI2pKademliaRandomTrimmer *new_NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *ctx, jint max) {
  J2OBJC_NEW_IMPL(NetI2pKademliaRandomTrimmer, initWithNetI2pI2PAppContext_withInt_, ctx, max)
}

NetI2pKademliaRandomTrimmer *create_NetI2pKademliaRandomTrimmer_initWithNetI2pI2PAppContext_withInt_(NetI2pI2PAppContext *ctx, jint max) {
  J2OBJC_CREATE_IMPL(NetI2pKademliaRandomTrimmer, initWithNetI2pI2PAppContext_withInt_, ctx, max)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pKademliaRandomTrimmer)
