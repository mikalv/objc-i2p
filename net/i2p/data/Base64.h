//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/Base64.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataBase64")
#ifdef RESTRICT_NetI2pDataBase64
#define INCLUDE_ALL_NetI2pDataBase64 0
#else
#define INCLUDE_ALL_NetI2pDataBase64 1
#endif
#undef RESTRICT_NetI2pDataBase64

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataBase64_) && (INCLUDE_ALL_NetI2pDataBase64 || defined(INCLUDE_NetI2pDataBase64))
#define NetI2pDataBase64_

@class IOSByteArray;
@class IOSObjectArray;

@interface NetI2pDataBase64 : NSObject
@property (readonly, copy, class) NSString *ALPHABET_I2P NS_SWIFT_NAME(ALPHABET_I2P);

+ (NSString *)ALPHABET_I2P;

#pragma mark Public

+ (IOSByteArray *)decodeWithNSString:(NSString *)s;

+ (IOSByteArray *)decodeWithNSString:(NSString *)s
                         withBoolean:(jboolean)useStandardAlphabet;

+ (NSString *)decodeToStringWithNSString:(NSString *)s;

+ (NSString *)encodeWithByteArray:(IOSByteArray *)source;

+ (NSString *)encodeWithByteArray:(IOSByteArray *)source
                      withBoolean:(jboolean)useStandardAlphabet;

+ (NSString *)encodeWithByteArray:(IOSByteArray *)source
                          withInt:(jint)off
                          withInt:(jint)len;

+ (NSString *)encodeWithByteArray:(IOSByteArray *)source
                          withInt:(jint)off
                          withInt:(jint)len
                      withBoolean:(jboolean)useStandardAlphabet;

+ (NSString *)encodeWithNSString:(NSString *)source;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_STATIC_INIT(NetI2pDataBase64)

inline NSString *NetI2pDataBase64_get_ALPHABET_I2P(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pDataBase64_ALPHABET_I2P;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataBase64, ALPHABET_I2P, NSString *)

FOUNDATION_EXPORT NSString *NetI2pDataBase64_encodeWithNSString_(NSString *source);

FOUNDATION_EXPORT NSString *NetI2pDataBase64_encodeWithByteArray_(IOSByteArray *source);

FOUNDATION_EXPORT NSString *NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(IOSByteArray *source, jint off, jint len);

FOUNDATION_EXPORT NSString *NetI2pDataBase64_encodeWithByteArray_withBoolean_(IOSByteArray *source, jboolean useStandardAlphabet);

FOUNDATION_EXPORT NSString *NetI2pDataBase64_encodeWithByteArray_withInt_withInt_withBoolean_(IOSByteArray *source, jint off, jint len, jboolean useStandardAlphabet);

FOUNDATION_EXPORT IOSByteArray *NetI2pDataBase64_decodeWithNSString_(NSString *s);

FOUNDATION_EXPORT IOSByteArray *NetI2pDataBase64_decodeWithNSString_withBoolean_(NSString *s, jboolean useStandardAlphabet);

FOUNDATION_EXPORT void NetI2pDataBase64_mainWithNSStringArray_(IOSObjectArray *args);

FOUNDATION_EXPORT NSString *NetI2pDataBase64_decodeToStringWithNSString_(NSString *s);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataBase64)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataBase64")
