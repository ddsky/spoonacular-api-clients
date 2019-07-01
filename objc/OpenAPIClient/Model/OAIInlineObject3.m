#import "OAIInlineObject3.h"

@implementation OAIInlineObject3

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"title", @"image": @"image", @"ingredients": @"ingredients", @"instructions": @"instructions", @"readyInMinutes": @"readyInMinutes", @"servings": @"servings", @"mask": @"mask", @"backgroundImage": @"backgroundImage", @"author": @"author", @"backgroundColor": @"backgroundColor", @"fontColor": @"fontColor", @"source": @"source" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"author", @"backgroundColor", @"fontColor", @"source"];
  return [optionalProperties containsObject:propertyName];
}

@end
