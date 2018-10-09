//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/naming/HostTxtEntry.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientNamingHostTxtEntry")
#ifdef RESTRICT_NetI2pClientNamingHostTxtEntry
#define INCLUDE_ALL_NetI2pClientNamingHostTxtEntry 0
#else
#define INCLUDE_ALL_NetI2pClientNamingHostTxtEntry 1
#endif
#undef RESTRICT_NetI2pClientNamingHostTxtEntry

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientNamingHostTxtEntry_) && (INCLUDE_ALL_NetI2pClientNamingHostTxtEntry || defined(INCLUDE_NetI2pClientNamingHostTxtEntry))
#define NetI2pClientNamingHostTxtEntry_

@class JavaIoBufferedWriter;
@class JavaIoWriter;
@class NetI2pDataSigningPrivateKey;
@class NetI2pUtilOrderedProperties;

@interface NetI2pClientNamingHostTxtEntry : NSObject
@property (readonly, class) jchar KV_SEPARATOR NS_SWIFT_NAME(KV_SEPARATOR);
@property (readonly, copy, class) NSString *PROPS_SEPARATOR NS_SWIFT_NAME(PROPS_SEPARATOR);
@property (readonly, class) jchar PROP_SEPARATOR NS_SWIFT_NAME(PROP_SEPARATOR);
@property (readonly, copy, class) NSString *PROP_ACTION NS_SWIFT_NAME(PROP_ACTION);
@property (readonly, copy, class) NSString *PROP_DATE NS_SWIFT_NAME(PROP_DATE);
@property (readonly, copy, class) NSString *PROP_DEST NS_SWIFT_NAME(PROP_DEST);
@property (readonly, copy, class) NSString *PROP_EXPIRES NS_SWIFT_NAME(PROP_EXPIRES);
@property (readonly, copy, class) NSString *PROP_NAME NS_SWIFT_NAME(PROP_NAME);
@property (readonly, copy, class) NSString *PROP_OLDDEST NS_SWIFT_NAME(PROP_OLDDEST);
@property (readonly, copy, class) NSString *PROP_OLDNAME NS_SWIFT_NAME(PROP_OLDNAME);
@property (readonly, copy, class) NSString *PROP_OLDSIG NS_SWIFT_NAME(PROP_OLDSIG);
@property (readonly, copy, class) NSString *PROP_SIG NS_SWIFT_NAME(PROP_SIG);
@property (readonly, copy, class) NSString *ACTION_ADDDEST NS_SWIFT_NAME(ACTION_ADDDEST);
@property (readonly, copy, class) NSString *ACTION_ADDNAME NS_SWIFT_NAME(ACTION_ADDNAME);
@property (readonly, copy, class) NSString *ACTION_ADDSUBDOMAIN NS_SWIFT_NAME(ACTION_ADDSUBDOMAIN);
@property (readonly, copy, class) NSString *ACTION_CHANGEDEST NS_SWIFT_NAME(ACTION_CHANGEDEST);
@property (readonly, copy, class) NSString *ACTION_CHANGENAME NS_SWIFT_NAME(ACTION_CHANGENAME);
@property (readonly, copy, class) NSString *ACTION_REMOVE NS_SWIFT_NAME(ACTION_REMOVE);
@property (readonly, copy, class) NSString *ACTION_REMOVEALL NS_SWIFT_NAME(ACTION_REMOVEALL);
@property (readonly, copy, class) NSString *ACTION_UPDATE NS_SWIFT_NAME(ACTION_UPDATE);

+ (jchar)KV_SEPARATOR;

+ (NSString *)PROPS_SEPARATOR;

+ (jchar)PROP_SEPARATOR;

+ (NSString *)PROP_ACTION;

+ (NSString *)PROP_DATE;

+ (NSString *)PROP_DEST;

+ (NSString *)PROP_EXPIRES;

+ (NSString *)PROP_NAME;

+ (NSString *)PROP_OLDDEST;

+ (NSString *)PROP_OLDNAME;

+ (NSString *)PROP_OLDSIG;

+ (NSString *)PROP_SIG;

+ (NSString *)ACTION_ADDDEST;

+ (NSString *)ACTION_ADDNAME;

+ (NSString *)ACTION_ADDSUBDOMAIN;

+ (NSString *)ACTION_CHANGEDEST;

+ (NSString *)ACTION_CHANGENAME;

+ (NSString *)ACTION_REMOVE;

+ (NSString *)ACTION_REMOVEALL;

+ (NSString *)ACTION_UPDATE;

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)sprops;

- (instancetype __nonnull)initWithNSString:(NSString *)name
                              withNSString:(NSString *)dest;

- (instancetype __nonnull)initWithNSString:(NSString *)name
                              withNSString:(NSString *)dest
           withNetI2pUtilOrderedProperties:(NetI2pUtilOrderedProperties *)props;

- (instancetype __nonnull)initWithNSString:(NSString *)name
                              withNSString:(NSString *)dest
                              withNSString:(NSString *)sprops;

- (jboolean)isEqual:(id)o;

- (NSString *)getDest;

- (NSString *)getName;

- (NetI2pUtilOrderedProperties *)getProps;

- (NSUInteger)hash;

- (jboolean)hasValidInnerSig;

- (jboolean)hasValidRemoveSig;

- (jboolean)hasValidSig;

- (void)signWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)spk;

- (void)signInnerWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)spk;

- (void)signRemoveWithNetI2pDataSigningPrivateKey:(NetI2pDataSigningPrivateKey *)spk;

- (void)writeWithJavaIoBufferedWriter:(JavaIoBufferedWriter *)outArg;

- (void)writeWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)writePropsWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)writeRemoveWithJavaIoWriter:(JavaIoWriter *)outArg;

- (void)writeRemoveLineWithJavaIoBufferedWriter:(JavaIoBufferedWriter *)outArg;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientNamingHostTxtEntry)

inline jchar NetI2pClientNamingHostTxtEntry_get_KV_SEPARATOR(void);
#define NetI2pClientNamingHostTxtEntry_KV_SEPARATOR '='
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientNamingHostTxtEntry, KV_SEPARATOR, jchar)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROPS_SEPARATOR(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROPS_SEPARATOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROPS_SEPARATOR, NSString *)

inline jchar NetI2pClientNamingHostTxtEntry_get_PROP_SEPARATOR(void);
#define NetI2pClientNamingHostTxtEntry_PROP_SEPARATOR '#'
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientNamingHostTxtEntry, PROP_SEPARATOR, jchar)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_ACTION(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_ACTION;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_ACTION, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_DATE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_DATE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_DATE, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_DEST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_DEST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_DEST, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_EXPIRES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_EXPIRES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_EXPIRES, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_NAME, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_OLDDEST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_OLDDEST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_OLDDEST, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_OLDNAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_OLDNAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_OLDNAME, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_OLDSIG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_OLDSIG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_OLDSIG, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_PROP_SIG(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_PROP_SIG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, PROP_SIG, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_ADDDEST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_ADDDEST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_ADDDEST, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_ADDNAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_ADDNAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_ADDNAME, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_ADDSUBDOMAIN(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_ADDSUBDOMAIN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_ADDSUBDOMAIN, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_CHANGEDEST(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_CHANGEDEST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_CHANGEDEST, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_CHANGENAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_CHANGENAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_CHANGENAME, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_REMOVE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_REMOVE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_REMOVE, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_REMOVEALL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_REMOVEALL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_REMOVEALL, NSString *)

inline NSString *NetI2pClientNamingHostTxtEntry_get_ACTION_UPDATE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientNamingHostTxtEntry_ACTION_UPDATE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientNamingHostTxtEntry, ACTION_UPDATE, NSString *)

FOUNDATION_EXPORT void NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_(NetI2pClientNamingHostTxtEntry *self, NSString *name, NSString *dest);

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *new_NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_(NSString *name, NSString *dest) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *create_NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_(NSString *name, NSString *dest);

FOUNDATION_EXPORT void NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_withNSString_(NetI2pClientNamingHostTxtEntry *self, NSString *name, NSString *dest, NSString *sprops);

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *new_NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_withNSString_(NSString *name, NSString *dest, NSString *sprops) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *create_NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_withNSString_(NSString *name, NSString *dest, NSString *sprops);

FOUNDATION_EXPORT void NetI2pClientNamingHostTxtEntry_initWithNSString_(NetI2pClientNamingHostTxtEntry *self, NSString *sprops);

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *new_NetI2pClientNamingHostTxtEntry_initWithNSString_(NSString *sprops) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *create_NetI2pClientNamingHostTxtEntry_initWithNSString_(NSString *sprops);

FOUNDATION_EXPORT void NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_withNetI2pUtilOrderedProperties_(NetI2pClientNamingHostTxtEntry *self, NSString *name, NSString *dest, NetI2pUtilOrderedProperties *props);

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *new_NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_withNetI2pUtilOrderedProperties_(NSString *name, NSString *dest, NetI2pUtilOrderedProperties *props) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientNamingHostTxtEntry *create_NetI2pClientNamingHostTxtEntry_initWithNSString_withNSString_withNetI2pUtilOrderedProperties_(NSString *name, NSString *dest, NetI2pUtilOrderedProperties *props);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientNamingHostTxtEntry)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientNamingHostTxtEntry")