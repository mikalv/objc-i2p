//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/util/EventLog.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterUtilEventLog")
#ifdef RESTRICT_NetI2pRouterUtilEventLog
#define INCLUDE_ALL_NetI2pRouterUtilEventLog 0
#else
#define INCLUDE_ALL_NetI2pRouterUtilEventLog 1
#endif
#undef RESTRICT_NetI2pRouterUtilEventLog

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterUtilEventLog_) && (INCLUDE_ALL_NetI2pRouterUtilEventLog || defined(INCLUDE_NetI2pRouterUtilEventLog))
#define NetI2pRouterUtilEventLog_

@class JavaIoFile;
@class NetI2pI2PAppContext;
@protocol JavaUtilSortedMap;

@interface NetI2pRouterUtilEventLog : NSObject
@property (readonly, copy, class) NSString *ABORTED NS_SWIFT_NAME(ABORTED);
@property (readonly, copy, class) NSString *BECAME_FLOODFILL NS_SWIFT_NAME(BECAME_FLOODFILL);
@property (readonly, copy, class) NSString *CHANGE_IP NS_SWIFT_NAME(CHANGE_IP);
@property (readonly, copy, class) NSString *CHANGE_PORT NS_SWIFT_NAME(CHANGE_PORT);
@property (readonly, copy, class) NSString *CLOCK_SHIFT NS_SWIFT_NAME(CLOCK_SHIFT);
@property (readonly, copy, class) NSString *CRASHED NS_SWIFT_NAME(CRASHED);
@property (readonly, copy, class) NSString *CRITICAL NS_SWIFT_NAME(CRITICAL);
@property (readonly, copy, class) NSString *INSTALLED NS_SWIFT_NAME(INSTALLED);
@property (readonly, copy, class) NSString *INSTALL_FAILED NS_SWIFT_NAME(INSTALL_FAILED);
@property (readonly, copy, class) NSString *NETWORK NS_SWIFT_NAME(NETWORK);
@property (readonly, copy, class) NSString *NEW_IDENT NS_SWIFT_NAME(NEW_IDENT);
@property (readonly, copy, class) NSString *NOT_FLOODFILL NS_SWIFT_NAME(NOT_FLOODFILL);
@property (readonly, copy, class) NSString *OOM NS_SWIFT_NAME(OOM);
@property (readonly, copy, class) NSString *REACHABILITY NS_SWIFT_NAME(REACHABILITY);
@property (readonly, copy, class) NSString *REKEYED NS_SWIFT_NAME(REKEYED);
@property (readonly, copy, class) NSString *RESEED NS_SWIFT_NAME(RESEED);
@property (readonly, copy, class) NSString *SOFT_RESTART NS_SWIFT_NAME(SOFT_RESTART);
@property (readonly, copy, class) NSString *STARTED NS_SWIFT_NAME(STARTED);
@property (readonly, copy, class) NSString *STOPPED NS_SWIFT_NAME(STOPPED);
@property (readonly, copy, class) NSString *UPDATED NS_SWIFT_NAME(UPDATED);
@property (readonly, copy, class) NSString *WATCHDOG NS_SWIFT_NAME(WATCHDOG);

+ (NSString *)ABORTED;

+ (NSString *)BECAME_FLOODFILL;

+ (NSString *)CHANGE_IP;

+ (NSString *)CHANGE_PORT;

+ (NSString *)CLOCK_SHIFT;

+ (NSString *)CRASHED;

+ (NSString *)CRITICAL;

+ (NSString *)INSTALLED;

+ (NSString *)INSTALL_FAILED;

+ (NSString *)NETWORK;

+ (NSString *)NEW_IDENT;

+ (NSString *)NOT_FLOODFILL;

+ (NSString *)OOM;

+ (NSString *)REACHABILITY;

+ (NSString *)REKEYED;

+ (NSString *)RESEED;

+ (NSString *)SOFT_RESTART;

+ (NSString *)STARTED;

+ (NSString *)STOPPED;

+ (NSString *)UPDATED;

+ (NSString *)WATCHDOG;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx
                                       withJavaIoFile:(JavaIoFile *)file;

- (void)addEventWithNSString:(NSString *)event;

- (void)addEventWithNSString:(NSString *)event
                withNSString:(NSString *)info;

- (id<JavaUtilSortedMap>)getEventsWithLong:(jlong)since;

- (id<JavaUtilSortedMap>)getEventsWithNSString:(NSString *)event
                                      withLong:(jlong)since;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterUtilEventLog)

inline NSString *NetI2pRouterUtilEventLog_get_ABORTED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_ABORTED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, ABORTED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_BECAME_FLOODFILL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_BECAME_FLOODFILL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, BECAME_FLOODFILL, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_CHANGE_IP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_CHANGE_IP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, CHANGE_IP, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_CHANGE_PORT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_CHANGE_PORT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, CHANGE_PORT, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_CLOCK_SHIFT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_CLOCK_SHIFT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, CLOCK_SHIFT, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_CRASHED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_CRASHED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, CRASHED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_CRITICAL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_CRITICAL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, CRITICAL, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_INSTALLED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_INSTALLED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, INSTALLED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_INSTALL_FAILED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_INSTALL_FAILED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, INSTALL_FAILED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_NETWORK(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_NETWORK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, NETWORK, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_NEW_IDENT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_NEW_IDENT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, NEW_IDENT, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_NOT_FLOODFILL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_NOT_FLOODFILL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, NOT_FLOODFILL, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_OOM(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_OOM;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, OOM, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_REACHABILITY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_REACHABILITY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, REACHABILITY, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_REKEYED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_REKEYED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, REKEYED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_RESEED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_RESEED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, RESEED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_SOFT_RESTART(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_SOFT_RESTART;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, SOFT_RESTART, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_STARTED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_STARTED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, STARTED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_STOPPED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_STOPPED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, STOPPED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_UPDATED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_UPDATED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, UPDATED, NSString *)

inline NSString *NetI2pRouterUtilEventLog_get_WATCHDOG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pRouterUtilEventLog_WATCHDOG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterUtilEventLog, WATCHDOG, NSString *)

FOUNDATION_EXPORT void NetI2pRouterUtilEventLog_initWithNetI2pI2PAppContext_withJavaIoFile_(NetI2pRouterUtilEventLog *self, NetI2pI2PAppContext *ctx, JavaIoFile *file);

FOUNDATION_EXPORT NetI2pRouterUtilEventLog *new_NetI2pRouterUtilEventLog_initWithNetI2pI2PAppContext_withJavaIoFile_(NetI2pI2PAppContext *ctx, JavaIoFile *file) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterUtilEventLog *create_NetI2pRouterUtilEventLog_initWithNetI2pI2PAppContext_withJavaIoFile_(NetI2pI2PAppContext *ctx, JavaIoFile *file);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterUtilEventLog)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterUtilEventLog")