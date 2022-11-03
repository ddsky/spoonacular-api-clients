#import "OAISearchRestaurants200ResponseRestaurantsInner.h"

@implementation OAISearchRestaurants200ResponseRestaurantsInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"_id", @"name": @"name", @"phoneNumber": @"phone_number", @"address": @"address", @"type": @"type", @"_description": @"description", @"localHours": @"local_hours", @"cuisines": @"cuisines", @"foodPhotos": @"food_photos", @"logoPhotos": @"logo_photos", @"storePhotos": @"store_photos", @"dollarSigns": @"dollar_signs", @"pickupEnabled": @"pickup_enabled", @"deliveryEnabled": @"delivery_enabled", @"isOpen": @"is_open", @"offersFirstPartyDelivery": @"offers_first_party_delivery", @"offersThirdPartyDelivery": @"offers_third_party_delivery", @"miles": @"miles", @"weightedRatingValue": @"weighted_rating_value", @"aggregatedRatingCount": @"aggregated_rating_count" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"phoneNumber", @"address", @"type", @"_description", @"localHours", @"cuisines", @"foodPhotos", @"logoPhotos", @"storePhotos", @"dollarSigns", @"pickupEnabled", @"deliveryEnabled", @"isOpen", @"offersFirstPartyDelivery", @"offersThirdPartyDelivery", @"miles", @"weightedRatingValue", @"aggregatedRatingCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
