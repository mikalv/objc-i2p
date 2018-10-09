//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/EepHead.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilEepHead")
#ifdef RESTRICT_NetI2pUtilEepHead
#define INCLUDE_ALL_NetI2pUtilEepHead 0
#else
#define INCLUDE_ALL_NetI2pUtilEepHead 1
#endif
#undef RESTRICT_NetI2pUtilEepHead

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilEepHead_) && (INCLUDE_ALL_NetI2pUtilEepHead || defined(INCLUDE_NetI2pUtilEepHead))
#define NetI2pUtilEepHead_

#define RESTRICT_NetI2pUtilEepGet 1
#define INCLUDE_NetI2pUtilEepGet 1
#include "net/i2p/util/EepGet.h"

@class IOSObjectArray;
@class JavaIoOutputStream;
@class NetI2pI2PAppContext;
@class NetI2pUtilSocketTimeout;

@interface NetI2pUtilEepHead : NetI2pUtilEepGet
@property (readonly, class, strong) JavaIoOutputStream *_dummyStream NS_SWIFT_NAME(_dummyStream);

+ (JavaIoOutputStream *)_dummyStream;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                         withNSString:(NSString *)proxyHost
                                              withInt:(jint)proxyPort
                                              withInt:(jint)numRetries
                                         withNSString:(NSString *)url;

- (jlong)getContentLength;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

#pragma mark Protected

- (void)doFetchWithNetI2pUtilSocketTimeout:(NetI2pUtilSocketTimeout *)timeout;

- (NSString *)getRequest;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                          withBoolean:(jboolean)arg1
                                         withNSString:(NSString *)arg2
                                              withInt:(jint)arg3
                                              withInt:(jint)arg4
                                             withLong:(jlong)arg5
                                             withLong:(jlong)arg6
                                         withNSString:(NSString *)arg7
                               withJavaIoOutputStream:(JavaIoOutputStream *)arg8
                                         withNSString:(NSString *)arg9
                                          withBoolean:(jboolean)arg10
                                         withNSString:(NSString *)arg11
                                         withNSString:(NSString *)arg12 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                          withBoolean:(jboolean)arg1
                                         withNSString:(NSString *)arg2
                                              withInt:(jint)arg3
                                              withInt:(jint)arg4
                                             withLong:(jlong)arg5
                                             withLong:(jlong)arg6
                                         withNSString:(NSString *)arg7
                               withJavaIoOutputStream:(JavaIoOutputStream *)arg8
                                         withNSString:(NSString *)arg9
                                          withBoolean:(jboolean)arg10
                                         withNSString:(NSString *)arg11
                                         withNSString:(NSString *)arg12
                                         withNSString:(NSString *)arg13 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                          withBoolean:(jboolean)arg1
                                         withNSString:(NSString *)arg2
                                              withInt:(jint)arg3
                                              withInt:(jint)arg4
                                         withNSString:(NSString *)arg5
                                         withNSString:(NSString *)arg6 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                          withBoolean:(jboolean)arg1
                                         withNSString:(NSString *)arg2
                                              withInt:(jint)arg3
                                              withInt:(jint)arg4
                                         withNSString:(NSString *)arg5
                                         withNSString:(NSString *)arg6
                                          withBoolean:(jboolean)arg7
                                         withNSString:(NSString *)arg8 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                          withBoolean:(jboolean)arg1
                                         withNSString:(NSString *)arg2
                                              withInt:(jint)arg3
                                              withInt:(jint)arg4
                                         withNSString:(NSString *)arg5
                                         withNSString:(NSString *)arg6
                                          withBoolean:(jboolean)arg7
                                         withNSString:(NSString *)arg8
                                         withNSString:(NSString *)arg9 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                          withBoolean:(jboolean)arg1
                                         withNSString:(NSString *)arg2
                                              withInt:(jint)arg3
                                              withInt:(jint)arg4
                                         withNSString:(NSString *)arg5
                                         withNSString:(NSString *)arg6
                                         withNSString:(NSString *)arg7 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                              withInt:(jint)arg1
                                         withNSString:(NSString *)arg2
                                         withNSString:(NSString *)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                              withInt:(jint)arg1
                                         withNSString:(NSString *)arg2
                                         withNSString:(NSString *)arg3
                                          withBoolean:(jboolean)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                         withNSString:(NSString *)arg1
                                              withInt:(jint)arg2
                                              withInt:(jint)arg3
                                         withNSString:(NSString *)arg4
                                         withNSString:(NSString *)arg5 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                         withNSString:(NSString *)arg1
                                              withInt:(jint)arg2
                                              withInt:(jint)arg3
                                         withNSString:(NSString *)arg4
                                         withNSString:(NSString *)arg5
                                          withBoolean:(jboolean)arg6 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pUtilEepHead)

inline JavaIoOutputStream *NetI2pUtilEepHead_get__dummyStream(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaIoOutputStream *NetI2pUtilEepHead__dummyStream;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilEepHead, _dummyStream, JavaIoOutputStream *)

FOUNDATION_EXPORT void NetI2pUtilEepHead_initWithNetI2pI2PAppContext_withNSString_withInt_withInt_withNSString_(NetI2pUtilEepHead *self, NetI2pI2PAppContext *ctx, NSString *proxyHost, jint proxyPort, jint numRetries, NSString *url);

FOUNDATION_EXPORT NetI2pUtilEepHead *new_NetI2pUtilEepHead_initWithNetI2pI2PAppContext_withNSString_withInt_withInt_withNSString_(NetI2pI2PAppContext *ctx, NSString *proxyHost, jint proxyPort, jint numRetries, NSString *url) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilEepHead *create_NetI2pUtilEepHead_initWithNetI2pI2PAppContext_withNSString_withInt_withInt_withNSString_(NetI2pI2PAppContext *ctx, NSString *proxyHost, jint proxyPort, jint numRetries, NSString *url);

FOUNDATION_EXPORT void NetI2pUtilEepHead_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilEepHead)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilEepHead")
