//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/Transport.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportTransport")
#ifdef RESTRICT_NetI2pRouterTransportTransport
#define INCLUDE_ALL_NetI2pRouterTransportTransport 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportTransport 1
#endif
#undef RESTRICT_NetI2pRouterTransportTransport

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportTransport_) && (INCLUDE_ALL_NetI2pRouterTransportTransport || defined(INCLUDE_NetI2pRouterTransportTransport))
#define NetI2pRouterTransportTransport_

@class IOSByteArray;
@class JavaIoWriter;
@class JavaUtilVector;
@class NetI2pDataHash;
@class NetI2pDataRouterRouterInfo;
@class NetI2pRouterCommSystemFacade_Status;
@class NetI2pRouterOutNetMessage;
@class NetI2pRouterTransportTransportBid;
@class NetI2pRouterTransportTransport_AddressSource;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol NetI2pRouterTransportTransportEventListener;

@protocol NetI2pRouterTransportTransport < JavaObject >

- (NetI2pRouterTransportTransportBid *)bidWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)toAddress
                                                                 withInt:(jint)dataSize;

- (void)sendWithNetI2pRouterOutNetMessage:(NetI2pRouterOutNetMessage *)msg;

- (void)startListening;

- (void)stopListening;

- (id<JavaUtilList>)getCurrentAddresses;

- (jboolean)hasCurrentAddress;

- (id<JavaUtilList>)updateAddress;

- (void)externalAddressReceivedWithNetI2pRouterTransportTransport_AddressSource:(NetI2pRouterTransportTransport_AddressSource *)source
                                                                  withByteArray:(IOSByteArray *)ip
                                                                        withInt:(jint)port;

- (void)externalAddressRemovedWithNetI2pRouterTransportTransport_AddressSource:(NetI2pRouterTransportTransport_AddressSource *)source
                                                                   withBoolean:(jboolean)ipv6;

- (void)forwardPortStatusWithByteArray:(IOSByteArray *)ip
                               withInt:(jint)port
                               withInt:(jint)externalPort
                           withBoolean:(jboolean)success
                          withNSString:(NSString *)reason;

- (jint)getRequestedPort;

- (void)setListenerWithNetI2pRouterTransportTransportEventListener:(id<NetI2pRouterTransportTransportEventListener>)listener;

- (NSString *)getStyle;

- (id<JavaUtilSet>)getEstablished;

- (jint)countPeers;

- (jint)countActivePeers;

- (jint)countActiveSendPeers;

- (jboolean)haveCapacity;

- (jboolean)haveCapacityWithInt:(jint)pct;

- (JavaUtilVector *)getClockSkews;

- (id<JavaUtilList>)getMostRecentErrorMessages;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg
                            withNSString:(NSString *)urlBase
                                 withInt:(jint)sortFlags;

- (NetI2pRouterCommSystemFacade_Status *)getReachabilityStatus;

- (void)recheckReachability;

- (jboolean)isBackloggedWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (jboolean)wasUnreachableWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (jboolean)isUnreachableWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (jboolean)isEstablishedWithNetI2pDataHash:(NetI2pDataHash *)peer;

- (void)mayDisconnectWithNetI2pDataHash:(NetI2pDataHash *)peer;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportTransport)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportTransport)

#endif

#if !defined (NetI2pRouterTransportTransport_AddressSource_) && (INCLUDE_ALL_NetI2pRouterTransportTransport || defined(INCLUDE_NetI2pRouterTransportTransport_AddressSource))
#define NetI2pRouterTransportTransport_AddressSource_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, NetI2pRouterTransportTransport_AddressSource_Enum) {
  NetI2pRouterTransportTransport_AddressSource_Enum_SOURCE_UPNP = 0,
  NetI2pRouterTransportTransport_AddressSource_Enum_SOURCE_INTERFACE = 1,
  NetI2pRouterTransportTransport_AddressSource_Enum_SOURCE_CONFIG = 2,
  NetI2pRouterTransportTransport_AddressSource_Enum_SOURCE_SSU = 3,
};

@interface NetI2pRouterTransportTransport_AddressSource : JavaLangEnum

@property (readonly, class, nonnull) NetI2pRouterTransportTransport_AddressSource *SOURCE_UPNP NS_SWIFT_NAME(SOURCE_UPNP);
@property (readonly, class, nonnull) NetI2pRouterTransportTransport_AddressSource *SOURCE_INTERFACE NS_SWIFT_NAME(SOURCE_INTERFACE);
@property (readonly, class, nonnull) NetI2pRouterTransportTransport_AddressSource *SOURCE_CONFIG NS_SWIFT_NAME(SOURCE_CONFIG);
@property (readonly, class, nonnull) NetI2pRouterTransportTransport_AddressSource *SOURCE_SSU NS_SWIFT_NAME(SOURCE_SSU);
+ (NetI2pRouterTransportTransport_AddressSource * __nonnull)SOURCE_UPNP;

+ (NetI2pRouterTransportTransport_AddressSource * __nonnull)SOURCE_INTERFACE;

+ (NetI2pRouterTransportTransport_AddressSource * __nonnull)SOURCE_CONFIG;

+ (NetI2pRouterTransportTransport_AddressSource * __nonnull)SOURCE_SSU;

#pragma mark Public

- (NSString *)toConfigString;

+ (NetI2pRouterTransportTransport_AddressSource *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (NetI2pRouterTransportTransport_AddressSource_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportTransport_AddressSource)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_values_[];

inline NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_get_SOURCE_UPNP(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportTransport_AddressSource, SOURCE_UPNP)

inline NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_get_SOURCE_INTERFACE(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportTransport_AddressSource, SOURCE_INTERFACE)

inline NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_get_SOURCE_CONFIG(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportTransport_AddressSource, SOURCE_CONFIG)

inline NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_get_SOURCE_SSU(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportTransport_AddressSource, SOURCE_SSU)

FOUNDATION_EXPORT IOSObjectArray *NetI2pRouterTransportTransport_AddressSource_values(void);

FOUNDATION_EXPORT NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pRouterTransportTransport_AddressSource *NetI2pRouterTransportTransport_AddressSource_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportTransport_AddressSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportTransport")