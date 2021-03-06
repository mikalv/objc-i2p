//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/OutNetMessage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pRouterOutNetMessage")
#ifdef RESTRICT_NetI2pRouterOutNetMessage
#define INCLUDE_ALL_NetI2pRouterOutNetMessage 0
#else
#define INCLUDE_ALL_NetI2pRouterOutNetMessage 1
#endif
#undef RESTRICT_NetI2pRouterOutNetMessage

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pRouterOutNetMessage_) && (INCLUDE_ALL_NetI2pRouterOutNetMessage || defined(INCLUDE_NetI2pRouterOutNetMessage))
#define NetI2pRouterOutNetMessage_

#define RESTRICT_NetI2pRouterUtilCDPQEntry 1
#define INCLUDE_NetI2pRouterUtilCDPQEntry 1
#include "net/i2p/router/util/CDPQEntry.h"

@class IOSByteArray;
@class JavaLangException;
@class JavaLangLong;
@class NetI2pDataRouterRouterInfo;
@class NetI2pRouterRouterContext;
@protocol JavaUtilMap;
@protocol JavaUtilSet;
@protocol NetI2pDataI2npI2NPMessage;
@protocol NetI2pRouterJob;
@protocol NetI2pRouterMessageSelector;
@protocol NetI2pRouterReplyJob;

@interface NetI2pRouterOutNetMessage : NSObject < NetI2pRouterUtilCDPQEntry >
@property (readonly, class) jint PRIORITY_HIGHEST NS_SWIFT_NAME(PRIORITY_HIGHEST);
@property (readonly, class) jint PRIORITY_MY_BUILD_REQUEST NS_SWIFT_NAME(PRIORITY_MY_BUILD_REQUEST);
@property (readonly, class) jint PRIORITY_MY_NETDB_LOOKUP NS_SWIFT_NAME(PRIORITY_MY_NETDB_LOOKUP);
@property (readonly, class) jint PRIORITY_MY_NETDB_STORE NS_SWIFT_NAME(PRIORITY_MY_NETDB_STORE);
@property (readonly, class) jint PRIORITY_EXPLORATORY NS_SWIFT_NAME(PRIORITY_EXPLORATORY);
@property (readonly, class) jint PRIORITY_MY_DATA NS_SWIFT_NAME(PRIORITY_MY_DATA);
@property (readonly, class) jint PRIORITY_HIS_BUILD_REQUEST NS_SWIFT_NAME(PRIORITY_HIS_BUILD_REQUEST);
@property (readonly, class) jint PRIORITY_BUILD_REPLY NS_SWIFT_NAME(PRIORITY_BUILD_REPLY);
@property (readonly, class) jint PRIORITY_NETDB_REPLY NS_SWIFT_NAME(PRIORITY_NETDB_REPLY);
@property (readonly, class) jint PRIORITY_HIS_NETDB_STORE NS_SWIFT_NAME(PRIORITY_HIS_NETDB_STORE);
@property (readonly, class) jint PRIORITY_NETDB_FLOOD NS_SWIFT_NAME(PRIORITY_NETDB_FLOOD);
@property (readonly, class) jint PRIORITY_PARTICIPATING NS_SWIFT_NAME(PRIORITY_PARTICIPATING);
@property (readonly, class) jint PRIORITY_MY_NETDB_STORE_LOW NS_SWIFT_NAME(PRIORITY_MY_NETDB_STORE_LOW);
@property (readonly, class) jint PRIORITY_NETDB_EXPLORE NS_SWIFT_NAME(PRIORITY_NETDB_EXPLORE);
@property (readonly, class) jint PRIORITY_NETDB_HARVEST NS_SWIFT_NAME(PRIORITY_NETDB_HARVEST);
@property (readonly, class) jint PRIORITY_LOWEST NS_SWIFT_NAME(PRIORITY_LOWEST);

+ (jint)PRIORITY_HIGHEST;

+ (jint)PRIORITY_MY_BUILD_REQUEST;

+ (jint)PRIORITY_MY_NETDB_LOOKUP;

+ (jint)PRIORITY_MY_NETDB_STORE;

+ (jint)PRIORITY_EXPLORATORY;

+ (jint)PRIORITY_MY_DATA;

+ (jint)PRIORITY_HIS_BUILD_REQUEST;

+ (jint)PRIORITY_BUILD_REPLY;

+ (jint)PRIORITY_NETDB_REPLY;

+ (jint)PRIORITY_HIS_NETDB_STORE;

+ (jint)PRIORITY_NETDB_FLOOD;

+ (jint)PRIORITY_PARTICIPATING;

+ (jint)PRIORITY_MY_NETDB_STORE_LOW;

+ (jint)PRIORITY_NETDB_EXPLORE;

+ (jint)PRIORITY_NETDB_HARVEST;

+ (jint)PRIORITY_LOWEST;

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context;

- (instancetype __nonnull)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)context
                              withNetI2pDataI2npI2NPMessage:(id<NetI2pDataI2npI2NPMessage>)msg
                                                   withLong:(jlong)expiration
                                                    withInt:(jint)priority
                             withNetI2pDataRouterRouterInfo:(NetI2pDataRouterRouterInfo *)target;

- (void)beginSend;

- (void)discardData;

- (void)drop;

- (jlong)getCreated;

- (JavaLangException *)getCreatedBy;

- (jlong)getEnqueueTime;

- (jlong)getExpiration;

- (id<JavaUtilSet>)getFailedTransports;

- (jlong)getLifetime;

- (id<NetI2pDataI2npI2NPMessage>)getMessage;

- (jint)getMessageDataWithByteArray:(IOSByteArray *)outBuffer;

- (jlong)getMessageId;

- (jint)getMessageSize;

- (NSString *)getMessageType;

- (jint)getMessageTypeId;

- (id<NetI2pRouterJob>)getOnFailedReplyJob;

- (id<NetI2pRouterJob>)getOnFailedSendJob;

- (id<NetI2pRouterReplyJob>)getOnReplyJob;

- (id<NetI2pRouterJob>)getOnSendJob;

- (jint)getPriority;

- (id<NetI2pRouterMessageSelector>)getReplySelector;

- (jlong)getSendBegin;

- (jlong)getSendTime;

- (jlong)getSeqNum;

- (NetI2pDataRouterRouterInfo *)getTarget;

- (JavaLangLong *)getTimestampWithNSString:(NSString *)eventName;

- (id<JavaUtilMap>)getTimestamps;

- (void)setEnqueueTimeWithLong:(jlong)now;

- (void)setOnFailedReplyJobWithNetI2pRouterJob:(id<NetI2pRouterJob>)job;

- (void)setOnFailedSendJobWithNetI2pRouterJob:(id<NetI2pRouterJob>)job;

- (void)setOnReplyJobWithNetI2pRouterReplyJob:(id<NetI2pRouterReplyJob>)job;

- (void)setOnSendJobWithNetI2pRouterJob:(id<NetI2pRouterJob>)job;

- (void)setReplySelectorWithNetI2pRouterMessageSelector:(id<NetI2pRouterMessageSelector>)selector;

- (void)setSeqNumWithLong:(jlong)num;

- (jlong)timestampWithNSString:(NSString *)eventName;

- (NSString *)description;

- (void)transportFailedWithNSString:(NSString *)transportStyle;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(NetI2pRouterOutNetMessage)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_HIGHEST(void);
#define NetI2pRouterOutNetMessage_PRIORITY_HIGHEST 1000
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_HIGHEST, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_MY_BUILD_REQUEST(void);
#define NetI2pRouterOutNetMessage_PRIORITY_MY_BUILD_REQUEST 500
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_MY_BUILD_REQUEST, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_MY_NETDB_LOOKUP(void);
#define NetI2pRouterOutNetMessage_PRIORITY_MY_NETDB_LOOKUP 500
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_MY_NETDB_LOOKUP, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_MY_NETDB_STORE(void);
#define NetI2pRouterOutNetMessage_PRIORITY_MY_NETDB_STORE 460
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_MY_NETDB_STORE, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_EXPLORATORY(void);
#define NetI2pRouterOutNetMessage_PRIORITY_EXPLORATORY 455
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_EXPLORATORY, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_MY_DATA(void);
#define NetI2pRouterOutNetMessage_PRIORITY_MY_DATA 425
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_MY_DATA, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_HIS_BUILD_REQUEST(void);
#define NetI2pRouterOutNetMessage_PRIORITY_HIS_BUILD_REQUEST 300
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_HIS_BUILD_REQUEST, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_BUILD_REPLY(void);
#define NetI2pRouterOutNetMessage_PRIORITY_BUILD_REPLY 300
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_BUILD_REPLY, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_NETDB_REPLY(void);
#define NetI2pRouterOutNetMessage_PRIORITY_NETDB_REPLY 300
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_NETDB_REPLY, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_HIS_NETDB_STORE(void);
#define NetI2pRouterOutNetMessage_PRIORITY_HIS_NETDB_STORE 200
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_HIS_NETDB_STORE, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_NETDB_FLOOD(void);
#define NetI2pRouterOutNetMessage_PRIORITY_NETDB_FLOOD 200
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_NETDB_FLOOD, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_PARTICIPATING(void);
#define NetI2pRouterOutNetMessage_PRIORITY_PARTICIPATING 200
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_PARTICIPATING, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_MY_NETDB_STORE_LOW(void);
#define NetI2pRouterOutNetMessage_PRIORITY_MY_NETDB_STORE_LOW 150
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_MY_NETDB_STORE_LOW, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_NETDB_EXPLORE(void);
#define NetI2pRouterOutNetMessage_PRIORITY_NETDB_EXPLORE 100
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_NETDB_EXPLORE, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_NETDB_HARVEST(void);
#define NetI2pRouterOutNetMessage_PRIORITY_NETDB_HARVEST 100
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_NETDB_HARVEST, jint)

inline jint NetI2pRouterOutNetMessage_get_PRIORITY_LOWEST(void);
#define NetI2pRouterOutNetMessage_PRIORITY_LOWEST 100
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterOutNetMessage, PRIORITY_LOWEST, jint)

FOUNDATION_EXPORT void NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_(NetI2pRouterOutNetMessage *self, NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT NetI2pRouterOutNetMessage *new_NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterOutNetMessage *create_NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *context);

FOUNDATION_EXPORT void NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withLong_withInt_withNetI2pDataRouterRouterInfo_(NetI2pRouterOutNetMessage *self, NetI2pRouterRouterContext *context, id<NetI2pDataI2npI2NPMessage> msg, jlong expiration, jint priority, NetI2pDataRouterRouterInfo *target);

FOUNDATION_EXPORT NetI2pRouterOutNetMessage *new_NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withLong_withInt_withNetI2pDataRouterRouterInfo_(NetI2pRouterRouterContext *context, id<NetI2pDataI2npI2NPMessage> msg, jlong expiration, jint priority, NetI2pDataRouterRouterInfo *target) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pRouterOutNetMessage *create_NetI2pRouterOutNetMessage_initWithNetI2pRouterRouterContext_withNetI2pDataI2npI2NPMessage_withLong_withInt_withNetI2pDataRouterRouterInfo_(NetI2pRouterRouterContext *context, id<NetI2pDataI2npI2NPMessage> msg, jlong expiration, jint priority, NetI2pDataRouterRouterInfo *target);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pRouterOutNetMessage)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pRouterOutNetMessage")
