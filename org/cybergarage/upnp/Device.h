//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/org/cybergarage/upnp/Device.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgCybergarageUpnpDevice")
#ifdef RESTRICT_OrgCybergarageUpnpDevice
#define INCLUDE_ALL_OrgCybergarageUpnpDevice 0
#else
#define INCLUDE_ALL_OrgCybergarageUpnpDevice 1
#endif
#undef RESTRICT_OrgCybergarageUpnpDevice

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgCybergarageUpnpDevice_) && (INCLUDE_ALL_OrgCybergarageUpnpDevice || defined(INCLUDE_OrgCybergarageUpnpDevice))
#define OrgCybergarageUpnpDevice_

#define RESTRICT_OrgCybergarageHttpHTTPRequestListener 1
#define INCLUDE_OrgCybergarageHttpHTTPRequestListener 1
#include "org/cybergarage/http/HTTPRequestListener.h"

#define RESTRICT_OrgCybergarageUpnpDeviceSearchListener 1
#define INCLUDE_OrgCybergarageUpnpDeviceSearchListener 1
#include "org/cybergarage/upnp/device/SearchListener.h"

@class IOSObjectArray;
@class JavaIoFile;
@class JavaIoInputStream;
@class OrgCybergarageHttpHTTPRequest;
@class OrgCybergarageUpnpAction;
@class OrgCybergarageUpnpDeviceList;
@class OrgCybergarageUpnpIcon;
@class OrgCybergarageUpnpIconList;
@class OrgCybergarageUpnpService;
@class OrgCybergarageUpnpServiceList;
@class OrgCybergarageUpnpSsdpSSDPPacket;
@class OrgCybergarageUpnpStateVariable;
@class OrgCybergarageXmlNode;
@protocol OrgCybergarageUpnpControlActionListener;
@protocol OrgCybergarageUpnpControlQueryListener;
@protocol OrgCybergarageUpnpDevicePresentationListener;

@interface OrgCybergarageUpnpDevice : NSObject < OrgCybergarageHttpHTTPRequestListener, OrgCybergarageUpnpDeviceSearchListener >
@property (readonly, copy, class) NSString *ELEM_NAME NS_SWIFT_NAME(ELEM_NAME);
@property (readonly, copy, class) NSString *UPNP_ROOTDEVICE NS_SWIFT_NAME(UPNP_ROOTDEVICE);
@property (readonly, class) jint DEFAULT_STARTUP_WAIT_TIME NS_SWIFT_NAME(DEFAULT_STARTUP_WAIT_TIME);
@property (readonly, class) jint DEFAULT_DISCOVERY_WAIT_TIME NS_SWIFT_NAME(DEFAULT_DISCOVERY_WAIT_TIME);
@property (readonly, class) jint DEFAULT_LEASE_TIME NS_SWIFT_NAME(DEFAULT_LEASE_TIME);
@property (readonly, class) jint HTTP_DEFAULT_PORT NS_SWIFT_NAME(HTTP_DEFAULT_PORT);
@property (readonly, copy, class) NSString *DEFAULT_DESCRIPTION_URI NS_SWIFT_NAME(DEFAULT_DESCRIPTION_URI);
@property (readonly, copy, class) NSString *DEFAULT_PRESENTATION_URI NS_SWIFT_NAME(DEFAULT_PRESENTATION_URI);

+ (NSString *)ELEM_NAME;

+ (NSString *)UPNP_ROOTDEVICE;

+ (jint)DEFAULT_STARTUP_WAIT_TIME;

+ (jint)DEFAULT_DISCOVERY_WAIT_TIME;

+ (jint)DEFAULT_LEASE_TIME;

+ (jint)HTTP_DEFAULT_PORT;

+ (NSString *)DEFAULT_DESCRIPTION_URI;

+ (NSString *)DEFAULT_PRESENTATION_URI;

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaIoFile:(JavaIoFile *)descriptionFile;

- (instancetype __nonnull)initWithJavaIoInputStream:(JavaIoInputStream *)input;

- (instancetype __nonnull)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)device;

- (instancetype __nonnull)initWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)root
                              withOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)device;

- (instancetype __nonnull)initWithNSString:(NSString *)descriptionFileName;

- (void)addDeviceWithOrgCybergarageUpnpDevice:(OrgCybergarageUpnpDevice *)d;

- (jboolean)addIconWithOrgCybergarageUpnpIcon:(OrgCybergarageUpnpIcon *)icon;

- (void)addServiceWithOrgCybergarageUpnpService:(OrgCybergarageUpnpService *)s;

- (void)announce;

- (void)announceWithNSString:(NSString *)bindAddr;

- (void)byebye;

- (void)byebyeWithNSString:(NSString *)bindAddr;

- (void)deviceSearchReceivedWithOrgCybergarageUpnpSsdpSSDPPacket:(OrgCybergarageUpnpSsdpSSDPPacket *)ssdpPacket;

- (void)deviceSearchResponseWithOrgCybergarageUpnpSsdpSSDPPacket:(OrgCybergarageUpnpSsdpSSDPPacket *)ssdpPacket;

- (NSString *)getAbsoluteURLWithNSString:(NSString *)urlString;

- (NSString *)getAbsoluteURLWithNSString:(NSString *)urlString
                            withNSString:(NSString *)baseURLStr
                            withNSString:(NSString *)locationURLStr;

- (OrgCybergarageUpnpAction *)getActionWithNSString:(NSString *)name;

- (jint)getBootId;

- (jint)getConfigId;

- (JavaIoFile *)getDescriptionFile;

- (NSString *)getDescriptionFilePath;

- (OrgCybergarageUpnpDevice *)getDeviceWithNSString:(NSString *)name;

- (OrgCybergarageUpnpDevice *)getDeviceByDescriptionURIWithNSString:(NSString *)uri;

- (OrgCybergarageUpnpDeviceList *)getDeviceList;

- (OrgCybergarageXmlNode *)getDeviceNode;

- (NSString *)getDeviceType;

- (jlong)getElapsedTime;

- (NSString *)getFriendlyName;

- (IOSObjectArray *)getHTTPBindAddress;

- (jint)getHTTPPort;

- (OrgCybergarageUpnpIcon *)getIconWithInt:(jint)n;

- (OrgCybergarageUpnpIcon *)getIconByURIWithNSString:(NSString *)uri;

- (OrgCybergarageUpnpIconList *)getIconList;

- (NSString *)getInterfaceAddress;

- (jint)getLeaseTime;

- (NSString *)getLocation;

- (NSString *)getLocationURLWithNSString:(NSString *)host;

- (NSString *)getManufacture;

- (NSString *)getManufactureURL;

- (NSString *)getModelDescription;

- (NSString *)getModelName;

- (NSString *)getModelNumber;

- (NSString *)getModelURL;

- (NSString *)getMulticastIPv4Address;

- (NSString *)getMulticastIPv6Address;

- (OrgCybergarageUpnpDevice *)getParentDevice;

- (id<OrgCybergarageUpnpDevicePresentationListener>)getPresentationListener;

- (NSString *)getPresentationURL;

- (OrgCybergarageUpnpDevice *)getRootDevice;

- (OrgCybergarageXmlNode *)getRootNode;

- (NSString *)getSerialNumber;

- (OrgCybergarageUpnpService *)getServiceWithNSString:(NSString *)name;

- (OrgCybergarageUpnpService *)getServiceByControlURLWithNSString:(NSString *)searchUrl;

- (OrgCybergarageUpnpService *)getServiceByEventSubURLWithNSString:(NSString *)searchUrl;

- (OrgCybergarageUpnpService *)getServiceBySCPDURLWithNSString:(NSString *)searchUrl;

- (OrgCybergarageUpnpServiceList *)getServiceList;

- (OrgCybergarageUpnpIcon *)getSmallestIcon;

- (jint)getSSDPAnnounceCount;

- (IOSObjectArray *)getSSDPBindAddress;

- (NSString *)getSSDPIPv4MulticastAddress;

- (void)getSSDPIPv4MulticastAddressWithNSString:(NSString *)ip;

- (NSString *)getSSDPIPv6MulticastAddress;

- (void)getSSDPIPv6MulticastAddressWithNSString:(NSString *)ip;

- (OrgCybergarageUpnpSsdpSSDPPacket *)getSSDPPacket;

- (jint)getSSDPPort;

- (OrgCybergarageUpnpStateVariable *)getStateVariableWithNSString:(NSString *)name;

- (OrgCybergarageUpnpStateVariable *)getStateVariableWithNSString:(NSString *)serviceType
                                                     withNSString:(NSString *)name;

- (OrgCybergarageUpnpService *)getSubscriberServiceWithNSString:(NSString *)uuid;

- (jlong)getTimeStamp;

- (NSString *)getUDN;

- (NSString *)getUPC;

- (NSString *)getURLBase;

- (id)getUserData;

- (NSString *)getUUID;

- (jboolean)hasPresentationListener;

- (jboolean)hasUDN;

- (void)httpRequestRecievedWithOrgCybergarageHttpHTTPRequest:(OrgCybergarageHttpHTTPRequest *)httpReq;

- (jboolean)isDeviceWithNSString:(NSString *)name;

+ (jboolean)isDeviceNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

- (jboolean)isDeviceTypeWithNSString:(NSString *)value;

- (jboolean)isExpired;

- (jboolean)isIconBytesURIWithNSString:(NSString *)uri;

- (jboolean)isNMPRMode;

- (jboolean)isRootDevice;

- (jboolean)isRunning;

- (jboolean)isWirelessMode;

- (jboolean)loadDescriptionWithJavaIoFile:(JavaIoFile *)file;

- (jboolean)loadDescriptionWithJavaIoInputStream:(JavaIoInputStream *)input;

- (jboolean)loadDescriptionWithNSString:(NSString *)descString;

- (void)lock;

+ (void)notifyWait;

- (jboolean)postSearchResponseWithOrgCybergarageUpnpSsdpSSDPPacket:(OrgCybergarageUpnpSsdpSSDPPacket *)ssdpPacket
                                                      withNSString:(NSString *)st
                                                      withNSString:(NSString *)usn;

- (jboolean)removePresentationURL;

- (void)setActionListenerWithOrgCybergarageUpnpControlActionListener:(id<OrgCybergarageUpnpControlActionListener>)listener;

- (void)setActionListenerWithOrgCybergarageUpnpControlActionListener:(id<OrgCybergarageUpnpControlActionListener>)listener
                                                         withBoolean:(jboolean)includeSubDevices;

- (void)setDeviceNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

- (void)setDeviceTypeWithNSString:(NSString *)value;

- (void)setFriendlyNameWithNSString:(NSString *)value;

- (void)setHTTPBindAddressWithJavaNetInetAddressArray:(IOSObjectArray *)inets;

- (void)setHTTPPortWithInt:(jint)port;

- (void)setLeaseTimeWithInt:(jint)value;

- (void)setLocationWithNSString:(NSString *)value;

- (void)setManufactureWithNSString:(NSString *)value;

- (void)setManufactureURLWithNSString:(NSString *)value;

- (void)setModelDescriptionWithNSString:(NSString *)value;

- (void)setModelNameWithNSString:(NSString *)value;

- (void)setModelNumberWithNSString:(NSString *)value;

- (void)setModelURLWithNSString:(NSString *)value;

- (void)setMulticastIPv4AddressWithNSString:(NSString *)ip;

- (void)setMulticastIPv6AddressWithNSString:(NSString *)ip;

- (void)setNMPRModeWithBoolean:(jboolean)flag;

- (void)setPresentationListenerWithOrgCybergarageUpnpDevicePresentationListener:(id<OrgCybergarageUpnpDevicePresentationListener>)listener;

- (void)setPresentationURLWithNSString:(NSString *)value;

- (void)setQueryListenerWithOrgCybergarageUpnpControlQueryListener:(id<OrgCybergarageUpnpControlQueryListener>)listener;

- (void)setQueryListenerWithOrgCybergarageUpnpControlQueryListener:(id<OrgCybergarageUpnpControlQueryListener>)listener
                                                       withBoolean:(jboolean)includeSubDevices;

- (void)setRootNodeWithOrgCybergarageXmlNode:(OrgCybergarageXmlNode *)node;

- (void)setSerialNumberWithNSString:(NSString *)value;

- (void)setSSDPBindAddressWithJavaNetInetAddressArray:(IOSObjectArray *)inets;

- (void)setSSDPPacketWithOrgCybergarageUpnpSsdpSSDPPacket:(OrgCybergarageUpnpSsdpSSDPPacket *)packet;

- (void)setSSDPPortWithInt:(jint)port;

- (void)setUDNWithNSString:(NSString *)value;

- (void)setUPCWithNSString:(NSString *)value;

- (void)setUserDataWithId:(id)data;

- (void)setWirelessModeWithBoolean:(jboolean)flag;

- (jboolean)start;

- (jboolean)stop;

- (void)unlock;

- (void)updateConfigId;

@end

J2OBJC_STATIC_INIT(OrgCybergarageUpnpDevice)

inline NSString *OrgCybergarageUpnpDevice_get_ELEM_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpDevice_ELEM_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpDevice, ELEM_NAME, NSString *)

inline NSString *OrgCybergarageUpnpDevice_get_UPNP_ROOTDEVICE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpDevice_UPNP_ROOTDEVICE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpDevice, UPNP_ROOTDEVICE, NSString *)

inline jint OrgCybergarageUpnpDevice_get_DEFAULT_STARTUP_WAIT_TIME(void);
#define OrgCybergarageUpnpDevice_DEFAULT_STARTUP_WAIT_TIME 1000
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpDevice, DEFAULT_STARTUP_WAIT_TIME, jint)

inline jint OrgCybergarageUpnpDevice_get_DEFAULT_DISCOVERY_WAIT_TIME(void);
#define OrgCybergarageUpnpDevice_DEFAULT_DISCOVERY_WAIT_TIME 300
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpDevice, DEFAULT_DISCOVERY_WAIT_TIME, jint)

inline jint OrgCybergarageUpnpDevice_get_DEFAULT_LEASE_TIME(void);
#define OrgCybergarageUpnpDevice_DEFAULT_LEASE_TIME 1800
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpDevice, DEFAULT_LEASE_TIME, jint)

inline jint OrgCybergarageUpnpDevice_get_HTTP_DEFAULT_PORT(void);
#define OrgCybergarageUpnpDevice_HTTP_DEFAULT_PORT 4004
J2OBJC_STATIC_FIELD_CONSTANT(OrgCybergarageUpnpDevice, HTTP_DEFAULT_PORT, jint)

inline NSString *OrgCybergarageUpnpDevice_get_DEFAULT_DESCRIPTION_URI(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpDevice_DEFAULT_DESCRIPTION_URI;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpDevice, DEFAULT_DESCRIPTION_URI, NSString *)

inline NSString *OrgCybergarageUpnpDevice_get_DEFAULT_PRESENTATION_URI(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgCybergarageUpnpDevice_DEFAULT_PRESENTATION_URI;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgCybergarageUpnpDevice, DEFAULT_PRESENTATION_URI, NSString *)

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_initWithOrgCybergarageXmlNode_withOrgCybergarageXmlNode_(OrgCybergarageUpnpDevice *self, OrgCybergarageXmlNode *root, OrgCybergarageXmlNode *device);

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *new_OrgCybergarageUpnpDevice_initWithOrgCybergarageXmlNode_withOrgCybergarageXmlNode_(OrgCybergarageXmlNode *root, OrgCybergarageXmlNode *device) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *create_OrgCybergarageUpnpDevice_initWithOrgCybergarageXmlNode_withOrgCybergarageXmlNode_(OrgCybergarageXmlNode *root, OrgCybergarageXmlNode *device);

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_init(OrgCybergarageUpnpDevice *self);

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *new_OrgCybergarageUpnpDevice_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *create_OrgCybergarageUpnpDevice_init(void);

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_initWithOrgCybergarageXmlNode_(OrgCybergarageUpnpDevice *self, OrgCybergarageXmlNode *device);

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *new_OrgCybergarageUpnpDevice_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *device) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *create_OrgCybergarageUpnpDevice_initWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *device);

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_initWithJavaIoFile_(OrgCybergarageUpnpDevice *self, JavaIoFile *descriptionFile);

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *new_OrgCybergarageUpnpDevice_initWithJavaIoFile_(JavaIoFile *descriptionFile) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *create_OrgCybergarageUpnpDevice_initWithJavaIoFile_(JavaIoFile *descriptionFile);

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_initWithJavaIoInputStream_(OrgCybergarageUpnpDevice *self, JavaIoInputStream *input);

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *new_OrgCybergarageUpnpDevice_initWithJavaIoInputStream_(JavaIoInputStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *create_OrgCybergarageUpnpDevice_initWithJavaIoInputStream_(JavaIoInputStream *input);

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_initWithNSString_(OrgCybergarageUpnpDevice *self, NSString *descriptionFileName);

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *new_OrgCybergarageUpnpDevice_initWithNSString_(NSString *descriptionFileName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgCybergarageUpnpDevice *create_OrgCybergarageUpnpDevice_initWithNSString_(NSString *descriptionFileName);

FOUNDATION_EXPORT jboolean OrgCybergarageUpnpDevice_isDeviceNodeWithOrgCybergarageXmlNode_(OrgCybergarageXmlNode *node);

FOUNDATION_EXPORT void OrgCybergarageUpnpDevice_notifyWait(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgCybergarageUpnpDevice)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgCybergarageUpnpDevice")
