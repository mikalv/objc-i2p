//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/data/router/RouterAddress.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collections.h"
#include "java/util/Date.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "java/util/Set.h"
#include "net/i2p/data/DataFormatException.h"
#include "net/i2p/data/DataHelper.h"
#include "net/i2p/data/DataStructureImpl.h"
#include "net/i2p/data/router/RouterAddress.h"
#include "net/i2p/util/Addresses.h"
#include "net/i2p/util/OrderedProperties.h"

@interface NetI2pDataRouterRouterAddress () {
 @public
  jshort _cost_;
  jlong _expiration_;
  NSString *_transportStyle_;
  JavaUtilProperties *_options_;
  IOSByteArray *_ip_;
  jint _port_;
}

@end

J2OBJC_FIELD_SETTER(NetI2pDataRouterRouterAddress, _transportStyle_, NSString *)
J2OBJC_FIELD_SETTER(NetI2pDataRouterRouterAddress, _options_, JavaUtilProperties *)
J2OBJC_FIELD_SETTER(NetI2pDataRouterRouterAddress, _ip_, IOSByteArray *)

inline IOSByteArray *NetI2pDataRouterRouterAddress_get_NOT_LOOKED_UP(void);
static IOSByteArray *NetI2pDataRouterRouterAddress_NOT_LOOKED_UP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pDataRouterRouterAddress, NOT_LOOKED_UP, IOSByteArray *)

__attribute__((unused)) static IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$5(void);

J2OBJC_INITIALIZED_DEFN(NetI2pDataRouterRouterAddress)

NSString *NetI2pDataRouterRouterAddress_PROP_HOST = @"host";
NSString *NetI2pDataRouterRouterAddress_PROP_PORT = @"port";

@implementation NetI2pDataRouterRouterAddress

+ (NSString *)PROP_HOST {
  return NetI2pDataRouterRouterAddress_PROP_HOST;
}

+ (NSString *)PROP_PORT {
  return NetI2pDataRouterRouterAddress_PROP_PORT;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pDataRouterRouterAddress_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)style
 withNetI2pUtilOrderedProperties:(NetI2pUtilOrderedProperties *)options
                         withInt:(jint)cost {
  NetI2pDataRouterRouterAddress_initWithNSString_withNetI2pUtilOrderedProperties_withInt_(self, style, options, cost);
  return self;
}

- (jint)getCost {
  return _cost_;
}

- (void)setCostWithInt:(jint)cost {
  if (cost < 0 || cost > 255) @throw create_JavaLangIllegalArgumentException_init();
  _cost_ = (jshort) cost;
}

- (JavaUtilDate *)getExpiration {
  if (_expiration_ > 0) return create_JavaUtilDate_initWithLong_(_expiration_);
  return nil;
}

- (jlong)getExpirationTime {
  return _expiration_;
}

- (void)setExpirationWithJavaUtilDate:(JavaUtilDate *)expiration {
  if (expiration != nil) _expiration_ = [expiration getDate];
  else _expiration_ = 0;
}

- (NSString *)getTransportStyle {
  return _transportStyle_;
}

- (void)setTransportStyleWithNSString:(NSString *)transportStyle {
  if (_transportStyle_ != nil) @throw create_JavaLangIllegalStateException_init();
  JreStrongAssign(&_transportStyle_, transportStyle);
}

- (JavaUtilProperties *)getOptions {
  return _options_;
}

- (id<JavaUtilMap>)getOptionsMap {
  return JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(_options_);
}

- (NSString *)getOptionWithNSString:(NSString *)opt {
  return [((JavaUtilProperties *) nil_chk(_options_)) getPropertyWithNSString:opt];
}

- (void)setOptionsWithJavaUtilProperties:(JavaUtilProperties *)options {
  if (![((JavaUtilProperties *) nil_chk(_options_)) isEmpty]) @throw create_JavaLangIllegalStateException_init();
  [_options_ putAllWithJavaUtilMap:options];
}

- (IOSByteArray *)getIP {
  @synchronized(self) {
    if (_ip_ == NetI2pDataRouterRouterAddress_NOT_LOOKED_UP) {
      NSString *host = [self getHost];
      if (host != nil) JreStrongAssign(&_ip_, NetI2pUtilAddresses_getIPOnlyWithNSString_(host));
      else JreStrongAssign(&_ip_, nil);
    }
    return JreRetainedLocalValue(_ip_);
  }
}

- (NSString *)getHost {
  return [((JavaUtilProperties *) nil_chk(_options_)) getPropertyWithNSString:NetI2pDataRouterRouterAddress_PROP_HOST];
}

- (jint)getPort {
  if (_port_ != 0) return _port_;
  NSString *port = [((JavaUtilProperties *) nil_chk(_options_)) getPropertyWithNSString:NetI2pDataRouterRouterAddress_PROP_PORT];
  if (port != nil) {
    @try {
      jint rv = JavaLangInteger_parseIntWithNSString_(port);
      if (rv > 0 && rv <= 65535) _port_ = rv;
    }
    @catch (JavaLangNumberFormatException *nfe) {
    }
  }
  return _port_;
}

- (void)readBytesWithJavaIoInputStream:(JavaIoInputStream *)inArg {
  if (_transportStyle_ != nil) @throw create_JavaLangIllegalStateException_init();
  _cost_ = (jshort) [((JavaIoInputStream *) nil_chk(inArg)) read];
  _expiration_ = NetI2pDataDataHelper_readLongWithJavaIoInputStream_withInt_(inArg, 8);
  JreStrongAssign(&_transportStyle_, NetI2pDataDataHelper_readStringWithJavaIoInputStream_(inArg));
  if ([((NSString *) nil_chk(_transportStyle_)) isEqual:@"SSU"]) JreStrongAssign(&_transportStyle_, @"SSU");
  else if ([((NSString *) nil_chk(_transportStyle_)) isEqual:@"NTCP"]) JreStrongAssign(&_transportStyle_, @"NTCP");
  else if ([((NSString *) nil_chk(_transportStyle_)) isEqual:@"NTCP2"]) JreStrongAssign(&_transportStyle_, @"NTCP2");
  NetI2pDataDataHelper_readPropertiesWithJavaIoInputStream_withJavaUtilProperties_(inArg, _options_);
}

- (void)writeBytesWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if (_transportStyle_ == nil) @throw create_NetI2pDataDataFormatException_initWithNSString_(@"uninitialized");
  [((JavaIoOutputStream *) nil_chk(outArg)) writeWithInt:(jbyte) _cost_];
  NetI2pDataDataHelper_writeLongWithJavaIoOutputStream_withInt_withLong_(outArg, 8, _expiration_);
  NetI2pDataDataHelper_writeStringWithJavaIoOutputStream_withNSString_(outArg, _transportStyle_);
  NetI2pDataDataHelper_writePropertiesWithJavaIoOutputStream_withJavaUtilProperties_(outArg, _options_);
}

- (jboolean)isEqual:(id)object {
  if (object == self) return true;
  if ((object == nil) || !([object isKindOfClass:[NetI2pDataRouterRouterAddress class]])) return false;
  NetI2pDataRouterRouterAddress *addr = (NetI2pDataRouterRouterAddress *) cast_chk(object, [NetI2pDataRouterRouterAddress class]);
  return [self getPort] == [((NetI2pDataRouterRouterAddress *) nil_chk(addr)) getPort] && NetI2pDataDataHelper_eqWithId_withId_([self getHost], [addr getHost]) && NetI2pDataDataHelper_eqWithId_withId_(_transportStyle_, addr->_transportStyle_);
}

- (jboolean)deepEqualsWithNetI2pDataRouterRouterAddress:(NetI2pDataRouterRouterAddress *)addr {
  return [self isEqual:addr] && _cost_ == ((NetI2pDataRouterRouterAddress *) nil_chk(addr))->_cost_ && [((JavaUtilProperties *) nil_chk(_options_)) isEqual:addr->_options_];
}

- (NSUInteger)hash {
  return NetI2pDataDataHelper_hashCodeWithId_(_transportStyle_) ^ NetI2pDataDataHelper_hashCodeWithByteArray_([self getIP]) ^ [self getPort];
}

- (NSString *)description {
  JavaLangStringBuilder *buf = create_JavaLangStringBuilder_initWithInt_(128);
  [buf appendWithNSString:@"[RouterAddress: "];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tType: "])) appendWithNSString:_transportStyle_];
  [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tCost: "])) appendWithInt:_cost_];
  if (_expiration_ > 0) [((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tExpiration: "])) appendWithId:create_JavaUtilDate_initWithLong_(_expiration_)];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\tOptions ("])) appendWithInt:[((JavaUtilProperties *) nil_chk(_options_)) size]])) appendWithNSString:@"):"];
  for (id<JavaUtilMap_Entry> __strong e in nil_chk([_options_ entrySet])) {
    NSString *key = (NSString *) cast_chk([((id<JavaUtilMap_Entry>) nil_chk(e)) getKey], [NSString class]);
    NSString *val = (NSString *) cast_chk([e getValue], [NSString class]);
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buf appendWithNSString:@"\n\t\t["])) appendWithNSString:key])) appendWithNSString:@"] = ["])) appendWithNSString:val])) appendWithNSString:@"]"];
  }
  [buf appendWithNSString:@"]"];
  return [buf description];
}

- (void)dealloc {
  RELEASE_(_transportStyle_);
  RELEASE_(_options_);
  RELEASE_(_ip_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, -1, -1, -1, -1, 3, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, 4, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, 7, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, 10, -1 },
    { NULL, "LJavaUtilProperties;", 0x1, -1, -1, -1, -1, 11, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 12, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, 16, -1 },
    { NULL, "[B", 0x21, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 18, 19, -1, -1, -1 },
    { NULL, "V", 0x1, 20, 21, 19, -1, -1, -1 },
    { NULL, "Z", 0x1, 22, 23, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 24, 25, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 26, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 27, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithNSString:withNetI2pUtilOrderedProperties:withInt:);
  methods[2].selector = @selector(getCost);
  methods[3].selector = @selector(setCostWithInt:);
  methods[4].selector = @selector(getExpiration);
  methods[5].selector = @selector(getExpirationTime);
  methods[6].selector = @selector(setExpirationWithJavaUtilDate:);
  methods[7].selector = @selector(getTransportStyle);
  methods[8].selector = @selector(setTransportStyleWithNSString:);
  methods[9].selector = @selector(getOptions);
  methods[10].selector = @selector(getOptionsMap);
  methods[11].selector = @selector(getOptionWithNSString:);
  methods[12].selector = @selector(setOptionsWithJavaUtilProperties:);
  methods[13].selector = @selector(getIP);
  methods[14].selector = @selector(getHost);
  methods[15].selector = @selector(getPort);
  methods[16].selector = @selector(readBytesWithJavaIoInputStream:);
  methods[17].selector = @selector(writeBytesWithJavaIoOutputStream:);
  methods[18].selector = @selector(isEqual:);
  methods[19].selector = @selector(deepEqualsWithNetI2pDataRouterRouterAddress:);
  methods[20].selector = @selector(hash);
  methods[21].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "_cost_", "S", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_expiration_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_transportStyle_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_options_", "LJavaUtilProperties;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "_ip_", "[B", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "_port_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "PROP_HOST", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "PROP_PORT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "NOT_LOOKED_UP", "[B", .constantValue.asLong = 0, 0x1a, -1, 30, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNetI2pUtilOrderedProperties;I", "setCost", "I", (void *)&NetI2pDataRouterRouterAddress__Annotations$0, (void *)&NetI2pDataRouterRouterAddress__Annotations$1, "setExpiration", "LJavaUtilDate;", (void *)&NetI2pDataRouterRouterAddress__Annotations$2, "setTransportStyle", "LNSString;", (void *)&NetI2pDataRouterRouterAddress__Annotations$3, (void *)&NetI2pDataRouterRouterAddress__Annotations$4, "()Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;", "getOption", "setOptions", "LJavaUtilProperties;", (void *)&NetI2pDataRouterRouterAddress__Annotations$5, "readBytes", "LJavaIoInputStream;", "LNetI2pDataDataFormatException;LJavaIoIOException;", "writeBytes", "LJavaIoOutputStream;", "equals", "LNSObject;", "deepEquals", "LNetI2pDataRouterRouterAddress;", "hashCode", "toString", &NetI2pDataRouterRouterAddress_PROP_HOST, &NetI2pDataRouterRouterAddress_PROP_PORT, &NetI2pDataRouterRouterAddress_NOT_LOOKED_UP };
  static const J2ObjcClassInfo _NetI2pDataRouterRouterAddress = { "RouterAddress", "net.i2p.data.router", ptrTable, methods, fields, 7, 0x1, 22, 9, -1, -1, -1, -1, -1 };
  return &_NetI2pDataRouterRouterAddress;
}

+ (void)initialize {
  if (self == [NetI2pDataRouterRouterAddress class]) {
    JreStrongAssignAndConsume(&NetI2pDataRouterRouterAddress_NOT_LOOKED_UP, [IOSByteArray newArrayWithLength:0]);
    J2OBJC_SET_INITIALIZED(NetI2pDataRouterRouterAddress)
  }
}

@end

void NetI2pDataRouterRouterAddress_init(NetI2pDataRouterRouterAddress *self) {
  NetI2pDataDataStructureImpl_init(self);
  JreStrongAssign(&self->_ip_, NetI2pDataRouterRouterAddress_NOT_LOOKED_UP);
  JreStrongAssignAndConsume(&self->_options_, new_NetI2pUtilOrderedProperties_init());
}

NetI2pDataRouterRouterAddress *new_NetI2pDataRouterRouterAddress_init() {
  J2OBJC_NEW_IMPL(NetI2pDataRouterRouterAddress, init)
}

NetI2pDataRouterRouterAddress *create_NetI2pDataRouterRouterAddress_init() {
  J2OBJC_CREATE_IMPL(NetI2pDataRouterRouterAddress, init)
}

void NetI2pDataRouterRouterAddress_initWithNSString_withNetI2pUtilOrderedProperties_withInt_(NetI2pDataRouterRouterAddress *self, NSString *style, NetI2pUtilOrderedProperties *options, jint cost) {
  NetI2pDataDataStructureImpl_init(self);
  JreStrongAssign(&self->_ip_, NetI2pDataRouterRouterAddress_NOT_LOOKED_UP);
  JreStrongAssign(&self->_transportStyle_, style);
  JreStrongAssign(&self->_options_, options);
  if (cost < 0 || cost > 255) @throw create_JavaLangIllegalArgumentException_init();
  self->_cost_ = (jshort) cost;
}

NetI2pDataRouterRouterAddress *new_NetI2pDataRouterRouterAddress_initWithNSString_withNetI2pUtilOrderedProperties_withInt_(NSString *style, NetI2pUtilOrderedProperties *options, jint cost) {
  J2OBJC_NEW_IMPL(NetI2pDataRouterRouterAddress, initWithNSString_withNetI2pUtilOrderedProperties_withInt_, style, options, cost)
}

NetI2pDataRouterRouterAddress *create_NetI2pDataRouterRouterAddress_initWithNSString_withNetI2pUtilOrderedProperties_withInt_(NSString *style, NetI2pUtilOrderedProperties *options, jint cost) {
  J2OBJC_CREATE_IMPL(NetI2pDataRouterRouterAddress, initWithNSString_withNetI2pUtilOrderedProperties_withInt_, style, options, cost)
}

IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *NetI2pDataRouterRouterAddress__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pDataRouterRouterAddress)