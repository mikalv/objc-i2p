//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: router/java/src/net/i2p/router/networkdb/kademlia/DataStore.java
//

#include "J2ObjC_source.h"
#include "net/i2p/router/networkdb/kademlia/DataStore.h"

@interface NetI2pRouterNetworkdbKademliaDataStore : NSObject

@end

@implementation NetI2pRouterNetworkdbKademliaDataStore

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 4, 6, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x401, 7, 1, -1, -1, -1, -1 },
    { NULL, "LNetI2pDataDatabaseEntry;", 0x401, 7, 3, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 8, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x401, -1, -1, -1, 9, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x401, -1, -1, -1, 10, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(isInitialized);
  methods[1].selector = @selector(isKnownWithNetI2pDataHash:);
  methods[2].selector = @selector(getWithNetI2pDataHash:);
  methods[3].selector = @selector(getWithNetI2pDataHash:withBoolean:);
  methods[4].selector = @selector(putWithNetI2pDataHash:withNetI2pDataDatabaseEntry:);
  methods[5].selector = @selector(putWithNetI2pDataHash:withNetI2pDataDatabaseEntry:withBoolean:);
  methods[6].selector = @selector(removeWithNetI2pDataHash:);
  methods[7].selector = @selector(removeWithNetI2pDataHash:withBoolean:);
  methods[8].selector = @selector(getKeys);
  methods[9].selector = @selector(getEntries);
  methods[10].selector = @selector(getMapEntries);
  methods[11].selector = @selector(stop);
  methods[12].selector = @selector(restart);
  methods[13].selector = @selector(rescan);
  methods[14].selector = @selector(countLeaseSets);
  methods[15].selector = @selector(size);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "isKnown", "LNetI2pDataHash;", "get", "LNetI2pDataHash;Z", "put", "LNetI2pDataHash;LNetI2pDataDatabaseEntry;", "LNetI2pDataHash;LNetI2pDataDatabaseEntry;Z", "remove", "()Ljava/util/Set<Lnet/i2p/data/Hash;>;", "()Ljava/util/Collection<Lnet/i2p/data/DatabaseEntry;>;", "()Ljava/util/Set<Ljava/util/Map$Entry<Lnet/i2p/data/Hash;Lnet/i2p/data/DatabaseEntry;>;>;" };
  static const J2ObjcClassInfo _NetI2pRouterNetworkdbKademliaDataStore = { "DataStore", "net.i2p.router.networkdb.kademlia", ptrTable, methods, NULL, 7, 0x609, 16, 0, -1, -1, -1, -1, -1 };
  return &_NetI2pRouterNetworkdbKademliaDataStore;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(NetI2pRouterNetworkdbKademliaDataStore)