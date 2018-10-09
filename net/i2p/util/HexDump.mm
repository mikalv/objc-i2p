//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/util/HexDump.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/util/HexDump.h"

inline jint NetI2pUtilHexDump_get_FORMAT_OFFSET_PADDING(void);
#define NetI2pUtilHexDump_FORMAT_OFFSET_PADDING 8
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilHexDump, FORMAT_OFFSET_PADDING, jint)

inline jint NetI2pUtilHexDump_get_FORMAT_BYTES_PER_ROW(void);
#define NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW 16
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilHexDump, FORMAT_BYTES_PER_ROW, jint)

inline jint NetI2pUtilHexDump_get_OUTPUT_BYTES_PER_ROW(void);
#define NetI2pUtilHexDump_OUTPUT_BYTES_PER_ROW 79
J2OBJC_STATIC_FIELD_CONSTANT(NetI2pUtilHexDump, OUTPUT_BYTES_PER_ROW, jint)

inline IOSByteArray *NetI2pUtilHexDump_get_HEXCHARS(void);
static IOSByteArray *NetI2pUtilHexDump_HEXCHARS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pUtilHexDump, HEXCHARS, IOSByteArray *)

J2OBJC_INITIALIZED_DEFN(NetI2pUtilHexDump)

@implementation NetI2pUtilHexDump

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pUtilHexDump_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)dumpWithByteArray:(IOSByteArray *)data {
  return NetI2pUtilHexDump_dumpWithByteArray_(data);
}

+ (NSString *)dumpWithByteArray:(IOSByteArray *)data
                        withInt:(jint)off
                        withInt:(jint)len {
  return NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_(data, off, len);
}

+ (void)dumpWithByteArray:(IOSByteArray *)data
   withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  NetI2pUtilHexDump_dumpWithByteArray_withJavaIoOutputStream_(data, outArg);
}

+ (void)dumpWithByteArray:(IOSByteArray *)data
                  withInt:(jint)off
                  withInt:(jint)len
   withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, off, len, outArg);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 5, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(dumpWithByteArray:);
  methods[2].selector = @selector(dumpWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(dumpWithByteArray:withJavaIoOutputStream:);
  methods[4].selector = @selector(dumpWithByteArray:withInt:withInt:withJavaIoOutputStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FORMAT_OFFSET_PADDING", "I", .constantValue.asInt = NetI2pUtilHexDump_FORMAT_OFFSET_PADDING, 0x1a, -1, -1, -1, -1 },
    { "FORMAT_BYTES_PER_ROW", "I", .constantValue.asInt = NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW, 0x1a, -1, -1, -1, -1 },
    { "OUTPUT_BYTES_PER_ROW", "I", .constantValue.asInt = NetI2pUtilHexDump_OUTPUT_BYTES_PER_ROW, 0x1a, -1, -1, -1, -1 },
    { "HEXCHARS", "[B", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "dump", "[B", "[BII", "[BLJavaIoOutputStream;", "LJavaIoIOException;", "[BIILJavaIoOutputStream;", &NetI2pUtilHexDump_HEXCHARS };
  static const J2ObjcClassInfo _NetI2pUtilHexDump = { "HexDump", "net.i2p.util", ptrTable, methods, fields, 7, 0x1, 5, 4, -1, -1, -1, -1, -1 };
  return &_NetI2pUtilHexDump;
}

+ (void)initialize {
  if (self == [NetI2pUtilHexDump class]) {
    JreStrongAssign(&NetI2pUtilHexDump_HEXCHARS, NetI2pDataDataHelper_getASCIIWithNSString_(@"0123456789abcdef"));
    J2OBJC_SET_INITIALIZED(NetI2pUtilHexDump)
  }
}

@end

void NetI2pUtilHexDump_init(NetI2pUtilHexDump *self) {
  NSObject_init(self);
}

NetI2pUtilHexDump *new_NetI2pUtilHexDump_init() {
  J2OBJC_NEW_IMPL(NetI2pUtilHexDump, init)
}

NetI2pUtilHexDump *create_NetI2pUtilHexDump_init() {
  J2OBJC_CREATE_IMPL(NetI2pUtilHexDump, init)
}

NSString *NetI2pUtilHexDump_dumpWithByteArray_(IOSByteArray *data) {
  NetI2pUtilHexDump_initialize();
  return NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_(data, 0, ((IOSByteArray *) nil_chk(data))->size_);
}

NSString *NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_(IOSByteArray *data, jint off, jint len) {
  NetI2pUtilHexDump_initialize();
  jint outlen = NetI2pUtilHexDump_OUTPUT_BYTES_PER_ROW * (len + NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW - 1) / NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW;
  JavaIoByteArrayOutputStream *out = create_JavaIoByteArrayOutputStream_initWithInt_(outlen);
  @try {
    NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, off, len, out);
    return [out toStringWithNSString:@"ISO-8859-1"];
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(@"no 8859?", e);
  }
}

void NetI2pUtilHexDump_dumpWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *outArg) {
  NetI2pUtilHexDump_initialize();
  NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_withJavaIoOutputStream_(data, 0, ((IOSByteArray *) nil_chk(data))->size_, outArg);
}

void NetI2pUtilHexDump_dumpWithByteArray_withInt_withInt_withJavaIoOutputStream_(IOSByteArray *data, jint off, jint len, JavaIoOutputStream *outArg) {
  NetI2pUtilHexDump_initialize();
  NSString *hexoff;
  jint dumpoff;
  jint hexofflen;
  jint i;
  jint nextbytes;
  jint end = len + off;
  jint val;
  for (dumpoff = off; dumpoff < end; dumpoff += NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW) {
    hexoff = JavaLangInteger_toStringWithInt_withInt_(dumpoff, 16);
    hexofflen = [((NSString *) nil_chk(hexoff)) java_length];
    for (i = 0; i < NetI2pUtilHexDump_FORMAT_OFFSET_PADDING - hexofflen; ++i) {
      [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:'0'];
    }
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:NetI2pDataDataHelper_getASCIIWithNSString_(hexoff)];
    [outArg writeWithInt:' '];
    nextbytes = (NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW < (end - dumpoff) ? NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW : (end - dumpoff));
    for (i = 0; i < NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW; ++i) {
      if ((i % 8) == 0) {
        [outArg writeWithInt:' '];
      }
      if (i >= nextbytes) {
        [outArg writeWithByteArray:NetI2pDataDataHelper_getASCIIWithNSString_(@"   ")];
      }
      else {
        val = IOSByteArray_Get(nil_chk(data), dumpoff + i) & (jint) 0xff;
        [outArg writeWithInt:IOSByteArray_Get(nil_chk(NetI2pUtilHexDump_HEXCHARS), JreURShift32(val, 4))];
        [outArg writeWithInt:IOSByteArray_Get(NetI2pUtilHexDump_HEXCHARS, val & (jint) 0xf)];
        [outArg writeWithInt:' '];
      }
    }
    [outArg writeWithByteArray:NetI2pDataDataHelper_getASCIIWithNSString_(@" |")];
    for (i = 0; i < NetI2pUtilHexDump_FORMAT_BYTES_PER_ROW; ++i) {
      if (i >= nextbytes) {
        [outArg writeWithInt:' '];
      }
      else {
        val = IOSByteArray_Get(nil_chk(data), i + dumpoff);
        if ((val > 31) && (val < 127)) {
          [outArg writeWithInt:val];
        }
        else {
          [outArg writeWithInt:'.'];
        }
      }
    }
    [outArg writeWithInt:'|'];
    [outArg writeWithInt:0x000a];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pUtilHexDump)
