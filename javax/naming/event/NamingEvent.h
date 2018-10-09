//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/javax/naming/event/NamingEvent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JavaxNamingEventNamingEvent")
#ifdef RESTRICT_JavaxNamingEventNamingEvent
#define INCLUDE_ALL_JavaxNamingEventNamingEvent 0
#else
#define INCLUDE_ALL_JavaxNamingEventNamingEvent 1
#endif
#undef RESTRICT_JavaxNamingEventNamingEvent

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (JavaxNamingEventNamingEvent_) && (INCLUDE_ALL_JavaxNamingEventNamingEvent || defined(INCLUDE_JavaxNamingEventNamingEvent))
#define JavaxNamingEventNamingEvent_

#define RESTRICT_JavaUtilEventObject 1
#define INCLUDE_JavaUtilEventObject 1
#include "java/util/EventObject.h"

@class JavaxNamingBinding;
@protocol JavaxNamingEventEventContext;
@protocol JavaxNamingEventNamingListener;

@interface JavaxNamingEventNamingEvent : JavaUtilEventObject {
 @public
  id changeInfo_;
  jint type_;
  JavaxNamingBinding *oldBinding_;
  JavaxNamingBinding *newBinding_;
}
@property (readonly, class) jint OBJECT_ADDED NS_SWIFT_NAME(OBJECT_ADDED);
@property (readonly, class) jint OBJECT_REMOVED NS_SWIFT_NAME(OBJECT_REMOVED);
@property (readonly, class) jint OBJECT_RENAMED NS_SWIFT_NAME(OBJECT_RENAMED);
@property (readonly, class) jint OBJECT_CHANGED NS_SWIFT_NAME(OBJECT_CHANGED);

+ (jint)OBJECT_ADDED;

+ (jint)OBJECT_REMOVED;

+ (jint)OBJECT_RENAMED;

+ (jint)OBJECT_CHANGED;

#pragma mark Public

- (instancetype __nonnull)initWithJavaxNamingEventEventContext:(id<JavaxNamingEventEventContext>)source
                                                       withInt:(jint)type
                                        withJavaxNamingBinding:(JavaxNamingBinding *)newBd
                                        withJavaxNamingBinding:(JavaxNamingBinding *)oldBd
                                                        withId:(id)changeInfo;

- (void)dispatchWithJavaxNamingEventNamingListener:(id<JavaxNamingEventNamingListener>)listener;

- (id)getChangeInfo;

- (id<JavaxNamingEventEventContext>)getEventContext;

- (JavaxNamingBinding *)getNewBinding;

- (JavaxNamingBinding *)getOldBinding;

- (jint)getType;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithId:(id)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(JavaxNamingEventNamingEvent)

J2OBJC_FIELD_SETTER(JavaxNamingEventNamingEvent, changeInfo_, id)
J2OBJC_FIELD_SETTER(JavaxNamingEventNamingEvent, oldBinding_, JavaxNamingBinding *)
J2OBJC_FIELD_SETTER(JavaxNamingEventNamingEvent, newBinding_, JavaxNamingBinding *)

inline jint JavaxNamingEventNamingEvent_get_OBJECT_ADDED(void);
#define JavaxNamingEventNamingEvent_OBJECT_ADDED 0
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingEventNamingEvent, OBJECT_ADDED, jint)

inline jint JavaxNamingEventNamingEvent_get_OBJECT_REMOVED(void);
#define JavaxNamingEventNamingEvent_OBJECT_REMOVED 1
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingEventNamingEvent, OBJECT_REMOVED, jint)

inline jint JavaxNamingEventNamingEvent_get_OBJECT_RENAMED(void);
#define JavaxNamingEventNamingEvent_OBJECT_RENAMED 2
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingEventNamingEvent, OBJECT_RENAMED, jint)

inline jint JavaxNamingEventNamingEvent_get_OBJECT_CHANGED(void);
#define JavaxNamingEventNamingEvent_OBJECT_CHANGED 3
J2OBJC_STATIC_FIELD_CONSTANT(JavaxNamingEventNamingEvent, OBJECT_CHANGED, jint)

FOUNDATION_EXPORT void JavaxNamingEventNamingEvent_initWithJavaxNamingEventEventContext_withInt_withJavaxNamingBinding_withJavaxNamingBinding_withId_(JavaxNamingEventNamingEvent *self, id<JavaxNamingEventEventContext> source, jint type, JavaxNamingBinding *newBd, JavaxNamingBinding *oldBd, id changeInfo);

FOUNDATION_EXPORT JavaxNamingEventNamingEvent *new_JavaxNamingEventNamingEvent_initWithJavaxNamingEventEventContext_withInt_withJavaxNamingBinding_withJavaxNamingBinding_withId_(id<JavaxNamingEventEventContext> source, jint type, JavaxNamingBinding *newBd, JavaxNamingBinding *oldBd, id changeInfo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT JavaxNamingEventNamingEvent *create_JavaxNamingEventNamingEvent_initWithJavaxNamingEventEventContext_withInt_withJavaxNamingBinding_withJavaxNamingBinding_withId_(id<JavaxNamingEventEventContext> source, jint type, JavaxNamingBinding *newBd, JavaxNamingBinding *oldBd, id changeInfo);

J2OBJC_TYPE_LITERAL_HEADER(JavaxNamingEventNamingEvent)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_JavaxNamingEventNamingEvent")