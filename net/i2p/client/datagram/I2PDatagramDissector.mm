//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/client/datagram/I2PDatagramDissector.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayInputStream.h"
#include "java/io/IOException.h"
#include "java/lang/System.h"
#include "net/i2p/client/datagram/I2PDatagramDissector.h"
#include "net/i2p/client/datagram/I2PInvalidDatagramException.h"
#include "net/i2p/crypto/DSAEngine.h"
#include "net/i2p/crypto/SHA256Generator.h"
#include "net/i2p/crypto/SigType.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/Destination.h"
#include "net/i2p/data/Hash.h"
#include "net/i2p/data/Signature.h"
#include "net/i2p/data/SigningPublicKey.h"

@interface NetI2pClientDatagramI2PDatagramDissector () {
 @public
  NetI2pCryptoDSAEngine *dsaEng_;
  NetI2pCryptoSHA256Generator *hashGen_;
  IOSByteArray *rxHash_;
  NetI2pDataSignature *rxSign_;
  NetI2pDataDestination *rxDest_;
  IOSByteArray *rxPayload_;
  jint rxPayloadLen_;
  jboolean valid_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pClientDatagramI2PDatagramDissector, dsaEng_, NetI2pCryptoDSAEngine *)
J2OBJC_FIELD_SETTER(NetI2pClientDatagramI2PDatagramDissector, hashGen_, NetI2pCryptoSHA256Generator *)
J2OBJC_FIELD_SETTER(NetI2pClientDatagramI2PDatagramDissector, rxHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(NetI2pClientDatagramI2PDatagramDissector, rxSign_, NetI2pDataSignature *)
J2OBJC_FIELD_SETTER(NetI2pClientDatagramI2PDatagramDissector, rxDest_, NetI2pDataDestination *)
J2OBJC_FIELD_SETTER(NetI2pClientDatagramI2PDatagramDissector, rxPayload_, IOSByteArray *)

inline jint NetI2pClientDatagramI2PDatagramDissector_get_DGRAM_BUFSIZE(void);
#define NetI2pClientDatagramI2PDatagramDissector_DGRAM_BUFSIZE 32768
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientDatagramI2PDatagramDissector, DGRAM_BUFSIZE, jint)

inline jint NetI2pClientDatagramI2PDatagramDissector_get_MIN_DGRAM_SIZE(void);
#define NetI2pClientDatagramI2PDatagramDissector_MIN_DGRAM_SIZE 427
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pClientDatagramI2PDatagramDissector, MIN_DGRAM_SIZE, jint)

@implementation NetI2pClientDatagramI2PDatagramDissector

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pClientDatagramI2PDatagramDissector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)loadI2PDatagramWithByteArray:(IOSByteArray *)dgram {
  self->valid_ = false;
  if (((IOSByteArray *) nil_chk(dgram))->size_ < NetI2pClientDatagramI2PDatagramDissector_MIN_DGRAM_SIZE) @throw create_NetI2pDataDataFormatException_initWithNSString_(JreStrcat("$I", @"repliable datagram too small: ", dgram->size_));
  JavaIoByteArrayInputStream *dgStream = create_JavaIoByteArrayInputStream_initWithByteArray_(dgram);
  @try {
    JreStrongAssign(&rxDest_, NetI2pDataDestination_createWithJavaIoInputStream_(dgStream));
    NetI2pCryptoSigType *type = [((NetI2pDataSigningPublicKey *) nil_chk([((NetI2pDataDestination *) nil_chk(rxDest_)) getSigningPublicKey])) getType];
    if (type == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"unsupported sig type");
    JreStrongAssignAndConsume(&rxSign_, new_NetI2pDataSignature_initWithNetI2pCryptoSigType_(type));
    [rxSign_ readBytesWithJavaIoInputStream:dgStream];
    rxPayloadLen_ = [dgStream readWithByteArray:rxPayload_];
    if (type == JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1)) {
      if (rxHash_ == nil) JreStrongAssignAndConsume(&rxHash_, [IOSByteArray newArrayWithLength:NetI2pDataHash_HASH_LENGTH]);
      [((NetI2pCryptoSHA256Generator *) nil_chk(hashGen_)) calculateHashWithByteArray:rxPayload_ withInt:0 withInt:rxPayloadLen_ withByteArray:rxHash_ withInt:0];
    }
    else {
      JreStrongAssign(&rxHash_, nil);
    }
  }
  @catch (JavaIoIOException *e) {
    @throw create_NetI2pDataDataFormatException_initWithNSString_withJavaLangThrowable_(@"Error loading datagram", e);
  }
}

- (IOSByteArray *)getPayload {
  [self verifySignature];
  return [self extractPayload];
}

- (NetI2pDataDestination *)getSender {
  [self verifySignature];
  return [self extractSender];
}

- (NetI2pDataHash *)getHash {
  [self verifySignature];
  return [self extractHash];
}

- (IOSByteArray *)extractPayload {
  IOSByteArray *retPayload = [IOSByteArray arrayWithLength:self->rxPayloadLen_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->rxPayload_, 0, retPayload, 0, self->rxPayloadLen_);
  return retPayload;
}

- (NetI2pDataDestination *)extractSender {
  return rxDest_;
}

- (NetI2pDataHash *)extractHash {
  if (rxHash_ == nil) return nil;
  IOSByteArray *hash_ = [IOSByteArray arrayWithLength:NetI2pDataHash_HASH_LENGTH];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(rxHash_, 0, hash_, 0, NetI2pDataHash_HASH_LENGTH);
  return create_NetI2pDataHash_initWithByteArray_(hash_);
}

- (void)verifySignature {
  if (self->valid_) return;
  if (rxSign_ == nil || [rxSign_ getData] == nil || rxDest_ == nil) @throw create_NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(@"Datagram not yet read");
  NetI2pDataSigningPublicKey *spk = [rxDest_ getSigningPublicKey];
  NetI2pCryptoSigType *type = [((NetI2pDataSigningPublicKey *) nil_chk(spk)) getType];
  if (type == nil) @throw create_NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(@"unsupported sig type");
  if (type == JreLoadEnum(NetI2pCryptoSigType, DSA_SHA1)) {
    if (![((NetI2pCryptoDSAEngine *) nil_chk(self->dsaEng_)) verifySignatureWithNetI2pDataSignature:rxSign_ withByteArray:rxHash_ withNetI2pDataSigningPublicKey:spk]) @throw create_NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(@"Incorrect I2P repliable datagram signature");
  }
  else {
    if (![((NetI2pCryptoDSAEngine *) nil_chk(self->dsaEng_)) verifySignatureWithNetI2pDataSignature:rxSign_ withByteArray:rxPayload_ withInt:0 withInt:rxPayloadLen_ withNetI2pDataSigningPublicKey:spk]) @throw create_NetI2pClientDatagramI2PInvalidDatagramException_initWithNSString_(@"Incorrect I2P repliable datagram signature");
  }
  self->valid_ = true;
}

- (void)dealloc {
  RELEASE_(dsaEng_);
  RELEASE_(hashGen_);
  RELEASE_(rxHash_);
  RELEASE_(rxSign_);
  RELEASE_(rxDest_);
  RELEASE_(rxPayload_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDestination;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataHash;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(loadI2PDatagramWithByteArray:);
  methods[2].selector = @selector(getPayload);
  methods[3].selector = @selector(getSender);
  methods[4].selector = @selector(getHash);
  methods[5].selector = @selector(extractPayload);
  methods[6].selector = @selector(extractSender);
  methods[7].selector = @selector(extractHash);
  methods[8].selector = @selector(verifySignature);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DGRAM_BUFSIZE", "I", .constantValue.asInt = NetI2pClientDatagramI2PDatagramDissector_DGRAM_BUFSIZE, 0x1a, -1, -1, -1, -1 },
    { "MIN_DGRAM_SIZE", "I", .constantValue.asInt = NetI2pClientDatagramI2PDatagramDissector_MIN_DGRAM_SIZE, 0x1a, -1, -1, -1, -1 },
    { "dsaEng_", "LNetI2pCryptoDSAEngine;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "hashGen_", "LNetI2pCryptoSHA256Generator;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "rxHash_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "rxSign_", "LNetI2pDataSignature;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "rxDest_", "LNetI2pDataDestination;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "rxPayload_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "rxPayloadLen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "valid_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "loadI2PDatagram", "[B", "LNetI2pDataDataFormatException;", "LNetI2pClientDatagramI2PInvalidDatagramException;" };
  static const J2ObjcClassInfo _NetI2pClientDatagramI2PDatagramDissector = { "I2PDatagramDissector", "net.i2p.client.datagram", ptrTable, methods, fields, 7, 0x11, 9, 10, -1, -1, -1, -1, -1 };
  return &_NetI2pClientDatagramI2PDatagramDissector;
}

@end

void NetI2pClientDatagramI2PDatagramDissector_init(NetI2pClientDatagramI2PDatagramDissector *self) {
  NSObject_init(self);
  JreStrongAssign(&self->dsaEng_, NetI2pCryptoDSAEngine_getInstance());
  JreStrongAssign(&self->hashGen_, NetI2pCryptoSHA256Generator_getInstance());
  JreStrongAssignAndConsume(&self->rxPayload_, [IOSByteArray newArrayWithLength:NetI2pClientDatagramI2PDatagramDissector_DGRAM_BUFSIZE]);
}

NetI2pClientDatagramI2PDatagramDissector *new_NetI2pClientDatagramI2PDatagramDissector_init() {
  J2OBJC_NEW_IMPL(NetI2pClientDatagramI2PDatagramDissector, init)
}

NetI2pClientDatagramI2PDatagramDissector *create_NetI2pClientDatagramI2PDatagramDissector_init() {
  J2OBJC_CREATE_IMPL(NetI2pClientDatagramI2PDatagramDissector, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pClientDatagramI2PDatagramDissector)
