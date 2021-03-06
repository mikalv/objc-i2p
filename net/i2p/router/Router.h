//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/Router.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterRouter")
#ifdef RESTRICT_NetI2pRouterRouter
#define INCLUDE_ALL_NetI2pRouterRouter 0
#else
#define INCLUDE_ALL_NetI2pRouterRouter 1
#endif
#undef RESTRICT_NetI2pRouterRouter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterRouter_) && (INCLUDE_ALL_NetI2pRouterRouter || defined(INCLUDE_NetI2pRouterRouter))
#define NetI2pRouterRouter_

#define RESTRICT_NetI2pRouterRouterClock 1
#define INCLUDE_NetI2pRouterRouterClock_ClockShiftListener 1
#include "net/i2p/router/RouterClock.h"

@class IOSObjectArray;
@class JavaUtilProperties;
@class NetI2pDataRouterRouterInfo;
@class NetI2pRouterCryptoFamilyKeyCrypto;
@class NetI2pRouterRouterContext;
@class NetI2pRouterUtilEventLog;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface NetI2pRouterRouter : NSObject < NetI2pRouterRouterClock_ClockShiftListener > {
 @public
  id routerInfoFileLock_;
  id _familyKeyLock_;
}
@property (readonly, copy, class) NSString *PROP_CONFIG_FILE NS_SWIFT_NAME(PROP_CONFIG_FILE);
@property (readonly, class) jlong CLOCK_FUDGE_FACTOR NS_SWIFT_NAME(CLOCK_FUDGE_FACTOR);
@property (readonly, class) jint COALESCE_TIME NS_SWIFT_NAME(COALESCE_TIME);
@property (readonly, copy, class) NSString *PROP_HIDDEN NS_SWIFT_NAME(PROP_HIDDEN);
@property (readonly, copy, class) NSString *PROP_HIDDEN_HIDDEN NS_SWIFT_NAME(PROP_HIDDEN_HIDDEN);
@property (readonly, copy, class) NSString *PROP_DYNAMIC_KEYS NS_SWIFT_NAME(PROP_DYNAMIC_KEYS);
@property (readonly, copy, class) NSString *PROP_REBUILD_KEYS NS_SWIFT_NAME(PROP_REBUILD_KEYS);
@property (readonly, copy, class) NSString *PROP_IB_RANDOM_KEY NS_SWIFT_NAME(PROP_IB_RANDOM_KEY);
@property (readonly, copy, class) NSString *PROP_OB_RANDOM_KEY NS_SWIFT_NAME(PROP_OB_RANDOM_KEY);
@property (readonly, copy, class) NSString *UPDATE_FILE NS_SWIFT_NAME(UPDATE_FILE);
@property (readonly, class) jchar CAPABILITY_BW12 NS_SWIFT_NAME(CAPABILITY_BW12);
@property (readonly, class) jchar CAPABILITY_BW32 NS_SWIFT_NAME(CAPABILITY_BW32);
@property (readonly, class) jchar CAPABILITY_BW64 NS_SWIFT_NAME(CAPABILITY_BW64);
@property (readonly, class) jchar CAPABILITY_BW128 NS_SWIFT_NAME(CAPABILITY_BW128);
@property (readonly, class) jchar CAPABILITY_BW256 NS_SWIFT_NAME(CAPABILITY_BW256);
@property (readonly, class) jchar CAPABILITY_BW512 NS_SWIFT_NAME(CAPABILITY_BW512);
@property (readonly, class) jchar CAPABILITY_BW_UNLIMITED NS_SWIFT_NAME(CAPABILITY_BW_UNLIMITED);
@property (readonly, copy, class) NSString *PROP_FORCE_BWCLASS NS_SWIFT_NAME(PROP_FORCE_BWCLASS);
@property (readonly, class) jchar CAPABILITY_REACHABLE NS_SWIFT_NAME(CAPABILITY_REACHABLE);
@property (readonly, class) jchar CAPABILITY_UNREACHABLE NS_SWIFT_NAME(CAPABILITY_UNREACHABLE);
@property (readonly, copy, class) NSString *PROP_FORCE_UNREACHABLE NS_SWIFT_NAME(PROP_FORCE_UNREACHABLE);
@property (readonly, class) jchar CAPABILITY_NEW_TUNNEL NS_SWIFT_NAME(CAPABILITY_NEW_TUNNEL);
@property (readonly, class) jint MIN_BW_K NS_SWIFT_NAME(MIN_BW_K);
@property (readonly, class) jint MIN_BW_L NS_SWIFT_NAME(MIN_BW_L);
@property (readonly, class) jint MIN_BW_M NS_SWIFT_NAME(MIN_BW_M);
@property (readonly, class) jint MIN_BW_N NS_SWIFT_NAME(MIN_BW_N);
@property (readonly, class) jint MIN_BW_O NS_SWIFT_NAME(MIN_BW_O);
@property (readonly, class) jint MIN_BW_P NS_SWIFT_NAME(MIN_BW_P);
@property (readonly, class) jint MIN_BW_X NS_SWIFT_NAME(MIN_BW_X);
@property (readonly, class) jint EXIT_GRACEFUL NS_SWIFT_NAME(EXIT_GRACEFUL);
@property (readonly, class) jint EXIT_HARD NS_SWIFT_NAME(EXIT_HARD);
@property (readonly, class) jint EXIT_OOM NS_SWIFT_NAME(EXIT_OOM);
@property (readonly, class) jint EXIT_HARD_RESTART NS_SWIFT_NAME(EXIT_HARD_RESTART);
@property (readonly, class) jint EXIT_GRACEFUL_RESTART NS_SWIFT_NAME(EXIT_GRACEFUL_RESTART);
@property (readonly, copy, class) NSString *PROP_BANDWIDTH_SHARE_PERCENTAGE NS_SWIFT_NAME(PROP_BANDWIDTH_SHARE_PERCENTAGE);
@property (readonly, class) jint DEFAULT_SHARE_PERCENTAGE NS_SWIFT_NAME(DEFAULT_SHARE_PERCENTAGE);

+ (NSString *)PROP_CONFIG_FILE;

+ (jlong)CLOCK_FUDGE_FACTOR;

+ (jint)COALESCE_TIME;

+ (NSString *)PROP_HIDDEN;

+ (NSString *)PROP_HIDDEN_HIDDEN;

+ (NSString *)PROP_DYNAMIC_KEYS;

+ (NSString *)PROP_REBUILD_KEYS;

+ (NSString *)PROP_IB_RANDOM_KEY;

+ (NSString *)PROP_OB_RANDOM_KEY;

+ (NSString *)UPDATE_FILE;

+ (jchar)CAPABILITY_BW12;

+ (jchar)CAPABILITY_BW32;

+ (jchar)CAPABILITY_BW64;

+ (jchar)CAPABILITY_BW128;

+ (jchar)CAPABILITY_BW256;

+ (jchar)CAPABILITY_BW512;

+ (jchar)CAPABILITY_BW_UNLIMITED;

+ (NSString *)PROP_FORCE_BWCLASS;

+ (jchar)CAPABILITY_REACHABLE;

+ (jchar)CAPABILITY_UNREACHABLE;

+ (NSString *)PROP_FORCE_UNREACHABLE;

+ (jchar)CAPABILITY_NEW_TUNNEL;

+ (jint)MIN_BW_K;

+ (jint)MIN_BW_L;

+ (jint)MIN_BW_M;

+ (jint)MIN_BW_N;

+ (jint)MIN_BW_O;

+ (jint)MIN_BW_P;

+ (jint)MIN_BW_X;

+ (jint)EXIT_GRACEFUL;

+ (jint)EXIT_HARD;

+ (jint)EXIT_OOM;

+ (jint)EXIT_HARD_RESTART;

+ (jint)EXIT_GRACEFUL_RESTART;

+ (NSString *)PROP_BANDWIDTH_SHARE_PERCENTAGE;

+ (jint)DEFAULT_SHARE_PERCENTAGE;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaUtilProperties:(JavaUtilProperties *)envProps;

- (instancetype __nonnull)initWithNSString:(NSString *)configFilename;

- (instancetype __nonnull)initWithNSString:(NSString *)configFilename
                    withJavaUtilProperties:(JavaUtilProperties *)envProps;

- (void)cancelGracefulShutdown;

+ (void)clearCaches;

- (void)clockShiftWithLong:(jlong)delta;

- (NetI2pRouterUtilEventLog *)eventLog;

- (jint)get15sRate;

- (jint)get15sRateWithBoolean:(jboolean)outboundOnly;

- (jint)get15sRateIn;

- (jint)get1mRate;

- (jint)get1mRateWithBoolean:(jboolean)outboundOnly;

- (jint)get1mRateIn;

- (jint)get1sRate;

- (jint)get1sRateWithBoolean:(jboolean)outboundOnly;

- (jint)get1sRateIn;

- (jint)get5mRate;

- (jint)get5mRateWithBoolean:(jboolean)outboundOnly;

- (jchar)getBandwidthClass;

- (NSString *)getCapabilities;

- (NSString *)getConfigFilename;

- (id<JavaUtilMap>)getConfigMap;

- (NSString *)getConfigSettingWithNSString:(NSString *)name;

- (id<JavaUtilSet>)getConfigSettings;

- (NetI2pRouterRouterContext *)getContext;

- (NetI2pRouterCryptoFamilyKeyCrypto *)getFamilyKeyCrypto;

- (jboolean)getKillVMOnEnd;

- (jint)getNetworkID;

- (NetI2pDataRouterRouterInfo *)getRouterInfo;

- (jdouble)getSharePercentage;

- (jlong)getShutdownTimeRemaining;

- (jlong)getUptime;

- (jlong)getWhenStarted;

- (jboolean)gracefulShutdownInProgress;

- (jboolean)isAlive;

- (jboolean)isFinalShutdownInProgress;

- (jboolean)isHidden;

- (void)killKeys;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

- (void)readConfig;

- (void)rebuildNewIdentity;

- (void)rebuildRouterInfo;

- (void)rebuildRouterInfoWithBoolean:(jboolean)blockingRebuild;

- (void)removeConfigSettingWithNSString:(NSString *)name;

- (void)restart;

- (void)runRouter;

- (jboolean)saveConfig;

- (jboolean)saveConfigWithJavaUtilMap:(id<JavaUtilMap>)toAdd
               withJavaUtilCollection:(id<JavaUtilCollection>)toRemove;

- (jboolean)saveConfigWithNSString:(NSString *)name
                      withNSString:(NSString *)value;

- (jint)scheduledGracefulExitCode;

- (void)setConfigFilenameWithNSString:(NSString *)filename;

- (void)setConfigSettingWithNSString:(NSString *)name
                        withNSString:(NSString *)value;

- (void)setExplTunnelsReady;

- (void)setIsAlive;

- (void)setKillVMOnEndWithBoolean:(jboolean)shouldDie;

- (void)setNetDbReady;

- (void)setRouterInfoWithNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)info;

- (void)shutdownWithInt:(jint)exitCode;

- (void)shutdown2WithInt:(jint)exitCode;

- (void)shutdownGracefully;

- (void)shutdownGracefullyWithInt:(jint)exitCode;

@end

J2OBJC_STATIC_INIT(NetI2pRouterRouter)

J2OBJC_FIELD_SETTER(NetI2pRouterRouter, routerInfoFileLock_, id)
J2OBJC_FIELD_SETTER(NetI2pRouterRouter, _familyKeyLock_, id)

inline NSString *NetI2pRouterRouter_get_PROP_CONFIG_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_CONFIG_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_CONFIG_FILE, NSString *)

inline jlong NetI2pRouterRouter_get_CLOCK_FUDGE_FACTOR(void);
#define NetI2pRouterRouter_CLOCK_FUDGE_FACTOR 60000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CLOCK_FUDGE_FACTOR, jlong)

inline jint NetI2pRouterRouter_get_COALESCE_TIME(void);
#define NetI2pRouterRouter_COALESCE_TIME 50000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, COALESCE_TIME, jint)

inline NSString *NetI2pRouterRouter_get_PROP_HIDDEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_HIDDEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_HIDDEN, NSString *)

inline NSString *NetI2pRouterRouter_get_PROP_HIDDEN_HIDDEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_HIDDEN_HIDDEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_HIDDEN_HIDDEN, NSString *)

inline NSString *NetI2pRouterRouter_get_PROP_DYNAMIC_KEYS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_DYNAMIC_KEYS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_DYNAMIC_KEYS, NSString *)

inline NSString *NetI2pRouterRouter_get_PROP_REBUILD_KEYS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_REBUILD_KEYS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_REBUILD_KEYS, NSString *)

inline NSString *NetI2pRouterRouter_get_PROP_IB_RANDOM_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_IB_RANDOM_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_IB_RANDOM_KEY, NSString *)

inline NSString *NetI2pRouterRouter_get_PROP_OB_RANDOM_KEY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_OB_RANDOM_KEY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_OB_RANDOM_KEY, NSString *)

inline NSString *NetI2pRouterRouter_get_UPDATE_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_UPDATE_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, UPDATE_FILE, NSString *)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW12(void);
#define NetI2pRouterRouter_CAPABILITY_BW12 'K'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW12, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW32(void);
#define NetI2pRouterRouter_CAPABILITY_BW32 'L'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW32, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW64(void);
#define NetI2pRouterRouter_CAPABILITY_BW64 'M'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW64, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW128(void);
#define NetI2pRouterRouter_CAPABILITY_BW128 'N'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW128, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW256(void);
#define NetI2pRouterRouter_CAPABILITY_BW256 'O'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW256, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW512(void);
#define NetI2pRouterRouter_CAPABILITY_BW512 'P'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW512, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_BW_UNLIMITED(void);
#define NetI2pRouterRouter_CAPABILITY_BW_UNLIMITED 'X'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_BW_UNLIMITED, jchar)

inline NSString *NetI2pRouterRouter_get_PROP_FORCE_BWCLASS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_FORCE_BWCLASS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_FORCE_BWCLASS, NSString *)

inline jchar NetI2pRouterRouter_get_CAPABILITY_REACHABLE(void);
#define NetI2pRouterRouter_CAPABILITY_REACHABLE 'R'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_REACHABLE, jchar)

inline jchar NetI2pRouterRouter_get_CAPABILITY_UNREACHABLE(void);
#define NetI2pRouterRouter_CAPABILITY_UNREACHABLE 'U'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_UNREACHABLE, jchar)

inline NSString *NetI2pRouterRouter_get_PROP_FORCE_UNREACHABLE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_FORCE_UNREACHABLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_FORCE_UNREACHABLE, NSString *)

inline jchar NetI2pRouterRouter_get_CAPABILITY_NEW_TUNNEL(void);
#define NetI2pRouterRouter_CAPABILITY_NEW_TUNNEL 'T'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, CAPABILITY_NEW_TUNNEL, jchar)

inline jint NetI2pRouterRouter_get_MIN_BW_K(void);
#define NetI2pRouterRouter_MIN_BW_K 0
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_K, jint)

inline jint NetI2pRouterRouter_get_MIN_BW_L(void);
#define NetI2pRouterRouter_MIN_BW_L 12
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_L, jint)

inline jint NetI2pRouterRouter_get_MIN_BW_M(void);
#define NetI2pRouterRouter_MIN_BW_M 48
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_M, jint)

inline jint NetI2pRouterRouter_get_MIN_BW_N(void);
#define NetI2pRouterRouter_MIN_BW_N 64
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_N, jint)

inline jint NetI2pRouterRouter_get_MIN_BW_O(void);
#define NetI2pRouterRouter_MIN_BW_O 128
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_O, jint)

inline jint NetI2pRouterRouter_get_MIN_BW_P(void);
#define NetI2pRouterRouter_MIN_BW_P 256
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_P, jint)

inline jint NetI2pRouterRouter_get_MIN_BW_X(void);
#define NetI2pRouterRouter_MIN_BW_X 2000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, MIN_BW_X, jint)

inline jint NetI2pRouterRouter_get_EXIT_GRACEFUL(void);
#define NetI2pRouterRouter_EXIT_GRACEFUL 2
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, EXIT_GRACEFUL, jint)

inline jint NetI2pRouterRouter_get_EXIT_HARD(void);
#define NetI2pRouterRouter_EXIT_HARD 3
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, EXIT_HARD, jint)

inline jint NetI2pRouterRouter_get_EXIT_OOM(void);
#define NetI2pRouterRouter_EXIT_OOM 10
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, EXIT_OOM, jint)

inline jint NetI2pRouterRouter_get_EXIT_HARD_RESTART(void);
#define NetI2pRouterRouter_EXIT_HARD_RESTART 4
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, EXIT_HARD_RESTART, jint)

inline jint NetI2pRouterRouter_get_EXIT_GRACEFUL_RESTART(void);
#define NetI2pRouterRouter_EXIT_GRACEFUL_RESTART 5
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, EXIT_GRACEFUL_RESTART, jint)

inline NSString *NetI2pRouterRouter_get_PROP_BANDWIDTH_SHARE_PERCENTAGE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterRouter_PROP_BANDWIDTH_SHARE_PERCENTAGE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterRouter, PROP_BANDWIDTH_SHARE_PERCENTAGE, NSString *)

inline jint NetI2pRouterRouter_get_DEFAULT_SHARE_PERCENTAGE(void);
#define NetI2pRouterRouter_DEFAULT_SHARE_PERCENTAGE 80
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterRouter, DEFAULT_SHARE_PERCENTAGE, jint)

FOUNDATION_EXPORT void NetI2pRouterRouter_init(NetI2pRouterRouter *self);

FOUNDATION_EXPORT NetI2pRouterRouter *new_NetI2pRouterRouter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouter *create_NetI2pRouterRouter_init(void);

FOUNDATION_EXPORT void NetI2pRouterRouter_initWithJavaUtilProperties_(NetI2pRouterRouter *self, JavaUtilProperties *envProps);

FOUNDATION_EXPORT NetI2pRouterRouter *new_NetI2pRouterRouter_initWithJavaUtilProperties_(JavaUtilProperties *envProps) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouter *create_NetI2pRouterRouter_initWithJavaUtilProperties_(JavaUtilProperties *envProps);

FOUNDATION_EXPORT void NetI2pRouterRouter_initWithNSString_(NetI2pRouterRouter *self, NSString *configFilename);

FOUNDATION_EXPORT NetI2pRouterRouter *new_NetI2pRouterRouter_initWithNSString_(NSString *configFilename) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouter *create_NetI2pRouterRouter_initWithNSString_(NSString *configFilename);

FOUNDATION_EXPORT void NetI2pRouterRouter_initWithNSString_withJavaUtilProperties_(NetI2pRouterRouter *self, NSString *configFilename, JavaUtilProperties *envProps);

FOUNDATION_EXPORT NetI2pRouterRouter *new_NetI2pRouterRouter_initWithNSString_withJavaUtilProperties_(NSString *configFilename, JavaUtilProperties *envProps) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterRouter *create_NetI2pRouterRouter_initWithNSString_withJavaUtilProperties_(NSString *configFilename, JavaUtilProperties *envProps);

FOUNDATION_EXPORT void NetI2pRouterRouter_clearCaches(void);

FOUNDATION_EXPORT void NetI2pRouterRouter_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterRouter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterRouter")
