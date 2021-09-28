#import "OAIInlineResponse2006Recipes.h"

@implementation OAIInlineResponse2006Recipes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"title": @"title", @"image": @"image", @"imageType": @"imageType", @"servings": @"servings", @"readyInMinutes": @"readyInMinutes", @"license": @"license", @"sourceName": @"sourceName", @"sourceUrl": @"sourceUrl", @"spoonacularSourceUrl": @"spoonacularSourceUrl", @"aggregateLikes": @"aggregateLikes", @"healthScore": @"healthScore", @"spoonacularScore": @"spoonacularScore", @"pricePerServing": @"pricePerServing", @"analyzedInstructions": @"analyzedInstructions", @"cheap": @"cheap", @"creditsText": @"creditsText", @"cuisines": @"cuisines", @"dairyFree": @"dairyFree", @"diets": @"diets", @"gaps": @"gaps", @"glutenFree": @"glutenFree", @"instructions": @"instructions", @"ketogenic": @"ketogenic", @"lowFodmap": @"lowFodmap", @"occasions": @"occasions", @"sustainable": @"sustainable", @"vegan": @"vegan", @"vegetarian": @"vegetarian", @"veryHealthy": @"veryHealthy", @"veryPopular": @"veryPopular", @"whole30": @"whole30", @"weightWatcherSmartPoints": @"weightWatcherSmartPoints", @"dishTypes": @"dishTypes", @"extendedIngredients": @"extendedIngredients", @"summary": @"summary", @"winePairing": @"winePairing" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"analyzedInstructions", @"cuisines", @"diets", @"occasions", @"dishTypes", @"extendedIngredients", @"winePairing"];
  return [optionalProperties containsObject:propertyName];
}

@end
