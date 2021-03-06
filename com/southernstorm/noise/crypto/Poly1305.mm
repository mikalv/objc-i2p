//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/com/southernstorm/noise/crypto/Poly1305.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/southernstorm/noise/crypto/Poly1305.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"

@interface ComSouthernstormNoiseCryptoPoly1305 () {
 @public
  IOSByteArray *nonce_;
  IOSByteArray *block_;
  IOSIntArray *h_;
  IOSIntArray *r_;
  IOSIntArray *c_;
  IOSLongArray *t_;
  jint posn_;
}

- (void)processChunkWithByteArray:(IOSByteArray *)chunk
                          withInt:(jint)offset
                      withBoolean:(jboolean)finalChunk;

@end

J2OBJC_FIELD_SETTER(ComSouthernstormNoiseCryptoPoly1305, nonce_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComSouthernstormNoiseCryptoPoly1305, block_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ComSouthernstormNoiseCryptoPoly1305, h_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComSouthernstormNoiseCryptoPoly1305, r_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComSouthernstormNoiseCryptoPoly1305, c_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComSouthernstormNoiseCryptoPoly1305, t_, IOSLongArray *)

__attribute__((unused)) static void ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(ComSouthernstormNoiseCryptoPoly1305 *self, IOSByteArray *chunk, jint offset, jboolean finalChunk);

@implementation ComSouthernstormNoiseCryptoPoly1305

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComSouthernstormNoiseCryptoPoly1305_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)resetWithByteArray:(IOSByteArray *)key
                   withInt:(jint)offset {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(key, offset + 16, nonce_, 0, 16);
  JavaUtilArrays_fillWithIntArray_withInt_(h_, 0);
  posn_ = 0;
  *IOSIntArray_GetRef(nil_chk(r_), 0) = ((IOSByteArray_Get(nil_chk(key), offset) & (jint) 0xFF)) | (JreLShift32((IOSByteArray_Get(key, offset + 1) & (jint) 0xFF), 8)) | (JreLShift32((IOSByteArray_Get(key, offset + 2) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(key, offset + 3) & (jint) 0x03), 24));
  *IOSIntArray_GetRef(r_, 1) = (JreRShift32((IOSByteArray_Get(key, offset + 3) & (jint) 0x0C), 2)) | (JreLShift32((IOSByteArray_Get(key, offset + 4) & (jint) 0xFC), 6)) | (JreLShift32((IOSByteArray_Get(key, offset + 5) & (jint) 0xFF), 14)) | (JreLShift32((IOSByteArray_Get(key, offset + 6) & (jint) 0x0F), 22));
  *IOSIntArray_GetRef(r_, 2) = (JreRShift32((IOSByteArray_Get(key, offset + 6) & (jint) 0xF0), 4)) | (JreLShift32((IOSByteArray_Get(key, offset + 7) & (jint) 0x0F), 4)) | (JreLShift32((IOSByteArray_Get(key, offset + 8) & (jint) 0xFC), 12)) | (JreLShift32((IOSByteArray_Get(key, offset + 9) & (jint) 0x3F), 20));
  *IOSIntArray_GetRef(r_, 3) = (JreRShift32((IOSByteArray_Get(key, offset + 9) & (jint) 0xC0), 6)) | (JreLShift32((IOSByteArray_Get(key, offset + 10) & (jint) 0xFF), 2)) | (JreLShift32((IOSByteArray_Get(key, offset + 11) & (jint) 0x0F), 10)) | (JreLShift32((IOSByteArray_Get(key, offset + 12) & (jint) 0xFC), 18));
  *IOSIntArray_GetRef(r_, 4) = ((IOSByteArray_Get(key, offset + 13) & (jint) 0xFF)) | (JreLShift32((IOSByteArray_Get(key, offset + 14) & (jint) 0xFF), 8)) | (JreLShift32((IOSByteArray_Get(key, offset + 15) & (jint) 0x0F), 16));
}

- (void)updateWithByteArray:(IOSByteArray *)data
                    withInt:(jint)offset
                    withInt:(jint)length {
  while (length > 0) {
    if (posn_ == 0 && length >= 16) {
      ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(self, data, offset, false);
      offset += 16;
      length -= 16;
    }
    else {
      jint temp = 16 - posn_;
      if (temp > length) temp = length;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(data, offset, block_, posn_, temp);
      offset += temp;
      length -= temp;
      posn_ += temp;
      if (posn_ >= 16) {
        ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(self, block_, 0, false);
        posn_ = 0;
      }
    }
  }
}

- (void)pad {
  if (posn_ != 0) {
    JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(block_, posn_, 16, (jbyte) 0);
    ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(self, block_, 0, false);
    posn_ = 0;
  }
}

- (void)finishWithByteArray:(IOSByteArray *)token
                    withInt:(jint)offset {
  if (posn_ != 0) {
    *IOSByteArray_GetRef(nil_chk(block_), posn_) = (jbyte) 1;
    JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_(block_, posn_ + 1, 16, (jbyte) 0);
    ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(self, block_, 0, true);
  }
  jint carry = (JreRShift32(IOSIntArray_Get(nil_chk(h_), 4), 26)) * 5 + IOSIntArray_Get(h_, 0);
  *IOSIntArray_GetRef(h_, 0) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 1);
  *IOSIntArray_GetRef(h_, 1) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 2);
  *IOSIntArray_GetRef(h_, 2) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 3);
  *IOSIntArray_GetRef(h_, 3) = carry & (jint) 0x03FFFFFF;
  *IOSIntArray_GetRef(h_, 4) = (JreRShift32(carry, 26)) + (IOSIntArray_Get(h_, 4) & (jint) 0x03FFFFFF);
  carry = 5 + IOSIntArray_Get(h_, 0);
  *IOSIntArray_GetRef(nil_chk(c_), 0) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 1);
  *IOSIntArray_GetRef(c_, 1) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 2);
  *IOSIntArray_GetRef(c_, 2) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 3);
  *IOSIntArray_GetRef(c_, 3) = carry & (jint) 0x03FFFFFF;
  *IOSIntArray_GetRef(c_, 4) = (JreRShift32(carry, 26)) + IOSIntArray_Get(h_, 4);
  jint mask = -((JreRShift32(IOSIntArray_Get(c_, 4), 26)) & (jint) 0x01);
  jint nmask = ~mask;
  *IOSIntArray_GetRef(h_, 0) = (IOSIntArray_Get(h_, 0) & nmask) | (IOSIntArray_Get(c_, 0) & mask);
  *IOSIntArray_GetRef(h_, 1) = (IOSIntArray_Get(h_, 1) & nmask) | (IOSIntArray_Get(c_, 1) & mask);
  *IOSIntArray_GetRef(h_, 2) = (IOSIntArray_Get(h_, 2) & nmask) | (IOSIntArray_Get(c_, 2) & mask);
  *IOSIntArray_GetRef(h_, 3) = (IOSIntArray_Get(h_, 3) & nmask) | (IOSIntArray_Get(c_, 3) & mask);
  *IOSIntArray_GetRef(h_, 4) = (IOSIntArray_Get(h_, 4) & nmask) | (IOSIntArray_Get(c_, 4) & mask);
  *IOSByteArray_GetRef(nil_chk(block_), 0) = (jbyte) (IOSIntArray_Get(h_, 0));
  *IOSByteArray_GetRef(block_, 1) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 0), 8));
  *IOSByteArray_GetRef(block_, 2) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 0), 16));
  *IOSByteArray_GetRef(block_, 3) = (jbyte) ((JreRShift32(IOSIntArray_Get(h_, 0), 24)) | (JreLShift32(IOSIntArray_Get(h_, 1), 2)));
  *IOSByteArray_GetRef(block_, 4) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 1), 6));
  *IOSByteArray_GetRef(block_, 5) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 1), 14));
  *IOSByteArray_GetRef(block_, 6) = (jbyte) ((JreRShift32(IOSIntArray_Get(h_, 1), 22)) | (JreLShift32(IOSIntArray_Get(h_, 2), 4)));
  *IOSByteArray_GetRef(block_, 7) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 2), 4));
  *IOSByteArray_GetRef(block_, 8) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 2), 12));
  *IOSByteArray_GetRef(block_, 9) = (jbyte) ((JreRShift32(IOSIntArray_Get(h_, 2), 20)) | (JreLShift32(IOSIntArray_Get(h_, 3), 6)));
  *IOSByteArray_GetRef(block_, 10) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 3), 2));
  *IOSByteArray_GetRef(block_, 11) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 3), 10));
  *IOSByteArray_GetRef(block_, 12) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 3), 18));
  *IOSByteArray_GetRef(block_, 13) = (jbyte) (IOSIntArray_Get(h_, 4));
  *IOSByteArray_GetRef(block_, 14) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 4), 8));
  *IOSByteArray_GetRef(block_, 15) = (jbyte) (JreRShift32(IOSIntArray_Get(h_, 4), 16));
  carry = (IOSByteArray_Get(nil_chk(nonce_), 0) & (jint) 0xFF) + (IOSByteArray_Get(block_, 0) & (jint) 0xFF);
  *IOSByteArray_GetRef(nil_chk(token), offset) = (jbyte) carry;
  for (jint x = 1; x < 16; ++x) {
    carry = (JreRShift32(carry, 8)) + (IOSByteArray_Get(nonce_, x) & (jint) 0xFF) + (IOSByteArray_Get(block_, x) & (jint) 0xFF);
    *IOSByteArray_GetRef(token, offset + x) = (jbyte) carry;
  }
}

- (void)processChunkWithByteArray:(IOSByteArray *)chunk
                          withInt:(jint)offset
                      withBoolean:(jboolean)finalChunk {
  ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(self, chunk, offset, finalChunk);
}

- (void)destroy {
  JavaUtilArrays_fillWithByteArray_withByte_(nonce_, (jbyte) 0);
  JavaUtilArrays_fillWithByteArray_withByte_(block_, (jbyte) 0);
  JavaUtilArrays_fillWithIntArray_withInt_(h_, 0);
  JavaUtilArrays_fillWithIntArray_withInt_(r_, 0);
  JavaUtilArrays_fillWithIntArray_withInt_(c_, 0);
  JavaUtilArrays_fillWithLongArray_withLong_(t_, (jlong) 0);
}

- (void)dealloc {
  RELEASE_(nonce_);
  RELEASE_(block_);
  RELEASE_(h_);
  RELEASE_(r_);
  RELEASE_(c_);
  RELEASE_(t_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(resetWithByteArray:withInt:);
  methods[2].selector = @selector(updateWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(pad);
  methods[4].selector = @selector(finishWithByteArray:withInt:);
  methods[5].selector = @selector(processChunkWithByteArray:withInt:withBoolean:);
  methods[6].selector = @selector(destroy);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "nonce_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "block_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "h_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "r_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "c_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "t_", "[J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "posn_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "reset", "[BI", "update", "[BII", "finish", "processChunk", "[BIZ" };
  static const J2ObjcClassInfo _ComSouthernstormNoiseCryptoPoly1305 = { "Poly1305", "com.southernstorm.noise.crypto", ptrTable, methods, fields, 7, 0x11, 7, 7, -1, -1, -1, -1, -1 };
  return &_ComSouthernstormNoiseCryptoPoly1305;
}

@end

void ComSouthernstormNoiseCryptoPoly1305_init(ComSouthernstormNoiseCryptoPoly1305 *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->nonce_, [IOSByteArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->block_, [IOSByteArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->h_, [IOSIntArray newArrayWithLength:5]);
  JreStrongAssignAndConsume(&self->r_, [IOSIntArray newArrayWithLength:5]);
  JreStrongAssignAndConsume(&self->c_, [IOSIntArray newArrayWithLength:5]);
  JreStrongAssignAndConsume(&self->t_, [IOSLongArray newArrayWithLength:10]);
  self->posn_ = 0;
}

ComSouthernstormNoiseCryptoPoly1305 *new_ComSouthernstormNoiseCryptoPoly1305_init() {
  J2OBJC_NEW_IMPL(ComSouthernstormNoiseCryptoPoly1305, init)
}

ComSouthernstormNoiseCryptoPoly1305 *create_ComSouthernstormNoiseCryptoPoly1305_init() {
  J2OBJC_CREATE_IMPL(ComSouthernstormNoiseCryptoPoly1305, init)
}

void ComSouthernstormNoiseCryptoPoly1305_processChunkWithByteArray_withInt_withBoolean_(ComSouthernstormNoiseCryptoPoly1305 *self, IOSByteArray *chunk, jint offset, jboolean finalChunk) {
  jint x;
  *IOSIntArray_GetRef(nil_chk(self->c_), 0) = ((IOSByteArray_Get(nil_chk(chunk), offset) & (jint) 0xFF)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 1) & (jint) 0xFF), 8)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 2) & (jint) 0xFF), 16)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 3) & (jint) 0x03), 24));
  *IOSIntArray_GetRef(self->c_, 1) = (JreRShift32((IOSByteArray_Get(chunk, offset + 3) & (jint) 0xFC), 2)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 4) & (jint) 0xFF), 6)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 5) & (jint) 0xFF), 14)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 6) & (jint) 0x0F), 22));
  *IOSIntArray_GetRef(self->c_, 2) = (JreRShift32((IOSByteArray_Get(chunk, offset + 6) & (jint) 0xF0), 4)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 7) & (jint) 0xFF), 4)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 8) & (jint) 0xFF), 12)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 9) & (jint) 0x3F), 20));
  *IOSIntArray_GetRef(self->c_, 3) = (JreRShift32((IOSByteArray_Get(chunk, offset + 9) & (jint) 0xC0), 6)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 10) & (jint) 0xFF), 2)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 11) & (jint) 0xFF), 10)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 12) & (jint) 0xFF), 18));
  *IOSIntArray_GetRef(self->c_, 4) = ((IOSByteArray_Get(chunk, offset + 13) & (jint) 0xFF)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 14) & (jint) 0xFF), 8)) | (JreLShift32((IOSByteArray_Get(chunk, offset + 15) & (jint) 0xFF), 16));
  if (!finalChunk) *IOSIntArray_GetRef(self->c_, 4) |= (JreLShift32(1, 24));
  *IOSIntArray_GetRef(nil_chk(self->h_), 0) += IOSIntArray_Get(self->c_, 0);
  *IOSIntArray_GetRef(self->h_, 1) += IOSIntArray_Get(self->c_, 1);
  *IOSIntArray_GetRef(self->h_, 2) += IOSIntArray_Get(self->c_, 2);
  *IOSIntArray_GetRef(self->h_, 3) += IOSIntArray_Get(self->c_, 3);
  *IOSIntArray_GetRef(self->h_, 4) += IOSIntArray_Get(self->c_, 4);
  jlong hv = IOSIntArray_Get(self->h_, 0);
  *IOSLongArray_GetRef(nil_chk(self->t_), 0) = hv * IOSIntArray_Get(nil_chk(self->r_), 0);
  *IOSLongArray_GetRef(self->t_, 1) = hv * IOSIntArray_Get(self->r_, 1);
  *IOSLongArray_GetRef(self->t_, 2) = hv * IOSIntArray_Get(self->r_, 2);
  *IOSLongArray_GetRef(self->t_, 3) = hv * IOSIntArray_Get(self->r_, 3);
  *IOSLongArray_GetRef(self->t_, 4) = hv * IOSIntArray_Get(self->r_, 4);
  for (x = 1; x < 5; ++x) {
    hv = IOSIntArray_Get(self->h_, x);
    *IOSLongArray_GetRef(self->t_, x) += hv * IOSIntArray_Get(self->r_, 0);
    *IOSLongArray_GetRef(self->t_, x + 1) += hv * IOSIntArray_Get(self->r_, 1);
    *IOSLongArray_GetRef(self->t_, x + 2) += hv * IOSIntArray_Get(self->r_, 2);
    *IOSLongArray_GetRef(self->t_, x + 3) += hv * IOSIntArray_Get(self->r_, 3);
    *IOSLongArray_GetRef(self->t_, x + 4) = hv * IOSIntArray_Get(self->r_, 4);
  }
  *IOSIntArray_GetRef(self->h_, 0) = ((jint) IOSLongArray_Get(self->t_, 0)) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 1) + (JreRShift64(IOSLongArray_Get(self->t_, 0), 26));
  *IOSIntArray_GetRef(self->h_, 1) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 2) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->h_, 2) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 3) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->h_, 3) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 4) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->h_, 4) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 5) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->c_, 0) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 6) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->c_, 1) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 7) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->c_, 2) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 8) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->c_, 3) = ((jint) hv) & (jint) 0x03FFFFFF;
  hv = IOSLongArray_Get(self->t_, 9) + (JreRShift64(hv, 26));
  *IOSIntArray_GetRef(self->c_, 4) = ((jint) hv);
  jint carry = IOSIntArray_Get(self->h_, 0) + IOSIntArray_Get(self->c_, 0) * 5;
  *IOSIntArray_GetRef(self->h_, 0) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(self->h_, 1) + IOSIntArray_Get(self->c_, 1) * 5;
  *IOSIntArray_GetRef(self->h_, 1) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(self->h_, 2) + IOSIntArray_Get(self->c_, 2) * 5;
  *IOSIntArray_GetRef(self->h_, 2) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(self->h_, 3) + IOSIntArray_Get(self->c_, 3) * 5;
  *IOSIntArray_GetRef(self->h_, 3) = carry & (jint) 0x03FFFFFF;
  carry = (JreRShift32(carry, 26)) + IOSIntArray_Get(self->h_, 4) + IOSIntArray_Get(self->c_, 4) * 5;
  *IOSIntArray_GetRef(self->h_, 4) = carry;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComSouthernstormNoiseCryptoPoly1305)
