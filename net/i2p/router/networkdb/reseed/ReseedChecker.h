//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/reseed/ReseedChecker.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterNetworkdbReseedReseedChecker")
#ifdef RESTRICT_NetI2pRouterNetworkdbReseedReseedChecker
#define INCLUDE_ALL_NetI2pRouterNetworkdbReseedReseedChecker 0
#else
#define INCLUDE_ALL_NetI2pRouterNetworkdbReseedReseedChecker 1
#endif
#undef RESTRICT_NetI2pRouterNetworkdbReseedReseedChecker

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterNetworkdbReseedReseedChecker_) && (INCLUDE_ALL_NetI2pRouterNetworkdbReseedReseedChecker || defined(INCLUDE_NetI2pRouterNetworkdbReseedReseedChecker))
#define NetI2pRouterNetworkdbReseedReseedChecker_

@class JavaIoInputStream;
@class JavaNetURI;
@class NetI2pRouterRouterContext;

@interface NetI2pRouterNetworkdbReseedReseedChecker : NSObject
@property (readonly, class) jint MINIMUM NS_SWIFT_NAME(MINIMUM);

+ (jint)MINIMUM;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (jboolean)checkReseedWithInt:(jint)count;

- (NSString *)getError;

- (NSString *)getStatus;

- (jboolean)inProgress;

- (jboolean)requestReseed;

- (jint)requestReseedWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (jboolean)requestReseedWithJavaNetURI:(JavaNetURI *)url;

#pragma mark Package-Private

- (void)done;

- (void)setErrorWithNSString:(NSString *)s;

- (void)setStatusWithNSString:(NSString *)s;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterNetworkdbReseedReseedChecker)

inline jint NetI2pRouterNetworkdbReseedReseedChecker_get_MINIMUM(void);
#define NetI2pRouterNetworkdbReseedReseedChecker_MINIMUM 50
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterNetworkdbReseedReseedChecker, MINIMUM, jint)

FOUNDATION_EXPORT void NetI2pRouterNetworkdbReseedReseedChecker_initWithNetI2pRouterRouterContext_(NetI2pRouterNetworkdbReseedReseedChecker *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterNetworkdbReseedReseedChecker *new_NetI2pRouterNetworkdbReseedReseedChecker_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterNetworkdbReseedReseedChecker *create_NetI2pRouterNetworkdbReseedReseedChecker_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterNetworkdbReseedReseedChecker)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterNetworkdbReseedReseedChecker")
