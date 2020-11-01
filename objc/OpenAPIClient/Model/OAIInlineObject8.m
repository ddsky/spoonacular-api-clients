#import "OAIInlineObject8.h"

@implementation OAIInlineObject8

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ingredientList": @"ingredientList", @"servings": @"servings", @"measure": @"measure", @"view": @"view", @"defaultCss": @"defaultCss", @"showBacklink": @"showBacklink" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"measure", @"view", @"defaultCss", @"showBacklink"];
  return [optionalProperties containsObject:propertyName];
}

@end
