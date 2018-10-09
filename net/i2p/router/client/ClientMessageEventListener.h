//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/client/ClientMessageEventListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterClientClientMessageEventListener")
#ifdef RESTRICT_NetI2pRouterClientClientMessageEventListener
#define INCLUDE_ALL_NetI2pRouterClientClientMessageEventListener 0
#else
#define INCLUDE_ALL_NetI2pRouterClientClientMessageEventListener 1
#endif
#undef RESTRICT_NetI2pRouterClientClientMessageEventListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterClientClientMessageEventListener_) && (INCLUDE_ALL_NetI2pRouterClientClientMessageEventListener || defined(INCLUDE_NetI2pRouterClientClientMessageEventListener))
#define NetI2pRouterClientClientMessageEventListener_

#define RESTRICT_NetI2pDataI2cpI2CPMessageReader 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageReader_I2CPMessageEventListener 1
#include "net/i2p/data/i2cp/I2CPMessageReader.h"

@class JavaLangException;
@class NetI2pDataI2cpCreateLeaseSetMessage;
@class NetI2pDataI2cpDestLookupMessage;
@class NetI2pDataI2cpGetBandwidthLimitsMessage;
@class NetI2pDataI2cpHostLookupMessage;
@class NetI2pDataI2cpI2CPMessageReader;
@class NetI2pDataI2cpSessionConfig;
@class NetI2pRouterClientClientConnectionRunner;
@class NetI2pRouterRouterContext;
@protocol NetI2pDataI2cpI2CPMessage;

@interface NetI2pRouterClientClientMessageEventListener : NSObject < NetI2pDataI2cpI2CPMessageReader_I2CPMessageEventListener > {
 @public
  NetI2pRouterRouterContext *_context_;
  NetI2pRouterClientClientConnectionRunner *_runner_;
}

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
               withNetI2pRouterClientClientConnectionRunner:(NetI2pRouterClientClientConnectionRunner *)runner
                                                withBoolean:(jboolean)enforceAuth;

- (void)disconnectedWithNetI2pDataI2cpI2CPMessageReader:(NetI2pDataI2cpI2CPMessageReader *)reader;

- (void)messageReceivedWithNetI2pDataI2cpI2CPMessageReader:(NetI2pDataI2cpI2CPMessageReader *)reader
                             withNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message;

- (void)readErrorWithNetI2pDataI2cpI2CPMessageReader:(NetI2pDataI2cpI2CPMessageReader *)reader
                               withJavaLangException:(JavaLangException *)error;

#pragma mark Protected

- (void)handleCreateLeaseSetWithNetI2pDataI2cpCreateLeaseSetMessage:(NetI2pDataI2cpCreateLeaseSetMessage *)message;

- (void)handleDestLookupWithNetI2pDataI2cpDestLookupMessage:(NetI2pDataI2cpDestLookupMessage *)message;

- (void)handleGetBWLimitsWithNetI2pDataI2cpGetBandwidthLimitsMessage:(NetI2pDataI2cpGetBandwidthLimitsMessage *)message;

- (void)handleHostLookupWithNetI2pDataI2cpHostLookupMessage:(NetI2pDataI2cpHostLookupMessage *)message;

- (void)startCreateSessionJobWithNetI2pDataI2cpSessionConfig:(NetI2pDataI2cpSessionConfig *)config;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pRouterClientClientMessageEventListener)

J2OBJC_FIELD_SETTER(NetI2pRouterClientClientMessageEventListener, _context_, NetI2pRouterRouterContext *)
J2OBJC_FIELD_SETTER(NetI2pRouterClientClientMessageEventListener, _runner_, NetI2pRouterClientClientConnectionRunner *)

FOUNDATION_EXPORT void NetI2pRouterClientClientMessageEventListener_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withBoolean_(NetI2pRouterClientClientMessageEventListener *self, NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jboolean enforceAuth);

FOUNDATION_EXPORT NetI2pRouterClientClientMessageEventListener *new_NetI2pRouterClientClientMessageEventListener_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withBoolean_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jboolean enforceAuth) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterClientClientMessageEventListener *create_NetI2pRouterClientClientMessageEventListener_initWithNetI2pRouterRouterContext_withNetI2pRouterClientClientConnectionRunner_withBoolean_(NetI2pRouterRouterContext *context, NetI2pRouterClientClientConnectionRunner *runner, jboolean enforceAuth);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterClientClientMessageEventListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterClientClientMessageEventListener")