//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/PasswordManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilPasswordManager")
#ifdef RESTRICT_NetI2pUtilPasswordManager
#define INCLUDE_ALL_NetI2pUtilPasswordManager 0
#else
#define INCLUDE_ALL_NetI2pUtilPasswordManager 1
#endif
#undef RESTRICT_NetI2pUtilPasswordManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilPasswordManager_) && (INCLUDE_ALL_NetI2pUtilPasswordManager || defined(INCLUDE_NetI2pUtilPasswordManager))
#define NetI2pUtilPasswordManager_

@class IOSByteArray;
@class NetI2pI2PAppContext;

@interface NetI2pUtilPasswordManager : NSObject
@property (readonly, class) jint SALT_LENGTH NS_SWIFT_NAME(SALT_LENGTH);
@property (readonly, class) jint SHASH_LENGTH NS_SWIFT_NAME(SHASH_LENGTH);
@property (readonly, copy, class) NSString *PROP_PW NS_SWIFT_NAME(PROP_PW);
@property (readonly, copy, class) NSString *PROP_B64 NS_SWIFT_NAME(PROP_B64);
@property (readonly, copy, class) NSString *PROP_MD5 NS_SWIFT_NAME(PROP_MD5);
@property (readonly, copy, class) NSString *PROP_CRYPT NS_SWIFT_NAME(PROP_CRYPT);
@property (readonly, copy, class) NSString *PROP_SHASH NS_SWIFT_NAME(PROP_SHASH);

+ (jint)SALT_LENGTH;

+ (jint)SHASH_LENGTH;

+ (NSString *)PROP_PW;

+ (NSString *)PROP_B64;

+ (NSString *)PROP_MD5;

+ (NSString *)PROP_CRYPT;

+ (NSString *)PROP_SHASH;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)ctx;

- (jboolean)checkWithNSString:(NSString *)realm
                 withNSString:(NSString *)user
                 withNSString:(NSString *)pw;

- (jboolean)checkB64WithNSString:(NSString *)realm
                    withNSString:(NSString *)user
                    withNSString:(NSString *)pw;

- (jboolean)checkHashWithNSString:(NSString *)shash
                     withNSString:(NSString *)pw;

- (jboolean)checkHashWithNSString:(NSString *)realm
                     withNSString:(NSString *)user
                     withNSString:(NSString *)pw;

- (jboolean)checkPlainWithNSString:(NSString *)realm
                      withNSString:(NSString *)user
                      withNSString:(NSString *)pw;

- (NSString *)createHashWithNSString:(NSString *)pw;

- (NSString *)getWithNSString:(NSString *)realm
                 withNSString:(NSString *)user;

- (NSString *)getB64WithNSString:(NSString *)realm
                    withNSString:(NSString *)user;

- (NSString *)getPlainWithNSString:(NSString *)realm
                      withNSString:(NSString *)user;

+ (NSString *)md5HexWithNSString:(NSString *)fullpw;

+ (NSString *)md5HexWithNSString:(NSString *)subrealm
                    withNSString:(NSString *)user
                    withNSString:(NSString *)pw;

+ (IOSByteArray *)md5SumWithByteArray:(IOSByteArray *)data;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilPasswordManager)

inline jint NetI2pUtilPasswordManager_get_SALT_LENGTH(void);
#define NetI2pUtilPasswordManager_SALT_LENGTH 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilPasswordManager, SALT_LENGTH, jint)

inline jint NetI2pUtilPasswordManager_get_SHASH_LENGTH(void);
#define NetI2pUtilPasswordManager_SHASH_LENGTH 48
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilPasswordManager, SHASH_LENGTH, jint)

inline NSString *NetI2pUtilPasswordManager_get_PROP_PW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_PROP_PW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPasswordManager, PROP_PW, NSString *)

inline NSString *NetI2pUtilPasswordManager_get_PROP_B64(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_PROP_B64;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPasswordManager, PROP_B64, NSString *)

inline NSString *NetI2pUtilPasswordManager_get_PROP_MD5(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_PROP_MD5;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPasswordManager, PROP_MD5, NSString *)

inline NSString *NetI2pUtilPasswordManager_get_PROP_CRYPT(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_PROP_CRYPT;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPasswordManager, PROP_CRYPT, NSString *)

inline NSString *NetI2pUtilPasswordManager_get_PROP_SHASH(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_PROP_SHASH;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPasswordManager, PROP_SHASH, NSString *)

FOUNDATION_EXPORT void NetI2pUtilPasswordManager_initWithNetI2pI2PAppContext_(NetI2pUtilPasswordManager *self, NetI2pI2PAppContext *ctx);

FOUNDATION_EXPORT NetI2pUtilPasswordManager *new_NetI2pUtilPasswordManager_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilPasswordManager *create_NetI2pUtilPasswordManager_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *ctx);

FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_md5HexWithNSString_withNSString_withNSString_(NSString *subrealm, NSString *user, NSString *pw);

FOUNDATION_EXPORT NSString *NetI2pUtilPasswordManager_md5HexWithNSString_(NSString *fullpw);

FOUNDATION_EXPORT IOSByteArray *NetI2pUtilPasswordManager_md5SumWithByteArray_(IOSByteArray *data);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilPasswordManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilPasswordManager")
