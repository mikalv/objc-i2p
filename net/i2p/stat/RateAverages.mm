//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/stat/RateAverages.java
//

#include "J2ObjC_source.h"
#include "java/lang/ThreadLocal.h"
#include "net/i2p/stat/RateAverages.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface NetI2pStatRateAverages () {
 @public
  jdouble average_;
  jdouble current_;
  jdouble last_;
  jdouble totalValues_;
  jlong totalEventCount_;
}

@end

inline JavaLangThreadLocal *NetI2pStatRateAverages_get_TEMP(void);
static JavaLangThreadLocal *NetI2pStatRateAverages_TEMP;
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pStatRateAverages, TEMP, JavaLangThreadLocal *)

@interface NetI2pStatRateAverages_1 : JavaLangThreadLocal

- (instancetype)init;

- (NetI2pStatRateAverages *)initialValue OBJC_METHOD_FAMILY_NONE;

- (NetI2pStatRateAverages *)get;

- (NetI2pStatRateAverages *)childValueWithId:(NetI2pStatRateAverages *)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pStatRateAverages_1)

__attribute__((unused)) static void NetI2pStatRateAverages_1_init(NetI2pStatRateAverages_1 *self);

__attribute__((unused)) static NetI2pStatRateAverages_1 *new_NetI2pStatRateAverages_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pStatRateAverages_1 *create_NetI2pStatRateAverages_1_init(void);

J2OBJC_INITIALIZED_DEFN(NetI2pStatRateAverages)

@implementation NetI2pStatRateAverages

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pStatRateAverages_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NetI2pStatRateAverages *)getTemp {
  return NetI2pStatRateAverages_getTemp();
}

- (void)reset {
  average_ = 0;
  current_ = 0;
  last_ = 0;
  totalEventCount_ = 0;
  totalValues_ = 0;
}

- (jdouble)getAverage {
  return average_;
}

- (void)setAverageWithDouble:(jdouble)average {
  self->average_ = average;
}

- (jdouble)getCurrent {
  return current_;
}

- (void)setCurrentWithDouble:(jdouble)current {
  self->current_ = current;
}

- (jdouble)getLast {
  return last_;
}

- (void)setLastWithDouble:(jdouble)last {
  self->last_ = last;
}

- (jlong)getTotalEventCount {
  return totalEventCount_;
}

- (void)setTotalEventCountWithLong:(jlong)totalEventCount {
  self->totalEventCount_ = totalEventCount;
}

- (jdouble)getTotalValues {
  return totalValues_;
}

- (void)setTotalValuesWithDouble:(jdouble)totalValues {
  self->totalValues_ = totalValues;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatRateAverages;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 4, 5, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 6, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTemp);
  methods[2].selector = @selector(reset);
  methods[3].selector = @selector(getAverage);
  methods[4].selector = @selector(setAverageWithDouble:);
  methods[5].selector = @selector(getCurrent);
  methods[6].selector = @selector(setCurrentWithDouble:);
  methods[7].selector = @selector(getLast);
  methods[8].selector = @selector(setLastWithDouble:);
  methods[9].selector = @selector(getTotalEventCount);
  methods[10].selector = @selector(setTotalEventCountWithLong:);
  methods[11].selector = @selector(getTotalValues);
  methods[12].selector = @selector(setTotalValuesWithDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TEMP", "LJavaLangThreadLocal;", .constantValue.asLong = 0, 0x1a, -1, 7, 8, -1 },
    { "average_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "current_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "last_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "totalValues_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "totalEventCount_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setAverage", "D", "setCurrent", "setLast", "setTotalEventCount", "J", "setTotalValues", &NetI2pStatRateAverages_TEMP, "Ljava/lang/ThreadLocal<Lnet/i2p/stat/RateAverages;>;" };
  static const J2ObjcClassInfo _NetI2pStatRateAverages = { "RateAverages", "net.i2p.stat", ptrTable, methods, fields, 7, 0x1, 13, 6, -1, -1, -1, -1, -1 };
  return &_NetI2pStatRateAverages;
}

+ (void)initialize {
  if (self == [NetI2pStatRateAverages class]) {
    JreStrongAssignAndConsume(&NetI2pStatRateAverages_TEMP, new_NetI2pStatRateAverages_1_init());
    J2OBJC_SET_INITIALIZED(NetI2pStatRateAverages)
  }
}

@end

void NetI2pStatRateAverages_init(NetI2pStatRateAverages *self) {
  NSObject_init(self);
}

NetI2pStatRateAverages *new_NetI2pStatRateAverages_init() {
  J2OBJC_NEW_IMPL(NetI2pStatRateAverages, init)
}

NetI2pStatRateAverages *create_NetI2pStatRateAverages_init() {
  J2OBJC_CREATE_IMPL(NetI2pStatRateAverages, init)
}

NetI2pStatRateAverages *NetI2pStatRateAverages_getTemp() {
  NetI2pStatRateAverages_initialize();
  return [((JavaLangThreadLocal *) nil_chk(NetI2pStatRateAverages_TEMP)) get];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pStatRateAverages)

@implementation NetI2pStatRateAverages_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pStatRateAverages_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NetI2pStatRateAverages *)initialValue {
  return create_NetI2pStatRateAverages_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNetI2pStatRateAverages;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initialValue);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNetI2pStatRateAverages;", "Ljava/lang/ThreadLocal<Lnet/i2p/stat/RateAverages;>;" };
  static const J2ObjcClassInfo _NetI2pStatRateAverages_1 = { "", "net.i2p.stat", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 0, -1, -1, 1, -1 };
  return &_NetI2pStatRateAverages_1;
}

@end

void NetI2pStatRateAverages_1_init(NetI2pStatRateAverages_1 *self) {
  JavaLangThreadLocal_init(self);
}

NetI2pStatRateAverages_1 *new_NetI2pStatRateAverages_1_init() {
  J2OBJC_NEW_IMPL(NetI2pStatRateAverages_1, init)
}

NetI2pStatRateAverages_1 *create_NetI2pStatRateAverages_1_init() {
  J2OBJC_CREATE_IMPL(NetI2pStatRateAverages_1, init)
}
