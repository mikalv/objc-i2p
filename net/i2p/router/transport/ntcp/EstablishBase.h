//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/transport/ntcp/EstablishBase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase")
#ifdef RESTRICT_NetI2pRouterTransportNtcpEstablishBase
#define INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase 0
#else
#define INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase 1
#endif
#undef RESTRICT_NetI2pRouterTransportNtcpEstablishBase
#ifdef INCLUDE_NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState
#define INCLUDE_NetI2pRouterTransportNtcpEstablishBase 1
#endif
#ifdef INCLUDE_NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState
#define INCLUDE_NetI2pRouterTransportNtcpEstablishBase 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterTransportNtcpEstablishBase_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase || defined(INCLUDE_NetI2pRouterTransportNtcpEstablishBase))
#define NetI2pRouterTransportNtcpEstablishBase_

#define RESTRICT_NetI2pRouterTransportNtcpEstablishState 1
#define INCLUDE_NetI2pRouterTransportNtcpEstablishState 1
#include "net/i2p/router/transport/ntcp/EstablishState.h"

@class IOSByteArray;
@class JavaLangException;
@class JavaNioByteBuffer;
@class NetI2pRouterRouterContext;
@class NetI2pRouterTransportCryptoDHSessionKeyBuilder;
@class NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState;
@class NetI2pRouterTransportNtcpEstablishBase_State;
@class NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState;
@class NetI2pRouterTransportNtcpNTCPConnection;
@class NetI2pRouterTransportNtcpNTCPTransport;
@class NetI2pUtilLog;

@interface NetI2pRouterTransportNtcpEstablishBase : NSObject < NetI2pRouterTransportNtcpEstablishState > {
 @public
  NetI2pRouterRouterContext *_context_;
  NetI2pUtilLog *_log_;
  IOSByteArray *_X_;
  IOSByteArray *_hX_xor_bobIdentHash_;
  IOSByteArray *_Y_;
  IOSByteArray *_e_hXY_tsB_;
  jlong _tsB_;
  jlong _tsA_;
  jlong _peerSkew_;
  IOSByteArray *_e_bobSig_;
  IOSByteArray *_prevEncrypted_;
  IOSByteArray *_curDecrypted_;
  jint _received_;
  NetI2pRouterTransportCryptoDHSessionKeyBuilder *_dh_;
  NetI2pRouterTransportNtcpNTCPTransport *_transport_;
  NetI2pRouterTransportNtcpNTCPConnection *_con_;
  id _stateLock_;
  volatile_id _state_;
}
@property (readonly, class, strong) NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *VERIFIED NS_SWIFT_NAME(VERIFIED);
@property (readonly, class, strong) NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *FAILED NS_SWIFT_NAME(FAILED);
@property (readonly, class) jint MIN_RI_SIZE NS_SWIFT_NAME(MIN_RI_SIZE);
@property (readonly, class) jint MAX_RI_SIZE NS_SWIFT_NAME(MAX_RI_SIZE);
@property (readonly, class) jint AES_SIZE NS_SWIFT_NAME(AES_SIZE);
@property (readonly, class) jint XY_SIZE NS_SWIFT_NAME(XY_SIZE);
@property (readonly, class) jint HXY_SIZE NS_SWIFT_NAME(HXY_SIZE);
@property (readonly, class) jint HXY_TSB_PAD_SIZE NS_SWIFT_NAME(HXY_TSB_PAD_SIZE);

+ (NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *)VERIFIED;

+ (NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *)FAILED;

+ (jint)MIN_RI_SIZE;

+ (jint)MAX_RI_SIZE;

+ (jint)AES_SIZE;

+ (jint)XY_SIZE;

+ (jint)HXY_SIZE;

+ (jint)HXY_TSB_PAD_SIZE;

#pragma mark Public

- (void)closeWithNSString:(NSString *)reason
    withJavaLangException:(JavaLangException *)e;

- (jint)getVersion;

- (jboolean)isComplete;

- (jboolean)isCorrupt;

- (void)prepareOutbound;

- (void)receiveWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;

- (NSString *)description;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx
                 withNetI2pRouterTransportNtcpNTCPTransport:(NetI2pRouterTransportNtcpNTCPTransport *)transport
                withNetI2pRouterTransportNtcpNTCPConnection:(NetI2pRouterTransportNtcpNTCPConnection *)con;

+ (NSString *)_xWithNSString:(NSString *)s;

- (void)changeStateWithNetI2pRouterTransportNtcpEstablishBase_State:(NetI2pRouterTransportNtcpEstablishBase_State *)state;

- (void)failWithNSString:(NSString *)reason;

- (void)failWithNSString:(NSString *)reason
   withJavaLangException:(JavaLangException *)e;

- (void)failWithNSString:(NSString *)reason
   withJavaLangException:(JavaLangException *)e
             withBoolean:(jboolean)bySkew;

- (NSString *)prefix;

- (void)releaseBufsWithBoolean:(jboolean)isVerified;

+ (void)xor32WithByteArray:(IOSByteArray *)a
             withByteArray:(IOSByteArray *)b;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportNtcpEstablishBase)

J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _log_, NetI2pUtilLog *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _X_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _hX_xor_bobIdentHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _Y_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _e_hXY_tsB_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _e_bobSig_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _prevEncrypted_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _curDecrypted_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _dh_, NetI2pRouterTransportCryptoDHSessionKeyBuilder *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _transport_, NetI2pRouterTransportNtcpNTCPTransport *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _con_, NetI2pRouterTransportNtcpNTCPConnection *)
J2OBJC_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _stateLock_, id)
J2OBJC_VOLATILE_FIELD_SETTER(NetI2pRouterTransportNtcpEstablishBase, _state_, NetI2pRouterTransportNtcpEstablishBase_State *)

inline NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *NetI2pRouterTransportNtcpEstablishBase_get_VERIFIED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *NetI2pRouterTransportNtcpEstablishBase_VERIFIED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportNtcpEstablishBase, VERIFIED, NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *)

inline NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *NetI2pRouterTransportNtcpEstablishBase_get_FAILED(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *NetI2pRouterTransportNtcpEstablishBase_FAILED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pRouterTransportNtcpEstablishBase, FAILED, NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *)

inline jint NetI2pRouterTransportNtcpEstablishBase_get_MIN_RI_SIZE(void);
#define NetI2pRouterTransportNtcpEstablishBase_MIN_RI_SIZE 387
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpEstablishBase, MIN_RI_SIZE, jint)

inline jint NetI2pRouterTransportNtcpEstablishBase_get_MAX_RI_SIZE(void);
#define NetI2pRouterTransportNtcpEstablishBase_MAX_RI_SIZE 3072
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpEstablishBase, MAX_RI_SIZE, jint)

inline jint NetI2pRouterTransportNtcpEstablishBase_get_AES_SIZE(void);
#define NetI2pRouterTransportNtcpEstablishBase_AES_SIZE 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpEstablishBase, AES_SIZE, jint)

inline jint NetI2pRouterTransportNtcpEstablishBase_get_XY_SIZE(void);
#define NetI2pRouterTransportNtcpEstablishBase_XY_SIZE 256
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpEstablishBase, XY_SIZE, jint)

inline jint NetI2pRouterTransportNtcpEstablishBase_get_HXY_SIZE(void);
#define NetI2pRouterTransportNtcpEstablishBase_HXY_SIZE 32
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpEstablishBase, HXY_SIZE, jint)

inline jint NetI2pRouterTransportNtcpEstablishBase_get_HXY_TSB_PAD_SIZE(void);
#define NetI2pRouterTransportNtcpEstablishBase_HXY_TSB_PAD_SIZE 48
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTransportNtcpEstablishBase, HXY_TSB_PAD_SIZE, jint)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpEstablishBase_initWithNetI2pRouterRouterContext_withNetI2pRouterTransportNtcpNTCPTransport_withNetI2pRouterTransportNtcpNTCPConnection_(NetI2pRouterTransportNtcpEstablishBase *self, NetI2pRouterRouterContext *ctx, NetI2pRouterTransportNtcpNTCPTransport *transport, NetI2pRouterTransportNtcpNTCPConnection *con);

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpEstablishBase_xor32WithByteArray_withByteArray_(IOSByteArray *a, IOSByteArray *b);

FOUNDATION_EXPORT NSString *NetI2pRouterTransportNtcpEstablishBase__xWithNSString_(NSString *s);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpEstablishBase)

#endif

#if !defined (NetI2pRouterTransportNtcpEstablishBase_State_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase || defined(INCLUDE_NetI2pRouterTransportNtcpEstablishBase_State))
#define NetI2pRouterTransportNtcpEstablishBase_State_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, NetI2pRouterTransportNtcpEstablishBase_State_Enum) {
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_OB_INIT = 0,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_OB_SENT_X = 1,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_OB_GOT_Y = 2,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_OB_GOT_HXY = 3,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_OB_SENT_RI = 4,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_OB_GOT_SIG = 5,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_INIT = 6,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_GOT_X = 7,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_GOT_HX = 8,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_SENT_Y = 9,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_GOT_RI_SIZE = 10,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_GOT_RI = 11,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_NTCP2_INIT = 12,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_NTCP2_GOT_X = 13,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_NTCP2_GOT_PADDING = 14,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_NTCP2_SENT_Y = 15,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_NTCP2_GOT_RI = 16,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_IB_NTCP2_READ_RANDOM = 17,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_VERIFIED = 18,
  NetI2pRouterTransportNtcpEstablishBase_State_Enum_CORRUPT = 19,
};

@interface NetI2pRouterTransportNtcpEstablishBase_State : JavaLangEnum

@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *OB_INIT NS_SWIFT_NAME(OB_INIT);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *OB_SENT_X NS_SWIFT_NAME(OB_SENT_X);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *OB_GOT_Y NS_SWIFT_NAME(OB_GOT_Y);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *OB_GOT_HXY NS_SWIFT_NAME(OB_GOT_HXY);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *OB_SENT_RI NS_SWIFT_NAME(OB_SENT_RI);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *OB_GOT_SIG NS_SWIFT_NAME(OB_GOT_SIG);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_INIT NS_SWIFT_NAME(IB_INIT);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_GOT_X NS_SWIFT_NAME(IB_GOT_X);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_GOT_HX NS_SWIFT_NAME(IB_GOT_HX);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_SENT_Y NS_SWIFT_NAME(IB_SENT_Y);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_GOT_RI_SIZE NS_SWIFT_NAME(IB_GOT_RI_SIZE);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_GOT_RI NS_SWIFT_NAME(IB_GOT_RI);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_NTCP2_INIT NS_SWIFT_NAME(IB_NTCP2_INIT);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_NTCP2_GOT_X NS_SWIFT_NAME(IB_NTCP2_GOT_X);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_NTCP2_GOT_PADDING NS_SWIFT_NAME(IB_NTCP2_GOT_PADDING);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_NTCP2_SENT_Y NS_SWIFT_NAME(IB_NTCP2_SENT_Y);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_NTCP2_GOT_RI NS_SWIFT_NAME(IB_NTCP2_GOT_RI);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *IB_NTCP2_READ_RANDOM NS_SWIFT_NAME(IB_NTCP2_READ_RANDOM);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *VERIFIED NS_SWIFT_NAME(VERIFIED);
@property (readonly, class, nonnull) NetI2pRouterTransportNtcpEstablishBase_State *CORRUPT NS_SWIFT_NAME(CORRUPT);
+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)OB_INIT;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)OB_SENT_X;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)OB_GOT_Y;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)OB_GOT_HXY;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)OB_SENT_RI;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)OB_GOT_SIG;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_INIT;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_GOT_X;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_GOT_HX;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_SENT_Y;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_GOT_RI_SIZE;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_GOT_RI;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_NTCP2_INIT;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_NTCP2_GOT_X;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_NTCP2_GOT_PADDING;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_NTCP2_SENT_Y;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_NTCP2_GOT_RI;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)IB_NTCP2_READ_RANDOM;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)VERIFIED;

+ (NetI2pRouterTransportNtcpEstablishBase_State * __nonnull)CORRUPT;

#pragma mark Public

+ (NetI2pRouterTransportNtcpEstablishBase_State *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (NetI2pRouterTransportNtcpEstablishBase_State_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pRouterTransportNtcpEstablishBase_State)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_values_[];

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_OB_INIT(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, OB_INIT)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_OB_SENT_X(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_X)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_OB_GOT_Y(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_Y)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_OB_GOT_HXY(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_HXY)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_OB_SENT_RI(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, OB_SENT_RI)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_OB_GOT_SIG(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, OB_GOT_SIG)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_INIT(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_INIT)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_GOT_X(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_GOT_X)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_GOT_HX(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_GOT_HX)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_SENT_Y(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_SENT_Y)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_GOT_RI_SIZE(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_GOT_RI_SIZE)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_GOT_RI(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_GOT_RI)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_NTCP2_INIT(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_NTCP2_INIT)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_NTCP2_GOT_X(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_NTCP2_GOT_X)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_NTCP2_GOT_PADDING(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_NTCP2_GOT_PADDING)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_NTCP2_SENT_Y(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_NTCP2_SENT_Y)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_NTCP2_GOT_RI(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_NTCP2_GOT_RI)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_IB_NTCP2_READ_RANDOM(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, IB_NTCP2_READ_RANDOM)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_VERIFIED(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, VERIFIED)

inline NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_get_CORRUPT(void);
J2OBJC_ENUM_CONSTANT(NetI2pRouterTransportNtcpEstablishBase_State, CORRUPT)

FOUNDATION_EXPORT IOSObjectArray *NetI2pRouterTransportNtcpEstablishBase_State_values(void);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_State *NetI2pRouterTransportNtcpEstablishBase_State_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpEstablishBase_State)

#endif

#if !defined (NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase || defined(INCLUDE_NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState))
#define NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState_

@class JavaNioByteBuffer;

@interface NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState : NetI2pRouterTransportNtcpEstablishBase

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)getVersion;

- (void)prepareOutbound;

- (void)receiveWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState_init(NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *self);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *new_NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState *create_NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpEstablishBase_VerifiedEstablishState)

#endif

#if !defined (NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState_) && (INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase || defined(INCLUDE_NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState))
#define NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState_

@class JavaNioByteBuffer;

@interface NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState : NetI2pRouterTransportNtcpEstablishBase

#pragma mark Public

- (instancetype __nonnull)init;

- (jint)getVersion;

- (void)prepareOutbound;

- (void)receiveWithJavaNioByteBuffer:(JavaNioByteBuffer *)src;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState)

FOUNDATION_EXPORT void NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState_init(NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *self);

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *new_NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState *create_NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState_init(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterTransportNtcpEstablishBase_FailedEstablishState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterTransportNtcpEstablishBase")