//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/PortMapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilPortMapper")
#ifdef RESTRICT_NetI2pUtilPortMapper
#define INCLUDE_ALL_NetI2pUtilPortMapper 0
#else
#define INCLUDE_ALL_NetI2pUtilPortMapper 1
#endif
#undef RESTRICT_NetI2pUtilPortMapper

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilPortMapper_) && (INCLUDE_ALL_NetI2pUtilPortMapper || defined(INCLUDE_NetI2pUtilPortMapper))
#define NetI2pUtilPortMapper_

@class JavaIoWriter;
@class NetI2pI2PAppContext;

@interface NetI2pUtilPortMapper : NSObject
@property (readonly, copy, class) NSString *PROP_PREFER_HTTPS NS_SWIFT_NAME(PROP_PREFER_HTTPS);
@property (readonly, copy, class) NSString *SVC_CONSOLE NS_SWIFT_NAME(SVC_CONSOLE);
@property (readonly, copy, class) NSString *SVC_HTTPS_CONSOLE NS_SWIFT_NAME(SVC_HTTPS_CONSOLE);
@property (readonly, copy, class) NSString *SVC_HTTP_PROXY NS_SWIFT_NAME(SVC_HTTP_PROXY);
@property (readonly, copy, class) NSString *SVC_HTTPS_PROXY NS_SWIFT_NAME(SVC_HTTPS_PROXY);
@property (readonly, copy, class) NSString *SVC_EEPSITE NS_SWIFT_NAME(SVC_EEPSITE);
@property (readonly, copy, class) NSString *SVC_HTTPS_EEPSITE NS_SWIFT_NAME(SVC_HTTPS_EEPSITE);
@property (readonly, copy, class) NSString *SVC_IRC NS_SWIFT_NAME(SVC_IRC);
@property (readonly, copy, class) NSString *SVC_SOCKS NS_SWIFT_NAME(SVC_SOCKS);
@property (readonly, copy, class) NSString *SVC_TAHOE NS_SWIFT_NAME(SVC_TAHOE);
@property (readonly, copy, class) NSString *SVC_SMTP NS_SWIFT_NAME(SVC_SMTP);
@property (readonly, copy, class) NSString *SVC_POP NS_SWIFT_NAME(SVC_POP);
@property (readonly, copy, class) NSString *SVC_SAM NS_SWIFT_NAME(SVC_SAM);
@property (readonly, copy, class) NSString *SVC_SAM_UDP NS_SWIFT_NAME(SVC_SAM_UDP);
@property (readonly, copy, class) NSString *SVC_SAM_SSL NS_SWIFT_NAME(SVC_SAM_SSL);
@property (readonly, copy, class) NSString *SVC_BOB NS_SWIFT_NAME(SVC_BOB);
@property (readonly, copy, class) NSString *SVC_I2CP NS_SWIFT_NAME(SVC_I2CP);
@property (readonly, copy, class) NSString *SVC_I2CP_SSL NS_SWIFT_NAME(SVC_I2CP_SSL);
@property (readonly, copy, class) NSString *SVC_HTTP_I2PCONTROL NS_SWIFT_NAME(SVC_HTTP_I2PCONTROL);
@property (readonly, copy, class) NSString *SVC_HTTPS_I2PCONTROL NS_SWIFT_NAME(SVC_HTTPS_I2PCONTROL);
@property (readonly, copy, class) NSString *SVC_I2PSNARK NS_SWIFT_NAME(SVC_I2PSNARK);
@property (readonly, copy, class) NSString *SVC_I2PTUNNEL NS_SWIFT_NAME(SVC_I2PTUNNEL);
@property (readonly, copy, class) NSString *SVC_IMAGEGEN NS_SWIFT_NAME(SVC_IMAGEGEN);
@property (readonly, copy, class) NSString *SVC_SUSIDNS NS_SWIFT_NAME(SVC_SUSIDNS);
@property (readonly, copy, class) NSString *SVC_SUSIMAIL NS_SWIFT_NAME(SVC_SUSIMAIL);
@property (readonly, class) jint DEFAULT_CONSOLE_PORT NS_SWIFT_NAME(DEFAULT_CONSOLE_PORT);
@property (readonly, class) jint DEFAULT_HTTPS_CONSOLE_PORT NS_SWIFT_NAME(DEFAULT_HTTPS_CONSOLE_PORT);
@property (readonly, copy, class) NSString *DEFAULT_HOST NS_SWIFT_NAME(DEFAULT_HOST);

+ (NSString *)PROP_PREFER_HTTPS;

+ (NSString *)SVC_CONSOLE;

+ (NSString *)SVC_HTTPS_CONSOLE;

+ (NSString *)SVC_HTTP_PROXY;

+ (NSString *)SVC_HTTPS_PROXY;

+ (NSString *)SVC_EEPSITE;

+ (NSString *)SVC_HTTPS_EEPSITE;

+ (NSString *)SVC_IRC;

+ (NSString *)SVC_SOCKS;

+ (NSString *)SVC_TAHOE;

+ (NSString *)SVC_SMTP;

+ (NSString *)SVC_POP;

+ (NSString *)SVC_SAM;

+ (NSString *)SVC_SAM_UDP;

+ (NSString *)SVC_SAM_SSL;

+ (NSString *)SVC_BOB;

+ (NSString *)SVC_I2CP;

+ (NSString *)SVC_I2CP_SSL;

+ (NSString *)SVC_HTTP_I2PCONTROL;

+ (NSString *)SVC_HTTPS_I2PCONTROL;

+ (NSString *)SVC_I2PSNARK;

+ (NSString *)SVC_I2PTUNNEL;

+ (NSString *)SVC_IMAGEGEN;

+ (NSString *)SVC_SUSIDNS;

+ (NSString *)SVC_SUSIMAIL;

+ (jint)DEFAULT_CONSOLE_PORT;

+ (jint)DEFAULT_HTTPS_CONSOLE_PORT;

+ (NSString *)DEFAULT_HOST;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (NSString *)getActualHostWithNSString:(NSString *)service
                           withNSString:(NSString *)def;

- (NSString *)getConsoleURL;

- (NSString *)getConsoleURLWithBoolean:(jboolean)preferHTTPS;

- (NSString *)getHostWithNSString:(NSString *)service
                     withNSString:(NSString *)def;

- (jint)getPortWithNSString:(NSString *)service;

- (jint)getPortWithNSString:(NSString *)service
                    withInt:(jint)def;

- (jboolean)isRegisteredWithNSString:(NSString *)service;

- (jboolean)register__WithNSString:(NSString *)service
                           withInt:(jint)port;

- (jboolean)register__WithNSString:(NSString *)service
                      withNSString:(NSString *)host
                           withInt:(jint)port;

- (void)renderStatusHTMLWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)unregisterWithNSString:(NSString *)service;

- (void)unregisterWithNSString:(NSString *)service
                       withInt:(jint)port;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilPortMapper)

inline NSString *NetI2pUtilPortMapper_get_PROP_PREFER_HTTPS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_PROP_PREFER_HTTPS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, PROP_PREFER_HTTPS, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_CONSOLE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_CONSOLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_CONSOLE, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_HTTPS_CONSOLE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_HTTPS_CONSOLE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_HTTPS_CONSOLE, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_HTTP_PROXY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_HTTP_PROXY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_HTTP_PROXY, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_HTTPS_PROXY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_HTTPS_PROXY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_HTTPS_PROXY, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_EEPSITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_EEPSITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_EEPSITE, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_HTTPS_EEPSITE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_HTTPS_EEPSITE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_HTTPS_EEPSITE, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_IRC(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_IRC;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_IRC, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SOCKS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SOCKS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SOCKS, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_TAHOE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_TAHOE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_TAHOE, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SMTP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SMTP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SMTP, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_POP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_POP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_POP, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SAM(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SAM;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SAM, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SAM_UDP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SAM_UDP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SAM_UDP, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SAM_SSL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SAM_SSL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SAM_SSL, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_BOB(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_BOB;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_BOB, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_I2CP(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_I2CP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_I2CP, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_I2CP_SSL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_I2CP_SSL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_I2CP_SSL, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_HTTP_I2PCONTROL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_HTTP_I2PCONTROL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_HTTP_I2PCONTROL, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_HTTPS_I2PCONTROL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_HTTPS_I2PCONTROL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_HTTPS_I2PCONTROL, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_I2PSNARK(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_I2PSNARK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_I2PSNARK, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_I2PTUNNEL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_I2PTUNNEL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_I2PTUNNEL, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_IMAGEGEN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_IMAGEGEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_IMAGEGEN, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SUSIDNS(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SUSIDNS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SUSIDNS, NSString *)

inline NSString *NetI2pUtilPortMapper_get_SVC_SUSIMAIL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_SVC_SUSIMAIL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, SVC_SUSIMAIL, NSString *)

inline jint NetI2pUtilPortMapper_get_DEFAULT_CONSOLE_PORT(void);
#define NetI2pUtilPortMapper_DEFAULT_CONSOLE_PORT 7657
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilPortMapper, DEFAULT_CONSOLE_PORT, jint)

inline jint NetI2pUtilPortMapper_get_DEFAULT_HTTPS_CONSOLE_PORT(void);
#define NetI2pUtilPortMapper_DEFAULT_HTTPS_CONSOLE_PORT 7667
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilPortMapper, DEFAULT_HTTPS_CONSOLE_PORT, jint)

inline NSString *NetI2pUtilPortMapper_get_DEFAULT_HOST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pUtilPortMapper_DEFAULT_HOST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilPortMapper, DEFAULT_HOST, NSString *)

FOUNDATION_EXPORT void NetI2pUtilPortMapper_initWithNetI2pI2PAppContext_(NetI2pUtilPortMapper *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT NetI2pUtilPortMapper *new_NetI2pUtilPortMapper_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilPortMapper *create_NetI2pUtilPortMapper_initWithNetI2pI2PAppContext_(NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilPortMapper)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilPortMapper")