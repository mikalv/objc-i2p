//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/parser/JSONParserBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonParserJSONParserBase")
#ifdef RESTRICT_NetMinidevJsonParserJSONParserBase
#define INCLUDE_ALL_NetMinidevJsonParserJSONParserBase 0
#else
#define INCLUDE_ALL_NetMinidevJsonParserJSONParserBase 1
#endif
#undef RESTRICT_NetMinidevJsonParserJSONParserBase

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonParserJSONParserBase_) && (INCLUDE_ALL_NetMinidevJsonParserJSONParserBase || defined(INCLUDE_NetMinidevJsonParserJSONParserBase))
#define NetMinidevJsonParserJSONParserBase_

@class IOSBooleanArray;
@class NetMinidevJsonParserJSONParserBase_MSB;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol NetMinidevJsonParserContainerFactory;
@protocol NetMinidevJsonParserContentHandler;

@interface NetMinidevJsonParserJSONParserBase : NSObject {
 @public
  jchar c_;
  id<NetMinidevJsonParserContainerFactory> containerFactory_;
  id<NetMinidevJsonParserContentHandler> handler_;
  NetMinidevJsonParserJSONParserBase_MSB *sb_;
  id xo_;
  NSString *xs_;
  jint pos_;
  jboolean acceptLeadinZero_;
  jboolean acceptNaN_;
  jboolean acceptNonQuote_;
  jboolean acceptSimpleQuote_;
  jboolean acceptUselessComma_;
  jboolean checkTaillingData_;
  jboolean checkTaillingSpace_;
  jboolean ignoreControlChar_;
  jboolean useHiPrecisionFloat_;
  jboolean useIntegerStorage_;
}
@property (readonly, class) jbyte EOI NS_SWIFT_NAME(EOI);
@property (readonly, class) jchar MAX_STOP NS_SWIFT_NAME(MAX_STOP);
@property (class, strong) IOSBooleanArray *stopAll NS_SWIFT_NAME(stopAll);
@property (class, strong) IOSBooleanArray *stopArray NS_SWIFT_NAME(stopArray);
@property (class, strong) IOSBooleanArray *stopKey NS_SWIFT_NAME(stopKey);
@property (class, strong) IOSBooleanArray *stopValue NS_SWIFT_NAME(stopValue);
@property (class, strong) IOSBooleanArray *stopX NS_SWIFT_NAME(stopX);

+ (jbyte)EOI;

+ (jchar)MAX_STOP;

+ (IOSBooleanArray *)stopAll;

+ (void)setStopAll:(IOSBooleanArray *)value;

+ (IOSBooleanArray *)stopArray;

+ (void)setStopArray:(IOSBooleanArray *)value;

+ (IOSBooleanArray *)stopKey;

+ (void)setStopKey:(IOSBooleanArray *)value;

+ (IOSBooleanArray *)stopValue;

+ (void)setStopValue:(IOSBooleanArray *)value;

+ (IOSBooleanArray *)stopX;

+ (void)setStopX:(IOSBooleanArray *)value;

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)permissiveMode;

- (void)checkControleChar;

- (void)checkLeadinZero;

#pragma mark Protected

- (NSNumber *)extractFloat;

- (id)parseWithNetMinidevJsonParserContainerFactory:(id<NetMinidevJsonParserContainerFactory>)containerFactory
             withNetMinidevJsonParserContentHandler:(id<NetMinidevJsonParserContentHandler>)handler;

- (NSNumber *)parseNumberWithNSString:(NSString *)s;

- (void)read;

- (id<JavaUtilList>)readArray;

- (id)readMainWithBooleanArray:(IOSBooleanArray *)stop;

- (void)readNoEnd;

- (void)readNQStringWithBooleanArray:(IOSBooleanArray *)stop;

- (id)readNumberWithBooleanArray:(IOSBooleanArray *)stop;

- (id<JavaUtilMap>)readObject;

- (void)readString;

- (void)readString2;

- (jchar)readUnicodeWithInt:(jint)totalChars;

- (void)skipDigits;

- (void)skipNQStringWithBooleanArray:(IOSBooleanArray *)stop;

- (void)skipSpace;

#pragma mark Package-Private

- (void)readS;

@end

J2OBJC_STATIC_INIT(NetMinidevJsonParserJSONParserBase)

J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserBase, containerFactory_, id<NetMinidevJsonParserContainerFactory>)
J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserBase, handler_, id<NetMinidevJsonParserContentHandler>)
J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserBase, sb_, NetMinidevJsonParserJSONParserBase_MSB *)
J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserBase, xo_, id)
J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserBase, xs_, NSString *)

inline jbyte NetMinidevJsonParserJSONParserBase_get_EOI(void);
#define NetMinidevJsonParserJSONParserBase_EOI 26
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserJSONParserBase, EOI, jbyte)

inline jchar NetMinidevJsonParserJSONParserBase_get_MAX_STOP(void);
#define NetMinidevJsonParserJSONParserBase_MAX_STOP '~'
J2OBJC_STATIC_FIELD_CONSTANT(NetMinidevJsonParserJSONParserBase, MAX_STOP, jchar)

inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_get_stopAll(void);
inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_set_stopAll(IOSBooleanArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSBooleanArray *NetMinidevJsonParserJSONParserBase_stopAll;
J2OBJC_STATIC_FIELD_OBJ(NetMinidevJsonParserJSONParserBase, stopAll, IOSBooleanArray *)

inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_get_stopArray(void);
inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_set_stopArray(IOSBooleanArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSBooleanArray *NetMinidevJsonParserJSONParserBase_stopArray;
J2OBJC_STATIC_FIELD_OBJ(NetMinidevJsonParserJSONParserBase, stopArray, IOSBooleanArray *)

inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_get_stopKey(void);
inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_set_stopKey(IOSBooleanArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSBooleanArray *NetMinidevJsonParserJSONParserBase_stopKey;
J2OBJC_STATIC_FIELD_OBJ(NetMinidevJsonParserJSONParserBase, stopKey, IOSBooleanArray *)

inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_get_stopValue(void);
inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_set_stopValue(IOSBooleanArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSBooleanArray *NetMinidevJsonParserJSONParserBase_stopValue;
J2OBJC_STATIC_FIELD_OBJ(NetMinidevJsonParserJSONParserBase, stopValue, IOSBooleanArray *)

inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_get_stopX(void);
inline IOSBooleanArray *NetMinidevJsonParserJSONParserBase_set_stopX(IOSBooleanArray *value);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSBooleanArray *NetMinidevJsonParserJSONParserBase_stopX;
J2OBJC_STATIC_FIELD_OBJ(NetMinidevJsonParserJSONParserBase, stopX, IOSBooleanArray *)

FOUNDATION_EXPORT void NetMinidevJsonParserJSONParserBase_initWithInt_(NetMinidevJsonParserJSONParserBase *self, jint permissiveMode);

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonParserJSONParserBase)

#endif

#if !defined (NetMinidevJsonParserJSONParserBase_MSB_) && (INCLUDE_ALL_NetMinidevJsonParserJSONParserBase || defined(INCLUDE_NetMinidevJsonParserJSONParserBase_MSB))
#define NetMinidevJsonParserJSONParserBase_MSB_

@class IOSCharArray;

@interface NetMinidevJsonParserJSONParserBase_MSB : NSObject {
 @public
  IOSCharArray *b_;
  jint p_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)size;

- (void)appendWithChar:(jchar)c;

- (void)appendWithInt:(jint)c;

- (void)clear;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetMinidevJsonParserJSONParserBase_MSB)

J2OBJC_FIELD_SETTER(NetMinidevJsonParserJSONParserBase_MSB, b_, IOSCharArray *)

FOUNDATION_EXPORT void NetMinidevJsonParserJSONParserBase_MSB_initWithInt_(NetMinidevJsonParserJSONParserBase_MSB *self, jint size);

FOUNDATION_EXPORT NetMinidevJsonParserJSONParserBase_MSB *new_NetMinidevJsonParserJSONParserBase_MSB_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonParserJSONParserBase_MSB *create_NetMinidevJsonParserJSONParserBase_MSB_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonParserJSONParserBase_MSB)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonParserJSONParserBase")