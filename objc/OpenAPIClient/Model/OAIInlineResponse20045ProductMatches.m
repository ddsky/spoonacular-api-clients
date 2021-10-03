#import "OAIInlineResponse20045ProductMatches.h"

@implementation OAIInlineResponse20045ProductMatches

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"averageRating": @"averageRating", @"_description": @"description", @"imageUrl": @"imageUrl", @"link": @"link", @"price": @"price", @"ratingCount": @"ratingCount", @"score": @"score" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_description", ];
  return [optionalProperties containsObject:propertyName];
}

@end
