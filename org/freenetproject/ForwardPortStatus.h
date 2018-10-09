//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/freenetproject/ForwardPortStatus.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgFreenetprojectForwardPortStatus")
#ifdef RESTRICT_OrgFreenetprojectForwardPortStatus
#define INCLUDE_ALL_OrgFreenetprojectForwardPortStatus 0
#else
#define INCLUDE_ALL_OrgFreenetprojectForwardPortStatus 1
#endif
#undef RESTRICT_OrgFreenetprojectForwardPortStatus

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgFreenetprojectForwardPortStatus_) && (INCLUDE_ALL_OrgFreenetprojectForwardPortStatus || defined(INCLUDE_OrgFreenetprojectForwardPortStatus))
#define OrgFreenetprojectForwardPortStatus_

@interface OrgFreenetprojectForwardPortStatus : NSObject {
 @public
  jint status_;
  NSString *reasonString_;
  jint externalPort_;
}
@property (readonly, class) jint DEFINITE_SUCCESS NS_SWIFT_NAME(DEFINITE_SUCCESS);
@property (readonly, class) jint PROBABLE_SUCCESS NS_SWIFT_NAME(PROBABLE_SUCCESS);
@property (readonly, class) jint MAYBE_SUCCESS NS_SWIFT_NAME(MAYBE_SUCCESS);
@property (readonly, class) jint IN_PROGRESS NS_SWIFT_NAME(IN_PROGRESS);
@property (readonly, class) jint PROBABLE_FAILURE NS_SWIFT_NAME(PROBABLE_FAILURE);
@property (readonly, class) jint DEFINITE_FAILURE NS_SWIFT_NAME(DEFINITE_FAILURE);

+ (jint)DEFINITE_SUCCESS;

+ (jint)PROBABLE_SUCCESS;

+ (jint)MAYBE_SUCCESS;

+ (jint)IN_PROGRESS;

+ (jint)PROBABLE_FAILURE;

+ (jint)DEFINITE_FAILURE;

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)status
                         withNSString:(NSString *)reason
                              withInt:(jint)externalPort;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgFreenetprojectForwardPortStatus)

J2OBJC_FIELD_SETTER(OrgFreenetprojectForwardPortStatus, reasonString_, NSString *)

inline jint OrgFreenetprojectForwardPortStatus_get_DEFINITE_SUCCESS(void);
#define OrgFreenetprojectForwardPortStatus_DEFINITE_SUCCESS 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgFreenetprojectForwardPortStatus, DEFINITE_SUCCESS, jint)

inline jint OrgFreenetprojectForwardPortStatus_get_PROBABLE_SUCCESS(void);
#define OrgFreenetprojectForwardPortStatus_PROBABLE_SUCCESS 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgFreenetprojectForwardPortStatus, PROBABLE_SUCCESS, jint)

inline jint OrgFreenetprojectForwardPortStatus_get_MAYBE_SUCCESS(void);
#define OrgFreenetprojectForwardPortStatus_MAYBE_SUCCESS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgFreenetprojectForwardPortStatus, MAYBE_SUCCESS, jint)

inline jint OrgFreenetprojectForwardPortStatus_get_IN_PROGRESS(void);
#define OrgFreenetprojectForwardPortStatus_IN_PROGRESS 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgFreenetprojectForwardPortStatus, IN_PROGRESS, jint)

inline jint OrgFreenetprojectForwardPortStatus_get_PROBABLE_FAILURE(void);
#define OrgFreenetprojectForwardPortStatus_PROBABLE_FAILURE -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgFreenetprojectForwardPortStatus, PROBABLE_FAILURE, jint)

inline jint OrgFreenetprojectForwardPortStatus_get_DEFINITE_FAILURE(void);
#define OrgFreenetprojectForwardPortStatus_DEFINITE_FAILURE -2
J2OBJC_STATIC_FIELD_CONSTANT(OrgFreenetprojectForwardPortStatus, DEFINITE_FAILURE, jint)

FOUNDATION_EXPORT void OrgFreenetprojectForwardPortStatus_initWithInt_withNSString_withInt_(OrgFreenetprojectForwardPortStatus *self, jint status, NSString *reason, jint externalPort);

FOUNDATION_EXPORT OrgFreenetprojectForwardPortStatus *new_OrgFreenetprojectForwardPortStatus_initWithInt_withNSString_withInt_(jint status, NSString *reason, jint externalPort) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgFreenetprojectForwardPortStatus *create_OrgFreenetprojectForwardPortStatus_initWithInt_withNSString_withInt_(jint status, NSString *reason, jint externalPort);

J2OBJC_TYPE_LITERAL_HEADER(OrgFreenetprojectForwardPortStatus)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgFreenetprojectForwardPortStatus")
