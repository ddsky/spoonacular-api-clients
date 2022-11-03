#import "OAISearchRestaurants200ResponseRestaurantsInnerAddress.h"

@implementation OAISearchRestaurants200ResponseRestaurantsInnerAddress

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"streetAddr": @"street_addr", @"city": @"city", @"state": @"state", @"zipcode": @"zipcode", @"country": @"country", @"lat": @"lat", @"lon": @"lon", @"streetAddr2": @"street_addr_2", @"latitude": @"latitude", @"longitude": @"longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"streetAddr", @"city", @"state", @"zipcode", @"country", @"lat", @"lon", @"streetAddr2", @"latitude", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
