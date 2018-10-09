//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/minidev/json/parser/JSONParserByteArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetMinidevJsonParserJSONParserByteArray")
#ifdef RESTRICT_NetMinidevJsonParserJSONParserByteArray
#define INCLUDE_ALL_NetMinidevJsonParserJSONParserByteArray 0
#else
#define INCLUDE_ALL_NetMinidevJsonParserJSONParserByteArray 1
#endif
#undef RESTRICT_NetMinidevJsonParserJSONParserByteArray

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetMinidevJsonParserJSONParserByteArray_) && (INCLUDE_ALL_NetMinidevJsonParserJSONParserByteArray || defined(INCLUDE_NetMinidevJsonParserJSONParserByteArray))
#define NetMinidevJsonParserJSONParserByteArray_

#define RESTRICT_NetMinidevJsonParserJSONParserMemory 1
#define INCLUDE_NetMinidevJsonParserJSONParserMemory 1
#include "net/minidev/json/parser/JSONParserMemory.h"

@class IOSByteArray;
@protocol NetMinidevJsonParserContainerFactory;
@protocol NetMinidevJsonParserContentHandler;

@interface NetMinidevJsonParserJSONParserByteArray : NetMinidevJsonParserJSONParserMemory

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)permissiveMode;

- (id)parseWithByteArray:(IOSByteArray *)inArg;

- (id)parseWithByteArray:(IOSByteArray *)inArg
withNetMinidevJsonParserContainerFactory:(id<NetMinidevJsonParserContainerFactory>)containerFactory;

- (id)parseWithByteArray:(IOSByteArray *)inArg
withNetMinidevJsonParserContainerFactory:(id<NetMinidevJsonParserContainerFactory>)containerFactory
withNetMinidevJsonParserContentHandler:(id<NetMinidevJsonParserContentHandler>)handler;

- (id)parseWithByteArray:(IOSByteArray *)inArg
                 withInt:(jint)offset
                 withInt:(jint)length
withNetMinidevJsonParserContainerFactory:(id<NetMinidevJsonParserContainerFactory>)containerFactory
withNetMinidevJsonParserContentHandler:(id<NetMinidevJsonParserContentHandler>)handler;

#pragma mark Protected

- (void)extractStringWithInt:(jint)beginIndex
                     withInt:(jint)endIndex;

- (jint)indexOfWithChar:(jchar)c
                withInt:(jint)pos;

- (void)read;

- (void)readNoEnd;

- (void)readS;

@end

J2OBJC_EMPTY_STATIC_INIT(NetMinidevJsonParserJSONParserByteArray)

FOUNDATION_EXPORT void NetMinidevJsonParserJSONParserByteArray_initWithInt_(NetMinidevJsonParserJSONParserByteArray *self, jint permissiveMode);

FOUNDATION_EXPORT NetMinidevJsonParserJSONParserByteArray *new_NetMinidevJsonParserJSONParserByteArray_initWithInt_(jint permissiveMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetMinidevJsonParserJSONParserByteArray *create_NetMinidevJsonParserJSONParserByteArray_initWithInt_(jint permissiveMode);

J2OBJC_TYPE_LITERAL_HEADER(NetMinidevJsonParserJSONParserByteArray)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetMinidevJsonParserJSONParserByteArray")