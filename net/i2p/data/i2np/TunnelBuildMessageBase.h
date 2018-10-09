//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/i2np/TunnelBuildMessageBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessageBase")
#ifdef RESTRICT_NetI2pDataI2npTunnelBuildMessageBase
#define INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessageBase 0
#else
#define INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessageBase 1
#endif
#undef RESTRICT_NetI2pDataI2npTunnelBuildMessageBase

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataI2npTunnelBuildMessageBase_) && (INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessageBase || defined(INCLUDE_NetI2pDataI2npTunnelBuildMessageBase))
#define NetI2pDataI2npTunnelBuildMessageBase_

#define RESTRICT_NetI2pDataI2npI2NPMessageImpl 1
#define INCLUDE_NetI2pDataI2npI2NPMessageImpl 1
#include "net/i2p/data/i2np/I2NPMessageImpl.h"

@class IOSByteArray;
@class IOSObjectArray;
@class NetI2pDataI2npEncryptedBuildRecord;
@class NetI2pI2PAppContext;

@interface NetI2pDataI2npTunnelBuildMessageBase : NetI2pDataI2npI2NPMessageImpl {
 @public
  IOSObjectArray *_records_;
  jint RECORD_COUNT_;
}
@property (readonly, class) jint MAX_RECORD_COUNT NS_SWIFT_NAME(MAX_RECORD_COUNT);
@property (readonly, class) jint RECORD_SIZE NS_SWIFT_NAME(RECORD_SIZE);

+ (jint)MAX_RECORD_COUNT;

+ (jint)RECORD_SIZE;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context;

- (NetI2pDataI2npEncryptedBuildRecord *)getRecordWithInt:(jint)index;

- (jint)getRecordCount;

- (void)readMessageWithByteArray:(IOSByteArray *)data
                         withInt:(jint)offset
                         withInt:(jint)dataSize
                         withInt:(jint)type;

- (void)setRecordWithInt:(jint)index
withNetI2pDataI2npEncryptedBuildRecord:(NetI2pDataI2npEncryptedBuildRecord *)record;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                              withInt:(jint)records;

- (jint)calculateWrittenLength;

- (jint)writeMessageBodyWithByteArray:(IOSByteArray *)outArg
                              withInt:(jint)curIndex;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataI2npTunnelBuildMessageBase)

J2OBJC_FIELD_SETTER(NetI2pDataI2npTunnelBuildMessageBase, _records_, IOSObjectArray *)

inline jint NetI2pDataI2npTunnelBuildMessageBase_get_MAX_RECORD_COUNT(void);
#define NetI2pDataI2npTunnelBuildMessageBase_MAX_RECORD_COUNT 8
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npTunnelBuildMessageBase, MAX_RECORD_COUNT, jint)

inline jint NetI2pDataI2npTunnelBuildMessageBase_get_RECORD_SIZE(void);
#define NetI2pDataI2npTunnelBuildMessageBase_RECORD_SIZE 528
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pDataI2npTunnelBuildMessageBase, RECORD_SIZE, jint)

FOUNDATION_EXPORT void NetI2pDataI2npTunnelBuildMessageBase_initWithNetI2pI2PAppContext_(NetI2pDataI2npTunnelBuildMessageBase *self, NetI2pI2PAppContext *context);

FOUNDATION_EXPORT void NetI2pDataI2npTunnelBuildMessageBase_initWithNetI2pI2PAppContext_withInt_(NetI2pDataI2npTunnelBuildMessageBase *self, NetI2pI2PAppContext *context, jint records);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataI2npTunnelBuildMessageBase)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataI2npTunnelBuildMessageBase")