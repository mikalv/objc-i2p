//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/java/src/net/i2p/crypto/provider/I2PProvider.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/SecurityException.h"
#include "java/lang/System.h"
#include "java/lang/Void.h"
#include "java/security/AccessController.h"
#include "java/security/PrivilegedAction.h"
#include "java/security/Provider.h"
#include "java/security/Security.h"
#include "net/i2p/crypto/provider/I2PProvider.h"

@interface NetI2pCryptoProviderI2PProvider ()

- (void)setup;

@end

inline NSString *NetI2pCryptoProviderI2PProvider_get_INFO(void);
static NSString *NetI2pCryptoProviderI2PProvider_INFO = @"I2P Security Provider v0.1, implementingseveral algorithms used by I2P.";
J2OBJC_STATIC_FIELD_OBJ_FINAL(NetI2pCryptoProviderI2PProvider, INFO, NSString *)

inline jboolean NetI2pCryptoProviderI2PProvider_get__installed(void);
inline jboolean NetI2pCryptoProviderI2PProvider_set__installed(jboolean value);
inline jboolean *NetI2pCryptoProviderI2PProvider_getRef__installed(void);
static jboolean NetI2pCryptoProviderI2PProvider__installed;
J2OBJC_STATIC_FIELD_PRIMITIVE(NetI2pCryptoProviderI2PProvider, _installed, jboolean)

__attribute__((unused)) static void NetI2pCryptoProviderI2PProvider_setup(NetI2pCryptoProviderI2PProvider *self);

@interface NetI2pCryptoProviderI2PProvider_1 : NSObject < JavaSecurityPrivilegedAction > {
 @public
  NetI2pCryptoProviderI2PProvider *this$0_;
}

- (instancetype)initWithNetI2pCryptoProviderI2PProvider:(NetI2pCryptoProviderI2PProvider *)outer$;

- (JavaLangVoid *)run;

@end

J2OBJC_EMPTY_STATIC_INIT(NetI2pCryptoProviderI2PProvider_1)

__attribute__((unused)) static void NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(NetI2pCryptoProviderI2PProvider_1 *self, NetI2pCryptoProviderI2PProvider *outer$);

__attribute__((unused)) static NetI2pCryptoProviderI2PProvider_1 *new_NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(NetI2pCryptoProviderI2PProvider *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static NetI2pCryptoProviderI2PProvider_1 *create_NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(NetI2pCryptoProviderI2PProvider *outer$);

NSString *NetI2pCryptoProviderI2PProvider_PROVIDER_NAME = @"I2P";

@implementation NetI2pCryptoProviderI2PProvider

+ (NSString *)PROVIDER_NAME {
  return NetI2pCryptoProviderI2PProvider_PROVIDER_NAME;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  NetI2pCryptoProviderI2PProvider_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setup {
  NetI2pCryptoProviderI2PProvider_setup(self);
}

+ (void)addProvider {
  NetI2pCryptoProviderI2PProvider_addProvider();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setup);
  methods[2].selector = @selector(addProvider);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PROVIDER_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 0, -1, -1 },
    { "INFO", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 1, -1, -1 },
    { "_installed", "Z", .constantValue.asLong = 0, 0xa, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { &NetI2pCryptoProviderI2PProvider_PROVIDER_NAME, &NetI2pCryptoProviderI2PProvider_INFO, &NetI2pCryptoProviderI2PProvider__installed };
  static const J2ObjcClassInfo _NetI2pCryptoProviderI2PProvider = { "I2PProvider", "net.i2p.crypto.provider", ptrTable, methods, fields, 7, 0x11, 3, 3, -1, -1, -1, -1, -1 };
  return &_NetI2pCryptoProviderI2PProvider;
}

@end

void NetI2pCryptoProviderI2PProvider_init(NetI2pCryptoProviderI2PProvider *self) {
  JavaSecurityProvider_initWithNSString_withDouble_withNSString_(self, NetI2pCryptoProviderI2PProvider_PROVIDER_NAME, 0.1, NetI2pCryptoProviderI2PProvider_INFO);
  JavaSecurityAccessController_doPrivilegedWithJavaSecurityPrivilegedAction_(create_NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(self));
}

NetI2pCryptoProviderI2PProvider *new_NetI2pCryptoProviderI2PProvider_init() {
  J2OBJC_NEW_IMPL(NetI2pCryptoProviderI2PProvider, init)
}

NetI2pCryptoProviderI2PProvider *create_NetI2pCryptoProviderI2PProvider_init() {
  J2OBJC_CREATE_IMPL(NetI2pCryptoProviderI2PProvider, init)
}

void NetI2pCryptoProviderI2PProvider_setup(NetI2pCryptoProviderI2PProvider *self) {
  [self putWithId:@"MessageDigest.SHA-1" withId:@"net.i2p.crypto.SHA1"];
  [self putWithId:@"KeyFactory.EdDSA" withId:@"net.i2p.crypto.eddsa.KeyFactory"];
  [self putWithId:@"KeyPairGenerator.EdDSA" withId:@"net.i2p.crypto.eddsa.KeyPairGenerator"];
  [self putWithId:@"Signature.SHA512withEdDSA" withId:@"net.i2p.crypto.eddsa.EdDSAEngine"];
  [self putWithId:@"Alg.Alias.KeyFactory.1.3.101.100" withId:@"EdDSA"];
  [self putWithId:@"Alg.Alias.KeyFactory.OID.1.3.101.100" withId:@"EdDSA"];
  [self putWithId:@"Alg.Alias.KeyPairGenerator.1.3.101.100" withId:@"EdDSA"];
  [self putWithId:@"Alg.Alias.KeyPairGenerator.OID.1.3.101.100" withId:@"EdDSA"];
  [self putWithId:@"Alg.Alias.Signature.1.3.101.101" withId:@"SHA512withEdDSA"];
  [self putWithId:@"Alg.Alias.Signature.OID.1.3.101.101" withId:@"SHA512withEdDSA"];
  [self putWithId:@"KeyFactory.DH" withId:@"net.i2p.crypto.elgamal.KeyFactory"];
  [self putWithId:@"KeyFactory.DiffieHellman" withId:@"net.i2p.crypto.elgamal.KeyFactory"];
  [self putWithId:@"KeyFactory.ElGamal" withId:@"net.i2p.crypto.elgamal.KeyFactory"];
  [self putWithId:@"KeyPairGenerator.DH" withId:@"net.i2p.crypto.elgamal.KeyPairGenerator"];
  [self putWithId:@"KeyPairGenerator.DiffieHellman" withId:@"net.i2p.crypto.elgamal.KeyPairGenerator"];
  [self putWithId:@"KeyPairGenerator.ElGamal" withId:@"net.i2p.crypto.elgamal.KeyPairGenerator"];
  [self putWithId:@"Signature.SHA256withElGamal" withId:@"net.i2p.crypto.elgamal.ElGamalSigEngine"];
  [self putWithId:@"Alg.Alias.KeyFactory.1.3.14.7.2.1.1" withId:@"ElGamal"];
  [self putWithId:@"Alg.Alias.KeyFactory.OID.1.3.14.7.2.1.1" withId:@"ElGamal"];
  [self putWithId:@"Alg.Alias.KeyPairGenerator.1.3.14.7.2.1.1" withId:@"ElGamal"];
  [self putWithId:@"Alg.Alias.KeyPairGenerator.OID.1.3.14.7.2.1.1" withId:@"ElGamal"];
  [self putWithId:@"Alg.Alias.Signature.1.3.14.7.2.1.1" withId:@"SHA256withElGamal"];
  [self putWithId:@"Alg.Alias.Signature.OID.1.3.14.7.2.1.1" withId:@"SHA256withElGamal"];
}

void NetI2pCryptoProviderI2PProvider_addProvider() {
  NetI2pCryptoProviderI2PProvider_initialize();
  @synchronized(NetI2pCryptoProviderI2PProvider_class_()) {
    if (!NetI2pCryptoProviderI2PProvider__installed) {
      @try {
        JavaSecurityProvider *us = create_NetI2pCryptoProviderI2PProvider_init();
        IOSObjectArray *provs = JavaSecuritySecurity_getProviders();
        for (jint i = 0; i < ((IOSObjectArray *) nil_chk(provs))->size_; i++) {
          if ([((NSString *) nil_chk([((JavaSecurityProvider *) nil_chk(IOSObjectArray_Get(provs, i))) getName])) isEqual:@"BC"]) {
            JavaSecuritySecurity_insertProviderAtWithJavaSecurityProvider_withInt_(us, i);
            NetI2pCryptoProviderI2PProvider__installed = true;
            return;
          }
        }
        JavaSecuritySecurity_addProviderWithJavaSecurityProvider_(us);
        NetI2pCryptoProviderI2PProvider__installed = true;
      }
      @catch (JavaLangSecurityException *se) {
        [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@", @"WARN: Could not install I2P provider: ", se)];
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(NetI2pCryptoProviderI2PProvider)

@implementation NetI2pCryptoProviderI2PProvider_1

- (instancetype)initWithNetI2pCryptoProviderI2PProvider:(NetI2pCryptoProviderI2PProvider *)outer$ {
  NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(self, outer$);
  return self;
}

- (JavaLangVoid *)run {
  NetI2pCryptoProviderI2PProvider_setup(this$0_);
  return nil;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangVoid;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNetI2pCryptoProviderI2PProvider:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LNetI2pCryptoProviderI2PProvider;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNetI2pCryptoProviderI2PProvider;", "init", "Ljava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/Void;>;" };
  static const J2ObjcClassInfo _NetI2pCryptoProviderI2PProvider_1 = { "", "net.i2p.crypto.provider", ptrTable, methods, fields, 7, 0x8018, 2, 1, 0, -1, 1, 2, -1 };
  return &_NetI2pCryptoProviderI2PProvider_1;
}

@end

void NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(NetI2pCryptoProviderI2PProvider_1 *self, NetI2pCryptoProviderI2PProvider *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

NetI2pCryptoProviderI2PProvider_1 *new_NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(NetI2pCryptoProviderI2PProvider *outer$) {
  J2OBJC_NEW_IMPL(NetI2pCryptoProviderI2PProvider_1, initWithNetI2pCryptoProviderI2PProvider_, outer$)
}

NetI2pCryptoProviderI2PProvider_1 *create_NetI2pCryptoProviderI2PProvider_1_initWithNetI2pCryptoProviderI2PProvider_(NetI2pCryptoProviderI2PProvider *outer$) {
  J2OBJC_CREATE_IMPL(NetI2pCryptoProviderI2PProvider_1, initWithNetI2pCryptoProviderI2PProvider_, outer$)
}
