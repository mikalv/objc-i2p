//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/FileLogWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_NetI2pUtilFileLogWriter")
#ifdef RESTRICT_NetI2pUtilFileLogWriter
#define INCLUDE_ALL_NetI2pUtilFileLogWriter 0
#else
#define INCLUDE_ALL_NetI2pUtilFileLogWriter 1
#endif
#undef RESTRICT_NetI2pUtilFileLogWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (NetI2pUtilFileLogWriter_) && (INCLUDE_ALL_NetI2pUtilFileLogWriter || defined(INCLUDE_NetI2pUtilFileLogWriter))
#define NetI2pUtilFileLogWriter_

#define RESTRICT_NetI2pUtilLogWriter 1
#define INCLUDE_NetI2pUtilLogWriter 1
#include "net/i2p/util/LogWriter.h"

@class NetI2pUtilLogManager;
@class NetI2pUtilLogRecord;

@interface NetI2pUtilFileLogWriter : NetI2pUtilLogWriter

#pragma mark Public

- (instancetype __nonnull)initWithNetI2pUtilLogManager:(NetI2pUtilLogManager *)manager;

- (NSString *)currentFile;

#pragma mark Protected

- (void)closeWriter;

- (void)flushWriter;

- (void)writeRecordWithInt:(jint)priority
              withNSString:(NSString *)val;

- (void)writeRecordWithNetI2pUtilLogRecord:(NetI2pUtilLogRecord *)rec
                              withNSString:(NSString *)formatted;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pUtilFileLogWriter)

FOUNDATION_EXPORT void NetI2pUtilFileLogWriter_initWithNetI2pUtilLogManager_(NetI2pUtilFileLogWriter *self, NetI2pUtilLogManager *manager);

FOUNDATION_EXPORT NetI2pUtilFileLogWriter *new_NetI2pUtilFileLogWriter_initWithNetI2pUtilLogManager_(NetI2pUtilLogManager *manager) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NetI2pUtilFileLogWriter *create_NetI2pUtilFileLogWriter_initWithNetI2pUtilLogManager_(NetI2pUtilLogManager *manager);

J2OBJC_TYPE_LITERAL_HEADER(NetI2pUtilFileLogWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_NetI2pUtilFileLogWriter")
