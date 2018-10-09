//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/I2NPMessageException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npI2NPMessageException")
#ifdef RESTRICT_NetI2pDataI2npI2NPMessageException
#define INCLUDE_ALL_NetI2pDataI2npI2NPMessageException 0
#else
#define INCLUDE_ALL_NetI2pDataI2npI2NPMessageException 1
#endif
#undef RESTRICT_NetI2pDataI2npI2NPMessageException

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npI2NPMessageException_) && (INCLUDE_ALL_NetI2pDataI2npI2NPMessageException || defined(INCLUDE_NetI2pDataI2npI2NPMessageException))
#define NetI2pDataI2npI2NPMessageException_

#define RESTRICT_NetI2pI2PException 1
#define INCLUDE_NetI2pI2PException 1
#include "net/i2p/I2PException.h"

@class JavaLangThrowable;

@interface NetI2pDataI2npI2NPMessageException : NetI2pI2PException

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)message;

- (instancetype __nonnull)initWithNSString:(NSString *)message
                     withJavaLangThrowable:(JavaLangThrowable *)parent;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npI2NPMessageException)

FOUNDATION_EXPORT void NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(NetI2pDataI2npI2NPMessageException *self, NSString *message, JavaLangThrowable *parent);

FOUNDATION_EXPORT NetI2pDataI2npI2NPMessageException *new_NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npI2NPMessageException *create_NetI2pDataI2npI2NPMessageException_initWithNSString_withJavaLangThrowable_(NSString *message, JavaLangThrowable *parent);

FOUNDATION_EXPORT void NetI2pDataI2npI2NPMessageException_initWithNSString_(NetI2pDataI2npI2NPMessageException *self, NSString *message);

FOUNDATION_EXPORT NetI2pDataI2npI2NPMessageException *new_NetI2pDataI2npI2NPMessageException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pDataI2npI2NPMessageException *create_NetI2pDataI2npI2NPMessageException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npI2NPMessageException)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npI2NPMessageException")
