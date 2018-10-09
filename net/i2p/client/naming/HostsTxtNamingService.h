//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/HostsTxtNamingService.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientNamingHostsTxtNamingService")
#ifdef RESTRICT_NetI2pClientNamingHostsTxtNamingService
#define INCLUDE_ALL_NetI2pClientNamingHostsTxtNamingService 0
#else
#define INCLUDE_ALL_NetI2pClientNamingHostsTxtNamingService 1
#endif
#undef RESTRICT_NetI2pClientNamingHostsTxtNamingService

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientNamingHostsTxtNamingService_) && (INCLUDE_ALL_NetI2pClientNamingHostsTxtNamingService || defined(INCLUDE_NetI2pClientNamingHostsTxtNamingService))
#define NetI2pClientNamingHostsTxtNamingService_

#define RESTRICT_NetI2pClientNamingMetaNamingService 1
#define INCLUDE_NetI2pClientNamingMetaNamingService 1
#include "net/i2p/client/naming/MetaNamingService.h"

@class JavaUtilProperties;
@class NetI2pDataDestination;
@class NetI2pI2PAppContext;
@protocol JavaUtilList;
@protocol JavaUtilSet;

@interface NetI2pClientNamingHostsTxtNamingService : NetI2pClientNamingMetaNamingService
@property (readonly, copy, class) NSString *PROP_HOSTS_FILE NS_SWIFT_NAME(PROP_HOSTS_FILE);
@property (readonly, copy, class) NSString *DEFAULT_HOSTS_FILE NS_SWIFT_NAME(DEFAULT_HOSTS_FILE);

+ (NSString *)PROP_HOSTS_FILE;

+ (NSString *)DEFAULT_HOSTS_FILE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (id<JavaUtilSet>)getNamesWithJavaUtilProperties:(JavaUtilProperties *)options;

- (NetI2pDataDestination *)lookupWithNSString:(NSString *)hostname
                       withJavaUtilProperties:(JavaUtilProperties *)lookupOptions
                       withJavaUtilProperties:(JavaUtilProperties *)storedOptions;

- (jboolean)putWithNSString:(NSString *)hostname
  withNetI2pDataDestination:(NetI2pDataDestination *)d
     withJavaUtilProperties:(JavaUtilProperties *)options;

- (jboolean)putIfAbsentWithNSString:(NSString *)hostname
          withNetI2pDataDestination:(NetI2pDataDestination *)d
             withJavaUtilProperties:(JavaUtilProperties *)options;

- (jboolean)removeWithNSString:(NSString *)hostname
        withJavaUtilProperties:(JavaUtilProperties *)options;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)arg0
                                     withJavaUtilList:(id<JavaUtilList>)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientNamingHostsTxtNamingService)

inline NSString *NetI2pClientNamingHostsTxtNamingService_get_PROP_HOSTS_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostsTxtNamingService_PROP_HOSTS_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostsTxtNamingService, PROP_HOSTS_FILE, NSString *)

inline NSString *NetI2pClientNamingHostsTxtNamingService_get_DEFAULT_HOSTS_FILE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostsTxtNamingService_DEFAULT_HOSTS_FILE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostsTxtNamingService, DEFAULT_HOSTS_FILE, NSString *)

FOUNDATION_EXPORT void NetI2pClientNamingHostsTxtNamingService_initWithNetI2pI2PAppContext_(NetI2pClientNamingHostsTxtNamingService *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pClientNamingHostsTxtNamingService *new_NetI2pClientNamingHostsTxtNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingHostsTxtNamingService *create_NetI2pClientNamingHostsTxtNamingService_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientNamingHostsTxtNamingService)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientNamingHostsTxtNamingService")
