# RecipeInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**title** | **String** |  | 
**image** | Option<**String**> |  | 
**image_type** | Option<**String**> |  | [optional]
**servings** | **f64** |  | 
**ready_in_minutes** | **i32** |  | 
**preparation_minutes** | Option<**i32**> |  | [optional]
**cooking_minutes** | Option<**i32**> |  | [optional]
**license** | Option<**String**> |  | [optional]
**source_name** | **String** |  | 
**source_url** | **String** |  | 
**spoonacular_source_url** | **String** |  | 
**aggregate_likes** | **i32** |  | 
**health_score** | **f64** |  | 
**spoonacular_score** | **f64** |  | 
**price_per_serving** | **f64** |  | 
**analyzed_instructions** | [**Vec<serde_json::Value>**](serde_json::Value.md) |  | 
**cheap** | **bool** |  | 
**credits_text** | **String** |  | 
**cuisines** | **Vec<String>** |  | 
**dairy_free** | **bool** |  | 
**diets** | **Vec<String>** |  | 
**gaps** | **String** |  | 
**gluten_free** | **bool** |  | 
**instructions** | Option<**String**> |  | 
**low_fodmap** | **bool** |  | 
**occasions** | **Vec<String>** |  | 
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**very_healthy** | **bool** |  | 
**very_popular** | **bool** |  | 
**weight_watcher_smart_points** | **f64** |  | 
**dish_types** | **Vec<String>** |  | 
**extended_ingredients** | [**Vec<models::RecipeInformationExtendedIngredientsInner>**](RecipeInformation_extendedIngredients_inner.md) |  | 
**summary** | **String** |  | 
**wine_pairing** | Option<[**models::RecipeInformationWinePairing**](RecipeInformation_winePairing.md)> |  | [optional]
**taste** | Option<[**models::TasteInformation**](TasteInformation.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


