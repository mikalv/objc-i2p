//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/FastI2NPMessageImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npFastI2NPMessageImpl")
#ifdef RESTRICT_NetI2pDataI2npFastI2NPMessageImpl
#define INCLUDE_ALL_NetI2pDataI2npFastI2NPMessageImpl 0
#else
#define INCLUDE_ALL_NetI2pDataI2npFastI2NPMessageImpl 1
#endif
#undef RESTRICT_NetI2pDataI2npFastI2NPMessageImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npFastI2NPMessageImpl_) && (INCLUDE_ALL_NetI2pDataI2npFastI2NPMessageImpl || defined(INCLUDE_NetI2pDataI2npFastI2NPMessageImpl))
#define NetI2pDataI2npFastI2NPMessageImpl_

#define RESTRICT_NetI2pDataI2npI2NPMessageImpl 1
#define INCLUDE_NetI2pDataI2npI2NPMessageImpl 1
#include "net/i2p/data/i2np/I2NPMessageImpl.h"

@class IOSByteArray;
@class NetI2pI2PAppContext;

@interface NetI2pDataI2npFastI2NPMessageImpl : NetI2pDataI2npI2NPMessageImpl {
 @public
  jbyte _checksum_;
  jboolean _hasChecksum_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (jint)readBytesWithByteArray:(IOSByteArray *)data
                       withInt:(jint)type
                       withInt:(jint)offset
                       withInt:(jint)maxLen;

- (jint)toByteArrayWithByteArray:(IOSByteArray *)buffer;

#pragma mark Protected

- (jint)toByteArrayWithSavedChecksumWithByteArray:(IOSByteArray *)buffer;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npFastI2NPMessageImpl)

FOUNDATION_EXPORT void NetI2pDataI2npFastI2NPMessageImpl_initWithNetI2pI2PAppContext_(NetI2pDataI2npFastI2NPMessageImpl *self, NetI2pI2PAppContext *context);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npFastI2NPMessageImpl)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npFastI2NPMessageImpl")
