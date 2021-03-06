//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/tunnel/TrivialPreprocessor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/data/Base64.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/TunnelId.h"
#include "net/i2p/router/RouterContext.h"
#include "net/i2p/router/tunnel/PendingGatewayMessage.h"
#include "net/i2p/router/tunnel/TrivialPreprocessor.h"
#include "net/i2p/router/tunnel/TunnelGateway.h"
#include "net/i2p/util/ByteCache.h"
#include "net/i2p/util/Log.h"
#include "net/i2p/util/LogManager.h"
#include "net/i2p/util/RandomSource.h"
#include "net/i2p/util/SimpleByteCache.h"

@interface NetI2pRouterTunnelTrivialPreprocessor ()

- (void)fillRandomNonZeroWithByteArray:(IOSByteArray *)b
                               withInt:(jint)off
                               withInt:(jint)len;

@end

inline jbyte NetI2pRouterTunnelTrivialPreprocessor_get_MASK_IS_SUBSEQUENT(void);
#define NetI2pRouterTunnelTrivialPreprocessor_MASK_IS_SUBSEQUENT -128
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTrivialPreprocessor, MASK_IS_SUBSEQUENT, jbyte)

inline jbyte NetI2pRouterTunnelTrivialPreprocessor_get_MASK_FRAGMENTED(void);
#define NetI2pRouterTunnelTrivialPreprocessor_MASK_FRAGMENTED 8
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTrivialPreprocessor, MASK_FRAGMENTED, jbyte)

inline jbyte NetI2pRouterTunnelTrivialPreprocessor_get_MASK_EXTENDED(void);
#define NetI2pRouterTunnelTrivialPreprocessor_MASK_EXTENDED 4
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTrivialPreprocessor, MASK_EXTENDED, jbyte)

inline jbyte NetI2pRouterTunnelTrivialPreprocessor_get_MASK_TUNNEL(void);
#define NetI2pRouterTunnelTrivialPreprocessor_MASK_TUNNEL 32
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTrivialPreprocessor, MASK_TUNNEL, jbyte)

inline jbyte NetI2pRouterTunnelTrivialPreprocessor_get_MASK_ROUTER(void);
#define NetI2pRouterTunnelTrivialPreprocessor_MASK_ROUTER 64
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pRouterTunnelTrivialPreprocessor, MASK_ROUTER, jbyte)

__attribute__((unused)) static void NetI2pRouterTunnelTrivialPreprocessor_fillRandomNonZeroWithByteArray_withInt_withInt_(NetI2pRouterTunnelTrivialPreprocessor *self, IOSByteArray *b, jint off, jint len);

__attribute__((unused)) static IOSObjectArray *NetI2pRouterTunnelTrivialPreprocessor__Annotations$0(void);

J2OBJC_INITIALIZED_DEFN(NetI2pRouterTunnelTrivialPreprocessor)

NetI2pUtilByteCache *NetI2pRouterTunnelTrivialPreprocessor__dataCache;

@implementation NetI2pRouterTunnelTrivialPreprocessor

+ (jint)PREPROCESSED_SIZE {
  return NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE;
}

+ (jint)IV_SIZE {
  return NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE;
}

+ (NetI2pUtilByteCache *)_dataCache {
  return NetI2pRouterTunnelTrivialPreprocessor__dataCache;
}

- (instancetype)initWithNetI2pRouterRouterContext:(NetI2pRouterRouterContext *)ctx {
  NetI2pRouterTunnelTrivialPreprocessor_initWithNetI2pRouterRouterContext_(self, ctx);
  return self;
}

- (jlong)getDelayAmount {
  return 0;
}

- (jboolean)preprocessQueueWithJavaUtilList:(id<JavaUtilList>)pending
 withNetI2pRouterTunnelTunnelGateway_Sender:(id<NetI2pRouterTunnelTunnelGateway_Sender>)sender
withNetI2pRouterTunnelTunnelGateway_Receiver:(id<NetI2pRouterTunnelTunnelGateway_Receiver>)rec {
  @throw create_JavaLangUnsupportedOperationException_initWithNSString_(@"unused, right?");
}

- (void)notePreprocessingWithLong:(jlong)messageId
                          withInt:(jint)numFragments
                          withInt:(jint)totalLength
                 withJavaUtilList:(id<JavaUtilList>)messageIds
                     withNSString:(NSString *)msg {
}

- (void)preprocessWithByteArray:(IOSByteArray *)fragments
                        withInt:(jint)fragmentLength {
  IOSByteArray *iv = NetI2pUtilSimpleByteCache_acquireWithInt_(NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE);
  [((NetI2pUtilRandomSource *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(_context_)) random])) nextBytesWithByteArray:iv];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(iv, 0, fragments, fragmentLength, NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE);
  IOSByteArray *hashBuf = NetI2pUtilSimpleByteCache_acquireWithInt_(NetI2pDataHash_HASH_LENGTH);
  [((NetI2pCryptoSHA256Generator *) nil_chk([_context_ sha])) calculateHashWithByteArray:fragments withInt:0 withInt:fragmentLength + NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE withByteArray:hashBuf withInt:0];
  jint distance = NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE - fragmentLength;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(fragments, 0, fragments, distance, fragmentLength);
  JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(fragments, 0, distance, (jbyte) (jint) 0x0);
  jint offset = 0;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(iv, 0, fragments, offset, NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE);
  offset += NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(hashBuf, 0, fragments, offset, 4);
  offset += 4;
  NetI2pUtilSimpleByteCache_release__WithByteArray_(hashBuf);
  NetI2pUtilSimpleByteCache_release__WithByteArray_(iv);
  jint numPadBytes = NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE - NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE - 4 - 1 - fragmentLength;
  if (numPadBytes > 0) {
    NetI2pRouterTunnelTrivialPreprocessor_fillRandomNonZeroWithByteArray_withInt_withInt_(self, fragments, offset, numPadBytes);
    offset += numPadBytes;
  }
  *IOSByteArray_GetRef(nil_chk(fragments), offset) = (jint) 0x0;
  offset++;
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$I", @"Preprocessing beginning of the fragment instructions at ", offset)];
}

- (void)fillRandomNonZeroWithByteArray:(IOSByteArray *)b
                               withInt:(jint)off
                               withInt:(jint)len {
  NetI2pRouterTunnelTrivialPreprocessor_fillRandomNonZeroWithByteArray_withInt_withInt_(self, b, off, len);
}

- (jint)writeFirstFragmentWithNetI2pRouterTunnelPendingGatewayMessage:(NetI2pRouterTunnelPendingGatewayMessage *)msg
                                                        withByteArray:(IOSByteArray *)target
                                                              withInt:(jint)offset {
  jboolean fragmented = false;
  jint instructionsLength = NetI2pRouterTunnelTrivialPreprocessor_getInstructionsSizeWithNetI2pRouterTunnelPendingGatewayMessage_(msg);
  jint payloadLength = ((IOSByteArray *) nil_chk([((NetI2pRouterTunnelPendingGatewayMessage *) nil_chk(msg)) getData]))->size_ - [msg getOffset];
  if (offset + payloadLength + instructionsLength + NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE + 1 + 4 > NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE) {
    fragmented = true;
    instructionsLength += 4;
    payloadLength = NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE - NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE - 1 - 4 - instructionsLength - offset;
    if (payloadLength <= 0) @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$I$I$I$I$I$@", @"Fragment too small! payloadLen=", payloadLength, @" target.length=", ((IOSByteArray *) nil_chk(target))->size_, @" offset=", offset, @" msg.length=", ((IOSByteArray *) nil_chk([msg getData]))->size_, @" msg.offset=", [msg getOffset], @" instructionsLength=", instructionsLength, @" for ", msg));
  }
  if (payloadLength <= 0) @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$I$I$I$I$I$I$@", @"Full size too small! payloadLen=", payloadLength, @" target.length=", ((IOSByteArray *) nil_chk(target))->size_, @" offset=", offset, @" msg.length=", ((IOSByteArray *) nil_chk([msg getData]))->size_, @" msg.offset=", [msg getOffset], @" instructionsLength=", instructionsLength, @" for ", msg));
  *IOSByteArray_GetRef(nil_chk(target), offset) = (jint) 0x0;
  if ([msg getToTunnel] != nil) *IOSByteArray_GetRef(target, offset) |= NetI2pRouterTunnelTrivialPreprocessor_MASK_TUNNEL;
  else if ([msg getToRouter] != nil) *IOSByteArray_GetRef(target, offset) |= NetI2pRouterTunnelTrivialPreprocessor_MASK_ROUTER;
  if (fragmented) *IOSByteArray_GetRef(target, offset) |= NetI2pRouterTunnelTrivialPreprocessor_MASK_FRAGMENTED;
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$$", @"CONTROL: ", JavaLangInteger_toHexStringWithInt_(IOSByteArray_Get(target, offset)))];
  offset++;
  if ([msg getToTunnel] != nil) {
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, offset, 4, [((NetI2pDataTunnelId *) nil_chk([msg getToTunnel])) getTunnelId]);
    offset += 4;
  }
  if ([msg getToRouter] != nil) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((NetI2pDataHash *) nil_chk([msg getToRouter])) getData], 0, target, offset, NetI2pDataHash_HASH_LENGTH);
    offset += NetI2pDataHash_HASH_LENGTH;
  }
  if (fragmented) {
    NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, offset, 4, [msg getMessageId]);
    if ([_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$J$I", @"writing messageId= ", [msg getMessageId], @" at offset ", offset)];
    offset += 4;
  }
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, offset, 2, payloadLength);
  offset += 2;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([msg getData], [msg getOffset], target, offset, payloadLength);
  if ([_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$JCICICI$", @"initial fragment[", [msg getMessageId], '/', [msg getFragmentNumber], '/', (NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE - offset - payloadLength), '/', payloadLength, @"]: ")];
  offset += payloadLength;
  [msg setOffsetWithInt:[msg getOffset] + payloadLength];
  if (fragmented) [msg incrementFragmentNumber];
  return offset;
}

- (jint)writeSubsequentFragmentWithNetI2pRouterTunnelPendingGatewayMessage:(NetI2pRouterTunnelPendingGatewayMessage *)msg
                                                             withByteArray:(IOSByteArray *)target
                                                                   withInt:(jint)offset {
  jboolean isLast = true;
  jint instructionsLength = NetI2pRouterTunnelTrivialPreprocessor_getInstructionsSizeWithNetI2pRouterTunnelPendingGatewayMessage_(msg);
  jint payloadLength = ((IOSByteArray *) nil_chk([((NetI2pRouterTunnelPendingGatewayMessage *) nil_chk(msg)) getData]))->size_ - [msg getOffset];
  if (payloadLength + instructionsLength + NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE + 1 + 4 > NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE) {
    isLast = false;
    payloadLength = NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE - NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE - 1 - 4 - instructionsLength;
  }
  *IOSByteArray_GetRef(nil_chk(target), offset) = (jint) 0x0;
  *IOSByteArray_GetRef(target, offset) |= NetI2pRouterTunnelTrivialPreprocessor_MASK_IS_SUBSEQUENT;
  *IOSByteArray_GetRef(target, offset) |= (jbyte) (JreLShift32([msg getFragmentNumber], 1));
  if (isLast) *IOSByteArray_GetRef(target, offset) |= 1;
  if ([((NetI2pUtilLog *) nil_chk(_log_)) shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$$C$$I", @"CONTROL: ", JavaLangInteger_toHexStringWithInt_(IOSByteArray_Get(target, offset)), '/', NetI2pDataBase64_encodeWithByteArray_withInt_withInt_(target, offset, 1), @" at offset ", offset)];
  offset++;
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, offset, 4, [msg getMessageId]);
  offset += 4;
  NetI2pDataDataHelper_toLongWithByteArray_withInt_withInt_withLong_(target, offset, 2, payloadLength);
  offset += 2;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([msg getData], [msg getOffset], target, offset, payloadLength);
  if ([_log_ shouldLogWithInt:NetI2pUtilLog_DEBUG]) [_log_ debugWithNSString:JreStrcat("$JCICICI$", @"subsequent fragment[", [msg getMessageId], '/', [msg getFragmentNumber], '/', offset, '/', payloadLength, @"]: ")];
  offset += payloadLength;
  if (!isLast) [msg incrementFragmentNumber];
  [msg setOffsetWithInt:[msg getOffset] + payloadLength];
  return offset;
}

+ (jint)getInstructionsSizeWithNetI2pRouterTunnelPendingGatewayMessage:(NetI2pRouterTunnelPendingGatewayMessage *)msg {
  return NetI2pRouterTunnelTrivialPreprocessor_getInstructionsSizeWithNetI2pRouterTunnelPendingGatewayMessage_(msg);
}

+ (jint)getInstructionAugmentationSizeWithNetI2pRouterTunnelPendingGatewayMessage:(NetI2pRouterTunnelPendingGatewayMessage *)msg
                                                                          withInt:(jint)offset
                                                                          withInt:(jint)instructionsSize {
  return NetI2pRouterTunnelTrivialPreprocessor_getInstructionAugmentationSizeWithNetI2pRouterTunnelPendingGatewayMessage_withInt_withInt_(msg, offset, instructionsSize);
}

- (void)dealloc {
  RELEASE_(_context_);
  RELEASE_(_log_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, 6, -1, -1 },
    { NULL, "V", 0x4, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 11, 12, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 13, 12, -1, -1, -1, -1 },
    { NULL, "I", 0xc, 14, 15, -1, -1, -1, -1 },
    { NULL, "I", 0xc, 16, 17, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pRouterRouterContext:);
  methods[1].selector = @selector(getDelayAmount);
  methods[2].selector = @selector(preprocessQueueWithJavaUtilList:withNetI2pRouterTunnelTunnelGateway_Sender:withNetI2pRouterTunnelTunnelGateway_Receiver:);
  methods[3].selector = @selector(notePreprocessingWithLong:withInt:withInt:withJavaUtilList:withNSString:);
  methods[4].selector = @selector(preprocessWithByteArray:withInt:);
  methods[5].selector = @selector(fillRandomNonZeroWithByteArray:withInt:withInt:);
  methods[6].selector = @selector(writeFirstFragmentWithNetI2pRouterTunnelPendingGatewayMessage:withByteArray:withInt:);
  methods[7].selector = @selector(writeSubsequentFragmentWithNetI2pRouterTunnelPendingGatewayMessage:withByteArray:withInt:);
  methods[8].selector = @selector(getInstructionsSizeWithNetI2pRouterTunnelPendingGatewayMessage:);
  methods[9].selector = @selector(getInstructionAugmentationSizeWithNetI2pRouterTunnelPendingGatewayMessage:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_context_", "LNetI2pRouterRouterContext;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "_log_", "LNetI2pUtilLog;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "PREPROCESSED_SIZE", "I", .constantValue.asInt = NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE, 0x19, -1, -1, -1, -1 },
    { "IV_SIZE", "I", .constantValue.asInt = NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE, 0x1c, -1, -1, -1, -1 },
    { "_dataCache", "LNetI2pUtilByteCache;", .constantValue.asLong = 0, 0x1c, -1, 18, -1, -1 },
    { "MASK_IS_SUBSEQUENT", "B", .constantValue.asChar = NetI2pRouterTunnelTrivialPreprocessor_MASK_IS_SUBSEQUENT, 0x1a, -1, -1, -1, -1 },
    { "MASK_FRAGMENTED", "B", .constantValue.asChar = NetI2pRouterTunnelTrivialPreprocessor_MASK_FRAGMENTED, 0x1a, -1, -1, -1, -1 },
    { "MASK_EXTENDED", "B", .constantValue.asChar = NetI2pRouterTunnelTrivialPreprocessor_MASK_EXTENDED, 0x1a, -1, -1, -1, 19 },
    { "MASK_TUNNEL", "B", .constantValue.asChar = NetI2pRouterTunnelTrivialPreprocessor_MASK_TUNNEL, 0x1a, -1, -1, -1, -1 },
    { "MASK_ROUTER", "B", .constantValue.asChar = NetI2pRouterTunnelTrivialPreprocessor_MASK_ROUTER, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pRouterRouterContext;", "preprocessQueue", "LJavaUtilList;LNetI2pRouterTunnelTunnelGateway_Sender;LNetI2pRouterTunnelTunnelGateway_Receiver;", "(Ljava/util/List<Lnet/i2p/router/tunnel/PendingGatewayMessage;>;Lnet/i2p/router/tunnel/TunnelGateway$Sender;Lnet/i2p/router/tunnel/TunnelGateway$Receiver;)Z", "notePreprocessing", "JIILJavaUtilList;LNSString;", "(JIILjava/util/List<Ljava/lang/Long;>;Ljava/lang/String;)V", "preprocess", "[BI", "fillRandomNonZero", "[BII", "writeFirstFragment", "LNetI2pRouterTunnelPendingGatewayMessage;[BI", "writeSubsequentFragment", "getInstructionsSize", "LNetI2pRouterTunnelPendingGatewayMessage;", "getInstructionAugmentationSize", "LNetI2pRouterTunnelPendingGatewayMessage;II", &NetI2pRouterTunnelTrivialPreprocessor__dataCache, (void *)&NetI2pRouterTunnelTrivialPreprocessor__Annotations$0 };
  static const J2ObjcClassInfo _NetI2pRouterTunnelTrivialPreprocessor = { "TrivialPreprocessor", "net.i2p.router.tunnel", ptrTable, methods, fields, 7, 0x0, 10, 10, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterTunnelTrivialPreprocessor;
}

+ (void)initialize {
  if (self == [NetI2pRouterTunnelTrivialPreprocessor class]) {
    JreStrongAssign(&NetI2pRouterTunnelTrivialPreprocessor__dataCache, NetI2pUtilByteCache_getInstanceWithInt_withInt_(512, NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE));
    J2OBJC_SET_INITIALIZED(NetI2pRouterTunnelTrivialPreprocessor)
  }
}

@end

void NetI2pRouterTunnelTrivialPreprocessor_initWithNetI2pRouterRouterContext_(NetI2pRouterTunnelTrivialPreprocessor *self, NetI2pRouterRouterContext *ctx) {
  NSObject_init(self);
  JreStrongAssign(&self->_context_, ctx);
  JreStrongAssign(&self->_log_, [((NetI2pUtilLogManager *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(ctx)) logManager])) getLogWithIOSClass:[self java_getClass]]);
}

NetI2pRouterTunnelTrivialPreprocessor *new_NetI2pRouterTunnelTrivialPreprocessor_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_NEW_IMPL(NetI2pRouterTunnelTrivialPreprocessor, initWithNetI2pRouterRouterContext_, ctx)
}

NetI2pRouterTunnelTrivialPreprocessor *create_NetI2pRouterTunnelTrivialPreprocessor_initWithNetI2pRouterRouterContext_(NetI2pRouterRouterContext *ctx) {
  J2OBJC_CREATE_IMPL(NetI2pRouterTunnelTrivialPreprocessor, initWithNetI2pRouterRouterContext_, ctx)
}

void NetI2pRouterTunnelTrivialPreprocessor_fillRandomNonZeroWithByteArray_withInt_withInt_(NetI2pRouterTunnelTrivialPreprocessor *self, IOSByteArray *b, jint off, jint len) {
  jint est = len + (len / 128) + 3;
  IOSByteArray *tmp = [IOSByteArray arrayWithLength:est];
  [((NetI2pUtilRandomSource *) nil_chk([((NetI2pRouterRouterContext *) nil_chk(self->_context_)) random])) nextBytesWithByteArray:tmp];
  jint extra = len;
  for (jint i = 0; i < len; i++) {
    while (IOSByteArray_Get(tmp, i) == 0) {
      if (extra < est) *IOSByteArray_GetRef(tmp, i) = IOSByteArray_Get(tmp, extra++);
      else *IOSByteArray_GetRef(tmp, i) = (jbyte) ([((NetI2pUtilRandomSource *) nil_chk([self->_context_ random])) nextInt] & (jint) 0xFF);
    }
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tmp, 0, b, off, len);
}

jint NetI2pRouterTunnelTrivialPreprocessor_getInstructionsSizeWithNetI2pRouterTunnelPendingGatewayMessage_(NetI2pRouterTunnelPendingGatewayMessage *msg) {
  NetI2pRouterTunnelTrivialPreprocessor_initialize();
  if ([((NetI2pRouterTunnelPendingGatewayMessage *) nil_chk(msg)) getFragmentNumber] > 0) return 7;
  jint header = 1;
  if ([msg getToTunnel] != nil) header += 4;
  if ([msg getToRouter] != nil) header += 32;
  header += 2;
  return header;
}

jint NetI2pRouterTunnelTrivialPreprocessor_getInstructionAugmentationSizeWithNetI2pRouterTunnelPendingGatewayMessage_withInt_withInt_(NetI2pRouterTunnelPendingGatewayMessage *msg, jint offset, jint instructionsSize) {
  NetI2pRouterTunnelTrivialPreprocessor_initialize();
  jint payloadLength = ((IOSByteArray *) nil_chk([((NetI2pRouterTunnelPendingGatewayMessage *) nil_chk(msg)) getData]))->size_ - [msg getOffset];
  if (offset + payloadLength + instructionsSize + NetI2pRouterTunnelTrivialPreprocessor_IV_SIZE + 1 + 4 > NetI2pRouterTunnelTrivialPreprocessor_PREPROCESSED_SIZE) {
    return 4;
  }
  return 0;
}

IOSObjectArray *NetI2pRouterTunnelTrivialPreprocessor__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pRouterTunnelTrivialPreprocessor)
