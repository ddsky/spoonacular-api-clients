#import "OAIInlineResponse20038Days.h"

@implementation OAIInlineResponse20038Days

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"nutritionSummary": @"nutritionSummary", @"nutritionSummaryBreakfast": @"nutritionSummaryBreakfast", @"nutritionSummaryLunch": @"nutritionSummaryLunch", @"nutritionSummaryDinner": @"nutritionSummaryDinner", @"date": @"date", @"day": @"day", @"items": @"items" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"nutritionSummary", @"nutritionSummaryBreakfast", @"nutritionSummaryLunch", @"nutritionSummaryDinner", @"items"];
  return [optionalProperties containsObject:propertyName];
}

@end
