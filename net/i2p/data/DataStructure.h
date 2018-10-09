//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/data/DataStructure.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pDataDataStructure")
#ifdef RESTRICT_NetI2pDataDataStructure
#define INCLUDE_ALL_NetI2pDataDataStructure 0
#else
#define INCLUDE_ALL_NetI2pDataDataStructure 1
#endif
#undef RESTRICT_NetI2pDataDataStructure

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pDataDataStructure_) && (INCLUDE_ALL_NetI2pDataDataStructure || defined(INCLUDE_NetI2pDataDataStructure))
#define NetI2pDataDataStructure_

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class NetI2pDataHash;

@protocol NetI2pDataDataStructure < JavaObject >

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (NSString *)toBase64;

- (void)fromBase64WithNSString:(NSString *)data;

- (IOSByteArray *)toByteArray;

- (void)fromByteArrayWithByteArray:(IOSByteArray *)data;

- (NetI2pDataHash *)calculateHash;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pDataDataStructure)

J2OBJC_TYPE_LITERAL_HEADER(NetI2pDataDataStructure)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pDataDataStructure")
