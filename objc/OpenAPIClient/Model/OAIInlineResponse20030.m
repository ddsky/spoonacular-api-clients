#import "OAIInlineResponse20030.h"

@implementation OAIInlineResponse20030

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"breadcrumbs": @"breadcrumbs", @"imageType": @"imageType", @"badges": @"badges", @"importantBadges": @"importantBadges", @"ingredientCount": @"ingredientCount", @"generatedText": @"generatedText", @"ingredientList": @"ingredientList", @"ingredients": @"ingredients", @"likes": @"likes", @"aisle": @"aisle", @"nutrition": @"nutrition", @"price": @"price", @"servings": @"servings", @"spoonacularScore": @"spoonacularScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"generatedText", ];
  return [optionalProperties containsObject:propertyName];
}

@end
