#import "OAIInlineResponse20022.h"

@implementation OAIInlineResponse20022

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"original": @"original", @"originalName": @"originalName", @"name": @"name", @"nameClean": @"nameClean", @"amount": @"amount", @"unit": @"unit", @"unitShort": @"unitShort", @"unitLong": @"unitLong", @"possibleUnits": @"possibleUnits", @"estimatedCost": @"estimatedCost", @"consistency": @"consistency", @"shoppingListUnits": @"shoppingListUnits", @"aisle": @"aisle", @"image": @"image", @"meta": @"meta", @"nutrition": @"nutrition", @"categoryPath": @"categoryPath" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
