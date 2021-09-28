#import "OAIInlineResponse20036.h"

@implementation OAIInlineResponse20036

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"restaurantChain": @"restaurantChain", @"nutrition": @"nutrition", @"badges": @"badges", @"breadcrumbs": @"breadcrumbs", @"generatedText": @"generatedText", @"imageType": @"imageType", @"likes": @"likes", @"servings": @"servings", @"price": @"price", @"spoonacularScore": @"spoonacularScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"generatedText", @"price", @"spoonacularScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
