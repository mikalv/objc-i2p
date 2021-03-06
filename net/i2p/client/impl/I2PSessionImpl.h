//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/impl/I2PSessionImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pClientImplI2PSessionImpl")
#ifdef RESTRICT_NetI2pClientImplI2PSessionImpl
#define INCLUDE_ALL_NetI2pClientImplI2PSessionImpl 0
#else
#define INCLUDE_ALL_NetI2pClientImplI2PSessionImpl 1
#endif
#undef RESTRICT_NetI2pClientImplI2PSessionImpl

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pClientImplI2PSessionImpl_) && (INCLUDE_ALL_NetI2pClientImplI2PSessionImpl || defined(INCLUDE_NetI2pClientImplI2PSessionImpl))
#define NetI2pClientImplI2PSessionImpl_

#define RESTRICT_NetI2pClientI2PSession 1
#define INCLUDE_NetI2pClientI2PSession 1
#include "net/i2p/client/I2PSession.h"

#define RESTRICT_NetI2pDataI2cpI2CPMessageReader 1
#define INCLUDE_NetI2pDataI2cpI2CPMessageReader_I2CPMessageEventListener 1
#include "net/i2p/data/i2cp/I2CPMessageReader.h"

@class IOSByteArray;
@class IOSIntArray;
@class JavaIoInputStream;
@class JavaLangException;
@class JavaLangThrowable;
@class JavaNetSocket;
@class JavaUtilConcurrentLinkedBlockingQueue;
@class JavaUtilProperties;
@class NetI2pClientImplClientWriterRunner;
@class NetI2pClientImplI2CPMessageProducer;
@class NetI2pClientImplI2PClientMessageHandlerMap;
@class NetI2pClientImplI2PSessionImpl_AvailabilityNotifier;
@class NetI2pClientImplI2PSessionImpl_State;
@class NetI2pDataDestination;
@class NetI2pDataHash;
@class NetI2pDataI2cpI2CPMessageReader;
@class NetI2pDataI2cpMessagePayloadMessage;
@class NetI2pDataI2cpSessionId;
@class NetI2pDataLeaseSet;
@class NetI2pDataPrivateKey;
@class NetI2pDataSigningPrivateKey;
@class NetI2pI2PAppContext;
@class NetI2pInternalI2CPMessageQueue;
@class NetI2pUtilLog;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol NetI2pClientI2PSessionListener;
@protocol NetI2pDataI2cpI2CPMessage;

@interface NetI2pClientImplI2PSessionImpl : NSObject < NetI2pClientI2PSession, NetI2pDataI2cpI2CPMessageReader_I2CPMessageEventListener > {
 @public
  NetI2pUtilLog *_log_;
  volatile_id _leaseSet_;
  NSString *_hostname_;
  jint _portNum_;
  JavaNetSocket *_socket_;
  NetI2pDataI2cpI2CPMessageReader *_reader_;
  NetI2pClientImplClientWriterRunner *_writer_;
  NetI2pInternalI2CPMessageQueue *_queue_;
  id<NetI2pClientI2PSessionListener> _sessionListener_;
  NetI2pClientImplI2CPMessageProducer *_producer_;
  id<JavaUtilMap> _availableMessages_;
  JavaUtilConcurrentLinkedBlockingQueue *_pendingLookups_;
  id _bwReceivedLock_;
  volatile_id _bwLimits_;
  NetI2pClientImplI2PClientMessageHandlerMap *_handlerMap_;
  NetI2pI2PAppContext *_context_;
  id _leaseSetWait_;
  NetI2pClientImplI2PSessionImpl_State *_state_;
  id _stateLock_;
  NetI2pClientImplI2PSessionImpl_AvailabilityNotifier *_availabilityNotifier_;
}
@property (readonly, class) jint CACHE_MAX_SIZE NS_SWIFT_NAME(CACHE_MAX_SIZE);
@property (readonly, copy, class) NSString *PROP_ENABLE_SSL NS_SWIFT_NAME(PROP_ENABLE_SSL);
@property (readonly, copy, class) NSString *PROP_USER NS_SWIFT_NAME(PROP_USER);
@property (readonly, copy, class) NSString *PROP_PW NS_SWIFT_NAME(PROP_PW);
@property (readonly, copy, class) NSString *PROP_DOMAIN_SOCKET NS_SWIFT_NAME(PROP_DOMAIN_SOCKET);
@property (readonly, class) jint LISTEN_PORT NS_SWIFT_NAME(LISTEN_PORT);

+ (jint)CACHE_MAX_SIZE;

+ (NSString *)PROP_ENABLE_SSL;

+ (NSString *)PROP_USER;

+ (NSString *)PROP_PW;

+ (NSString *)PROP_DOMAIN_SOCKET;

+ (jint)LISTEN_PORT;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                                withJavaIoInputStream:(JavaIoInputStream *)destKeyStream
                               withJavaUtilProperties:(JavaUtilProperties *)options;

- (void)addNewMessageWithNetI2pDataI2cpMessagePayloadMessage:(NetI2pDataI2cpMessagePayloadMessage *)msg;

- (id<NetI2pClientI2PSession>)addSubsessionWithJavaIoInputStream:(JavaIoInputStream *)privateKeyStream
                                          withJavaUtilProperties:(JavaUtilProperties *)opts;

- (IOSIntArray *)bandwidthLimits;

+ (void)clearCache;

- (void)connect;

- (void)destroySession;

- (void)destroySessionWithBoolean:(jboolean)sendDisconnect;

- (void)disconnectedWithNetI2pDataI2cpI2CPMessageReader:(NetI2pDataI2cpI2CPMessageReader *)reader;

- (NetI2pDataPrivateKey *)getDecryptionKey;

- (jboolean)getFastReceive;

- (NetI2pDataDestination *)getMyDestination;

- (NetI2pDataSigningPrivateKey *)getPrivateKey;

- (id<JavaUtilList>)getSubsessions;

- (jboolean)isClosed;

- (jlong)lastActivity;

- (NetI2pDataDestination *)lookupDestWithNetI2pDataHash:(NetI2pDataHash *)h;

- (NetI2pDataDestination *)lookupDestWithNetI2pDataHash:(NetI2pDataHash *)h
                                               withLong:(jlong)maxWait;

- (NetI2pDataDestination *)lookupDestWithNSString:(NSString *)name;

- (NetI2pDataDestination *)lookupDestWithNSString:(NSString *)name
                                         withLong:(jlong)maxWait;

- (void)messageReceivedWithNetI2pDataI2cpI2CPMessageReader:(NetI2pDataI2cpI2CPMessageReader *)reader
                             withNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message;

- (void)readErrorWithNetI2pDataI2cpI2CPMessageReader:(NetI2pDataI2cpI2CPMessageReader *)reader
                               withJavaLangException:(JavaLangException *)error;

- (IOSByteArray *)receiveMessageWithInt:(jint)msgId;

- (void)receiveStatusWithInt:(jint)msgId
                    withLong:(jlong)nonce
                     withInt:(jint)status;

- (void)removeSubsessionWithNetI2pClientI2PSession:(id<NetI2pClientI2PSession>)session;

- (void)reportAbuseWithInt:(jint)msgId
                   withInt:(jint)severity;

- (void)setReduced;

- (void)setSessionListenerWithNetI2pClientI2PSessionListener:(id<NetI2pClientI2PSessionListener>)lsnr;

- (NSString *)description;

- (void)updateOptionsWithJavaUtilProperties:(JavaUtilProperties *)options;

#pragma mark Protected

- (instancetype __nonnull)initWithNetI2pI2PAppContext:(NetI2pI2PAppContext *)context
                               withJavaUtilProperties:(JavaUtilProperties *)options
       withNetI2pClientImplI2PClientMessageHandlerMap:(NetI2pClientImplI2PClientMessageHandlerMap *)handlerMap;

- (instancetype __nonnull)initWithNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)primary
                                           withJavaIoInputStream:(JavaIoInputStream *)destKeyStream
                                          withJavaUtilProperties:(JavaUtilProperties *)options;

- (void)changeStateWithNetI2pClientImplI2PSessionImpl_State:(NetI2pClientImplI2PSessionImpl_State *)state;

- (void)disconnect;

- (NSString *)getPrefix;

- (jboolean)reconnect;

- (jboolean)shouldReconnect;

- (void)startVerifyUsage;

- (void)updateActivity;

- (void)verifyOpen;

- (void)waitForDate;

#pragma mark Package-Private

- (void)bwReceivedWithIntArray:(IOSIntArray *)i;

- (void)dateUpdatedWithNSString:(NSString *)routerVersion;

- (void)destLookupFailedWithNetI2pDataHash:(NetI2pDataHash *)h;

- (void)destLookupFailedWithLong:(jlong)nonce;

- (void)destReceivedWithNetI2pDataDestination:(NetI2pDataDestination *)d;

- (void)destReceivedWithLong:(jlong)nonce
   withNetI2pDataDestination:(NetI2pDataDestination *)d;

- (NetI2pI2PAppContext *)getContext;

- (NetI2pClientImplI2PClientMessageHandlerMap *)getHandlerMap;

- (NetI2pDataLeaseSet *)getLeaseSet;

- (JavaUtilProperties *)getOptions;

- (NetI2pClientImplI2CPMessageProducer *)getProducer;

- (NetI2pDataI2cpSessionId *)getSessionId;

- (void)propogateErrorWithNSString:(NSString *)msg
             withJavaLangThrowable:(JavaLangThrowable *)error;

- (void)sendMessageWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message;

- (void)sendMessage_uncheckedWithNetI2pDataI2cpI2CPMessage:(id<NetI2pDataI2cpI2CPMessage>)message;

- (void)setLeaseSetWithNetI2pDataLeaseSet:(NetI2pDataLeaseSet *)ls;

- (void)setSessionIdWithNetI2pDataI2cpSessionId:(NetI2pDataI2cpSessionId *)id_;

@end

J2OBJC_STATIC_INIT(NetI2pClientImplI2PSessionImpl)

J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _log_, NetI2pUtilLog *)
J2OBJC_VOLATILE_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _leaseSet_, NetI2pDataLeaseSet *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _hostname_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _socket_, JavaNetSocket *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _reader_, NetI2pDataI2cpI2CPMessageReader *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _writer_, NetI2pClientImplClientWriterRunner *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _queue_, NetI2pInternalI2CPMessageQueue *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _sessionListener_, id<NetI2pClientI2PSessionListener>)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _producer_, NetI2pClientImplI2CPMessageProducer *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _availableMessages_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _pendingLookups_, JavaUtilConcurrentLinkedBlockingQueue *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _bwReceivedLock_, id)
J2OBJC_VOLATILE_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _bwLimits_, IOSIntArray *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _handlerMap_, NetI2pClientImplI2PClientMessageHandlerMap *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _context_, NetI2pI2PAppContext *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _leaseSetWait_, id)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _state_, NetI2pClientImplI2PSessionImpl_State *)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _stateLock_, id)
J2OBJC_FIELD_SETTER(NetI2pClientImplI2PSessionImpl, _availabilityNotifier_, NetI2pClientImplI2PSessionImpl_AvailabilityNotifier *)

inline jint NetI2pClientImplI2PSessionImpl_get_CACHE_MAX_SIZE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint NetI2pClientImplI2PSessionImpl_CACHE_MAX_SIZE;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(NetI2pClientImplI2PSessionImpl, CACHE_MAX_SIZE, jint)

inline NSString *NetI2pClientImplI2PSessionImpl_get_PROP_ENABLE_SSL(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientImplI2PSessionImpl_PROP_ENABLE_SSL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientImplI2PSessionImpl, PROP_ENABLE_SSL, NSString *)

inline NSString *NetI2pClientImplI2PSessionImpl_get_PROP_USER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientImplI2PSessionImpl_PROP_USER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientImplI2PSessionImpl, PROP_USER, NSString *)

inline NSString *NetI2pClientImplI2PSessionImpl_get_PROP_PW(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientImplI2PSessionImpl_PROP_PW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientImplI2PSessionImpl, PROP_PW, NSString *)

inline NSString *NetI2pClientImplI2PSessionImpl_get_PROP_DOMAIN_SOCKET(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *NetI2pClientImplI2PSessionImpl_PROP_DOMAIN_SOCKET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pClientImplI2PSessionImpl, PROP_DOMAIN_SOCKET, NSString *)

inline jint NetI2pClientImplI2PSessionImpl_get_LISTEN_PORT(void);
#define NetI2pClientImplI2PSessionImpl_LISTEN_PORT 7654
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientImplI2PSessionImpl, LISTEN_PORT, jint)

FOUNDATION_EXPORT void NetI2pClientImplI2PSessionImpl_initWithNetI2pI2PAppContext_withJavaUtilProperties_withNetI2pClientImplI2PClientMessageHandlerMap_(NetI2pClientImplI2PSessionImpl *self, NetI2pI2PAppContext *context, JavaUtilProperties *options, NetI2pClientImplI2PClientMessageHandlerMap *handlerMap);

FOUNDATION_EXPORT void NetI2pClientImplI2PSessionImpl_initWithNetI2pClientImplI2PSessionImpl_withJavaIoInputStream_withJavaUtilProperties_(NetI2pClientImplI2PSessionImpl *self, NetI2pClientImplI2PSessionImpl *primary, JavaIoInputStream *destKeyStream, JavaUtilProperties *options);

FOUNDATION_EXPORT void NetI2pClientImplI2PSessionImpl_initWithNetI2pI2PAppContext_withJavaIoInputStream_withJavaUtilProperties_(NetI2pClientImplI2PSessionImpl *self, NetI2pI2PAppContext *context, JavaIoInputStream *destKeyStream, JavaUtilProperties *options);

FOUNDATION_EXPORT void NetI2pClientImplI2PSessionImpl_clearCache(void);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplI2PSessionImpl)

#endif

#if !defined (NetI2pClientImplI2PSessionImpl_State_) && (INCLUDE_ALL_NetI2pClientImplI2PSessionImpl || defined(INCLUDE_NetI2pClientImplI2PSessionImpl_State))
#define NetI2pClientImplI2PSessionImpl_State_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, NetI2pClientImplI2PSessionImpl_State_Enum) {
  NetI2pClientImplI2PSessionImpl_State_Enum_INIT = 0,
  NetI2pClientImplI2PSessionImpl_State_Enum_OPENING = 1,
  NetI2pClientImplI2PSessionImpl_State_Enum_GOTDATE = 2,
  NetI2pClientImplI2PSessionImpl_State_Enum_OPEN = 3,
  NetI2pClientImplI2PSessionImpl_State_Enum_CLOSING = 4,
  NetI2pClientImplI2PSessionImpl_State_Enum_CLOSED = 5,
};

@interface NetI2pClientImplI2PSessionImpl_State : JavaLangEnum

@property (readonly, class, nonnull) NetI2pClientImplI2PSessionImpl_State *INIT NS_SWIFT_NAME(INIT);
@property (readonly, class, nonnull) NetI2pClientImplI2PSessionImpl_State *OPENING NS_SWIFT_NAME(OPENING);
@property (readonly, class, nonnull) NetI2pClientImplI2PSessionImpl_State *GOTDATE NS_SWIFT_NAME(GOTDATE);
@property (readonly, class, nonnull) NetI2pClientImplI2PSessionImpl_State *OPEN NS_SWIFT_NAME(OPEN);
@property (readonly, class, nonnull) NetI2pClientImplI2PSessionImpl_State *CLOSING NS_SWIFT_NAME(CLOSING);
@property (readonly, class, nonnull) NetI2pClientImplI2PSessionImpl_State *CLOSED NS_SWIFT_NAME(CLOSED);
+ (NetI2pClientImplI2PSessionImpl_State * __nonnull)INIT;

+ (NetI2pClientImplI2PSessionImpl_State * __nonnull)OPENING;

+ (NetI2pClientImplI2PSessionImpl_State * __nonnull)GOTDATE;

+ (NetI2pClientImplI2PSessionImpl_State * __nonnull)OPEN;

+ (NetI2pClientImplI2PSessionImpl_State * __nonnull)CLOSING;

+ (NetI2pClientImplI2PSessionImpl_State * __nonnull)CLOSED;

#pragma mark Public

+ (NetI2pClientImplI2PSessionImpl_State *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (NetI2pClientImplI2PSessionImpl_State_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(NetI2pClientImplI2PSessionImpl_State)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_values_[];

inline NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_get_INIT(void);
J2OBJC_ENUM_CONSTANT(NetI2pClientImplI2PSessionImpl_State, INIT)

inline NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_get_OPENING(void);
J2OBJC_ENUM_CONSTANT(NetI2pClientImplI2PSessionImpl_State, OPENING)

inline NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_get_GOTDATE(void);
J2OBJC_ENUM_CONSTANT(NetI2pClientImplI2PSessionImpl_State, GOTDATE)

inline NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_get_OPEN(void);
J2OBJC_ENUM_CONSTANT(NetI2pClientImplI2PSessionImpl_State, OPEN)

inline NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_get_CLOSING(void);
J2OBJC_ENUM_CONSTANT(NetI2pClientImplI2PSessionImpl_State, CLOSING)

inline NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_get_CLOSED(void);
J2OBJC_ENUM_CONSTANT(NetI2pClientImplI2PSessionImpl_State, CLOSED)

FOUNDATION_EXPORT IOSObjectArray *NetI2pClientImplI2PSessionImpl_State_values(void);

FOUNDATION_EXPORT NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT NetI2pClientImplI2PSessionImpl_State *NetI2pClientImplI2PSessionImpl_State_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplI2PSessionImpl_State)

#endif

#if !defined (NetI2pClientImplI2PSessionImpl_AvailabilityNotifier_) && (INCLUDE_ALL_NetI2pClientImplI2PSessionImpl || defined(INCLUDE_NetI2pClientImplI2PSessionImpl_AvailabilityNotifier))
#define NetI2pClientImplI2PSessionImpl_AvailabilityNotifier_

#define RESTRICT_JavaLangRunnable 1
#define INCLUDE_JavaLangRunnable 1
#include "java/lang/Runnable.h"

@class NetI2pClientImplI2PSessionImpl;

@interface NetI2pClientImplI2PSessionImpl_AvailabilityNotifier : NSObject < JavaLangRunnable >

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pClientImplI2PSessionImpl:(NetI2pClientImplI2PSessionImpl *)outer$;

- (void)availableWithLong:(jlong)msgId
                  withInt:(jint)size;

- (void)run;

- (void)stopNotifying;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pClientImplI2PSessionImpl_AvailabilityNotifier)

FOUNDATION_EXPORT void NetI2pClientImplI2PSessionImpl_AvailabilityNotifier_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl_AvailabilityNotifier *self, NetI2pClientImplI2PSessionImpl *outer$);

FOUNDATION_EXPORT NetI2pClientImplI2PSessionImpl_AvailabilityNotifier *new_NetI2pClientImplI2PSessionImpl_AvailabilityNotifier_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pClientImplI2PSessionImpl_AvailabilityNotifier *create_NetI2pClientImplI2PSessionImpl_AvailabilityNotifier_initWithNetI2pClientImplI2PSessionImpl_(NetI2pClientImplI2PSessionImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pClientImplI2PSessionImpl_AvailabilityNotifier)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pClientImplI2PSessionImpl")
