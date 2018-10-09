//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/eddsa/math/Field.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathField")
#ifdef RESTRICT_NetI2pCryptoEddsaMathField
#define INCLUDE_ALL_NetI2pCryptoEddsaMathField 0
#else
#define INCLUDE_ALL_NetI2pCryptoEddsaMathField 1
#endif
#undef RESTRICT_NetI2pCryptoEddsaMathField

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pCryptoEddsaMathField_) && (INCLUDE_ALL_NetI2pCryptoEddsaMathField || defined(INCLUDE_NetI2pCryptoEddsaMathField))
#define NetI2pCryptoEddsaMathField_

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@class NetI2pCryptoEddsaMathEncoding;
@class NetI2pCryptoEddsaMathFieldElement;

@interface NetI2pCryptoEddsaMathField : NSObject < JavaIoSerializable > {
 @public
  NetI2pCryptoEddsaMathFieldElement *ZERO_;
  NetI2pCryptoEddsaMathFieldElement *ONE_;
  NetI2pCryptoEddsaMathFieldElement *TWO_;
  NetI2pCryptoEddsaMathFieldElement *FOUR_;
  NetI2pCryptoEddsaMathFieldElement *FIVE_;
  NetI2pCryptoEddsaMathFieldElement *EIGHT_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)b
                        withByteArray:(IOSByteArray *)q
    withNetI2pCryptoEddsaMathEncoding:(NetI2pCryptoEddsaMathEncoding *)enc;

- (jboolean)isEqual:(id)obj;

- (NetI2pCryptoEddsaMathFieldElement *)fromByteArrayWithByteArray:(IOSByteArray *)x;

- (jint)getb;

- (NetI2pCryptoEddsaMathEncoding *)getEncoding;

- (NetI2pCryptoEddsaMathFieldElement *)getQ;

- (NetI2pCryptoEddsaMathFieldElement *)getQm2;

- (NetI2pCryptoEddsaMathFieldElement *)getQm5d8;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoEddsaMathField)

J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathField, ZERO_, NetI2pCryptoEddsaMathFieldElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathField, ONE_, NetI2pCryptoEddsaMathFieldElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathField, TWO_, NetI2pCryptoEddsaMathFieldElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathField, FOUR_, NetI2pCryptoEddsaMathFieldElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathField, FIVE_, NetI2pCryptoEddsaMathFieldElement *)
J2OBJC_FIELD_SETTER(NetI2pCryptoEddsaMathField, EIGHT_, NetI2pCryptoEddsaMathFieldElement *)

FOUNDATION_EXPORT void NetI2pCryptoEddsaMathField_initWithInt_withByteArray_withNetI2pCryptoEddsaMathEncoding_(NetI2pCryptoEddsaMathField *self, jint b, IOSByteArray *q, NetI2pCryptoEddsaMathEncoding *enc);

FOUNDATION_EXPORT NetI2pCryptoEddsaMathField *new_NetI2pCryptoEddsaMathField_initWithInt_withByteArray_withNetI2pCryptoEddsaMathEncoding_(jint b, IOSByteArray *q, NetI2pCryptoEddsaMathEncoding *enc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pCryptoEddsaMathField *create_NetI2pCryptoEddsaMathField_initWithInt_withByteArray_withNetI2pCryptoEddsaMathEncoding_(jint b, IOSByteArray *q, NetI2pCryptoEddsaMathEncoding *enc);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pCryptoEddsaMathField)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pCryptoEddsaMathField")