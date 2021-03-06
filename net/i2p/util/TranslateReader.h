//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/TranslateReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilTranslateReader")
#ifdef RESTRICT_NetI2pUtilTranslateReader
#define INCLUDE_ALL_NetI2pUtilTranslateReader 0
#else
#define INCLUDE_ALL_NetI2pUtilTranslateReader 1
#endif
#undef RESTRICT_NetI2pUtilTranslateReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilTranslateReader_) && (INCLUDE_ALL_NetI2pUtilTranslateReader || defined(INCLUDE_NetI2pUtilTranslateReader))
#define NetI2pUtilTranslateReader_

#define RESTRICT_JavaIoFilterReader 1
#define INCLUDE_JavaIoFilterReader 1
#include "java/io/FilterReader.h"

@class IOSCharArray;
@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaIoReader;
@class NetI2pI2PAppContext;

@interface NetI2pUtilTranslateReader : JavaIoFilterReader

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                         withNSString:(NSString *)bundle
                                withJavaIoInputStream:(JavaIoInputStream *)inArg;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                         withNSString:(NSString *)bundle
                                     withJavaIoReader:(JavaIoReader *)inArg;

- (void)close;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (void)markWithInt:(jint)readLimit;

- (jboolean)markSupported;

- (jint)read;

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len;

- (jboolean)ready;

- (void)reset;

- (jlong)skipWithLong:(jlong)n;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithJavaIoReader:(JavaIoReader *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilTranslateReader)

FOUNDATION_EXPORT void NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pUtilTranslateReader *self, NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoInputStream *inArg);

FOUNDATION_EXPORT NetI2pUtilTranslateReader *new_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoInputStream *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilTranslateReader *create_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoInputStream_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoInputStream *inArg);

FOUNDATION_EXPORT void NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(NetI2pUtilTranslateReader *self, NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoReader *inArg);

FOUNDATION_EXPORT NetI2pUtilTranslateReader *new_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoReader *inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilTranslateReader *create_NetI2pUtilTranslateReader_initWithNetI2pI2PAppContext_withNSString_withJavaIoReader_(NetI2pI2PAppContext *ctx, NSString *bundle, JavaIoReader *inArg);

FOUNDATION_EXPORT void NetI2pUtilTranslateReader_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilTranslateReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilTranslateReader")
