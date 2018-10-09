//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/Addresses.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilAddresses")
#ifdef RESTRICT_NetI2pUtilAddresses
#define INCLUDE_ALL_NetI2pUtilAddresses 0
#else
#define INCLUDE_ALL_NetI2pUtilAddresses 1
#endif
#undef RESTRICT_NetI2pUtilAddresses

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilAddresses_) && (INCLUDE_ALL_NetI2pUtilAddresses || defined(INCLUDE_NetI2pUtilAddresses))
#define NetI2pUtilAddresses_

@class IOSByteArray;
@class IOSObjectArray;
@class JavaNetInet6Address;
@protocol JavaUtilList;
@protocol JavaUtilSortedSet;

@interface NetI2pUtilAddresses : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

+ (void)clearCaches;

+ (id<JavaUtilSortedSet>)getAddresses;

+ (id<JavaUtilSortedSet>)getAddressesWithBoolean:(jboolean)includeLocal
                                     withBoolean:(jboolean)includeIPv6;

+ (id<JavaUtilSortedSet>)getAddressesWithBoolean:(jboolean)includeSiteLocal
                                     withBoolean:(jboolean)includeLoopbackAndWildcard
                                     withBoolean:(jboolean)includeIPv6;

+ (id<JavaUtilSortedSet>)getAllAddresses;

+ (NSString *)getAnyAddress;

+ (IOSByteArray *)getIPWithNSString:(NSString *)host;

+ (IOSByteArray *)getIPWithNSString:(NSString *)host
                        withBoolean:(jboolean)preferIPv6;

+ (IOSByteArray *)getIPOnlyWithNSString:(NSString *)host;

+ (id<JavaUtilList>)getIPsWithNSString:(NSString *)host;

+ (jint)getPortWithNSString:(NSString *)port;

+ (jboolean)isConnected;

+ (jboolean)isConnectedIPv6;

+ (jboolean)isDeprecatedWithJavaNetInet6Address:(JavaNetInet6Address *)addr;

+ (jboolean)isDynamicWithJavaNetInet6Address:(JavaNetInet6Address *)addr;

+ (jboolean)isIPAddressWithNSString:(NSString *)host;

+ (jboolean)isIPv4AddressWithNSString:(NSString *)host;

+ (jboolean)isIPv6AddressWithNSString:(NSString *)host;

+ (jboolean)isTemporaryWithJavaNetInet6Address:(JavaNetInet6Address *)addr;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

+ (NSString *)toStringWithByteArray:(IOSByteArray *)addr;

+ (NSString *)toStringWithByteArray:(IOSByteArray *)addr
                            withInt:(jint)port;

@end

J2OBJC_STATIC_INIT(NetI2pUtilAddresses)

FOUNDATION_EXPORT void NetI2pUtilAddresses_init(NetI2pUtilAddresses *self);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isConnected(void);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isConnectedIPv6(void);

FOUNDATION_EXPORT NSString *NetI2pUtilAddresses_getAnyAddress(void);

FOUNDATION_EXPORT id<JavaUtilSortedSet> NetI2pUtilAddresses_getAddresses(void);

FOUNDATION_EXPORT id<JavaUtilSortedSet> NetI2pUtilAddresses_getAllAddresses(void);

FOUNDATION_EXPORT id<JavaUtilSortedSet> NetI2pUtilAddresses_getAddressesWithBoolean_withBoolean_(jboolean includeLocal, jboolean includeIPv6);

FOUNDATION_EXPORT id<JavaUtilSortedSet> NetI2pUtilAddresses_getAddressesWithBoolean_withBoolean_withBoolean_(jboolean includeSiteLocal, jboolean includeLoopbackAndWildcard, jboolean includeIPv6);

FOUNDATION_EXPORT NSString *NetI2pUtilAddresses_toStringWithByteArray_(IOSByteArray *addr);

FOUNDATION_EXPORT NSString *NetI2pUtilAddresses_toStringWithByteArray_withInt_(IOSByteArray *addr, jint port);

FOUNDATION_EXPORT jint NetI2pUtilAddresses_getPortWithNSString_(NSString *port);

FOUNDATION_EXPORT IOSByteArray *NetI2pUtilAddresses_getIPWithNSString_(NSString *host);

FOUNDATION_EXPORT IOSByteArray *NetI2pUtilAddresses_getIPOnlyWithNSString_(NSString *host);

FOUNDATION_EXPORT IOSByteArray *NetI2pUtilAddresses_getIPWithNSString_withBoolean_(NSString *host, jboolean preferIPv6);

FOUNDATION_EXPORT id<JavaUtilList> NetI2pUtilAddresses_getIPsWithNSString_(NSString *host);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isIPv4AddressWithNSString_(NSString *host);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isIPv6AddressWithNSString_(NSString *host);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isIPAddressWithNSString_(NSString *host);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isDynamicWithJavaNetInet6Address_(JavaNetInet6Address *addr);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isDeprecatedWithJavaNetInet6Address_(JavaNetInet6Address *addr);

FOUNDATION_EXPORT jboolean NetI2pUtilAddresses_isTemporaryWithJavaNetInet6Address_(JavaNetInet6Address *addr);

FOUNDATION_EXPORT void NetI2pUtilAddresses_clearCaches(void);

FOUNDATION_EXPORT void NetI2pUtilAddresses_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilAddresses)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilAddresses")