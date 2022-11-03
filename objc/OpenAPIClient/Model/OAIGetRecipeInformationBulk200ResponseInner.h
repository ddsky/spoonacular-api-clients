#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* spoonacular API
* The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
*
* The version of the OpenAPI document: 1.1
* Contact: mail@spoonacular.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIGetRecipeInformation200ResponseExtendedIngredientsInner.h"
#import "OAIGetRecipeInformation200ResponseWinePairing.h"
#import "OAISet.h"
@protocol OAIGetRecipeInformation200ResponseExtendedIngredientsInner;
@class OAIGetRecipeInformation200ResponseExtendedIngredientsInner;
@protocol OAIGetRecipeInformation200ResponseWinePairing;
@class OAIGetRecipeInformation200ResponseWinePairing;
@protocol OAISet;
@class OAISet;



@protocol OAIGetRecipeInformationBulk200ResponseInner
@end

@interface OAIGetRecipeInformationBulk200ResponseInner : OAIObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* title;

@property(nonatomic) NSString* image;

@property(nonatomic) NSString* imageType;

@property(nonatomic) NSNumber* servings;

@property(nonatomic) NSNumber* readyInMinutes;

@property(nonatomic) NSString* license;

@property(nonatomic) NSString* sourceName;

@property(nonatomic) NSString* sourceUrl;

@property(nonatomic) NSString* spoonacularSourceUrl;

@property(nonatomic) NSNumber* aggregateLikes;

@property(nonatomic) NSNumber* healthScore;

@property(nonatomic) NSNumber* spoonacularScore;

@property(nonatomic) NSNumber* pricePerServing;

@property(nonatomic) NSArray<NSString*>* analyzedInstructions;

@property(nonatomic) NSNumber* cheap;

@property(nonatomic) NSString* creditsText;

@property(nonatomic) NSArray<NSString*>* cuisines;

@property(nonatomic) NSNumber* dairyFree;

@property(nonatomic) NSArray<NSString*>* diets;

@property(nonatomic) NSString* gaps;

@property(nonatomic) NSNumber* glutenFree;

@property(nonatomic) NSString* instructions;

@property(nonatomic) NSNumber* ketogenic;

@property(nonatomic) NSNumber* lowFodmap;

@property(nonatomic) NSArray<NSString*>* occasions;

@property(nonatomic) NSNumber* sustainable;

@property(nonatomic) NSNumber* vegan;

@property(nonatomic) NSNumber* vegetarian;

@property(nonatomic) NSNumber* veryHealthy;

@property(nonatomic) NSNumber* veryPopular;

@property(nonatomic) NSNumber* whole30;

@property(nonatomic) NSNumber* weightWatcherSmartPoints;

@property(nonatomic) NSArray<NSString*>* dishTypes;

@property(nonatomic) OAISet<OAIGetRecipeInformation200ResponseExtendedIngredientsInner>* extendedIngredients;

@property(nonatomic) NSString* summary;

@property(nonatomic) OAIGetRecipeInformation200ResponseWinePairing* winePairing;

@end
