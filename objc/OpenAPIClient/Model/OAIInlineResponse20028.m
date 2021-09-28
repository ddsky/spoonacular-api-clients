#import "OAIInlineResponse20028.h"

@implementation OAIInlineResponse20028

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"badges": @"badges", @"importantBadges": @"importantBadges", @"breadcrumbs": @"breadcrumbs", @"generatedText": @"generatedText", @"imageType": @"imageType", @"ingredientCount": @"ingredientCount", @"ingredientList": @"ingredientList", @"ingredients": @"ingredients", @"likes": @"likes", @"nutrition": @"nutrition", @"price": @"price", @"servings": @"servings", @"spoonacularScore": @"spoonacularScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ingredientCount", ];
  return [optionalProperties containsObject:propertyName];
}

@end
