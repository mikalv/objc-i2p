//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/DecayingBloomFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilDecayingBloomFilter")
#ifdef RESTRICT_NetI2pRouterUtilDecayingBloomFilter
#define INCLUDE_ALL_NetI2pRouterUtilDecayingBloomFilter 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilDecayingBloomFilter 1
#endif
#undef RESTRICT_NetI2pRouterUtilDecayingBloomFilter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilDecayingBloomFilter_) && (INCLUDE_ALL_NetI2pRouterUtilDecayingBloomFilter || defined(INCLUDE_NetI2pRouterUtilDecayingBloomFilter))
#define NetI2pRouterUtilDecayingBloomFilter_

@class IOSByteArray;
@class JavaUtilConcurrentLocksReentrantReadWriteLock;
@class NetI2pI2PAppContext;
@class NetI2pUtilLog;
@class NetI2pUtilSimpleTimer2_TimedEvent;

@interface NetI2pRouterUtilDecayingBloomFilter : NSObject {
 @public
  NetI2pI2PAppContext *_context_;
  NetI2pUtilLog *_log_;
  jint _durationMs_;
  jint _entryBytes_;
  jlong _currentDuplicates_;
  volatile_jboolean _keepDecaying_;
  NetI2pUtilSimpleTimer2_TimedEvent *_decayEvent_;
  NSString *_name_;
  JavaUtilConcurrentLocksReentrantReadWriteLock *_reorganizeLock_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)durationMs
                                              withInt:(jint)entryBytes;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)durationMs
                                              withInt:(jint)entryBytes
                                         withNSString:(NSString *)name;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)durationMs
                                              withInt:(jint)entryBytes
                                         withNSString:(NSString *)name
                                              withInt:(jint)m;

- (jboolean)addWithByteArray:(IOSByteArray *)entry_;

- (jboolean)addWithByteArray:(IOSByteArray *)entry_
                     withInt:(jint)off
                     withInt:(jint)len;

- (jboolean)addWithLong:(jlong)entry_;

- (void)clear;

- (jlong)getCurrentDuplicateCount;

- (jdouble)getFalsePositiveRate;

- (jint)getInsertedCount;

- (jboolean)isKnownWithLong:(jlong)entry_;

- (void)stopDecaying;

#pragma mark Protected

- (instancetype __nonnull)initWithInt:(jint)durationMs
                              withInt:(jint)entryBytes
                         withNSString:(NSString *)name
              withNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (void)decay;

- (void)getReadLock;

- (jboolean)getWriteLock;

- (void)releaseReadLock;

- (void)releaseWriteLock;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilDecayingBloomFilter)

J2OBJC_FIELD_SETTER(NetI2pRouterUtilDecayingBloomFilter, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilDecayingBloomFilter, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilDecayingBloomFilter, _decayEvent_, NetI2pUtilSimpleTimer2_TimedEvent *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilDecayingBloomFilter, _name_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pRouterUtilDecayingBloomFilter, _reorganizeLock_, JavaUtilConcurrentLocksReentrantReadWriteLock *)

FOUNDATION_EXPORT void NetI2pRouterUtilDecayingBloomFilter_initWithInt_withInt_withNSString_withNetI2pI2PAppContext_(NetI2pRouterUtilDecayingBloomFilter *self, jint durationMs, jint entryBytes, NSString *name, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *new_NetI2pRouterUtilDecayingBloomFilter_initWithInt_withInt_withNSString_withNetI2pI2PAppContext_(jint durationMs, jint entryBytes, NSString *name, NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *create_NetI2pRouterUtilDecayingBloomFilter_initWithInt_withInt_withNSString_withNetI2pI2PAppContext_(jint durationMs, jint entryBytes, NSString *name, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_(NetI2pRouterUtilDecayingBloomFilter *self, NetI2pI2PAppContext *context, jint durationMs, jint entryBytes);

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *new_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_(NetI2pI2PAppContext *context, jint durationMs, jint entryBytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *create_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_(NetI2pI2PAppContext *context, jint durationMs, jint entryBytes);

FOUNDATION_EXPORT void NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_(NetI2pRouterUtilDecayingBloomFilter *self, NetI2pI2PAppContext *context, jint durationMs, jint entryBytes, NSString *name);

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *new_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_(NetI2pI2PAppContext *context, jint durationMs, jint entryBytes, NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *create_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_(NetI2pI2PAppContext *context, jint durationMs, jint entryBytes, NSString *name);

FOUNDATION_EXPORT void NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_withInt_(NetI2pRouterUtilDecayingBloomFilter *self, NetI2pI2PAppContext *context, jint durationMs, jint entryBytes, NSString *name, jint m);

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *new_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_withInt_(NetI2pI2PAppContext *context, jint durationMs, jint entryBytes, NSString *name, jint m) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilDecayingBloomFilter *create_NetI2pRouterUtilDecayingBloomFilter_initWithNetI2pI2PAppContext_withInt_withInt_withNSString_withInt_(NetI2pI2PAppContext *context, jint durationMs, jint entryBytes, NSString *name, jint m);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilDecayingBloomFilter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilDecayingBloomFilter")
