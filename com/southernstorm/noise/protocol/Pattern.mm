//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/com/southernstorm/noise/protocol/Pattern.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/southernstorm/noise/protocol/Pattern.h"

@interface ComSouthernstormNoiseProtocolPattern ()

- (instancetype)init;

@end

inline IOSShortArray *ComSouthernstormNoiseProtocolPattern_get_noise_pattern_XK(void);
static IOSShortArray *ComSouthernstormNoiseProtocolPattern_noise_pattern_XK;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComSouthernstormNoiseProtocolPattern, noise_pattern_XK, IOSShortArray *)

__attribute__((unused)) static void ComSouthernstormNoiseProtocolPattern_init(ComSouthernstormNoiseProtocolPattern *self);

__attribute__((unused)) static ComSouthernstormNoiseProtocolPattern *new_ComSouthernstormNoiseProtocolPattern_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComSouthernstormNoiseProtocolPattern *create_ComSouthernstormNoiseProtocolPattern_init(void);

J2OBJC_INITIALIZED_DEFN(ComSouthernstormNoiseProtocolPattern)

@implementation ComSouthernstormNoiseProtocolPattern

+ (jshort)S {
  return ComSouthernstormNoiseProtocolPattern_S;
}

+ (jshort)E {
  return ComSouthernstormNoiseProtocolPattern_E;
}

+ (jshort)EE {
  return ComSouthernstormNoiseProtocolPattern_EE;
}

+ (jshort)ES {
  return ComSouthernstormNoiseProtocolPattern_ES;
}

+ (jshort)SE {
  return ComSouthernstormNoiseProtocolPattern_SE;
}

+ (jshort)SS {
  return ComSouthernstormNoiseProtocolPattern_SS;
}

+ (jshort)F {
  return ComSouthernstormNoiseProtocolPattern_F;
}

+ (jshort)FF {
  return ComSouthernstormNoiseProtocolPattern_FF;
}

+ (jshort)FLIP_DIR {
  return ComSouthernstormNoiseProtocolPattern_FLIP_DIR;
}

+ (jshort)FLAG_LOCAL_STATIC {
  return ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_STATIC;
}

+ (jshort)FLAG_LOCAL_EPHEMERAL {
  return ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_EPHEMERAL;
}

+ (jshort)FLAG_LOCAL_REQUIRED {
  return ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_REQUIRED;
}

+ (jshort)FLAG_LOCAL_EPHEM_REQ {
  return ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_EPHEM_REQ;
}

+ (jshort)FLAG_LOCAL_HYBRID {
  return ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_HYBRID;
}

+ (jshort)FLAG_LOCAL_HYBRID_REQ {
  return ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_HYBRID_REQ;
}

+ (jshort)FLAG_REMOTE_STATIC {
  return ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_STATIC;
}

+ (jshort)FLAG_REMOTE_EPHEMERAL {
  return ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_EPHEMERAL;
}

+ (jshort)FLAG_REMOTE_REQUIRED {
  return ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_REQUIRED;
}

+ (jshort)FLAG_REMOTE_EPHEM_REQ {
  return ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_EPHEM_REQ;
}

+ (jshort)FLAG_REMOTE_HYBRID {
  return ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_HYBRID;
}

+ (jshort)FLAG_REMOTE_HYBRID_REQ {
  return ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_HYBRID_REQ;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComSouthernstormNoiseProtocolPattern_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSShortArray *)lookupWithNSString:(NSString *)name {
  return ComSouthernstormNoiseProtocolPattern_lookupWithNSString_(name);
}

+ (jshort)reverseFlagsWithShort:(jshort)flags {
  return ComSouthernstormNoiseProtocolPattern_reverseFlagsWithShort_(flags);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "[S", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "S", 0x9, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(lookupWithNSString:);
  methods[2].selector = @selector(reverseFlagsWithShort:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "S", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_S, 0x19, -1, -1, -1, -1 },
    { "E", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_E, 0x19, -1, -1, -1, -1 },
    { "EE", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_EE, 0x19, -1, -1, -1, -1 },
    { "ES", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_ES, 0x19, -1, -1, -1, -1 },
    { "SE", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_SE, 0x19, -1, -1, -1, -1 },
    { "SS", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_SS, 0x19, -1, -1, -1, -1 },
    { "F", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_F, 0x19, -1, -1, -1, -1 },
    { "FF", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FF, 0x19, -1, -1, -1, -1 },
    { "FLIP_DIR", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLIP_DIR, 0x19, -1, -1, -1, -1 },
    { "FLAG_LOCAL_STATIC", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_STATIC, 0x19, -1, -1, -1, -1 },
    { "FLAG_LOCAL_EPHEMERAL", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_EPHEMERAL, 0x19, -1, -1, -1, -1 },
    { "FLAG_LOCAL_REQUIRED", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_REQUIRED, 0x19, -1, -1, -1, -1 },
    { "FLAG_LOCAL_EPHEM_REQ", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_EPHEM_REQ, 0x19, -1, -1, -1, -1 },
    { "FLAG_LOCAL_HYBRID", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_HYBRID, 0x19, -1, -1, -1, -1 },
    { "FLAG_LOCAL_HYBRID_REQ", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_HYBRID_REQ, 0x19, -1, -1, -1, -1 },
    { "FLAG_REMOTE_STATIC", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_STATIC, 0x19, -1, -1, -1, -1 },
    { "FLAG_REMOTE_EPHEMERAL", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_EPHEMERAL, 0x19, -1, -1, -1, -1 },
    { "FLAG_REMOTE_REQUIRED", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_REQUIRED, 0x19, -1, -1, -1, -1 },
    { "FLAG_REMOTE_EPHEM_REQ", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_EPHEM_REQ, 0x19, -1, -1, -1, -1 },
    { "FLAG_REMOTE_HYBRID", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_HYBRID, 0x19, -1, -1, -1, -1 },
    { "FLAG_REMOTE_HYBRID_REQ", "S", .constantValue.asShort = ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_HYBRID_REQ, 0x19, -1, -1, -1, -1 },
    { "noise_pattern_XK", "[S", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "lookup", "LNSString;", "reverseFlags", "S", &ComSouthernstormNoiseProtocolPattern_noise_pattern_XK };
  static const J2ObjcClassInfo _ComSouthernstormNoiseProtocolPattern = { "Pattern", "com.southernstorm.noise.protocol", ptrTable, methods, fields, 7, 0x0, 3, 22, -1, -1, -1, -1, -1 };
  return &_ComSouthernstormNoiseProtocolPattern;
}

+ (void)initialize {
  if (self == [ComSouthernstormNoiseProtocolPattern class]) {
    JreStrongAssignAndConsume(&ComSouthernstormNoiseProtocolPattern_noise_pattern_XK, [IOSShortArray newArrayWithShorts:(jshort[]){ ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_STATIC | ComSouthernstormNoiseProtocolPattern_FLAG_LOCAL_EPHEMERAL | ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_STATIC | ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_EPHEMERAL | ComSouthernstormNoiseProtocolPattern_FLAG_REMOTE_REQUIRED, ComSouthernstormNoiseProtocolPattern_E, ComSouthernstormNoiseProtocolPattern_ES, ComSouthernstormNoiseProtocolPattern_FLIP_DIR, ComSouthernstormNoiseProtocolPattern_E, ComSouthernstormNoiseProtocolPattern_EE, ComSouthernstormNoiseProtocolPattern_FLIP_DIR, ComSouthernstormNoiseProtocolPattern_S, ComSouthernstormNoiseProtocolPattern_SE } count:9]);
    J2OBJC_SET_INITIALIZED(ComSouthernstormNoiseProtocolPattern)
  }
}

@end

void ComSouthernstormNoiseProtocolPattern_init(ComSouthernstormNoiseProtocolPattern *self) {
  NSObject_init(self);
}

ComSouthernstormNoiseProtocolPattern *new_ComSouthernstormNoiseProtocolPattern_init() {
  J2OBJC_NEW_IMPL(ComSouthernstormNoiseProtocolPattern, init)
}

ComSouthernstormNoiseProtocolPattern *create_ComSouthernstormNoiseProtocolPattern_init() {
  J2OBJC_CREATE_IMPL(ComSouthernstormNoiseProtocolPattern, init)
}

IOSShortArray *ComSouthernstormNoiseProtocolPattern_lookupWithNSString_(NSString *name) {
  ComSouthernstormNoiseProtocolPattern_initialize();
  if ([((NSString *) nil_chk(name)) isEqual:@"XK"]) return ComSouthernstormNoiseProtocolPattern_noise_pattern_XK;
  return nil;
}

jshort ComSouthernstormNoiseProtocolPattern_reverseFlagsWithShort_(jshort flags) {
  ComSouthernstormNoiseProtocolPattern_initialize();
  return (jshort) (((JreRShift32(flags, 8)) & (jint) 0x00FF) | ((JreLShift32(flags, 8)) & (jint) 0xFF00));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComSouthernstormNoiseProtocolPattern)
