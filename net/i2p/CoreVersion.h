//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/CoreVersion.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCoreVersion")
#ifdef RESTRICT_NetI2pCoreVersion
#define INCLUDE_ALL_NetI2pCoreVersion 0
#else
#define INCLUDE_ALL_NetI2pCoreVersion 1
#endif
#undef RESTRICT_NetI2pCoreVersion

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCoreVersion_) && (INCLUDE_ALL_NetI2pCoreVersion || defined(INCLUDE_NetI2pCoreVersion))
#define NetI2pCoreVersion_

@class IOSObjectArray;

@interface NetI2pCoreVersion : NSObject
@property (readonly, copy, class) NSString *ID NS_SWIFT_NAME(ID);
@property (readonly, copy, class) NSString *VERSION NS_SWIFT_NAME(VERSION);

+ (NSString *)ID;

+ (NSString *)VERSION;

#pragma mark Public

- (instancetype __nonnull)init;

+ (NSString *)getVersion;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCoreVersion)

inline NSString *NetI2pCoreVersion_get_ID(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pCoreVersion_ID;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCoreVersion, ID, NSString *)

inline NSString *NetI2pCoreVersion_get_VERSION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pCoreVersion_VERSION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCoreVersion, VERSION, NSString *)

FOUNDATION_EXPORT void NetI2pCoreVersion_init(NetI2pCoreVersion *self);

FOUNDATION_EXPORT NetI2pCoreVersion *new_NetI2pCoreVersion_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCoreVersion *create_NetI2pCoreVersion_init(void);

FOUNDATION_EXPORT NSString *NetI2pCoreVersion_getVersion(void);

FOUNDATION_EXPORT void NetI2pCoreVersion_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCoreVersion)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCoreVersion")
