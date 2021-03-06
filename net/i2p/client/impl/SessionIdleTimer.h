//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/SessionIdleTimer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientImplSessionIdleTimer")
#ifdef RESTRICT_NetI2pClientImplSessionIdleTimer
#define INCLUDE_ALL_NetI2pClientImplSessionIdleTimer 0
#else
#define INCLUDE_ALL_NetI2pClientImplSessionIdleTimer 1
#endif
#undef RESTRICT_NetI2pClientImplSessionIdleTimer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientImplSessionIdleTimer_) && (INCLUDE_ALL_NetI2pClientImplSessionIdleTimer || defined(INCLUDE_NetI2pClientImplSessionIdleTimer))
#define NetI2pClientImplSessionIdleTimer_

#define RESTRICT_NetI2pUtilSimpleTimer 1
#define INCLUDE_NetI2pUtilSimpleTimer_TimedEvent 1
#include "net/i2p/util/SimpleTimer.h"

@class NetI2pClientImplI2PSessionImpl;
@class NetI2pI2PAppContext;

@interface NetI2pClientImplSessionIdleTimer : NSObject < NetI2pUtilSimpleTimer_TimedEvent >
@property (readonly, class) jlong MINIMUM_TIME NS_SWIFT_NAME(MINIMUM_TIME);

+ (jlong)MINIMUM_TIME;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                   withNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)session
                                          withBoolean:(jboolean)reduce
                                          withBoolean:(jboolean)shutdown;

- (void)timeReached;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientImplSessionIdleTimer)

inline jlong NetI2pClientImplSessionIdleTimer_get_MINIMUM_TIME(void);
#define NetI2pClientImplSessionIdleTimer_MINIMUM_TIME 300000LL
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientImplSessionIdleTimer, MINIMUM_TIME, jlong)

FOUNDATION_EXPORT void NetI2pClientImplSessionIdleTimer_initWithNetI2pI2PAppContext_withNetI2pClientImplI2PSessionImpl_withBoolean_withBoolean_(NetI2pClientImplSessionIdleTimer *self, NetI2pI2PAppContext *context, NetI2pClientImplI2PSessionImpl *session, jboolean reduce, jboolean shutdown);

FOUNDATION_EXPORT NetI2pClientImplSessionIdleTimer *new_NetI2pClientImplSessionIdleTimer_initWithNetI2pI2PAppContext_withNetI2pClientImplI2PSessionImpl_withBoolean_withBoolean_(NetI2pI2PAppContext *context, NetI2pClientImplI2PSessionImpl *session, jboolean reduce, jboolean shutdown) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientImplSessionIdleTimer *create_NetI2pClientImplSessionIdleTimer_initWithNetI2pI2PAppContext_withNetI2pClientImplI2PSessionImpl_withBoolean_withBoolean_(NetI2pI2PAppContext *context, NetI2pClientImplI2PSessionImpl *session, jboolean reduce, jboolean shutdown);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplSessionIdleTimer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientImplSessionIdleTimer")
