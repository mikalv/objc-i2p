//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/com/southernstorm/noise/protocol/CipherStatePair.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComSouthernstormNoiseProtocolCipherStatePair")
#ifdef RESTRICT_ComSouthernstormNoiseProtocolCipherStatePair
#define INCLUDE_ALL_ComSouthernstormNoiseProtocolCipherStatePair 0
#else
#define INCLUDE_ALL_ComSouthernstormNoiseProtocolCipherStatePair 1
#endif
#undef RESTRICT_ComSouthernstormNoiseProtocolCipherStatePair

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ComSouthernstormNoiseProtocolCipherStatePair_) && (INCLUDE_ALL_ComSouthernstormNoiseProtocolCipherStatePair || defined(INCLUDE_ComSouthernstormNoiseProtocolCipherStatePair))
#define ComSouthernstormNoiseProtocolCipherStatePair_

#define RESTRICT_ComSouthernstormNoiseProtocolDestroyable 1
#define INCLUDE_ComSouthernstormNoiseProtocolDestroyable 1
#include "com/southernstorm/noise/protocol/Destroyable.h"

@protocol ComSouthernstormNoiseProtocolCipherState;

@interface ComSouthernstormNoiseProtocolCipherStatePair : NSObject < ComSouthernstormNoiseProtocolDestroyable >

#pragma mark Public

- (instancetype __nonnull)initWithComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)sender
                              withComSouthernstormNoiseProtocolCipherState:(id<ComSouthernstormNoiseProtocolCipherState>)receiver;

- (void)destroy;

- (id<ComSouthernstormNoiseProtocolCipherState>)getReceiver;

- (id<ComSouthernstormNoiseProtocolCipherState>)getSender;

- (void)receiverOnly;

- (void)senderOnly;

- (void)swap;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComSouthernstormNoiseProtocolCipherStatePair)

FOUNDATION_EXPORT void ComSouthernstormNoiseProtocolCipherStatePair_initWithComSouthernstormNoiseProtocolCipherState_withComSouthernstormNoiseProtocolCipherState_(ComSouthernstormNoiseProtocolCipherStatePair *self, id<ComSouthernstormNoiseProtocolCipherState> sender, id<ComSouthernstormNoiseProtocolCipherState> receiver);

FOUNDATION_EXPORT ComSouthernstormNoiseProtocolCipherStatePair *new_ComSouthernstormNoiseProtocolCipherStatePair_initWithComSouthernstormNoiseProtocolCipherState_withComSouthernstormNoiseProtocolCipherState_(id<ComSouthernstormNoiseProtocolCipherState> sender, id<ComSouthernstormNoiseProtocolCipherState> receiver) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComSouthernstormNoiseProtocolCipherStatePair *create_ComSouthernstormNoiseProtocolCipherStatePair_initWithComSouthernstormNoiseProtocolCipherState_withComSouthernstormNoiseProtocolCipherState_(id<ComSouthernstormNoiseProtocolCipherState> sender, id<ComSouthernstormNoiseProtocolCipherState> receiver);

J2OBJC_TYPE_LITERAL_HEADER(ComSouthernstormNoiseProtocolCipherStatePair)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_ComSouthernstormNoiseProtocolCipherStatePair")