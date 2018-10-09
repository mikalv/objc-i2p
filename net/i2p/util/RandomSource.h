//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/RandomSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilRandomSource")
#ifdef RESTRICT_NetI2pUtilRandomSource
#define INCLUDE_ALL_NetI2pUtilRandomSource 0
#else
#define INCLUDE_ALL_NetI2pUtilRandomSource 1
#endif
#undef RESTRICT_NetI2pUtilRandomSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilRandomSource_) && (INCLUDE_ALL_NetI2pUtilRandomSource || defined(INCLUDE_NetI2pUtilRandomSource))
#define NetI2pUtilRandomSource_

#define RESTRICT_JavaSecuritySecureRandom 1
#define INCLUDE_JavaSecuritySecureRandom 1
#include "java/security/SecureRandom.h"

#define RESTRICT_NetI2pCryptoEntropyHarvester 1
#define INCLUDE_NetI2pCryptoEntropyHarvester 1
#include "net/i2p/crypto/EntropyHarvester.h"

@class IOSByteArray;
@class JavaSecurityProvider;
@class JavaSecuritySecureRandomSpi;
@class NetI2pI2PAppContext;

@interface NetI2pUtilRandomSource : JavaSecuritySecureRandom < NetI2pCryptoEntropyHarvester > {
 @public
  NetI2pI2PAppContext *_context_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (void)feedEntropyWithNSString:(NSString *)source
                  withByteArray:(IOSByteArray *)data
                        withInt:(jint)offset
                        withInt:(jint)len;

- (void)feedEntropyWithNSString:(NSString *)source
                       withLong:(jlong)data
                        withInt:(jint)bitoffset
                        withInt:(jint)bits;

+ (NetI2pUtilRandomSource *)getInstance;

- (id<NetI2pCryptoEntropyHarvester>)harvester;

- (jboolean)initSeedWithByteArray:(IOSByteArray *)buf OBJC_METHOD_FAMILY_NONE;

- (void)loadSeed;

- (void)nextBytesWithByteArray:(IOSByteArray *)buf
                       withInt:(jint)offset
                       withInt:(jint)length;

- (jint)nextIntWithInt:(jint)n;

- (jlong)nextLongWithLong:(jlong)n;

- (void)saveSeed;

+ (void)writeSeedWithByteArray:(IOSByteArray *)buf;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithByteArray:(IOSByteArray *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaSecuritySecureRandomSpi:(JavaSecuritySecureRandomSpi *)arg0
                                     withJavaSecurityProvider:(JavaSecurityProvider *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilRandomSource)

J2OBJC_FIELD_SETTER(NetI2pUtilRandomSource, _context_, NetI2pI2PAppContext *)

FOUNDATION_EXPORT void NetI2pUtilRandomSource_initWithNetI2pI2PAppContext_(NetI2pUtilRandomSource *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pUtilRandomSource *new_NetI2pUtilRandomSource_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilRandomSource *create_NetI2pUtilRandomSource_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pUtilRandomSource *NetI2pUtilRandomSource_getInstance(void);

FOUNDATION_EXPORT void NetI2pUtilRandomSource_writeSeedWithByteArray_(IOSByteArray *buf);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilRandomSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilRandomSource")
