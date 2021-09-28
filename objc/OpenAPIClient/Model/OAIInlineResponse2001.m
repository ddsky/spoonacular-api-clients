#import "OAIInlineResponse2001.h"

@implementation OAIInlineResponse2001

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"image": @"image", @"imageType": @"imageType", @"likes": @"likes", @"missedIngredientCount": @"missedIngredientCount", @"missedIngredients": @"missedIngredients", @"title": @"title", @"unusedIngredients": @"unusedIngredients", @"usedIngredientCount": @"usedIngredientCount", @"usedIngredients": @"usedIngredients", @"": @"" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@""];
  return [optionalProperties containsObject:propertyName];
}

@end
